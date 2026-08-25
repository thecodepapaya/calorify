import 'package:calorify/core/ai_summary/ai_summary_models.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';

class BackendAiSummaryGenerator implements AiSummaryGenerator {
  BackendAiSummaryGenerator({
    NetworkClient? networkClient,
    AuthService? authService,
  }) : _networkClient = networkClient ?? NetworkClient.instance,
       _authService = authService ?? AuthService.instance;

  final NetworkClient _networkClient;
  final AuthService _authService;

  @override
  Future<AiSummaryGenerationResult> generate(AiSummarySnapshot snapshot) async {
    if (_authService.currentUser == null) {
      throw const AiSummaryGeneratorUnavailable();
    }
    final token = await _authService.resolveAuthToken();
    if (token == null || token.isEmpty) {
      throw const AiSummaryGeneratorUnavailable();
    }
    try {
      final response = await _networkClient.client.post<Map<String, dynamic>>(
        '/api/v1/food/ai-summary/generate',
        data: snapshot.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      if (response.statusCode == 202) {
        throw AiSummaryRetryException(
          retryAfter: _retryAfter(response.headers),
        );
      }
      final language = response.headers.value('content-language')?.trim();
      if (language == null || language.isEmpty || response.data == null) {
        throw const FormatException('AI summary response is incomplete');
      }
      return AiSummaryGenerationResult(
        response: AiMealSummaryResponse()..mergeFromProto3Json(response.data!),
        resolvedLocale: language,
      );
    } on DioException catch (error) {
      final body = error.response?.data;
      final code = body is Map ? body['code'] : null;
      throw AiSummaryRetryException(
        retryAfter: _retryAfter(error.response?.headers),
        dateChanged: code == 'summary_date_changed',
      );
    }
  }

  Duration? _retryAfter(Headers? headers) {
    final seconds = int.tryParse(headers?.value('retry-after') ?? '');
    return seconds == null ? null : Duration(seconds: seconds);
  }
}
