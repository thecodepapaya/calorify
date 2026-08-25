// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MealInfoTableTable extends MealInfoTable
    with TableInfo<$MealInfoTableTable, MealInfoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealInfoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _mealNameMeta = const VerificationMeta(
    'mealName',
  );
  @override
  late final GeneratedColumn<String> mealName = GeneratedColumn<String>(
    'meal_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealQuantityMeta = const VerificationMeta(
    'mealQuantity',
  );
  @override
  late final GeneratedColumn<String> mealQuantity = GeneratedColumn<String>(
    'meal_quantity',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealTypeMeta = const VerificationMeta(
    'mealType',
  );
  @override
  late final GeneratedColumn<String> mealType = GeneratedColumn<String>(
    'meal_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caloriesMeta = const VerificationMeta(
    'calories',
  );
  @override
  late final GeneratedColumn<int> calories = GeneratedColumn<int>(
    'calories',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _proteinMeta = const VerificationMeta(
    'protein',
  );
  @override
  late final GeneratedColumn<int> protein = GeneratedColumn<int>(
    'protein',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _carbsMeta = const VerificationMeta('carbs');
  @override
  late final GeneratedColumn<int> carbs = GeneratedColumn<int>(
    'carbs',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fatMeta = const VerificationMeta('fat');
  @override
  late final GeneratedColumn<int> fat = GeneratedColumn<int>(
    'fat',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fiberMeta = const VerificationMeta('fiber');
  @override
  late final GeneratedColumn<int> fiber = GeneratedColumn<int>(
    'fiber',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _healthScoreMeta = const VerificationMeta(
    'healthScore',
  );
  @override
  late final GeneratedColumn<String> healthScore = GeneratedColumn<String>(
    'health_score',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _healthScoreReasonMeta = const VerificationMeta(
    'healthScoreReason',
  );
  @override
  late final GeneratedColumn<String> healthScoreReason =
      GeneratedColumn<String>(
        'health_score_reason',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _analysisIdMeta = const VerificationMeta(
    'analysisId',
  );
  @override
  late final GeneratedColumn<String> analysisId = GeneratedColumn<String>(
    'analysis_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _analysisSnapshotJsonMeta =
      const VerificationMeta('analysisSnapshotJson');
  @override
  late final GeneratedColumn<String> analysisSnapshotJson =
      GeneratedColumn<String>(
        'analysis_snapshot_json',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _healthConnectRecordIdMeta =
      const VerificationMeta('healthConnectRecordId');
  @override
  late final GeneratedColumn<String> healthConnectRecordId =
      GeneratedColumn<String>(
        'health_connect_record_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _healthConnectRecordVersionMeta =
      const VerificationMeta('healthConnectRecordVersion');
  @override
  late final GeneratedColumn<int> healthConnectRecordVersion =
      GeneratedColumn<int>(
        'health_connect_record_version',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
        defaultValue: const Constant(0),
      );
  static const VerificationMeta _mealLogSyncVersionMeta =
      const VerificationMeta('mealLogSyncVersion');
  @override
  late final GeneratedColumn<int> mealLogSyncVersion = GeneratedColumn<int>(
    'meal_log_sync_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _mealLogSyncedVersionMeta =
      const VerificationMeta('mealLogSyncedVersion');
  @override
  late final GeneratedColumn<int> mealLogSyncedVersion = GeneratedColumn<int>(
    'meal_log_synced_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    mealName,
    mealQuantity,
    mealType,
    calories,
    protein,
    carbs,
    fat,
    fiber,
    timestamp,
    imageUrl,
    healthScore,
    healthScoreReason,
    analysisId,
    analysisSnapshotJson,
    healthConnectRecordId,
    healthConnectRecordVersion,
    mealLogSyncVersion,
    mealLogSyncedVersion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meal_info_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MealInfoTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('meal_name')) {
      context.handle(
        _mealNameMeta,
        mealName.isAcceptableOrUnknown(data['meal_name']!, _mealNameMeta),
      );
    } else if (isInserting) {
      context.missing(_mealNameMeta);
    }
    if (data.containsKey('meal_quantity')) {
      context.handle(
        _mealQuantityMeta,
        mealQuantity.isAcceptableOrUnknown(
          data['meal_quantity']!,
          _mealQuantityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_mealQuantityMeta);
    }
    if (data.containsKey('meal_type')) {
      context.handle(
        _mealTypeMeta,
        mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_mealTypeMeta);
    }
    if (data.containsKey('calories')) {
      context.handle(
        _caloriesMeta,
        calories.isAcceptableOrUnknown(data['calories']!, _caloriesMeta),
      );
    } else if (isInserting) {
      context.missing(_caloriesMeta);
    }
    if (data.containsKey('protein')) {
      context.handle(
        _proteinMeta,
        protein.isAcceptableOrUnknown(data['protein']!, _proteinMeta),
      );
    } else if (isInserting) {
      context.missing(_proteinMeta);
    }
    if (data.containsKey('carbs')) {
      context.handle(
        _carbsMeta,
        carbs.isAcceptableOrUnknown(data['carbs']!, _carbsMeta),
      );
    } else if (isInserting) {
      context.missing(_carbsMeta);
    }
    if (data.containsKey('fat')) {
      context.handle(
        _fatMeta,
        fat.isAcceptableOrUnknown(data['fat']!, _fatMeta),
      );
    } else if (isInserting) {
      context.missing(_fatMeta);
    }
    if (data.containsKey('fiber')) {
      context.handle(
        _fiberMeta,
        fiber.isAcceptableOrUnknown(data['fiber']!, _fiberMeta),
      );
    } else if (isInserting) {
      context.missing(_fiberMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('health_score')) {
      context.handle(
        _healthScoreMeta,
        healthScore.isAcceptableOrUnknown(
          data['health_score']!,
          _healthScoreMeta,
        ),
      );
    }
    if (data.containsKey('health_score_reason')) {
      context.handle(
        _healthScoreReasonMeta,
        healthScoreReason.isAcceptableOrUnknown(
          data['health_score_reason']!,
          _healthScoreReasonMeta,
        ),
      );
    }
    if (data.containsKey('analysis_id')) {
      context.handle(
        _analysisIdMeta,
        analysisId.isAcceptableOrUnknown(data['analysis_id']!, _analysisIdMeta),
      );
    }
    if (data.containsKey('analysis_snapshot_json')) {
      context.handle(
        _analysisSnapshotJsonMeta,
        analysisSnapshotJson.isAcceptableOrUnknown(
          data['analysis_snapshot_json']!,
          _analysisSnapshotJsonMeta,
        ),
      );
    }
    if (data.containsKey('health_connect_record_id')) {
      context.handle(
        _healthConnectRecordIdMeta,
        healthConnectRecordId.isAcceptableOrUnknown(
          data['health_connect_record_id']!,
          _healthConnectRecordIdMeta,
        ),
      );
    }
    if (data.containsKey('health_connect_record_version')) {
      context.handle(
        _healthConnectRecordVersionMeta,
        healthConnectRecordVersion.isAcceptableOrUnknown(
          data['health_connect_record_version']!,
          _healthConnectRecordVersionMeta,
        ),
      );
    }
    if (data.containsKey('meal_log_sync_version')) {
      context.handle(
        _mealLogSyncVersionMeta,
        mealLogSyncVersion.isAcceptableOrUnknown(
          data['meal_log_sync_version']!,
          _mealLogSyncVersionMeta,
        ),
      );
    }
    if (data.containsKey('meal_log_synced_version')) {
      context.handle(
        _mealLogSyncedVersionMeta,
        mealLogSyncedVersion.isAcceptableOrUnknown(
          data['meal_log_synced_version']!,
          _mealLogSyncedVersionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MealInfoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealInfoTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      mealName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}meal_name'],
          )!,
      mealQuantity:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}meal_quantity'],
          )!,
      mealType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}meal_type'],
          )!,
      calories:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}calories'],
          )!,
      protein:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}protein'],
          )!,
      carbs:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}carbs'],
          )!,
      fat:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}fat'],
          )!,
      fiber:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}fiber'],
          )!,
      timestamp:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}timestamp'],
          )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      healthScore: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}health_score'],
      ),
      healthScoreReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}health_score_reason'],
      ),
      analysisId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}analysis_id'],
      ),
      analysisSnapshotJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}analysis_snapshot_json'],
      ),
      healthConnectRecordId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}health_connect_record_id'],
      ),
      healthConnectRecordVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}health_connect_record_version'],
          )!,
      mealLogSyncVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_log_sync_version'],
          )!,
      mealLogSyncedVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_log_synced_version'],
          )!,
    );
  }

  @override
  $MealInfoTableTable createAlias(String alias) {
    return $MealInfoTableTable(attachedDatabase, alias);
  }
}

class MealInfoTableData extends DataClass
    implements Insertable<MealInfoTableData> {
  final int id;
  final String mealName;
  final String mealQuantity;
  final String mealType;
  final int calories;
  final int protein;
  final int carbs;
  final int fat;
  final int fiber;
  final DateTime timestamp;
  final String? imageUrl;
  final String? healthScore;
  final String? healthScoreReason;
  final String? analysisId;
  final String? analysisSnapshotJson;

  /// Stable identity for the corresponding app-owned Health Connect record.
  final String? healthConnectRecordId;

  /// Version sent with [healthConnectRecordId] for idempotent updates.
  final int healthConnectRecordVersion;

  /// Local mutation version mirrored onto the owning V2 analysis session.
  final int mealLogSyncVersion;

  /// Last version acknowledged by the backend.
  final int mealLogSyncedVersion;
  const MealInfoTableData({
    required this.id,
    required this.mealName,
    required this.mealQuantity,
    required this.mealType,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.timestamp,
    this.imageUrl,
    this.healthScore,
    this.healthScoreReason,
    this.analysisId,
    this.analysisSnapshotJson,
    this.healthConnectRecordId,
    required this.healthConnectRecordVersion,
    required this.mealLogSyncVersion,
    required this.mealLogSyncedVersion,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['meal_name'] = Variable<String>(mealName);
    map['meal_quantity'] = Variable<String>(mealQuantity);
    map['meal_type'] = Variable<String>(mealType);
    map['calories'] = Variable<int>(calories);
    map['protein'] = Variable<int>(protein);
    map['carbs'] = Variable<int>(carbs);
    map['fat'] = Variable<int>(fat);
    map['fiber'] = Variable<int>(fiber);
    map['timestamp'] = Variable<DateTime>(timestamp);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || healthScore != null) {
      map['health_score'] = Variable<String>(healthScore);
    }
    if (!nullToAbsent || healthScoreReason != null) {
      map['health_score_reason'] = Variable<String>(healthScoreReason);
    }
    if (!nullToAbsent || analysisId != null) {
      map['analysis_id'] = Variable<String>(analysisId);
    }
    if (!nullToAbsent || analysisSnapshotJson != null) {
      map['analysis_snapshot_json'] = Variable<String>(analysisSnapshotJson);
    }
    if (!nullToAbsent || healthConnectRecordId != null) {
      map['health_connect_record_id'] = Variable<String>(healthConnectRecordId);
    }
    map['health_connect_record_version'] = Variable<int>(
      healthConnectRecordVersion,
    );
    map['meal_log_sync_version'] = Variable<int>(mealLogSyncVersion);
    map['meal_log_synced_version'] = Variable<int>(mealLogSyncedVersion);
    return map;
  }

  MealInfoTableCompanion toCompanion(bool nullToAbsent) {
    return MealInfoTableCompanion(
      id: Value(id),
      mealName: Value(mealName),
      mealQuantity: Value(mealQuantity),
      mealType: Value(mealType),
      calories: Value(calories),
      protein: Value(protein),
      carbs: Value(carbs),
      fat: Value(fat),
      fiber: Value(fiber),
      timestamp: Value(timestamp),
      imageUrl:
          imageUrl == null && nullToAbsent
              ? const Value.absent()
              : Value(imageUrl),
      healthScore:
          healthScore == null && nullToAbsent
              ? const Value.absent()
              : Value(healthScore),
      healthScoreReason:
          healthScoreReason == null && nullToAbsent
              ? const Value.absent()
              : Value(healthScoreReason),
      analysisId:
          analysisId == null && nullToAbsent
              ? const Value.absent()
              : Value(analysisId),
      analysisSnapshotJson:
          analysisSnapshotJson == null && nullToAbsent
              ? const Value.absent()
              : Value(analysisSnapshotJson),
      healthConnectRecordId:
          healthConnectRecordId == null && nullToAbsent
              ? const Value.absent()
              : Value(healthConnectRecordId),
      healthConnectRecordVersion: Value(healthConnectRecordVersion),
      mealLogSyncVersion: Value(mealLogSyncVersion),
      mealLogSyncedVersion: Value(mealLogSyncedVersion),
    );
  }

  factory MealInfoTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealInfoTableData(
      id: serializer.fromJson<int>(json['id']),
      mealName: serializer.fromJson<String>(json['mealName']),
      mealQuantity: serializer.fromJson<String>(json['mealQuantity']),
      mealType: serializer.fromJson<String>(json['mealType']),
      calories: serializer.fromJson<int>(json['calories']),
      protein: serializer.fromJson<int>(json['protein']),
      carbs: serializer.fromJson<int>(json['carbs']),
      fat: serializer.fromJson<int>(json['fat']),
      fiber: serializer.fromJson<int>(json['fiber']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      healthScore: serializer.fromJson<String?>(json['healthScore']),
      healthScoreReason: serializer.fromJson<String?>(
        json['healthScoreReason'],
      ),
      analysisId: serializer.fromJson<String?>(json['analysisId']),
      analysisSnapshotJson: serializer.fromJson<String?>(
        json['analysisSnapshotJson'],
      ),
      healthConnectRecordId: serializer.fromJson<String?>(
        json['healthConnectRecordId'],
      ),
      healthConnectRecordVersion: serializer.fromJson<int>(
        json['healthConnectRecordVersion'],
      ),
      mealLogSyncVersion: serializer.fromJson<int>(json['mealLogSyncVersion']),
      mealLogSyncedVersion: serializer.fromJson<int>(
        json['mealLogSyncedVersion'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mealName': serializer.toJson<String>(mealName),
      'mealQuantity': serializer.toJson<String>(mealQuantity),
      'mealType': serializer.toJson<String>(mealType),
      'calories': serializer.toJson<int>(calories),
      'protein': serializer.toJson<int>(protein),
      'carbs': serializer.toJson<int>(carbs),
      'fat': serializer.toJson<int>(fat),
      'fiber': serializer.toJson<int>(fiber),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'healthScore': serializer.toJson<String?>(healthScore),
      'healthScoreReason': serializer.toJson<String?>(healthScoreReason),
      'analysisId': serializer.toJson<String?>(analysisId),
      'analysisSnapshotJson': serializer.toJson<String?>(analysisSnapshotJson),
      'healthConnectRecordId': serializer.toJson<String?>(
        healthConnectRecordId,
      ),
      'healthConnectRecordVersion': serializer.toJson<int>(
        healthConnectRecordVersion,
      ),
      'mealLogSyncVersion': serializer.toJson<int>(mealLogSyncVersion),
      'mealLogSyncedVersion': serializer.toJson<int>(mealLogSyncedVersion),
    };
  }

  MealInfoTableData copyWith({
    int? id,
    String? mealName,
    String? mealQuantity,
    String? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    DateTime? timestamp,
    Value<String?> imageUrl = const Value.absent(),
    Value<String?> healthScore = const Value.absent(),
    Value<String?> healthScoreReason = const Value.absent(),
    Value<String?> analysisId = const Value.absent(),
    Value<String?> analysisSnapshotJson = const Value.absent(),
    Value<String?> healthConnectRecordId = const Value.absent(),
    int? healthConnectRecordVersion,
    int? mealLogSyncVersion,
    int? mealLogSyncedVersion,
  }) => MealInfoTableData(
    id: id ?? this.id,
    mealName: mealName ?? this.mealName,
    mealQuantity: mealQuantity ?? this.mealQuantity,
    mealType: mealType ?? this.mealType,
    calories: calories ?? this.calories,
    protein: protein ?? this.protein,
    carbs: carbs ?? this.carbs,
    fat: fat ?? this.fat,
    fiber: fiber ?? this.fiber,
    timestamp: timestamp ?? this.timestamp,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    healthScore: healthScore.present ? healthScore.value : this.healthScore,
    healthScoreReason:
        healthScoreReason.present
            ? healthScoreReason.value
            : this.healthScoreReason,
    analysisId: analysisId.present ? analysisId.value : this.analysisId,
    analysisSnapshotJson:
        analysisSnapshotJson.present
            ? analysisSnapshotJson.value
            : this.analysisSnapshotJson,
    healthConnectRecordId:
        healthConnectRecordId.present
            ? healthConnectRecordId.value
            : this.healthConnectRecordId,
    healthConnectRecordVersion:
        healthConnectRecordVersion ?? this.healthConnectRecordVersion,
    mealLogSyncVersion: mealLogSyncVersion ?? this.mealLogSyncVersion,
    mealLogSyncedVersion: mealLogSyncedVersion ?? this.mealLogSyncedVersion,
  );
  MealInfoTableData copyWithCompanion(MealInfoTableCompanion data) {
    return MealInfoTableData(
      id: data.id.present ? data.id.value : this.id,
      mealName: data.mealName.present ? data.mealName.value : this.mealName,
      mealQuantity:
          data.mealQuantity.present
              ? data.mealQuantity.value
              : this.mealQuantity,
      mealType: data.mealType.present ? data.mealType.value : this.mealType,
      calories: data.calories.present ? data.calories.value : this.calories,
      protein: data.protein.present ? data.protein.value : this.protein,
      carbs: data.carbs.present ? data.carbs.value : this.carbs,
      fat: data.fat.present ? data.fat.value : this.fat,
      fiber: data.fiber.present ? data.fiber.value : this.fiber,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      healthScore:
          data.healthScore.present ? data.healthScore.value : this.healthScore,
      healthScoreReason:
          data.healthScoreReason.present
              ? data.healthScoreReason.value
              : this.healthScoreReason,
      analysisId:
          data.analysisId.present ? data.analysisId.value : this.analysisId,
      analysisSnapshotJson:
          data.analysisSnapshotJson.present
              ? data.analysisSnapshotJson.value
              : this.analysisSnapshotJson,
      healthConnectRecordId:
          data.healthConnectRecordId.present
              ? data.healthConnectRecordId.value
              : this.healthConnectRecordId,
      healthConnectRecordVersion:
          data.healthConnectRecordVersion.present
              ? data.healthConnectRecordVersion.value
              : this.healthConnectRecordVersion,
      mealLogSyncVersion:
          data.mealLogSyncVersion.present
              ? data.mealLogSyncVersion.value
              : this.mealLogSyncVersion,
      mealLogSyncedVersion:
          data.mealLogSyncedVersion.present
              ? data.mealLogSyncedVersion.value
              : this.mealLogSyncedVersion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MealInfoTableData(')
          ..write('id: $id, ')
          ..write('mealName: $mealName, ')
          ..write('mealQuantity: $mealQuantity, ')
          ..write('mealType: $mealType, ')
          ..write('calories: $calories, ')
          ..write('protein: $protein, ')
          ..write('carbs: $carbs, ')
          ..write('fat: $fat, ')
          ..write('fiber: $fiber, ')
          ..write('timestamp: $timestamp, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('healthScore: $healthScore, ')
          ..write('healthScoreReason: $healthScoreReason, ')
          ..write('analysisId: $analysisId, ')
          ..write('analysisSnapshotJson: $analysisSnapshotJson, ')
          ..write('healthConnectRecordId: $healthConnectRecordId, ')
          ..write('healthConnectRecordVersion: $healthConnectRecordVersion, ')
          ..write('mealLogSyncVersion: $mealLogSyncVersion, ')
          ..write('mealLogSyncedVersion: $mealLogSyncedVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    mealName,
    mealQuantity,
    mealType,
    calories,
    protein,
    carbs,
    fat,
    fiber,
    timestamp,
    imageUrl,
    healthScore,
    healthScoreReason,
    analysisId,
    analysisSnapshotJson,
    healthConnectRecordId,
    healthConnectRecordVersion,
    mealLogSyncVersion,
    mealLogSyncedVersion,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealInfoTableData &&
          other.id == this.id &&
          other.mealName == this.mealName &&
          other.mealQuantity == this.mealQuantity &&
          other.mealType == this.mealType &&
          other.calories == this.calories &&
          other.protein == this.protein &&
          other.carbs == this.carbs &&
          other.fat == this.fat &&
          other.fiber == this.fiber &&
          other.timestamp == this.timestamp &&
          other.imageUrl == this.imageUrl &&
          other.healthScore == this.healthScore &&
          other.healthScoreReason == this.healthScoreReason &&
          other.analysisId == this.analysisId &&
          other.analysisSnapshotJson == this.analysisSnapshotJson &&
          other.healthConnectRecordId == this.healthConnectRecordId &&
          other.healthConnectRecordVersion == this.healthConnectRecordVersion &&
          other.mealLogSyncVersion == this.mealLogSyncVersion &&
          other.mealLogSyncedVersion == this.mealLogSyncedVersion);
}

class MealInfoTableCompanion extends UpdateCompanion<MealInfoTableData> {
  final Value<int> id;
  final Value<String> mealName;
  final Value<String> mealQuantity;
  final Value<String> mealType;
  final Value<int> calories;
  final Value<int> protein;
  final Value<int> carbs;
  final Value<int> fat;
  final Value<int> fiber;
  final Value<DateTime> timestamp;
  final Value<String?> imageUrl;
  final Value<String?> healthScore;
  final Value<String?> healthScoreReason;
  final Value<String?> analysisId;
  final Value<String?> analysisSnapshotJson;
  final Value<String?> healthConnectRecordId;
  final Value<int> healthConnectRecordVersion;
  final Value<int> mealLogSyncVersion;
  final Value<int> mealLogSyncedVersion;
  const MealInfoTableCompanion({
    this.id = const Value.absent(),
    this.mealName = const Value.absent(),
    this.mealQuantity = const Value.absent(),
    this.mealType = const Value.absent(),
    this.calories = const Value.absent(),
    this.protein = const Value.absent(),
    this.carbs = const Value.absent(),
    this.fat = const Value.absent(),
    this.fiber = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.healthScore = const Value.absent(),
    this.healthScoreReason = const Value.absent(),
    this.analysisId = const Value.absent(),
    this.analysisSnapshotJson = const Value.absent(),
    this.healthConnectRecordId = const Value.absent(),
    this.healthConnectRecordVersion = const Value.absent(),
    this.mealLogSyncVersion = const Value.absent(),
    this.mealLogSyncedVersion = const Value.absent(),
  });
  MealInfoTableCompanion.insert({
    this.id = const Value.absent(),
    required String mealName,
    required String mealQuantity,
    required String mealType,
    required int calories,
    required int protein,
    required int carbs,
    required int fat,
    required int fiber,
    required DateTime timestamp,
    this.imageUrl = const Value.absent(),
    this.healthScore = const Value.absent(),
    this.healthScoreReason = const Value.absent(),
    this.analysisId = const Value.absent(),
    this.analysisSnapshotJson = const Value.absent(),
    this.healthConnectRecordId = const Value.absent(),
    this.healthConnectRecordVersion = const Value.absent(),
    this.mealLogSyncVersion = const Value.absent(),
    this.mealLogSyncedVersion = const Value.absent(),
  }) : mealName = Value(mealName),
       mealQuantity = Value(mealQuantity),
       mealType = Value(mealType),
       calories = Value(calories),
       protein = Value(protein),
       carbs = Value(carbs),
       fat = Value(fat),
       fiber = Value(fiber),
       timestamp = Value(timestamp);
  static Insertable<MealInfoTableData> custom({
    Expression<int>? id,
    Expression<String>? mealName,
    Expression<String>? mealQuantity,
    Expression<String>? mealType,
    Expression<int>? calories,
    Expression<int>? protein,
    Expression<int>? carbs,
    Expression<int>? fat,
    Expression<int>? fiber,
    Expression<DateTime>? timestamp,
    Expression<String>? imageUrl,
    Expression<String>? healthScore,
    Expression<String>? healthScoreReason,
    Expression<String>? analysisId,
    Expression<String>? analysisSnapshotJson,
    Expression<String>? healthConnectRecordId,
    Expression<int>? healthConnectRecordVersion,
    Expression<int>? mealLogSyncVersion,
    Expression<int>? mealLogSyncedVersion,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mealName != null) 'meal_name': mealName,
      if (mealQuantity != null) 'meal_quantity': mealQuantity,
      if (mealType != null) 'meal_type': mealType,
      if (calories != null) 'calories': calories,
      if (protein != null) 'protein': protein,
      if (carbs != null) 'carbs': carbs,
      if (fat != null) 'fat': fat,
      if (fiber != null) 'fiber': fiber,
      if (timestamp != null) 'timestamp': timestamp,
      if (imageUrl != null) 'image_url': imageUrl,
      if (healthScore != null) 'health_score': healthScore,
      if (healthScoreReason != null) 'health_score_reason': healthScoreReason,
      if (analysisId != null) 'analysis_id': analysisId,
      if (analysisSnapshotJson != null)
        'analysis_snapshot_json': analysisSnapshotJson,
      if (healthConnectRecordId != null)
        'health_connect_record_id': healthConnectRecordId,
      if (healthConnectRecordVersion != null)
        'health_connect_record_version': healthConnectRecordVersion,
      if (mealLogSyncVersion != null)
        'meal_log_sync_version': mealLogSyncVersion,
      if (mealLogSyncedVersion != null)
        'meal_log_synced_version': mealLogSyncedVersion,
    });
  }

  MealInfoTableCompanion copyWith({
    Value<int>? id,
    Value<String>? mealName,
    Value<String>? mealQuantity,
    Value<String>? mealType,
    Value<int>? calories,
    Value<int>? protein,
    Value<int>? carbs,
    Value<int>? fat,
    Value<int>? fiber,
    Value<DateTime>? timestamp,
    Value<String?>? imageUrl,
    Value<String?>? healthScore,
    Value<String?>? healthScoreReason,
    Value<String?>? analysisId,
    Value<String?>? analysisSnapshotJson,
    Value<String?>? healthConnectRecordId,
    Value<int>? healthConnectRecordVersion,
    Value<int>? mealLogSyncVersion,
    Value<int>? mealLogSyncedVersion,
  }) {
    return MealInfoTableCompanion(
      id: id ?? this.id,
      mealName: mealName ?? this.mealName,
      mealQuantity: mealQuantity ?? this.mealQuantity,
      mealType: mealType ?? this.mealType,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      timestamp: timestamp ?? this.timestamp,
      imageUrl: imageUrl ?? this.imageUrl,
      healthScore: healthScore ?? this.healthScore,
      healthScoreReason: healthScoreReason ?? this.healthScoreReason,
      analysisId: analysisId ?? this.analysisId,
      analysisSnapshotJson: analysisSnapshotJson ?? this.analysisSnapshotJson,
      healthConnectRecordId:
          healthConnectRecordId ?? this.healthConnectRecordId,
      healthConnectRecordVersion:
          healthConnectRecordVersion ?? this.healthConnectRecordVersion,
      mealLogSyncVersion: mealLogSyncVersion ?? this.mealLogSyncVersion,
      mealLogSyncedVersion: mealLogSyncedVersion ?? this.mealLogSyncedVersion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mealName.present) {
      map['meal_name'] = Variable<String>(mealName.value);
    }
    if (mealQuantity.present) {
      map['meal_quantity'] = Variable<String>(mealQuantity.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<String>(mealType.value);
    }
    if (calories.present) {
      map['calories'] = Variable<int>(calories.value);
    }
    if (protein.present) {
      map['protein'] = Variable<int>(protein.value);
    }
    if (carbs.present) {
      map['carbs'] = Variable<int>(carbs.value);
    }
    if (fat.present) {
      map['fat'] = Variable<int>(fat.value);
    }
    if (fiber.present) {
      map['fiber'] = Variable<int>(fiber.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (healthScore.present) {
      map['health_score'] = Variable<String>(healthScore.value);
    }
    if (healthScoreReason.present) {
      map['health_score_reason'] = Variable<String>(healthScoreReason.value);
    }
    if (analysisId.present) {
      map['analysis_id'] = Variable<String>(analysisId.value);
    }
    if (analysisSnapshotJson.present) {
      map['analysis_snapshot_json'] = Variable<String>(
        analysisSnapshotJson.value,
      );
    }
    if (healthConnectRecordId.present) {
      map['health_connect_record_id'] = Variable<String>(
        healthConnectRecordId.value,
      );
    }
    if (healthConnectRecordVersion.present) {
      map['health_connect_record_version'] = Variable<int>(
        healthConnectRecordVersion.value,
      );
    }
    if (mealLogSyncVersion.present) {
      map['meal_log_sync_version'] = Variable<int>(mealLogSyncVersion.value);
    }
    if (mealLogSyncedVersion.present) {
      map['meal_log_synced_version'] = Variable<int>(
        mealLogSyncedVersion.value,
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('mealName: $mealName, ')
          ..write('mealQuantity: $mealQuantity, ')
          ..write('mealType: $mealType, ')
          ..write('calories: $calories, ')
          ..write('protein: $protein, ')
          ..write('carbs: $carbs, ')
          ..write('fat: $fat, ')
          ..write('fiber: $fiber, ')
          ..write('timestamp: $timestamp, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('healthScore: $healthScore, ')
          ..write('healthScoreReason: $healthScoreReason, ')
          ..write('analysisId: $analysisId, ')
          ..write('analysisSnapshotJson: $analysisSnapshotJson, ')
          ..write('healthConnectRecordId: $healthConnectRecordId, ')
          ..write('healthConnectRecordVersion: $healthConnectRecordVersion, ')
          ..write('mealLogSyncVersion: $mealLogSyncVersion, ')
          ..write('mealLogSyncedVersion: $mealLogSyncedVersion')
          ..write(')'))
        .toString();
  }
}

class $UserProfileTableTable extends UserProfileTable
    with TableInfo<$UserProfileTableTable, UserProfileTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfileTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dailyCalorieGoalMeta = const VerificationMeta(
    'dailyCalorieGoal',
  );
  @override
  late final GeneratedColumn<int> dailyCalorieGoal = GeneratedColumn<int>(
    'daily_calorie_goal',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
    'height',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetWeightMeta = const VerificationMeta(
    'targetWeight',
  );
  @override
  late final GeneratedColumn<double> targetWeight = GeneratedColumn<double>(
    'target_weight',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dateOfBirthMeta = const VerificationMeta(
    'dateOfBirth',
  );
  @override
  late final GeneratedColumn<DateTime> dateOfBirth = GeneratedColumn<DateTime>(
    'date_of_birth',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightGoalMeta = const VerificationMeta(
    'weightGoal',
  );
  @override
  late final GeneratedColumn<String> weightGoal = GeneratedColumn<String>(
    'weight_goal',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _activityLevelMeta = const VerificationMeta(
    'activityLevel',
  );
  @override
  late final GeneratedColumn<String> activityLevel = GeneratedColumn<String>(
    'activity_level',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightUnitMeta = const VerificationMeta(
    'heightUnit',
  );
  @override
  late final GeneratedColumn<String> heightUnit = GeneratedColumn<String>(
    'height_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('metric'),
  );
  static const VerificationMeta _weightUnitMeta = const VerificationMeta(
    'weightUnit',
  );
  @override
  late final GeneratedColumn<String> weightUnit = GeneratedColumn<String>(
    'weight_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('metric'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _needsRemoteSyncMeta = const VerificationMeta(
    'needsRemoteSync',
  );
  @override
  late final GeneratedColumn<bool> needsRemoteSync = GeneratedColumn<bool>(
    'needs_remote_sync',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("needs_remote_sync" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _remoteSyncRevisionMeta =
      const VerificationMeta('remoteSyncRevision');
  @override
  late final GeneratedColumn<String> remoteSyncRevision =
      GeneratedColumn<String>(
        'remote_sync_revision',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    dailyCalorieGoal,
    height,
    weight,
    targetWeight,
    gender,
    dateOfBirth,
    weightGoal,
    activityLevel,
    heightUnit,
    weightUnit,
    createdAt,
    updatedAt,
    needsRemoteSync,
    remoteSyncRevision,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profile_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserProfileTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('daily_calorie_goal')) {
      context.handle(
        _dailyCalorieGoalMeta,
        dailyCalorieGoal.isAcceptableOrUnknown(
          data['daily_calorie_goal']!,
          _dailyCalorieGoalMeta,
        ),
      );
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    }
    if (data.containsKey('target_weight')) {
      context.handle(
        _targetWeightMeta,
        targetWeight.isAcceptableOrUnknown(
          data['target_weight']!,
          _targetWeightMeta,
        ),
      );
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
        _dateOfBirthMeta,
        dateOfBirth.isAcceptableOrUnknown(
          data['date_of_birth']!,
          _dateOfBirthMeta,
        ),
      );
    }
    if (data.containsKey('weight_goal')) {
      context.handle(
        _weightGoalMeta,
        weightGoal.isAcceptableOrUnknown(data['weight_goal']!, _weightGoalMeta),
      );
    }
    if (data.containsKey('activity_level')) {
      context.handle(
        _activityLevelMeta,
        activityLevel.isAcceptableOrUnknown(
          data['activity_level']!,
          _activityLevelMeta,
        ),
      );
    }
    if (data.containsKey('height_unit')) {
      context.handle(
        _heightUnitMeta,
        heightUnit.isAcceptableOrUnknown(data['height_unit']!, _heightUnitMeta),
      );
    }
    if (data.containsKey('weight_unit')) {
      context.handle(
        _weightUnitMeta,
        weightUnit.isAcceptableOrUnknown(data['weight_unit']!, _weightUnitMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('needs_remote_sync')) {
      context.handle(
        _needsRemoteSyncMeta,
        needsRemoteSync.isAcceptableOrUnknown(
          data['needs_remote_sync']!,
          _needsRemoteSyncMeta,
        ),
      );
    }
    if (data.containsKey('remote_sync_revision')) {
      context.handle(
        _remoteSyncRevisionMeta,
        remoteSyncRevision.isAcceptableOrUnknown(
          data['remote_sync_revision']!,
          _remoteSyncRevisionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfileTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfileTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      dailyCalorieGoal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}daily_calorie_goal'],
      ),
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}height'],
      ),
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      ),
      targetWeight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_weight'],
      ),
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      ),
      dateOfBirth: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date_of_birth'],
      ),
      weightGoal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}weight_goal'],
      ),
      activityLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}activity_level'],
      ),
      heightUnit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}height_unit'],
          )!,
      weightUnit:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}weight_unit'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
      needsRemoteSync:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}needs_remote_sync'],
          )!,
      remoteSyncRevision: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remote_sync_revision'],
      ),
    );
  }

  @override
  $UserProfileTableTable createAlias(String alias) {
    return $UserProfileTableTable(attachedDatabase, alias);
  }
}

class UserProfileTableData extends DataClass
    implements Insertable<UserProfileTableData> {
  final int id;
  final int? dailyCalorieGoal;
  final double? height;
  final double? weight;
  final double? targetWeight;
  final String? gender;
  final DateTime? dateOfBirth;
  final String? weightGoal;
  final String? activityLevel;
  final String heightUnit;
  final String weightUnit;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool needsRemoteSync;
  final String? remoteSyncRevision;
  const UserProfileTableData({
    required this.id,
    this.dailyCalorieGoal,
    this.height,
    this.weight,
    this.targetWeight,
    this.gender,
    this.dateOfBirth,
    this.weightGoal,
    this.activityLevel,
    required this.heightUnit,
    required this.weightUnit,
    required this.createdAt,
    required this.updatedAt,
    required this.needsRemoteSync,
    this.remoteSyncRevision,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || dailyCalorieGoal != null) {
      map['daily_calorie_goal'] = Variable<int>(dailyCalorieGoal);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double>(weight);
    }
    if (!nullToAbsent || targetWeight != null) {
      map['target_weight'] = Variable<double>(targetWeight);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth);
    }
    if (!nullToAbsent || weightGoal != null) {
      map['weight_goal'] = Variable<String>(weightGoal);
    }
    if (!nullToAbsent || activityLevel != null) {
      map['activity_level'] = Variable<String>(activityLevel);
    }
    map['height_unit'] = Variable<String>(heightUnit);
    map['weight_unit'] = Variable<String>(weightUnit);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['needs_remote_sync'] = Variable<bool>(needsRemoteSync);
    if (!nullToAbsent || remoteSyncRevision != null) {
      map['remote_sync_revision'] = Variable<String>(remoteSyncRevision);
    }
    return map;
  }

  UserProfileTableCompanion toCompanion(bool nullToAbsent) {
    return UserProfileTableCompanion(
      id: Value(id),
      dailyCalorieGoal:
          dailyCalorieGoal == null && nullToAbsent
              ? const Value.absent()
              : Value(dailyCalorieGoal),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      targetWeight:
          targetWeight == null && nullToAbsent
              ? const Value.absent()
              : Value(targetWeight),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      dateOfBirth:
          dateOfBirth == null && nullToAbsent
              ? const Value.absent()
              : Value(dateOfBirth),
      weightGoal:
          weightGoal == null && nullToAbsent
              ? const Value.absent()
              : Value(weightGoal),
      activityLevel:
          activityLevel == null && nullToAbsent
              ? const Value.absent()
              : Value(activityLevel),
      heightUnit: Value(heightUnit),
      weightUnit: Value(weightUnit),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      needsRemoteSync: Value(needsRemoteSync),
      remoteSyncRevision:
          remoteSyncRevision == null && nullToAbsent
              ? const Value.absent()
              : Value(remoteSyncRevision),
    );
  }

  factory UserProfileTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfileTableData(
      id: serializer.fromJson<int>(json['id']),
      dailyCalorieGoal: serializer.fromJson<int?>(json['dailyCalorieGoal']),
      height: serializer.fromJson<double?>(json['height']),
      weight: serializer.fromJson<double?>(json['weight']),
      targetWeight: serializer.fromJson<double?>(json['targetWeight']),
      gender: serializer.fromJson<String?>(json['gender']),
      dateOfBirth: serializer.fromJson<DateTime?>(json['dateOfBirth']),
      weightGoal: serializer.fromJson<String?>(json['weightGoal']),
      activityLevel: serializer.fromJson<String?>(json['activityLevel']),
      heightUnit: serializer.fromJson<String>(json['heightUnit']),
      weightUnit: serializer.fromJson<String>(json['weightUnit']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      needsRemoteSync: serializer.fromJson<bool>(json['needsRemoteSync']),
      remoteSyncRevision: serializer.fromJson<String?>(
        json['remoteSyncRevision'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dailyCalorieGoal': serializer.toJson<int?>(dailyCalorieGoal),
      'height': serializer.toJson<double?>(height),
      'weight': serializer.toJson<double?>(weight),
      'targetWeight': serializer.toJson<double?>(targetWeight),
      'gender': serializer.toJson<String?>(gender),
      'dateOfBirth': serializer.toJson<DateTime?>(dateOfBirth),
      'weightGoal': serializer.toJson<String?>(weightGoal),
      'activityLevel': serializer.toJson<String?>(activityLevel),
      'heightUnit': serializer.toJson<String>(heightUnit),
      'weightUnit': serializer.toJson<String>(weightUnit),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'needsRemoteSync': serializer.toJson<bool>(needsRemoteSync),
      'remoteSyncRevision': serializer.toJson<String?>(remoteSyncRevision),
    };
  }

  UserProfileTableData copyWith({
    int? id,
    Value<int?> dailyCalorieGoal = const Value.absent(),
    Value<double?> height = const Value.absent(),
    Value<double?> weight = const Value.absent(),
    Value<double?> targetWeight = const Value.absent(),
    Value<String?> gender = const Value.absent(),
    Value<DateTime?> dateOfBirth = const Value.absent(),
    Value<String?> weightGoal = const Value.absent(),
    Value<String?> activityLevel = const Value.absent(),
    String? heightUnit,
    String? weightUnit,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? needsRemoteSync,
    Value<String?> remoteSyncRevision = const Value.absent(),
  }) => UserProfileTableData(
    id: id ?? this.id,
    dailyCalorieGoal:
        dailyCalorieGoal.present
            ? dailyCalorieGoal.value
            : this.dailyCalorieGoal,
    height: height.present ? height.value : this.height,
    weight: weight.present ? weight.value : this.weight,
    targetWeight: targetWeight.present ? targetWeight.value : this.targetWeight,
    gender: gender.present ? gender.value : this.gender,
    dateOfBirth: dateOfBirth.present ? dateOfBirth.value : this.dateOfBirth,
    weightGoal: weightGoal.present ? weightGoal.value : this.weightGoal,
    activityLevel:
        activityLevel.present ? activityLevel.value : this.activityLevel,
    heightUnit: heightUnit ?? this.heightUnit,
    weightUnit: weightUnit ?? this.weightUnit,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    needsRemoteSync: needsRemoteSync ?? this.needsRemoteSync,
    remoteSyncRevision:
        remoteSyncRevision.present
            ? remoteSyncRevision.value
            : this.remoteSyncRevision,
  );
  UserProfileTableData copyWithCompanion(UserProfileTableCompanion data) {
    return UserProfileTableData(
      id: data.id.present ? data.id.value : this.id,
      dailyCalorieGoal:
          data.dailyCalorieGoal.present
              ? data.dailyCalorieGoal.value
              : this.dailyCalorieGoal,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
      targetWeight:
          data.targetWeight.present
              ? data.targetWeight.value
              : this.targetWeight,
      gender: data.gender.present ? data.gender.value : this.gender,
      dateOfBirth:
          data.dateOfBirth.present ? data.dateOfBirth.value : this.dateOfBirth,
      weightGoal:
          data.weightGoal.present ? data.weightGoal.value : this.weightGoal,
      activityLevel:
          data.activityLevel.present
              ? data.activityLevel.value
              : this.activityLevel,
      heightUnit:
          data.heightUnit.present ? data.heightUnit.value : this.heightUnit,
      weightUnit:
          data.weightUnit.present ? data.weightUnit.value : this.weightUnit,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      needsRemoteSync:
          data.needsRemoteSync.present
              ? data.needsRemoteSync.value
              : this.needsRemoteSync,
      remoteSyncRevision:
          data.remoteSyncRevision.present
              ? data.remoteSyncRevision.value
              : this.remoteSyncRevision,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfileTableData(')
          ..write('id: $id, ')
          ..write('dailyCalorieGoal: $dailyCalorieGoal, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('targetWeight: $targetWeight, ')
          ..write('gender: $gender, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('weightGoal: $weightGoal, ')
          ..write('activityLevel: $activityLevel, ')
          ..write('heightUnit: $heightUnit, ')
          ..write('weightUnit: $weightUnit, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('needsRemoteSync: $needsRemoteSync, ')
          ..write('remoteSyncRevision: $remoteSyncRevision')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    dailyCalorieGoal,
    height,
    weight,
    targetWeight,
    gender,
    dateOfBirth,
    weightGoal,
    activityLevel,
    heightUnit,
    weightUnit,
    createdAt,
    updatedAt,
    needsRemoteSync,
    remoteSyncRevision,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfileTableData &&
          other.id == this.id &&
          other.dailyCalorieGoal == this.dailyCalorieGoal &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.targetWeight == this.targetWeight &&
          other.gender == this.gender &&
          other.dateOfBirth == this.dateOfBirth &&
          other.weightGoal == this.weightGoal &&
          other.activityLevel == this.activityLevel &&
          other.heightUnit == this.heightUnit &&
          other.weightUnit == this.weightUnit &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.needsRemoteSync == this.needsRemoteSync &&
          other.remoteSyncRevision == this.remoteSyncRevision);
}

class UserProfileTableCompanion extends UpdateCompanion<UserProfileTableData> {
  final Value<int> id;
  final Value<int?> dailyCalorieGoal;
  final Value<double?> height;
  final Value<double?> weight;
  final Value<double?> targetWeight;
  final Value<String?> gender;
  final Value<DateTime?> dateOfBirth;
  final Value<String?> weightGoal;
  final Value<String?> activityLevel;
  final Value<String> heightUnit;
  final Value<String> weightUnit;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> needsRemoteSync;
  final Value<String?> remoteSyncRevision;
  const UserProfileTableCompanion({
    this.id = const Value.absent(),
    this.dailyCalorieGoal = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.targetWeight = const Value.absent(),
    this.gender = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.weightGoal = const Value.absent(),
    this.activityLevel = const Value.absent(),
    this.heightUnit = const Value.absent(),
    this.weightUnit = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.needsRemoteSync = const Value.absent(),
    this.remoteSyncRevision = const Value.absent(),
  });
  UserProfileTableCompanion.insert({
    this.id = const Value.absent(),
    this.dailyCalorieGoal = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.targetWeight = const Value.absent(),
    this.gender = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.weightGoal = const Value.absent(),
    this.activityLevel = const Value.absent(),
    this.heightUnit = const Value.absent(),
    this.weightUnit = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.needsRemoteSync = const Value.absent(),
    this.remoteSyncRevision = const Value.absent(),
  });
  static Insertable<UserProfileTableData> custom({
    Expression<int>? id,
    Expression<int>? dailyCalorieGoal,
    Expression<double>? height,
    Expression<double>? weight,
    Expression<double>? targetWeight,
    Expression<String>? gender,
    Expression<DateTime>? dateOfBirth,
    Expression<String>? weightGoal,
    Expression<String>? activityLevel,
    Expression<String>? heightUnit,
    Expression<String>? weightUnit,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? needsRemoteSync,
    Expression<String>? remoteSyncRevision,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dailyCalorieGoal != null) 'daily_calorie_goal': dailyCalorieGoal,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (targetWeight != null) 'target_weight': targetWeight,
      if (gender != null) 'gender': gender,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (weightGoal != null) 'weight_goal': weightGoal,
      if (activityLevel != null) 'activity_level': activityLevel,
      if (heightUnit != null) 'height_unit': heightUnit,
      if (weightUnit != null) 'weight_unit': weightUnit,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (needsRemoteSync != null) 'needs_remote_sync': needsRemoteSync,
      if (remoteSyncRevision != null)
        'remote_sync_revision': remoteSyncRevision,
    });
  }

  UserProfileTableCompanion copyWith({
    Value<int>? id,
    Value<int?>? dailyCalorieGoal,
    Value<double?>? height,
    Value<double?>? weight,
    Value<double?>? targetWeight,
    Value<String?>? gender,
    Value<DateTime?>? dateOfBirth,
    Value<String?>? weightGoal,
    Value<String?>? activityLevel,
    Value<String>? heightUnit,
    Value<String>? weightUnit,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? needsRemoteSync,
    Value<String?>? remoteSyncRevision,
  }) {
    return UserProfileTableCompanion(
      id: id ?? this.id,
      dailyCalorieGoal: dailyCalorieGoal ?? this.dailyCalorieGoal,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      targetWeight: targetWeight ?? this.targetWeight,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      weightGoal: weightGoal ?? this.weightGoal,
      activityLevel: activityLevel ?? this.activityLevel,
      heightUnit: heightUnit ?? this.heightUnit,
      weightUnit: weightUnit ?? this.weightUnit,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      needsRemoteSync: needsRemoteSync ?? this.needsRemoteSync,
      remoteSyncRevision: remoteSyncRevision ?? this.remoteSyncRevision,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dailyCalorieGoal.present) {
      map['daily_calorie_goal'] = Variable<int>(dailyCalorieGoal.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (targetWeight.present) {
      map['target_weight'] = Variable<double>(targetWeight.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth.value);
    }
    if (weightGoal.present) {
      map['weight_goal'] = Variable<String>(weightGoal.value);
    }
    if (activityLevel.present) {
      map['activity_level'] = Variable<String>(activityLevel.value);
    }
    if (heightUnit.present) {
      map['height_unit'] = Variable<String>(heightUnit.value);
    }
    if (weightUnit.present) {
      map['weight_unit'] = Variable<String>(weightUnit.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (needsRemoteSync.present) {
      map['needs_remote_sync'] = Variable<bool>(needsRemoteSync.value);
    }
    if (remoteSyncRevision.present) {
      map['remote_sync_revision'] = Variable<String>(remoteSyncRevision.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfileTableCompanion(')
          ..write('id: $id, ')
          ..write('dailyCalorieGoal: $dailyCalorieGoal, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('targetWeight: $targetWeight, ')
          ..write('gender: $gender, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('weightGoal: $weightGoal, ')
          ..write('activityLevel: $activityLevel, ')
          ..write('heightUnit: $heightUnit, ')
          ..write('weightUnit: $weightUnit, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('needsRemoteSync: $needsRemoteSync, ')
          ..write('remoteSyncRevision: $remoteSyncRevision')
          ..write(')'))
        .toString();
  }
}

class $UserPreferencesTableTable extends UserPreferencesTable
    with TableInfo<$UserPreferencesTableTable, UserPreferencesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserPreferencesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _themeMeta = const VerificationMeta('theme');
  @override
  late final GeneratedColumn<String> theme = GeneratedColumn<String>(
    'theme',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _feedbackSheetShownAtMeta =
      const VerificationMeta('feedbackSheetShownAt');
  @override
  late final GeneratedColumn<DateTime> feedbackSheetShownAt =
      GeneratedColumn<DateTime>(
        'feedback_sheet_shown_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _onboardingCurrentStepMeta =
      const VerificationMeta('onboardingCurrentStep');
  @override
  late final GeneratedColumn<int> onboardingCurrentStep = GeneratedColumn<int>(
    'onboarding_current_step',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _onboardingCompletedAtMeta =
      const VerificationMeta('onboardingCompletedAt');
  @override
  late final GeneratedColumn<DateTime> onboardingCompletedAt =
      GeneratedColumn<DateTime>(
        'onboarding_completed_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _localInferenceEnabledMeta =
      const VerificationMeta('localInferenceEnabled');
  @override
  late final GeneratedColumn<bool> localInferenceEnabled =
      GeneratedColumn<bool>(
        'local_inference_enabled',
        aliasedName,
        false,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("local_inference_enabled" IN (0, 1))',
        ),
        defaultValue: const Constant(false),
      );
  static const VerificationMeta _offlineNutritionEnabledMeta =
      const VerificationMeta('offlineNutritionEnabled');
  @override
  late final GeneratedColumn<bool> offlineNutritionEnabled =
      GeneratedColumn<bool>(
        'offline_nutrition_enabled',
        aliasedName,
        false,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("offline_nutrition_enabled" IN (0, 1))',
        ),
        defaultValue: const Constant(false),
      );
  static const VerificationMeta _healthConnectNutritionSyncEnabledMeta =
      const VerificationMeta('healthConnectNutritionSyncEnabled');
  @override
  late final GeneratedColumn<bool> healthConnectNutritionSyncEnabled =
      GeneratedColumn<bool>(
        'health_connect_nutrition_sync_enabled',
        aliasedName,
        true,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("health_connect_nutrition_sync_enabled" IN (0, 1))',
        ),
      );
  static const VerificationMeta _healthConnectPromptDismissedMeta =
      const VerificationMeta('healthConnectPromptDismissed');
  @override
  late final GeneratedColumn<bool> healthConnectPromptDismissed =
      GeneratedColumn<bool>(
        'health_connect_prompt_dismissed',
        aliasedName,
        false,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("health_connect_prompt_dismissed" IN (0, 1))',
        ),
        defaultValue: const Constant(false),
      );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    languageCode,
    theme,
    feedbackSheetShownAt,
    onboardingCurrentStep,
    onboardingCompletedAt,
    localInferenceEnabled,
    offlineNutritionEnabled,
    healthConnectNutritionSyncEnabled,
    healthConnectPromptDismissed,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_preferences_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserPreferencesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    }
    if (data.containsKey('theme')) {
      context.handle(
        _themeMeta,
        theme.isAcceptableOrUnknown(data['theme']!, _themeMeta),
      );
    }
    if (data.containsKey('feedback_sheet_shown_at')) {
      context.handle(
        _feedbackSheetShownAtMeta,
        feedbackSheetShownAt.isAcceptableOrUnknown(
          data['feedback_sheet_shown_at']!,
          _feedbackSheetShownAtMeta,
        ),
      );
    }
    if (data.containsKey('onboarding_current_step')) {
      context.handle(
        _onboardingCurrentStepMeta,
        onboardingCurrentStep.isAcceptableOrUnknown(
          data['onboarding_current_step']!,
          _onboardingCurrentStepMeta,
        ),
      );
    }
    if (data.containsKey('onboarding_completed_at')) {
      context.handle(
        _onboardingCompletedAtMeta,
        onboardingCompletedAt.isAcceptableOrUnknown(
          data['onboarding_completed_at']!,
          _onboardingCompletedAtMeta,
        ),
      );
    }
    if (data.containsKey('local_inference_enabled')) {
      context.handle(
        _localInferenceEnabledMeta,
        localInferenceEnabled.isAcceptableOrUnknown(
          data['local_inference_enabled']!,
          _localInferenceEnabledMeta,
        ),
      );
    }
    if (data.containsKey('offline_nutrition_enabled')) {
      context.handle(
        _offlineNutritionEnabledMeta,
        offlineNutritionEnabled.isAcceptableOrUnknown(
          data['offline_nutrition_enabled']!,
          _offlineNutritionEnabledMeta,
        ),
      );
    }
    if (data.containsKey('health_connect_nutrition_sync_enabled')) {
      context.handle(
        _healthConnectNutritionSyncEnabledMeta,
        healthConnectNutritionSyncEnabled.isAcceptableOrUnknown(
          data['health_connect_nutrition_sync_enabled']!,
          _healthConnectNutritionSyncEnabledMeta,
        ),
      );
    }
    if (data.containsKey('health_connect_prompt_dismissed')) {
      context.handle(
        _healthConnectPromptDismissedMeta,
        healthConnectPromptDismissed.isAcceptableOrUnknown(
          data['health_connect_prompt_dismissed']!,
          _healthConnectPromptDismissedMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserPreferencesTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserPreferencesTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      languageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language_code'],
      ),
      theme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}theme'],
      ),
      feedbackSheetShownAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}feedback_sheet_shown_at'],
      ),
      onboardingCurrentStep: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}onboarding_current_step'],
      ),
      onboardingCompletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}onboarding_completed_at'],
      ),
      localInferenceEnabled:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}local_inference_enabled'],
          )!,
      offlineNutritionEnabled:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}offline_nutrition_enabled'],
          )!,
      healthConnectNutritionSyncEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}health_connect_nutrition_sync_enabled'],
      ),
      healthConnectPromptDismissed:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}health_connect_prompt_dismissed'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $UserPreferencesTableTable createAlias(String alias) {
    return $UserPreferencesTableTable(attachedDatabase, alias);
  }
}

class UserPreferencesTableData extends DataClass
    implements Insertable<UserPreferencesTableData> {
  final int id;
  final String? languageCode;
  final String? theme;
  final DateTime? feedbackSheetShownAt;
  final int? onboardingCurrentStep;
  final DateTime? onboardingCompletedAt;
  final bool localInferenceEnabled;
  final bool offlineNutritionEnabled;
  final bool? healthConnectNutritionSyncEnabled;
  final bool healthConnectPromptDismissed;
  final DateTime updatedAt;
  const UserPreferencesTableData({
    required this.id,
    this.languageCode,
    this.theme,
    this.feedbackSheetShownAt,
    this.onboardingCurrentStep,
    this.onboardingCompletedAt,
    required this.localInferenceEnabled,
    required this.offlineNutritionEnabled,
    this.healthConnectNutritionSyncEnabled,
    required this.healthConnectPromptDismissed,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || languageCode != null) {
      map['language_code'] = Variable<String>(languageCode);
    }
    if (!nullToAbsent || theme != null) {
      map['theme'] = Variable<String>(theme);
    }
    if (!nullToAbsent || feedbackSheetShownAt != null) {
      map['feedback_sheet_shown_at'] = Variable<DateTime>(feedbackSheetShownAt);
    }
    if (!nullToAbsent || onboardingCurrentStep != null) {
      map['onboarding_current_step'] = Variable<int>(onboardingCurrentStep);
    }
    if (!nullToAbsent || onboardingCompletedAt != null) {
      map['onboarding_completed_at'] = Variable<DateTime>(
        onboardingCompletedAt,
      );
    }
    map['local_inference_enabled'] = Variable<bool>(localInferenceEnabled);
    map['offline_nutrition_enabled'] = Variable<bool>(offlineNutritionEnabled);
    if (!nullToAbsent || healthConnectNutritionSyncEnabled != null) {
      map['health_connect_nutrition_sync_enabled'] = Variable<bool>(
        healthConnectNutritionSyncEnabled,
      );
    }
    map['health_connect_prompt_dismissed'] = Variable<bool>(
      healthConnectPromptDismissed,
    );
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  UserPreferencesTableCompanion toCompanion(bool nullToAbsent) {
    return UserPreferencesTableCompanion(
      id: Value(id),
      languageCode:
          languageCode == null && nullToAbsent
              ? const Value.absent()
              : Value(languageCode),
      theme:
          theme == null && nullToAbsent ? const Value.absent() : Value(theme),
      feedbackSheetShownAt:
          feedbackSheetShownAt == null && nullToAbsent
              ? const Value.absent()
              : Value(feedbackSheetShownAt),
      onboardingCurrentStep:
          onboardingCurrentStep == null && nullToAbsent
              ? const Value.absent()
              : Value(onboardingCurrentStep),
      onboardingCompletedAt:
          onboardingCompletedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(onboardingCompletedAt),
      localInferenceEnabled: Value(localInferenceEnabled),
      offlineNutritionEnabled: Value(offlineNutritionEnabled),
      healthConnectNutritionSyncEnabled:
          healthConnectNutritionSyncEnabled == null && nullToAbsent
              ? const Value.absent()
              : Value(healthConnectNutritionSyncEnabled),
      healthConnectPromptDismissed: Value(healthConnectPromptDismissed),
      updatedAt: Value(updatedAt),
    );
  }

  factory UserPreferencesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserPreferencesTableData(
      id: serializer.fromJson<int>(json['id']),
      languageCode: serializer.fromJson<String?>(json['languageCode']),
      theme: serializer.fromJson<String?>(json['theme']),
      feedbackSheetShownAt: serializer.fromJson<DateTime?>(
        json['feedbackSheetShownAt'],
      ),
      onboardingCurrentStep: serializer.fromJson<int?>(
        json['onboardingCurrentStep'],
      ),
      onboardingCompletedAt: serializer.fromJson<DateTime?>(
        json['onboardingCompletedAt'],
      ),
      localInferenceEnabled: serializer.fromJson<bool>(
        json['localInferenceEnabled'],
      ),
      offlineNutritionEnabled: serializer.fromJson<bool>(
        json['offlineNutritionEnabled'],
      ),
      healthConnectNutritionSyncEnabled: serializer.fromJson<bool?>(
        json['healthConnectNutritionSyncEnabled'],
      ),
      healthConnectPromptDismissed: serializer.fromJson<bool>(
        json['healthConnectPromptDismissed'],
      ),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'languageCode': serializer.toJson<String?>(languageCode),
      'theme': serializer.toJson<String?>(theme),
      'feedbackSheetShownAt': serializer.toJson<DateTime?>(
        feedbackSheetShownAt,
      ),
      'onboardingCurrentStep': serializer.toJson<int?>(onboardingCurrentStep),
      'onboardingCompletedAt': serializer.toJson<DateTime?>(
        onboardingCompletedAt,
      ),
      'localInferenceEnabled': serializer.toJson<bool>(localInferenceEnabled),
      'offlineNutritionEnabled': serializer.toJson<bool>(
        offlineNutritionEnabled,
      ),
      'healthConnectNutritionSyncEnabled': serializer.toJson<bool?>(
        healthConnectNutritionSyncEnabled,
      ),
      'healthConnectPromptDismissed': serializer.toJson<bool>(
        healthConnectPromptDismissed,
      ),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  UserPreferencesTableData copyWith({
    int? id,
    Value<String?> languageCode = const Value.absent(),
    Value<String?> theme = const Value.absent(),
    Value<DateTime?> feedbackSheetShownAt = const Value.absent(),
    Value<int?> onboardingCurrentStep = const Value.absent(),
    Value<DateTime?> onboardingCompletedAt = const Value.absent(),
    bool? localInferenceEnabled,
    bool? offlineNutritionEnabled,
    Value<bool?> healthConnectNutritionSyncEnabled = const Value.absent(),
    bool? healthConnectPromptDismissed,
    DateTime? updatedAt,
  }) => UserPreferencesTableData(
    id: id ?? this.id,
    languageCode: languageCode.present ? languageCode.value : this.languageCode,
    theme: theme.present ? theme.value : this.theme,
    feedbackSheetShownAt:
        feedbackSheetShownAt.present
            ? feedbackSheetShownAt.value
            : this.feedbackSheetShownAt,
    onboardingCurrentStep:
        onboardingCurrentStep.present
            ? onboardingCurrentStep.value
            : this.onboardingCurrentStep,
    onboardingCompletedAt:
        onboardingCompletedAt.present
            ? onboardingCompletedAt.value
            : this.onboardingCompletedAt,
    localInferenceEnabled: localInferenceEnabled ?? this.localInferenceEnabled,
    offlineNutritionEnabled:
        offlineNutritionEnabled ?? this.offlineNutritionEnabled,
    healthConnectNutritionSyncEnabled:
        healthConnectNutritionSyncEnabled.present
            ? healthConnectNutritionSyncEnabled.value
            : this.healthConnectNutritionSyncEnabled,
    healthConnectPromptDismissed:
        healthConnectPromptDismissed ?? this.healthConnectPromptDismissed,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  UserPreferencesTableData copyWithCompanion(
    UserPreferencesTableCompanion data,
  ) {
    return UserPreferencesTableData(
      id: data.id.present ? data.id.value : this.id,
      languageCode:
          data.languageCode.present
              ? data.languageCode.value
              : this.languageCode,
      theme: data.theme.present ? data.theme.value : this.theme,
      feedbackSheetShownAt:
          data.feedbackSheetShownAt.present
              ? data.feedbackSheetShownAt.value
              : this.feedbackSheetShownAt,
      onboardingCurrentStep:
          data.onboardingCurrentStep.present
              ? data.onboardingCurrentStep.value
              : this.onboardingCurrentStep,
      onboardingCompletedAt:
          data.onboardingCompletedAt.present
              ? data.onboardingCompletedAt.value
              : this.onboardingCompletedAt,
      localInferenceEnabled:
          data.localInferenceEnabled.present
              ? data.localInferenceEnabled.value
              : this.localInferenceEnabled,
      offlineNutritionEnabled:
          data.offlineNutritionEnabled.present
              ? data.offlineNutritionEnabled.value
              : this.offlineNutritionEnabled,
      healthConnectNutritionSyncEnabled:
          data.healthConnectNutritionSyncEnabled.present
              ? data.healthConnectNutritionSyncEnabled.value
              : this.healthConnectNutritionSyncEnabled,
      healthConnectPromptDismissed:
          data.healthConnectPromptDismissed.present
              ? data.healthConnectPromptDismissed.value
              : this.healthConnectPromptDismissed,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserPreferencesTableData(')
          ..write('id: $id, ')
          ..write('languageCode: $languageCode, ')
          ..write('theme: $theme, ')
          ..write('feedbackSheetShownAt: $feedbackSheetShownAt, ')
          ..write('onboardingCurrentStep: $onboardingCurrentStep, ')
          ..write('onboardingCompletedAt: $onboardingCompletedAt, ')
          ..write('localInferenceEnabled: $localInferenceEnabled, ')
          ..write('offlineNutritionEnabled: $offlineNutritionEnabled, ')
          ..write(
            'healthConnectNutritionSyncEnabled: $healthConnectNutritionSyncEnabled, ',
          )
          ..write(
            'healthConnectPromptDismissed: $healthConnectPromptDismissed, ',
          )
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    languageCode,
    theme,
    feedbackSheetShownAt,
    onboardingCurrentStep,
    onboardingCompletedAt,
    localInferenceEnabled,
    offlineNutritionEnabled,
    healthConnectNutritionSyncEnabled,
    healthConnectPromptDismissed,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPreferencesTableData &&
          other.id == this.id &&
          other.languageCode == this.languageCode &&
          other.theme == this.theme &&
          other.feedbackSheetShownAt == this.feedbackSheetShownAt &&
          other.onboardingCurrentStep == this.onboardingCurrentStep &&
          other.onboardingCompletedAt == this.onboardingCompletedAt &&
          other.localInferenceEnabled == this.localInferenceEnabled &&
          other.offlineNutritionEnabled == this.offlineNutritionEnabled &&
          other.healthConnectNutritionSyncEnabled ==
              this.healthConnectNutritionSyncEnabled &&
          other.healthConnectPromptDismissed ==
              this.healthConnectPromptDismissed &&
          other.updatedAt == this.updatedAt);
}

class UserPreferencesTableCompanion
    extends UpdateCompanion<UserPreferencesTableData> {
  final Value<int> id;
  final Value<String?> languageCode;
  final Value<String?> theme;
  final Value<DateTime?> feedbackSheetShownAt;
  final Value<int?> onboardingCurrentStep;
  final Value<DateTime?> onboardingCompletedAt;
  final Value<bool> localInferenceEnabled;
  final Value<bool> offlineNutritionEnabled;
  final Value<bool?> healthConnectNutritionSyncEnabled;
  final Value<bool> healthConnectPromptDismissed;
  final Value<DateTime> updatedAt;
  const UserPreferencesTableCompanion({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.theme = const Value.absent(),
    this.feedbackSheetShownAt = const Value.absent(),
    this.onboardingCurrentStep = const Value.absent(),
    this.onboardingCompletedAt = const Value.absent(),
    this.localInferenceEnabled = const Value.absent(),
    this.offlineNutritionEnabled = const Value.absent(),
    this.healthConnectNutritionSyncEnabled = const Value.absent(),
    this.healthConnectPromptDismissed = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UserPreferencesTableCompanion.insert({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.theme = const Value.absent(),
    this.feedbackSheetShownAt = const Value.absent(),
    this.onboardingCurrentStep = const Value.absent(),
    this.onboardingCompletedAt = const Value.absent(),
    this.localInferenceEnabled = const Value.absent(),
    this.offlineNutritionEnabled = const Value.absent(),
    this.healthConnectNutritionSyncEnabled = const Value.absent(),
    this.healthConnectPromptDismissed = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<UserPreferencesTableData> custom({
    Expression<int>? id,
    Expression<String>? languageCode,
    Expression<String>? theme,
    Expression<DateTime>? feedbackSheetShownAt,
    Expression<int>? onboardingCurrentStep,
    Expression<DateTime>? onboardingCompletedAt,
    Expression<bool>? localInferenceEnabled,
    Expression<bool>? offlineNutritionEnabled,
    Expression<bool>? healthConnectNutritionSyncEnabled,
    Expression<bool>? healthConnectPromptDismissed,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (languageCode != null) 'language_code': languageCode,
      if (theme != null) 'theme': theme,
      if (feedbackSheetShownAt != null)
        'feedback_sheet_shown_at': feedbackSheetShownAt,
      if (onboardingCurrentStep != null)
        'onboarding_current_step': onboardingCurrentStep,
      if (onboardingCompletedAt != null)
        'onboarding_completed_at': onboardingCompletedAt,
      if (localInferenceEnabled != null)
        'local_inference_enabled': localInferenceEnabled,
      if (offlineNutritionEnabled != null)
        'offline_nutrition_enabled': offlineNutritionEnabled,
      if (healthConnectNutritionSyncEnabled != null)
        'health_connect_nutrition_sync_enabled':
            healthConnectNutritionSyncEnabled,
      if (healthConnectPromptDismissed != null)
        'health_connect_prompt_dismissed': healthConnectPromptDismissed,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  UserPreferencesTableCompanion copyWith({
    Value<int>? id,
    Value<String?>? languageCode,
    Value<String?>? theme,
    Value<DateTime?>? feedbackSheetShownAt,
    Value<int?>? onboardingCurrentStep,
    Value<DateTime?>? onboardingCompletedAt,
    Value<bool>? localInferenceEnabled,
    Value<bool>? offlineNutritionEnabled,
    Value<bool?>? healthConnectNutritionSyncEnabled,
    Value<bool>? healthConnectPromptDismissed,
    Value<DateTime>? updatedAt,
  }) {
    return UserPreferencesTableCompanion(
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      theme: theme ?? this.theme,
      feedbackSheetShownAt: feedbackSheetShownAt ?? this.feedbackSheetShownAt,
      onboardingCurrentStep:
          onboardingCurrentStep ?? this.onboardingCurrentStep,
      onboardingCompletedAt:
          onboardingCompletedAt ?? this.onboardingCompletedAt,
      localInferenceEnabled:
          localInferenceEnabled ?? this.localInferenceEnabled,
      offlineNutritionEnabled:
          offlineNutritionEnabled ?? this.offlineNutritionEnabled,
      healthConnectNutritionSyncEnabled:
          healthConnectNutritionSyncEnabled ??
          this.healthConnectNutritionSyncEnabled,
      healthConnectPromptDismissed:
          healthConnectPromptDismissed ?? this.healthConnectPromptDismissed,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (theme.present) {
      map['theme'] = Variable<String>(theme.value);
    }
    if (feedbackSheetShownAt.present) {
      map['feedback_sheet_shown_at'] = Variable<DateTime>(
        feedbackSheetShownAt.value,
      );
    }
    if (onboardingCurrentStep.present) {
      map['onboarding_current_step'] = Variable<int>(
        onboardingCurrentStep.value,
      );
    }
    if (onboardingCompletedAt.present) {
      map['onboarding_completed_at'] = Variable<DateTime>(
        onboardingCompletedAt.value,
      );
    }
    if (localInferenceEnabled.present) {
      map['local_inference_enabled'] = Variable<bool>(
        localInferenceEnabled.value,
      );
    }
    if (offlineNutritionEnabled.present) {
      map['offline_nutrition_enabled'] = Variable<bool>(
        offlineNutritionEnabled.value,
      );
    }
    if (healthConnectNutritionSyncEnabled.present) {
      map['health_connect_nutrition_sync_enabled'] = Variable<bool>(
        healthConnectNutritionSyncEnabled.value,
      );
    }
    if (healthConnectPromptDismissed.present) {
      map['health_connect_prompt_dismissed'] = Variable<bool>(
        healthConnectPromptDismissed.value,
      );
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPreferencesTableCompanion(')
          ..write('id: $id, ')
          ..write('languageCode: $languageCode, ')
          ..write('theme: $theme, ')
          ..write('feedbackSheetShownAt: $feedbackSheetShownAt, ')
          ..write('onboardingCurrentStep: $onboardingCurrentStep, ')
          ..write('onboardingCompletedAt: $onboardingCompletedAt, ')
          ..write('localInferenceEnabled: $localInferenceEnabled, ')
          ..write('offlineNutritionEnabled: $offlineNutritionEnabled, ')
          ..write(
            'healthConnectNutritionSyncEnabled: $healthConnectNutritionSyncEnabled, ',
          )
          ..write(
            'healthConnectPromptDismissed: $healthConnectPromptDismissed, ',
          )
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $FavoriteMealTableTable extends FavoriteMealTable
    with TableInfo<$FavoriteMealTableTable, FavoriteMealTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteMealTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _mealNameMeta = const VerificationMeta(
    'mealName',
  );
  @override
  late final GeneratedColumn<String> mealName = GeneratedColumn<String>(
    'meal_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealQuantityMeta = const VerificationMeta(
    'mealQuantity',
  );
  @override
  late final GeneratedColumn<String> mealQuantity = GeneratedColumn<String>(
    'meal_quantity',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealTypeMeta = const VerificationMeta(
    'mealType',
  );
  @override
  late final GeneratedColumn<String> mealType = GeneratedColumn<String>(
    'meal_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caloriesMeta = const VerificationMeta(
    'calories',
  );
  @override
  late final GeneratedColumn<int> calories = GeneratedColumn<int>(
    'calories',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _proteinMeta = const VerificationMeta(
    'protein',
  );
  @override
  late final GeneratedColumn<int> protein = GeneratedColumn<int>(
    'protein',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _carbsMeta = const VerificationMeta('carbs');
  @override
  late final GeneratedColumn<int> carbs = GeneratedColumn<int>(
    'carbs',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fatMeta = const VerificationMeta('fat');
  @override
  late final GeneratedColumn<int> fat = GeneratedColumn<int>(
    'fat',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fiberMeta = const VerificationMeta('fiber');
  @override
  late final GeneratedColumn<int> fiber = GeneratedColumn<int>(
    'fiber',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _healthScoreMeta = const VerificationMeta(
    'healthScore',
  );
  @override
  late final GeneratedColumn<String> healthScore = GeneratedColumn<String>(
    'health_score',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _healthScoreReasonMeta = const VerificationMeta(
    'healthScoreReason',
  );
  @override
  late final GeneratedColumn<String> healthScoreReason =
      GeneratedColumn<String>(
        'health_score_reason',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _analysisIdMeta = const VerificationMeta(
    'analysisId',
  );
  @override
  late final GeneratedColumn<String> analysisId = GeneratedColumn<String>(
    'analysis_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _analysisSnapshotJsonMeta =
      const VerificationMeta('analysisSnapshotJson');
  @override
  late final GeneratedColumn<String> analysisSnapshotJson =
      GeneratedColumn<String>(
        'analysis_snapshot_json',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _healthConnectRecordIdMeta =
      const VerificationMeta('healthConnectRecordId');
  @override
  late final GeneratedColumn<String> healthConnectRecordId =
      GeneratedColumn<String>(
        'health_connect_record_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _healthConnectRecordVersionMeta =
      const VerificationMeta('healthConnectRecordVersion');
  @override
  late final GeneratedColumn<int> healthConnectRecordVersion =
      GeneratedColumn<int>(
        'health_connect_record_version',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
        defaultValue: const Constant(0),
      );
  static const VerificationMeta _mealLogSyncVersionMeta =
      const VerificationMeta('mealLogSyncVersion');
  @override
  late final GeneratedColumn<int> mealLogSyncVersion = GeneratedColumn<int>(
    'meal_log_sync_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _mealLogSyncedVersionMeta =
      const VerificationMeta('mealLogSyncedVersion');
  @override
  late final GeneratedColumn<int> mealLogSyncedVersion = GeneratedColumn<int>(
    'meal_log_synced_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _sourceMealIdMeta = const VerificationMeta(
    'sourceMealId',
  );
  @override
  late final GeneratedColumn<int> sourceMealId = GeneratedColumn<int>(
    'source_meal_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: Constant(DateTime(2023)),
  );
  static const VerificationMeta _lastUsedAtMeta = const VerificationMeta(
    'lastUsedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastUsedAt = GeneratedColumn<DateTime>(
    'last_used_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    mealName,
    mealQuantity,
    mealType,
    calories,
    protein,
    carbs,
    fat,
    fiber,
    timestamp,
    imageUrl,
    healthScore,
    healthScoreReason,
    analysisId,
    analysisSnapshotJson,
    healthConnectRecordId,
    healthConnectRecordVersion,
    mealLogSyncVersion,
    mealLogSyncedVersion,
    sourceMealId,
    createdAt,
    lastUsedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_meal_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteMealTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('meal_name')) {
      context.handle(
        _mealNameMeta,
        mealName.isAcceptableOrUnknown(data['meal_name']!, _mealNameMeta),
      );
    } else if (isInserting) {
      context.missing(_mealNameMeta);
    }
    if (data.containsKey('meal_quantity')) {
      context.handle(
        _mealQuantityMeta,
        mealQuantity.isAcceptableOrUnknown(
          data['meal_quantity']!,
          _mealQuantityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_mealQuantityMeta);
    }
    if (data.containsKey('meal_type')) {
      context.handle(
        _mealTypeMeta,
        mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_mealTypeMeta);
    }
    if (data.containsKey('calories')) {
      context.handle(
        _caloriesMeta,
        calories.isAcceptableOrUnknown(data['calories']!, _caloriesMeta),
      );
    } else if (isInserting) {
      context.missing(_caloriesMeta);
    }
    if (data.containsKey('protein')) {
      context.handle(
        _proteinMeta,
        protein.isAcceptableOrUnknown(data['protein']!, _proteinMeta),
      );
    } else if (isInserting) {
      context.missing(_proteinMeta);
    }
    if (data.containsKey('carbs')) {
      context.handle(
        _carbsMeta,
        carbs.isAcceptableOrUnknown(data['carbs']!, _carbsMeta),
      );
    } else if (isInserting) {
      context.missing(_carbsMeta);
    }
    if (data.containsKey('fat')) {
      context.handle(
        _fatMeta,
        fat.isAcceptableOrUnknown(data['fat']!, _fatMeta),
      );
    } else if (isInserting) {
      context.missing(_fatMeta);
    }
    if (data.containsKey('fiber')) {
      context.handle(
        _fiberMeta,
        fiber.isAcceptableOrUnknown(data['fiber']!, _fiberMeta),
      );
    } else if (isInserting) {
      context.missing(_fiberMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('health_score')) {
      context.handle(
        _healthScoreMeta,
        healthScore.isAcceptableOrUnknown(
          data['health_score']!,
          _healthScoreMeta,
        ),
      );
    }
    if (data.containsKey('health_score_reason')) {
      context.handle(
        _healthScoreReasonMeta,
        healthScoreReason.isAcceptableOrUnknown(
          data['health_score_reason']!,
          _healthScoreReasonMeta,
        ),
      );
    }
    if (data.containsKey('analysis_id')) {
      context.handle(
        _analysisIdMeta,
        analysisId.isAcceptableOrUnknown(data['analysis_id']!, _analysisIdMeta),
      );
    }
    if (data.containsKey('analysis_snapshot_json')) {
      context.handle(
        _analysisSnapshotJsonMeta,
        analysisSnapshotJson.isAcceptableOrUnknown(
          data['analysis_snapshot_json']!,
          _analysisSnapshotJsonMeta,
        ),
      );
    }
    if (data.containsKey('health_connect_record_id')) {
      context.handle(
        _healthConnectRecordIdMeta,
        healthConnectRecordId.isAcceptableOrUnknown(
          data['health_connect_record_id']!,
          _healthConnectRecordIdMeta,
        ),
      );
    }
    if (data.containsKey('health_connect_record_version')) {
      context.handle(
        _healthConnectRecordVersionMeta,
        healthConnectRecordVersion.isAcceptableOrUnknown(
          data['health_connect_record_version']!,
          _healthConnectRecordVersionMeta,
        ),
      );
    }
    if (data.containsKey('meal_log_sync_version')) {
      context.handle(
        _mealLogSyncVersionMeta,
        mealLogSyncVersion.isAcceptableOrUnknown(
          data['meal_log_sync_version']!,
          _mealLogSyncVersionMeta,
        ),
      );
    }
    if (data.containsKey('meal_log_synced_version')) {
      context.handle(
        _mealLogSyncedVersionMeta,
        mealLogSyncedVersion.isAcceptableOrUnknown(
          data['meal_log_synced_version']!,
          _mealLogSyncedVersionMeta,
        ),
      );
    }
    if (data.containsKey('source_meal_id')) {
      context.handle(
        _sourceMealIdMeta,
        sourceMealId.isAcceptableOrUnknown(
          data['source_meal_id']!,
          _sourceMealIdMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('last_used_at')) {
      context.handle(
        _lastUsedAtMeta,
        lastUsedAt.isAcceptableOrUnknown(
          data['last_used_at']!,
          _lastUsedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteMealTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteMealTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      mealName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}meal_name'],
          )!,
      mealQuantity:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}meal_quantity'],
          )!,
      mealType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}meal_type'],
          )!,
      calories:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}calories'],
          )!,
      protein:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}protein'],
          )!,
      carbs:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}carbs'],
          )!,
      fat:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}fat'],
          )!,
      fiber:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}fiber'],
          )!,
      timestamp:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}timestamp'],
          )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      healthScore: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}health_score'],
      ),
      healthScoreReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}health_score_reason'],
      ),
      analysisId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}analysis_id'],
      ),
      analysisSnapshotJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}analysis_snapshot_json'],
      ),
      healthConnectRecordId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}health_connect_record_id'],
      ),
      healthConnectRecordVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}health_connect_record_version'],
          )!,
      mealLogSyncVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_log_sync_version'],
          )!,
      mealLogSyncedVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_log_synced_version'],
          )!,
      sourceMealId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}source_meal_id'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      lastUsedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_used_at'],
      ),
    );
  }

  @override
  $FavoriteMealTableTable createAlias(String alias) {
    return $FavoriteMealTableTable(attachedDatabase, alias);
  }
}

class FavoriteMealTableData extends DataClass
    implements Insertable<FavoriteMealTableData> {
  final int id;
  final String mealName;
  final String mealQuantity;
  final String mealType;
  final int calories;
  final int protein;
  final int carbs;
  final int fat;
  final int fiber;
  final DateTime timestamp;
  final String? imageUrl;
  final String? healthScore;
  final String? healthScoreReason;
  final String? analysisId;
  final String? analysisSnapshotJson;

  /// Stable identity for the corresponding app-owned Health Connect record.
  final String? healthConnectRecordId;

  /// Version sent with [healthConnectRecordId] for idempotent updates.
  final int healthConnectRecordVersion;

  /// Local mutation version mirrored onto the owning V2 analysis session.
  final int mealLogSyncVersion;

  /// Last version acknowledged by the backend.
  final int mealLogSyncedVersion;
  final int? sourceMealId;
  final DateTime createdAt;
  final DateTime? lastUsedAt;
  const FavoriteMealTableData({
    required this.id,
    required this.mealName,
    required this.mealQuantity,
    required this.mealType,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.timestamp,
    this.imageUrl,
    this.healthScore,
    this.healthScoreReason,
    this.analysisId,
    this.analysisSnapshotJson,
    this.healthConnectRecordId,
    required this.healthConnectRecordVersion,
    required this.mealLogSyncVersion,
    required this.mealLogSyncedVersion,
    this.sourceMealId,
    required this.createdAt,
    this.lastUsedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['meal_name'] = Variable<String>(mealName);
    map['meal_quantity'] = Variable<String>(mealQuantity);
    map['meal_type'] = Variable<String>(mealType);
    map['calories'] = Variable<int>(calories);
    map['protein'] = Variable<int>(protein);
    map['carbs'] = Variable<int>(carbs);
    map['fat'] = Variable<int>(fat);
    map['fiber'] = Variable<int>(fiber);
    map['timestamp'] = Variable<DateTime>(timestamp);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || healthScore != null) {
      map['health_score'] = Variable<String>(healthScore);
    }
    if (!nullToAbsent || healthScoreReason != null) {
      map['health_score_reason'] = Variable<String>(healthScoreReason);
    }
    if (!nullToAbsent || analysisId != null) {
      map['analysis_id'] = Variable<String>(analysisId);
    }
    if (!nullToAbsent || analysisSnapshotJson != null) {
      map['analysis_snapshot_json'] = Variable<String>(analysisSnapshotJson);
    }
    if (!nullToAbsent || healthConnectRecordId != null) {
      map['health_connect_record_id'] = Variable<String>(healthConnectRecordId);
    }
    map['health_connect_record_version'] = Variable<int>(
      healthConnectRecordVersion,
    );
    map['meal_log_sync_version'] = Variable<int>(mealLogSyncVersion);
    map['meal_log_synced_version'] = Variable<int>(mealLogSyncedVersion);
    if (!nullToAbsent || sourceMealId != null) {
      map['source_meal_id'] = Variable<int>(sourceMealId);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || lastUsedAt != null) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt);
    }
    return map;
  }

  FavoriteMealTableCompanion toCompanion(bool nullToAbsent) {
    return FavoriteMealTableCompanion(
      id: Value(id),
      mealName: Value(mealName),
      mealQuantity: Value(mealQuantity),
      mealType: Value(mealType),
      calories: Value(calories),
      protein: Value(protein),
      carbs: Value(carbs),
      fat: Value(fat),
      fiber: Value(fiber),
      timestamp: Value(timestamp),
      imageUrl:
          imageUrl == null && nullToAbsent
              ? const Value.absent()
              : Value(imageUrl),
      healthScore:
          healthScore == null && nullToAbsent
              ? const Value.absent()
              : Value(healthScore),
      healthScoreReason:
          healthScoreReason == null && nullToAbsent
              ? const Value.absent()
              : Value(healthScoreReason),
      analysisId:
          analysisId == null && nullToAbsent
              ? const Value.absent()
              : Value(analysisId),
      analysisSnapshotJson:
          analysisSnapshotJson == null && nullToAbsent
              ? const Value.absent()
              : Value(analysisSnapshotJson),
      healthConnectRecordId:
          healthConnectRecordId == null && nullToAbsent
              ? const Value.absent()
              : Value(healthConnectRecordId),
      healthConnectRecordVersion: Value(healthConnectRecordVersion),
      mealLogSyncVersion: Value(mealLogSyncVersion),
      mealLogSyncedVersion: Value(mealLogSyncedVersion),
      sourceMealId:
          sourceMealId == null && nullToAbsent
              ? const Value.absent()
              : Value(sourceMealId),
      createdAt: Value(createdAt),
      lastUsedAt:
          lastUsedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(lastUsedAt),
    );
  }

  factory FavoriteMealTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteMealTableData(
      id: serializer.fromJson<int>(json['id']),
      mealName: serializer.fromJson<String>(json['mealName']),
      mealQuantity: serializer.fromJson<String>(json['mealQuantity']),
      mealType: serializer.fromJson<String>(json['mealType']),
      calories: serializer.fromJson<int>(json['calories']),
      protein: serializer.fromJson<int>(json['protein']),
      carbs: serializer.fromJson<int>(json['carbs']),
      fat: serializer.fromJson<int>(json['fat']),
      fiber: serializer.fromJson<int>(json['fiber']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      healthScore: serializer.fromJson<String?>(json['healthScore']),
      healthScoreReason: serializer.fromJson<String?>(
        json['healthScoreReason'],
      ),
      analysisId: serializer.fromJson<String?>(json['analysisId']),
      analysisSnapshotJson: serializer.fromJson<String?>(
        json['analysisSnapshotJson'],
      ),
      healthConnectRecordId: serializer.fromJson<String?>(
        json['healthConnectRecordId'],
      ),
      healthConnectRecordVersion: serializer.fromJson<int>(
        json['healthConnectRecordVersion'],
      ),
      mealLogSyncVersion: serializer.fromJson<int>(json['mealLogSyncVersion']),
      mealLogSyncedVersion: serializer.fromJson<int>(
        json['mealLogSyncedVersion'],
      ),
      sourceMealId: serializer.fromJson<int?>(json['sourceMealId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lastUsedAt: serializer.fromJson<DateTime?>(json['lastUsedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mealName': serializer.toJson<String>(mealName),
      'mealQuantity': serializer.toJson<String>(mealQuantity),
      'mealType': serializer.toJson<String>(mealType),
      'calories': serializer.toJson<int>(calories),
      'protein': serializer.toJson<int>(protein),
      'carbs': serializer.toJson<int>(carbs),
      'fat': serializer.toJson<int>(fat),
      'fiber': serializer.toJson<int>(fiber),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'healthScore': serializer.toJson<String?>(healthScore),
      'healthScoreReason': serializer.toJson<String?>(healthScoreReason),
      'analysisId': serializer.toJson<String?>(analysisId),
      'analysisSnapshotJson': serializer.toJson<String?>(analysisSnapshotJson),
      'healthConnectRecordId': serializer.toJson<String?>(
        healthConnectRecordId,
      ),
      'healthConnectRecordVersion': serializer.toJson<int>(
        healthConnectRecordVersion,
      ),
      'mealLogSyncVersion': serializer.toJson<int>(mealLogSyncVersion),
      'mealLogSyncedVersion': serializer.toJson<int>(mealLogSyncedVersion),
      'sourceMealId': serializer.toJson<int?>(sourceMealId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lastUsedAt': serializer.toJson<DateTime?>(lastUsedAt),
    };
  }

  FavoriteMealTableData copyWith({
    int? id,
    String? mealName,
    String? mealQuantity,
    String? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    DateTime? timestamp,
    Value<String?> imageUrl = const Value.absent(),
    Value<String?> healthScore = const Value.absent(),
    Value<String?> healthScoreReason = const Value.absent(),
    Value<String?> analysisId = const Value.absent(),
    Value<String?> analysisSnapshotJson = const Value.absent(),
    Value<String?> healthConnectRecordId = const Value.absent(),
    int? healthConnectRecordVersion,
    int? mealLogSyncVersion,
    int? mealLogSyncedVersion,
    Value<int?> sourceMealId = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> lastUsedAt = const Value.absent(),
  }) => FavoriteMealTableData(
    id: id ?? this.id,
    mealName: mealName ?? this.mealName,
    mealQuantity: mealQuantity ?? this.mealQuantity,
    mealType: mealType ?? this.mealType,
    calories: calories ?? this.calories,
    protein: protein ?? this.protein,
    carbs: carbs ?? this.carbs,
    fat: fat ?? this.fat,
    fiber: fiber ?? this.fiber,
    timestamp: timestamp ?? this.timestamp,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    healthScore: healthScore.present ? healthScore.value : this.healthScore,
    healthScoreReason:
        healthScoreReason.present
            ? healthScoreReason.value
            : this.healthScoreReason,
    analysisId: analysisId.present ? analysisId.value : this.analysisId,
    analysisSnapshotJson:
        analysisSnapshotJson.present
            ? analysisSnapshotJson.value
            : this.analysisSnapshotJson,
    healthConnectRecordId:
        healthConnectRecordId.present
            ? healthConnectRecordId.value
            : this.healthConnectRecordId,
    healthConnectRecordVersion:
        healthConnectRecordVersion ?? this.healthConnectRecordVersion,
    mealLogSyncVersion: mealLogSyncVersion ?? this.mealLogSyncVersion,
    mealLogSyncedVersion: mealLogSyncedVersion ?? this.mealLogSyncedVersion,
    sourceMealId: sourceMealId.present ? sourceMealId.value : this.sourceMealId,
    createdAt: createdAt ?? this.createdAt,
    lastUsedAt: lastUsedAt.present ? lastUsedAt.value : this.lastUsedAt,
  );
  FavoriteMealTableData copyWithCompanion(FavoriteMealTableCompanion data) {
    return FavoriteMealTableData(
      id: data.id.present ? data.id.value : this.id,
      mealName: data.mealName.present ? data.mealName.value : this.mealName,
      mealQuantity:
          data.mealQuantity.present
              ? data.mealQuantity.value
              : this.mealQuantity,
      mealType: data.mealType.present ? data.mealType.value : this.mealType,
      calories: data.calories.present ? data.calories.value : this.calories,
      protein: data.protein.present ? data.protein.value : this.protein,
      carbs: data.carbs.present ? data.carbs.value : this.carbs,
      fat: data.fat.present ? data.fat.value : this.fat,
      fiber: data.fiber.present ? data.fiber.value : this.fiber,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      healthScore:
          data.healthScore.present ? data.healthScore.value : this.healthScore,
      healthScoreReason:
          data.healthScoreReason.present
              ? data.healthScoreReason.value
              : this.healthScoreReason,
      analysisId:
          data.analysisId.present ? data.analysisId.value : this.analysisId,
      analysisSnapshotJson:
          data.analysisSnapshotJson.present
              ? data.analysisSnapshotJson.value
              : this.analysisSnapshotJson,
      healthConnectRecordId:
          data.healthConnectRecordId.present
              ? data.healthConnectRecordId.value
              : this.healthConnectRecordId,
      healthConnectRecordVersion:
          data.healthConnectRecordVersion.present
              ? data.healthConnectRecordVersion.value
              : this.healthConnectRecordVersion,
      mealLogSyncVersion:
          data.mealLogSyncVersion.present
              ? data.mealLogSyncVersion.value
              : this.mealLogSyncVersion,
      mealLogSyncedVersion:
          data.mealLogSyncedVersion.present
              ? data.mealLogSyncedVersion.value
              : this.mealLogSyncedVersion,
      sourceMealId:
          data.sourceMealId.present
              ? data.sourceMealId.value
              : this.sourceMealId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastUsedAt:
          data.lastUsedAt.present ? data.lastUsedAt.value : this.lastUsedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMealTableData(')
          ..write('id: $id, ')
          ..write('mealName: $mealName, ')
          ..write('mealQuantity: $mealQuantity, ')
          ..write('mealType: $mealType, ')
          ..write('calories: $calories, ')
          ..write('protein: $protein, ')
          ..write('carbs: $carbs, ')
          ..write('fat: $fat, ')
          ..write('fiber: $fiber, ')
          ..write('timestamp: $timestamp, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('healthScore: $healthScore, ')
          ..write('healthScoreReason: $healthScoreReason, ')
          ..write('analysisId: $analysisId, ')
          ..write('analysisSnapshotJson: $analysisSnapshotJson, ')
          ..write('healthConnectRecordId: $healthConnectRecordId, ')
          ..write('healthConnectRecordVersion: $healthConnectRecordVersion, ')
          ..write('mealLogSyncVersion: $mealLogSyncVersion, ')
          ..write('mealLogSyncedVersion: $mealLogSyncedVersion, ')
          ..write('sourceMealId: $sourceMealId, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastUsedAt: $lastUsedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    mealName,
    mealQuantity,
    mealType,
    calories,
    protein,
    carbs,
    fat,
    fiber,
    timestamp,
    imageUrl,
    healthScore,
    healthScoreReason,
    analysisId,
    analysisSnapshotJson,
    healthConnectRecordId,
    healthConnectRecordVersion,
    mealLogSyncVersion,
    mealLogSyncedVersion,
    sourceMealId,
    createdAt,
    lastUsedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteMealTableData &&
          other.id == this.id &&
          other.mealName == this.mealName &&
          other.mealQuantity == this.mealQuantity &&
          other.mealType == this.mealType &&
          other.calories == this.calories &&
          other.protein == this.protein &&
          other.carbs == this.carbs &&
          other.fat == this.fat &&
          other.fiber == this.fiber &&
          other.timestamp == this.timestamp &&
          other.imageUrl == this.imageUrl &&
          other.healthScore == this.healthScore &&
          other.healthScoreReason == this.healthScoreReason &&
          other.analysisId == this.analysisId &&
          other.analysisSnapshotJson == this.analysisSnapshotJson &&
          other.healthConnectRecordId == this.healthConnectRecordId &&
          other.healthConnectRecordVersion == this.healthConnectRecordVersion &&
          other.mealLogSyncVersion == this.mealLogSyncVersion &&
          other.mealLogSyncedVersion == this.mealLogSyncedVersion &&
          other.sourceMealId == this.sourceMealId &&
          other.createdAt == this.createdAt &&
          other.lastUsedAt == this.lastUsedAt);
}

class FavoriteMealTableCompanion
    extends UpdateCompanion<FavoriteMealTableData> {
  final Value<int> id;
  final Value<String> mealName;
  final Value<String> mealQuantity;
  final Value<String> mealType;
  final Value<int> calories;
  final Value<int> protein;
  final Value<int> carbs;
  final Value<int> fat;
  final Value<int> fiber;
  final Value<DateTime> timestamp;
  final Value<String?> imageUrl;
  final Value<String?> healthScore;
  final Value<String?> healthScoreReason;
  final Value<String?> analysisId;
  final Value<String?> analysisSnapshotJson;
  final Value<String?> healthConnectRecordId;
  final Value<int> healthConnectRecordVersion;
  final Value<int> mealLogSyncVersion;
  final Value<int> mealLogSyncedVersion;
  final Value<int?> sourceMealId;
  final Value<DateTime> createdAt;
  final Value<DateTime?> lastUsedAt;
  const FavoriteMealTableCompanion({
    this.id = const Value.absent(),
    this.mealName = const Value.absent(),
    this.mealQuantity = const Value.absent(),
    this.mealType = const Value.absent(),
    this.calories = const Value.absent(),
    this.protein = const Value.absent(),
    this.carbs = const Value.absent(),
    this.fat = const Value.absent(),
    this.fiber = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.healthScore = const Value.absent(),
    this.healthScoreReason = const Value.absent(),
    this.analysisId = const Value.absent(),
    this.analysisSnapshotJson = const Value.absent(),
    this.healthConnectRecordId = const Value.absent(),
    this.healthConnectRecordVersion = const Value.absent(),
    this.mealLogSyncVersion = const Value.absent(),
    this.mealLogSyncedVersion = const Value.absent(),
    this.sourceMealId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastUsedAt = const Value.absent(),
  });
  FavoriteMealTableCompanion.insert({
    this.id = const Value.absent(),
    required String mealName,
    required String mealQuantity,
    required String mealType,
    required int calories,
    required int protein,
    required int carbs,
    required int fat,
    required int fiber,
    required DateTime timestamp,
    this.imageUrl = const Value.absent(),
    this.healthScore = const Value.absent(),
    this.healthScoreReason = const Value.absent(),
    this.analysisId = const Value.absent(),
    this.analysisSnapshotJson = const Value.absent(),
    this.healthConnectRecordId = const Value.absent(),
    this.healthConnectRecordVersion = const Value.absent(),
    this.mealLogSyncVersion = const Value.absent(),
    this.mealLogSyncedVersion = const Value.absent(),
    this.sourceMealId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastUsedAt = const Value.absent(),
  }) : mealName = Value(mealName),
       mealQuantity = Value(mealQuantity),
       mealType = Value(mealType),
       calories = Value(calories),
       protein = Value(protein),
       carbs = Value(carbs),
       fat = Value(fat),
       fiber = Value(fiber),
       timestamp = Value(timestamp);
  static Insertable<FavoriteMealTableData> custom({
    Expression<int>? id,
    Expression<String>? mealName,
    Expression<String>? mealQuantity,
    Expression<String>? mealType,
    Expression<int>? calories,
    Expression<int>? protein,
    Expression<int>? carbs,
    Expression<int>? fat,
    Expression<int>? fiber,
    Expression<DateTime>? timestamp,
    Expression<String>? imageUrl,
    Expression<String>? healthScore,
    Expression<String>? healthScoreReason,
    Expression<String>? analysisId,
    Expression<String>? analysisSnapshotJson,
    Expression<String>? healthConnectRecordId,
    Expression<int>? healthConnectRecordVersion,
    Expression<int>? mealLogSyncVersion,
    Expression<int>? mealLogSyncedVersion,
    Expression<int>? sourceMealId,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? lastUsedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mealName != null) 'meal_name': mealName,
      if (mealQuantity != null) 'meal_quantity': mealQuantity,
      if (mealType != null) 'meal_type': mealType,
      if (calories != null) 'calories': calories,
      if (protein != null) 'protein': protein,
      if (carbs != null) 'carbs': carbs,
      if (fat != null) 'fat': fat,
      if (fiber != null) 'fiber': fiber,
      if (timestamp != null) 'timestamp': timestamp,
      if (imageUrl != null) 'image_url': imageUrl,
      if (healthScore != null) 'health_score': healthScore,
      if (healthScoreReason != null) 'health_score_reason': healthScoreReason,
      if (analysisId != null) 'analysis_id': analysisId,
      if (analysisSnapshotJson != null)
        'analysis_snapshot_json': analysisSnapshotJson,
      if (healthConnectRecordId != null)
        'health_connect_record_id': healthConnectRecordId,
      if (healthConnectRecordVersion != null)
        'health_connect_record_version': healthConnectRecordVersion,
      if (mealLogSyncVersion != null)
        'meal_log_sync_version': mealLogSyncVersion,
      if (mealLogSyncedVersion != null)
        'meal_log_synced_version': mealLogSyncedVersion,
      if (sourceMealId != null) 'source_meal_id': sourceMealId,
      if (createdAt != null) 'created_at': createdAt,
      if (lastUsedAt != null) 'last_used_at': lastUsedAt,
    });
  }

  FavoriteMealTableCompanion copyWith({
    Value<int>? id,
    Value<String>? mealName,
    Value<String>? mealQuantity,
    Value<String>? mealType,
    Value<int>? calories,
    Value<int>? protein,
    Value<int>? carbs,
    Value<int>? fat,
    Value<int>? fiber,
    Value<DateTime>? timestamp,
    Value<String?>? imageUrl,
    Value<String?>? healthScore,
    Value<String?>? healthScoreReason,
    Value<String?>? analysisId,
    Value<String?>? analysisSnapshotJson,
    Value<String?>? healthConnectRecordId,
    Value<int>? healthConnectRecordVersion,
    Value<int>? mealLogSyncVersion,
    Value<int>? mealLogSyncedVersion,
    Value<int?>? sourceMealId,
    Value<DateTime>? createdAt,
    Value<DateTime?>? lastUsedAt,
  }) {
    return FavoriteMealTableCompanion(
      id: id ?? this.id,
      mealName: mealName ?? this.mealName,
      mealQuantity: mealQuantity ?? this.mealQuantity,
      mealType: mealType ?? this.mealType,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      timestamp: timestamp ?? this.timestamp,
      imageUrl: imageUrl ?? this.imageUrl,
      healthScore: healthScore ?? this.healthScore,
      healthScoreReason: healthScoreReason ?? this.healthScoreReason,
      analysisId: analysisId ?? this.analysisId,
      analysisSnapshotJson: analysisSnapshotJson ?? this.analysisSnapshotJson,
      healthConnectRecordId:
          healthConnectRecordId ?? this.healthConnectRecordId,
      healthConnectRecordVersion:
          healthConnectRecordVersion ?? this.healthConnectRecordVersion,
      mealLogSyncVersion: mealLogSyncVersion ?? this.mealLogSyncVersion,
      mealLogSyncedVersion: mealLogSyncedVersion ?? this.mealLogSyncedVersion,
      sourceMealId: sourceMealId ?? this.sourceMealId,
      createdAt: createdAt ?? this.createdAt,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mealName.present) {
      map['meal_name'] = Variable<String>(mealName.value);
    }
    if (mealQuantity.present) {
      map['meal_quantity'] = Variable<String>(mealQuantity.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<String>(mealType.value);
    }
    if (calories.present) {
      map['calories'] = Variable<int>(calories.value);
    }
    if (protein.present) {
      map['protein'] = Variable<int>(protein.value);
    }
    if (carbs.present) {
      map['carbs'] = Variable<int>(carbs.value);
    }
    if (fat.present) {
      map['fat'] = Variable<int>(fat.value);
    }
    if (fiber.present) {
      map['fiber'] = Variable<int>(fiber.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (healthScore.present) {
      map['health_score'] = Variable<String>(healthScore.value);
    }
    if (healthScoreReason.present) {
      map['health_score_reason'] = Variable<String>(healthScoreReason.value);
    }
    if (analysisId.present) {
      map['analysis_id'] = Variable<String>(analysisId.value);
    }
    if (analysisSnapshotJson.present) {
      map['analysis_snapshot_json'] = Variable<String>(
        analysisSnapshotJson.value,
      );
    }
    if (healthConnectRecordId.present) {
      map['health_connect_record_id'] = Variable<String>(
        healthConnectRecordId.value,
      );
    }
    if (healthConnectRecordVersion.present) {
      map['health_connect_record_version'] = Variable<int>(
        healthConnectRecordVersion.value,
      );
    }
    if (mealLogSyncVersion.present) {
      map['meal_log_sync_version'] = Variable<int>(mealLogSyncVersion.value);
    }
    if (mealLogSyncedVersion.present) {
      map['meal_log_synced_version'] = Variable<int>(
        mealLogSyncedVersion.value,
      );
    }
    if (sourceMealId.present) {
      map['source_meal_id'] = Variable<int>(sourceMealId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lastUsedAt.present) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMealTableCompanion(')
          ..write('id: $id, ')
          ..write('mealName: $mealName, ')
          ..write('mealQuantity: $mealQuantity, ')
          ..write('mealType: $mealType, ')
          ..write('calories: $calories, ')
          ..write('protein: $protein, ')
          ..write('carbs: $carbs, ')
          ..write('fat: $fat, ')
          ..write('fiber: $fiber, ')
          ..write('timestamp: $timestamp, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('healthScore: $healthScore, ')
          ..write('healthScoreReason: $healthScoreReason, ')
          ..write('analysisId: $analysisId, ')
          ..write('analysisSnapshotJson: $analysisSnapshotJson, ')
          ..write('healthConnectRecordId: $healthConnectRecordId, ')
          ..write('healthConnectRecordVersion: $healthConnectRecordVersion, ')
          ..write('mealLogSyncVersion: $mealLogSyncVersion, ')
          ..write('mealLogSyncedVersion: $mealLogSyncedVersion, ')
          ..write('sourceMealId: $sourceMealId, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastUsedAt: $lastUsedAt')
          ..write(')'))
        .toString();
  }
}

class $LocalNutritionCacheTableTable extends LocalNutritionCacheTable
    with
        TableInfo<
          $LocalNutritionCacheTableTable,
          LocalNutritionCacheTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalNutritionCacheTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fdcIdMeta = const VerificationMeta('fdcId');
  @override
  late final GeneratedColumn<String> fdcId = GeneratedColumn<String>(
    'fdc_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _datasetVersionMeta = const VerificationMeta(
    'datasetVersion',
  );
  @override
  late final GeneratedColumn<String> datasetVersion = GeneratedColumn<String>(
    'dataset_version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _normalizedNameMeta = const VerificationMeta(
    'normalizedName',
  );
  @override
  late final GeneratedColumn<String> normalizedName = GeneratedColumn<String>(
    'normalized_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataTypeMeta = const VerificationMeta(
    'dataType',
  );
  @override
  late final GeneratedColumn<String> dataType = GeneratedColumn<String>(
    'data_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lookupKeysJsonMeta = const VerificationMeta(
    'lookupKeysJson',
  );
  @override
  late final GeneratedColumn<String> lookupKeysJson = GeneratedColumn<String>(
    'lookup_keys_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caloriesPer100gMeta = const VerificationMeta(
    'caloriesPer100g',
  );
  @override
  late final GeneratedColumn<double> caloriesPer100g = GeneratedColumn<double>(
    'calories_per100g',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _proteinPer100gMeta = const VerificationMeta(
    'proteinPer100g',
  );
  @override
  late final GeneratedColumn<double> proteinPer100g = GeneratedColumn<double>(
    'protein_per100g',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _carbsPer100gMeta = const VerificationMeta(
    'carbsPer100g',
  );
  @override
  late final GeneratedColumn<double> carbsPer100g = GeneratedColumn<double>(
    'carbs_per100g',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fatPer100gMeta = const VerificationMeta(
    'fatPer100g',
  );
  @override
  late final GeneratedColumn<double> fatPer100g = GeneratedColumn<double>(
    'fat_per100g',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fiberPer100gMeta = const VerificationMeta(
    'fiberPer100g',
  );
  @override
  late final GeneratedColumn<double> fiberPer100g = GeneratedColumn<double>(
    'fiber_per100g',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _retrievedAtMeta = const VerificationMeta(
    'retrievedAt',
  );
  @override
  late final GeneratedColumn<DateTime> retrievedAt = GeneratedColumn<DateTime>(
    'retrieved_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastAccessedAtMeta = const VerificationMeta(
    'lastAccessedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastAccessedAt =
      GeneratedColumn<DateTime>(
        'last_accessed_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _approximateBytesMeta = const VerificationMeta(
    'approximateBytes',
  );
  @override
  late final GeneratedColumn<int> approximateBytes = GeneratedColumn<int>(
    'approximate_bytes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    fdcId,
    datasetVersion,
    description,
    normalizedName,
    dataType,
    lookupKeysJson,
    caloriesPer100g,
    proteinPer100g,
    carbsPer100g,
    fatPer100g,
    fiberPer100g,
    retrievedAt,
    lastAccessedAt,
    approximateBytes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_nutrition_cache_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalNutritionCacheTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('fdc_id')) {
      context.handle(
        _fdcIdMeta,
        fdcId.isAcceptableOrUnknown(data['fdc_id']!, _fdcIdMeta),
      );
    } else if (isInserting) {
      context.missing(_fdcIdMeta);
    }
    if (data.containsKey('dataset_version')) {
      context.handle(
        _datasetVersionMeta,
        datasetVersion.isAcceptableOrUnknown(
          data['dataset_version']!,
          _datasetVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_datasetVersionMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('normalized_name')) {
      context.handle(
        _normalizedNameMeta,
        normalizedName.isAcceptableOrUnknown(
          data['normalized_name']!,
          _normalizedNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_normalizedNameMeta);
    }
    if (data.containsKey('data_type')) {
      context.handle(
        _dataTypeMeta,
        dataType.isAcceptableOrUnknown(data['data_type']!, _dataTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_dataTypeMeta);
    }
    if (data.containsKey('lookup_keys_json')) {
      context.handle(
        _lookupKeysJsonMeta,
        lookupKeysJson.isAcceptableOrUnknown(
          data['lookup_keys_json']!,
          _lookupKeysJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lookupKeysJsonMeta);
    }
    if (data.containsKey('calories_per100g')) {
      context.handle(
        _caloriesPer100gMeta,
        caloriesPer100g.isAcceptableOrUnknown(
          data['calories_per100g']!,
          _caloriesPer100gMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_caloriesPer100gMeta);
    }
    if (data.containsKey('protein_per100g')) {
      context.handle(
        _proteinPer100gMeta,
        proteinPer100g.isAcceptableOrUnknown(
          data['protein_per100g']!,
          _proteinPer100gMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_proteinPer100gMeta);
    }
    if (data.containsKey('carbs_per100g')) {
      context.handle(
        _carbsPer100gMeta,
        carbsPer100g.isAcceptableOrUnknown(
          data['carbs_per100g']!,
          _carbsPer100gMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_carbsPer100gMeta);
    }
    if (data.containsKey('fat_per100g')) {
      context.handle(
        _fatPer100gMeta,
        fatPer100g.isAcceptableOrUnknown(data['fat_per100g']!, _fatPer100gMeta),
      );
    } else if (isInserting) {
      context.missing(_fatPer100gMeta);
    }
    if (data.containsKey('fiber_per100g')) {
      context.handle(
        _fiberPer100gMeta,
        fiberPer100g.isAcceptableOrUnknown(
          data['fiber_per100g']!,
          _fiberPer100gMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fiberPer100gMeta);
    }
    if (data.containsKey('retrieved_at')) {
      context.handle(
        _retrievedAtMeta,
        retrievedAt.isAcceptableOrUnknown(
          data['retrieved_at']!,
          _retrievedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_retrievedAtMeta);
    }
    if (data.containsKey('last_accessed_at')) {
      context.handle(
        _lastAccessedAtMeta,
        lastAccessedAt.isAcceptableOrUnknown(
          data['last_accessed_at']!,
          _lastAccessedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastAccessedAtMeta);
    }
    if (data.containsKey('approximate_bytes')) {
      context.handle(
        _approximateBytesMeta,
        approximateBytes.isAcceptableOrUnknown(
          data['approximate_bytes']!,
          _approximateBytesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_approximateBytesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fdcId, datasetVersion};
  @override
  LocalNutritionCacheTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalNutritionCacheTableData(
      fdcId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}fdc_id'],
          )!,
      datasetVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}dataset_version'],
          )!,
      description:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}description'],
          )!,
      normalizedName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}normalized_name'],
          )!,
      dataType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}data_type'],
          )!,
      lookupKeysJson:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}lookup_keys_json'],
          )!,
      caloriesPer100g:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}calories_per100g'],
          )!,
      proteinPer100g:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}protein_per100g'],
          )!,
      carbsPer100g:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}carbs_per100g'],
          )!,
      fatPer100g:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}fat_per100g'],
          )!,
      fiberPer100g:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}fiber_per100g'],
          )!,
      retrievedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}retrieved_at'],
          )!,
      lastAccessedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}last_accessed_at'],
          )!,
      approximateBytes:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}approximate_bytes'],
          )!,
    );
  }

  @override
  $LocalNutritionCacheTableTable createAlias(String alias) {
    return $LocalNutritionCacheTableTable(attachedDatabase, alias);
  }
}

class LocalNutritionCacheTableData extends DataClass
    implements Insertable<LocalNutritionCacheTableData> {
  final String fdcId;
  final String datasetVersion;
  final String description;
  final String normalizedName;
  final String dataType;
  final String lookupKeysJson;
  final double caloriesPer100g;
  final double proteinPer100g;
  final double carbsPer100g;
  final double fatPer100g;
  final double fiberPer100g;
  final DateTime retrievedAt;
  final DateTime lastAccessedAt;
  final int approximateBytes;
  const LocalNutritionCacheTableData({
    required this.fdcId,
    required this.datasetVersion,
    required this.description,
    required this.normalizedName,
    required this.dataType,
    required this.lookupKeysJson,
    required this.caloriesPer100g,
    required this.proteinPer100g,
    required this.carbsPer100g,
    required this.fatPer100g,
    required this.fiberPer100g,
    required this.retrievedAt,
    required this.lastAccessedAt,
    required this.approximateBytes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['fdc_id'] = Variable<String>(fdcId);
    map['dataset_version'] = Variable<String>(datasetVersion);
    map['description'] = Variable<String>(description);
    map['normalized_name'] = Variable<String>(normalizedName);
    map['data_type'] = Variable<String>(dataType);
    map['lookup_keys_json'] = Variable<String>(lookupKeysJson);
    map['calories_per100g'] = Variable<double>(caloriesPer100g);
    map['protein_per100g'] = Variable<double>(proteinPer100g);
    map['carbs_per100g'] = Variable<double>(carbsPer100g);
    map['fat_per100g'] = Variable<double>(fatPer100g);
    map['fiber_per100g'] = Variable<double>(fiberPer100g);
    map['retrieved_at'] = Variable<DateTime>(retrievedAt);
    map['last_accessed_at'] = Variable<DateTime>(lastAccessedAt);
    map['approximate_bytes'] = Variable<int>(approximateBytes);
    return map;
  }

  LocalNutritionCacheTableCompanion toCompanion(bool nullToAbsent) {
    return LocalNutritionCacheTableCompanion(
      fdcId: Value(fdcId),
      datasetVersion: Value(datasetVersion),
      description: Value(description),
      normalizedName: Value(normalizedName),
      dataType: Value(dataType),
      lookupKeysJson: Value(lookupKeysJson),
      caloriesPer100g: Value(caloriesPer100g),
      proteinPer100g: Value(proteinPer100g),
      carbsPer100g: Value(carbsPer100g),
      fatPer100g: Value(fatPer100g),
      fiberPer100g: Value(fiberPer100g),
      retrievedAt: Value(retrievedAt),
      lastAccessedAt: Value(lastAccessedAt),
      approximateBytes: Value(approximateBytes),
    );
  }

  factory LocalNutritionCacheTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalNutritionCacheTableData(
      fdcId: serializer.fromJson<String>(json['fdcId']),
      datasetVersion: serializer.fromJson<String>(json['datasetVersion']),
      description: serializer.fromJson<String>(json['description']),
      normalizedName: serializer.fromJson<String>(json['normalizedName']),
      dataType: serializer.fromJson<String>(json['dataType']),
      lookupKeysJson: serializer.fromJson<String>(json['lookupKeysJson']),
      caloriesPer100g: serializer.fromJson<double>(json['caloriesPer100g']),
      proteinPer100g: serializer.fromJson<double>(json['proteinPer100g']),
      carbsPer100g: serializer.fromJson<double>(json['carbsPer100g']),
      fatPer100g: serializer.fromJson<double>(json['fatPer100g']),
      fiberPer100g: serializer.fromJson<double>(json['fiberPer100g']),
      retrievedAt: serializer.fromJson<DateTime>(json['retrievedAt']),
      lastAccessedAt: serializer.fromJson<DateTime>(json['lastAccessedAt']),
      approximateBytes: serializer.fromJson<int>(json['approximateBytes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fdcId': serializer.toJson<String>(fdcId),
      'datasetVersion': serializer.toJson<String>(datasetVersion),
      'description': serializer.toJson<String>(description),
      'normalizedName': serializer.toJson<String>(normalizedName),
      'dataType': serializer.toJson<String>(dataType),
      'lookupKeysJson': serializer.toJson<String>(lookupKeysJson),
      'caloriesPer100g': serializer.toJson<double>(caloriesPer100g),
      'proteinPer100g': serializer.toJson<double>(proteinPer100g),
      'carbsPer100g': serializer.toJson<double>(carbsPer100g),
      'fatPer100g': serializer.toJson<double>(fatPer100g),
      'fiberPer100g': serializer.toJson<double>(fiberPer100g),
      'retrievedAt': serializer.toJson<DateTime>(retrievedAt),
      'lastAccessedAt': serializer.toJson<DateTime>(lastAccessedAt),
      'approximateBytes': serializer.toJson<int>(approximateBytes),
    };
  }

  LocalNutritionCacheTableData copyWith({
    String? fdcId,
    String? datasetVersion,
    String? description,
    String? normalizedName,
    String? dataType,
    String? lookupKeysJson,
    double? caloriesPer100g,
    double? proteinPer100g,
    double? carbsPer100g,
    double? fatPer100g,
    double? fiberPer100g,
    DateTime? retrievedAt,
    DateTime? lastAccessedAt,
    int? approximateBytes,
  }) => LocalNutritionCacheTableData(
    fdcId: fdcId ?? this.fdcId,
    datasetVersion: datasetVersion ?? this.datasetVersion,
    description: description ?? this.description,
    normalizedName: normalizedName ?? this.normalizedName,
    dataType: dataType ?? this.dataType,
    lookupKeysJson: lookupKeysJson ?? this.lookupKeysJson,
    caloriesPer100g: caloriesPer100g ?? this.caloriesPer100g,
    proteinPer100g: proteinPer100g ?? this.proteinPer100g,
    carbsPer100g: carbsPer100g ?? this.carbsPer100g,
    fatPer100g: fatPer100g ?? this.fatPer100g,
    fiberPer100g: fiberPer100g ?? this.fiberPer100g,
    retrievedAt: retrievedAt ?? this.retrievedAt,
    lastAccessedAt: lastAccessedAt ?? this.lastAccessedAt,
    approximateBytes: approximateBytes ?? this.approximateBytes,
  );
  LocalNutritionCacheTableData copyWithCompanion(
    LocalNutritionCacheTableCompanion data,
  ) {
    return LocalNutritionCacheTableData(
      fdcId: data.fdcId.present ? data.fdcId.value : this.fdcId,
      datasetVersion:
          data.datasetVersion.present
              ? data.datasetVersion.value
              : this.datasetVersion,
      description:
          data.description.present ? data.description.value : this.description,
      normalizedName:
          data.normalizedName.present
              ? data.normalizedName.value
              : this.normalizedName,
      dataType: data.dataType.present ? data.dataType.value : this.dataType,
      lookupKeysJson:
          data.lookupKeysJson.present
              ? data.lookupKeysJson.value
              : this.lookupKeysJson,
      caloriesPer100g:
          data.caloriesPer100g.present
              ? data.caloriesPer100g.value
              : this.caloriesPer100g,
      proteinPer100g:
          data.proteinPer100g.present
              ? data.proteinPer100g.value
              : this.proteinPer100g,
      carbsPer100g:
          data.carbsPer100g.present
              ? data.carbsPer100g.value
              : this.carbsPer100g,
      fatPer100g:
          data.fatPer100g.present ? data.fatPer100g.value : this.fatPer100g,
      fiberPer100g:
          data.fiberPer100g.present
              ? data.fiberPer100g.value
              : this.fiberPer100g,
      retrievedAt:
          data.retrievedAt.present ? data.retrievedAt.value : this.retrievedAt,
      lastAccessedAt:
          data.lastAccessedAt.present
              ? data.lastAccessedAt.value
              : this.lastAccessedAt,
      approximateBytes:
          data.approximateBytes.present
              ? data.approximateBytes.value
              : this.approximateBytes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalNutritionCacheTableData(')
          ..write('fdcId: $fdcId, ')
          ..write('datasetVersion: $datasetVersion, ')
          ..write('description: $description, ')
          ..write('normalizedName: $normalizedName, ')
          ..write('dataType: $dataType, ')
          ..write('lookupKeysJson: $lookupKeysJson, ')
          ..write('caloriesPer100g: $caloriesPer100g, ')
          ..write('proteinPer100g: $proteinPer100g, ')
          ..write('carbsPer100g: $carbsPer100g, ')
          ..write('fatPer100g: $fatPer100g, ')
          ..write('fiberPer100g: $fiberPer100g, ')
          ..write('retrievedAt: $retrievedAt, ')
          ..write('lastAccessedAt: $lastAccessedAt, ')
          ..write('approximateBytes: $approximateBytes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    fdcId,
    datasetVersion,
    description,
    normalizedName,
    dataType,
    lookupKeysJson,
    caloriesPer100g,
    proteinPer100g,
    carbsPer100g,
    fatPer100g,
    fiberPer100g,
    retrievedAt,
    lastAccessedAt,
    approximateBytes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalNutritionCacheTableData &&
          other.fdcId == this.fdcId &&
          other.datasetVersion == this.datasetVersion &&
          other.description == this.description &&
          other.normalizedName == this.normalizedName &&
          other.dataType == this.dataType &&
          other.lookupKeysJson == this.lookupKeysJson &&
          other.caloriesPer100g == this.caloriesPer100g &&
          other.proteinPer100g == this.proteinPer100g &&
          other.carbsPer100g == this.carbsPer100g &&
          other.fatPer100g == this.fatPer100g &&
          other.fiberPer100g == this.fiberPer100g &&
          other.retrievedAt == this.retrievedAt &&
          other.lastAccessedAt == this.lastAccessedAt &&
          other.approximateBytes == this.approximateBytes);
}

class LocalNutritionCacheTableCompanion
    extends UpdateCompanion<LocalNutritionCacheTableData> {
  final Value<String> fdcId;
  final Value<String> datasetVersion;
  final Value<String> description;
  final Value<String> normalizedName;
  final Value<String> dataType;
  final Value<String> lookupKeysJson;
  final Value<double> caloriesPer100g;
  final Value<double> proteinPer100g;
  final Value<double> carbsPer100g;
  final Value<double> fatPer100g;
  final Value<double> fiberPer100g;
  final Value<DateTime> retrievedAt;
  final Value<DateTime> lastAccessedAt;
  final Value<int> approximateBytes;
  final Value<int> rowid;
  const LocalNutritionCacheTableCompanion({
    this.fdcId = const Value.absent(),
    this.datasetVersion = const Value.absent(),
    this.description = const Value.absent(),
    this.normalizedName = const Value.absent(),
    this.dataType = const Value.absent(),
    this.lookupKeysJson = const Value.absent(),
    this.caloriesPer100g = const Value.absent(),
    this.proteinPer100g = const Value.absent(),
    this.carbsPer100g = const Value.absent(),
    this.fatPer100g = const Value.absent(),
    this.fiberPer100g = const Value.absent(),
    this.retrievedAt = const Value.absent(),
    this.lastAccessedAt = const Value.absent(),
    this.approximateBytes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalNutritionCacheTableCompanion.insert({
    required String fdcId,
    required String datasetVersion,
    required String description,
    required String normalizedName,
    required String dataType,
    required String lookupKeysJson,
    required double caloriesPer100g,
    required double proteinPer100g,
    required double carbsPer100g,
    required double fatPer100g,
    required double fiberPer100g,
    required DateTime retrievedAt,
    required DateTime lastAccessedAt,
    required int approximateBytes,
    this.rowid = const Value.absent(),
  }) : fdcId = Value(fdcId),
       datasetVersion = Value(datasetVersion),
       description = Value(description),
       normalizedName = Value(normalizedName),
       dataType = Value(dataType),
       lookupKeysJson = Value(lookupKeysJson),
       caloriesPer100g = Value(caloriesPer100g),
       proteinPer100g = Value(proteinPer100g),
       carbsPer100g = Value(carbsPer100g),
       fatPer100g = Value(fatPer100g),
       fiberPer100g = Value(fiberPer100g),
       retrievedAt = Value(retrievedAt),
       lastAccessedAt = Value(lastAccessedAt),
       approximateBytes = Value(approximateBytes);
  static Insertable<LocalNutritionCacheTableData> custom({
    Expression<String>? fdcId,
    Expression<String>? datasetVersion,
    Expression<String>? description,
    Expression<String>? normalizedName,
    Expression<String>? dataType,
    Expression<String>? lookupKeysJson,
    Expression<double>? caloriesPer100g,
    Expression<double>? proteinPer100g,
    Expression<double>? carbsPer100g,
    Expression<double>? fatPer100g,
    Expression<double>? fiberPer100g,
    Expression<DateTime>? retrievedAt,
    Expression<DateTime>? lastAccessedAt,
    Expression<int>? approximateBytes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fdcId != null) 'fdc_id': fdcId,
      if (datasetVersion != null) 'dataset_version': datasetVersion,
      if (description != null) 'description': description,
      if (normalizedName != null) 'normalized_name': normalizedName,
      if (dataType != null) 'data_type': dataType,
      if (lookupKeysJson != null) 'lookup_keys_json': lookupKeysJson,
      if (caloriesPer100g != null) 'calories_per100g': caloriesPer100g,
      if (proteinPer100g != null) 'protein_per100g': proteinPer100g,
      if (carbsPer100g != null) 'carbs_per100g': carbsPer100g,
      if (fatPer100g != null) 'fat_per100g': fatPer100g,
      if (fiberPer100g != null) 'fiber_per100g': fiberPer100g,
      if (retrievedAt != null) 'retrieved_at': retrievedAt,
      if (lastAccessedAt != null) 'last_accessed_at': lastAccessedAt,
      if (approximateBytes != null) 'approximate_bytes': approximateBytes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalNutritionCacheTableCompanion copyWith({
    Value<String>? fdcId,
    Value<String>? datasetVersion,
    Value<String>? description,
    Value<String>? normalizedName,
    Value<String>? dataType,
    Value<String>? lookupKeysJson,
    Value<double>? caloriesPer100g,
    Value<double>? proteinPer100g,
    Value<double>? carbsPer100g,
    Value<double>? fatPer100g,
    Value<double>? fiberPer100g,
    Value<DateTime>? retrievedAt,
    Value<DateTime>? lastAccessedAt,
    Value<int>? approximateBytes,
    Value<int>? rowid,
  }) {
    return LocalNutritionCacheTableCompanion(
      fdcId: fdcId ?? this.fdcId,
      datasetVersion: datasetVersion ?? this.datasetVersion,
      description: description ?? this.description,
      normalizedName: normalizedName ?? this.normalizedName,
      dataType: dataType ?? this.dataType,
      lookupKeysJson: lookupKeysJson ?? this.lookupKeysJson,
      caloriesPer100g: caloriesPer100g ?? this.caloriesPer100g,
      proteinPer100g: proteinPer100g ?? this.proteinPer100g,
      carbsPer100g: carbsPer100g ?? this.carbsPer100g,
      fatPer100g: fatPer100g ?? this.fatPer100g,
      fiberPer100g: fiberPer100g ?? this.fiberPer100g,
      retrievedAt: retrievedAt ?? this.retrievedAt,
      lastAccessedAt: lastAccessedAt ?? this.lastAccessedAt,
      approximateBytes: approximateBytes ?? this.approximateBytes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fdcId.present) {
      map['fdc_id'] = Variable<String>(fdcId.value);
    }
    if (datasetVersion.present) {
      map['dataset_version'] = Variable<String>(datasetVersion.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (normalizedName.present) {
      map['normalized_name'] = Variable<String>(normalizedName.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String>(dataType.value);
    }
    if (lookupKeysJson.present) {
      map['lookup_keys_json'] = Variable<String>(lookupKeysJson.value);
    }
    if (caloriesPer100g.present) {
      map['calories_per100g'] = Variable<double>(caloriesPer100g.value);
    }
    if (proteinPer100g.present) {
      map['protein_per100g'] = Variable<double>(proteinPer100g.value);
    }
    if (carbsPer100g.present) {
      map['carbs_per100g'] = Variable<double>(carbsPer100g.value);
    }
    if (fatPer100g.present) {
      map['fat_per100g'] = Variable<double>(fatPer100g.value);
    }
    if (fiberPer100g.present) {
      map['fiber_per100g'] = Variable<double>(fiberPer100g.value);
    }
    if (retrievedAt.present) {
      map['retrieved_at'] = Variable<DateTime>(retrievedAt.value);
    }
    if (lastAccessedAt.present) {
      map['last_accessed_at'] = Variable<DateTime>(lastAccessedAt.value);
    }
    if (approximateBytes.present) {
      map['approximate_bytes'] = Variable<int>(approximateBytes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalNutritionCacheTableCompanion(')
          ..write('fdcId: $fdcId, ')
          ..write('datasetVersion: $datasetVersion, ')
          ..write('description: $description, ')
          ..write('normalizedName: $normalizedName, ')
          ..write('dataType: $dataType, ')
          ..write('lookupKeysJson: $lookupKeysJson, ')
          ..write('caloriesPer100g: $caloriesPer100g, ')
          ..write('proteinPer100g: $proteinPer100g, ')
          ..write('carbsPer100g: $carbsPer100g, ')
          ..write('fatPer100g: $fatPer100g, ')
          ..write('fiberPer100g: $fiberPer100g, ')
          ..write('retrievedAt: $retrievedAt, ')
          ..write('lastAccessedAt: $lastAccessedAt, ')
          ..write('approximateBytes: $approximateBytes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HealthConnectSyncQueueTableTable extends HealthConnectSyncQueueTable
    with
        TableInfo<
          $HealthConnectSyncQueueTableTable,
          HealthConnectSyncQueueTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HealthConnectSyncQueueTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _operationMeta = const VerificationMeta(
    'operation',
  );
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
    'operation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientRecordIdMeta = const VerificationMeta(
    'clientRecordId',
  );
  @override
  late final GeneratedColumn<String> clientRecordId = GeneratedColumn<String>(
    'client_record_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clientRecordVersionMeta =
      const VerificationMeta('clientRecordVersion');
  @override
  late final GeneratedColumn<int> clientRecordVersion = GeneratedColumn<int>(
    'client_record_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealJsonMeta = const VerificationMeta(
    'mealJson',
  );
  @override
  late final GeneratedColumn<String> mealJson = GeneratedColumn<String>(
    'meal_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _loggedAtMeta = const VerificationMeta(
    'loggedAt',
  );
  @override
  late final GeneratedColumn<DateTime> loggedAt = GeneratedColumn<DateTime>(
    'logged_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastErrorMeta = const VerificationMeta(
    'lastError',
  );
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
    'last_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    operation,
    clientRecordId,
    clientRecordVersion,
    mealJson,
    loggedAt,
    attempts,
    lastError,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'health_connect_sync_queue_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<HealthConnectSyncQueueTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('operation')) {
      context.handle(
        _operationMeta,
        operation.isAcceptableOrUnknown(data['operation']!, _operationMeta),
      );
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('client_record_id')) {
      context.handle(
        _clientRecordIdMeta,
        clientRecordId.isAcceptableOrUnknown(
          data['client_record_id']!,
          _clientRecordIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientRecordIdMeta);
    }
    if (data.containsKey('client_record_version')) {
      context.handle(
        _clientRecordVersionMeta,
        clientRecordVersion.isAcceptableOrUnknown(
          data['client_record_version']!,
          _clientRecordVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_clientRecordVersionMeta);
    }
    if (data.containsKey('meal_json')) {
      context.handle(
        _mealJsonMeta,
        mealJson.isAcceptableOrUnknown(data['meal_json']!, _mealJsonMeta),
      );
    }
    if (data.containsKey('logged_at')) {
      context.handle(
        _loggedAtMeta,
        loggedAt.isAcceptableOrUnknown(data['logged_at']!, _loggedAtMeta),
      );
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HealthConnectSyncQueueTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HealthConnectSyncQueueTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      operation:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}operation'],
          )!,
      clientRecordId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}client_record_id'],
          )!,
      clientRecordVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}client_record_version'],
          )!,
      mealJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meal_json'],
      ),
      loggedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}logged_at'],
      ),
      attempts:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}attempts'],
          )!,
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $HealthConnectSyncQueueTableTable createAlias(String alias) {
    return $HealthConnectSyncQueueTableTable(attachedDatabase, alias);
  }
}

class HealthConnectSyncQueueTableData extends DataClass
    implements Insertable<HealthConnectSyncQueueTableData> {
  final int id;

  /// `upsert` contains a complete meal snapshot; `delete` is a tombstone.
  final String operation;

  /// Stable identity shared with Health Connect across edits and retries.
  final String clientRecordId;

  /// Monotonically increases whenever the local meal changes.
  final int clientRecordVersion;

  /// Proto3 JSON snapshot used by durable upsert retries.
  final String? mealJson;
  final DateTime? loggedAt;
  final int attempts;
  final String? lastError;
  final DateTime updatedAt;
  const HealthConnectSyncQueueTableData({
    required this.id,
    required this.operation,
    required this.clientRecordId,
    required this.clientRecordVersion,
    this.mealJson,
    this.loggedAt,
    required this.attempts,
    this.lastError,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['operation'] = Variable<String>(operation);
    map['client_record_id'] = Variable<String>(clientRecordId);
    map['client_record_version'] = Variable<int>(clientRecordVersion);
    if (!nullToAbsent || mealJson != null) {
      map['meal_json'] = Variable<String>(mealJson);
    }
    if (!nullToAbsent || loggedAt != null) {
      map['logged_at'] = Variable<DateTime>(loggedAt);
    }
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  HealthConnectSyncQueueTableCompanion toCompanion(bool nullToAbsent) {
    return HealthConnectSyncQueueTableCompanion(
      id: Value(id),
      operation: Value(operation),
      clientRecordId: Value(clientRecordId),
      clientRecordVersion: Value(clientRecordVersion),
      mealJson:
          mealJson == null && nullToAbsent
              ? const Value.absent()
              : Value(mealJson),
      loggedAt:
          loggedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(loggedAt),
      attempts: Value(attempts),
      lastError:
          lastError == null && nullToAbsent
              ? const Value.absent()
              : Value(lastError),
      updatedAt: Value(updatedAt),
    );
  }

  factory HealthConnectSyncQueueTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HealthConnectSyncQueueTableData(
      id: serializer.fromJson<int>(json['id']),
      operation: serializer.fromJson<String>(json['operation']),
      clientRecordId: serializer.fromJson<String>(json['clientRecordId']),
      clientRecordVersion: serializer.fromJson<int>(
        json['clientRecordVersion'],
      ),
      mealJson: serializer.fromJson<String?>(json['mealJson']),
      loggedAt: serializer.fromJson<DateTime?>(json['loggedAt']),
      attempts: serializer.fromJson<int>(json['attempts']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'operation': serializer.toJson<String>(operation),
      'clientRecordId': serializer.toJson<String>(clientRecordId),
      'clientRecordVersion': serializer.toJson<int>(clientRecordVersion),
      'mealJson': serializer.toJson<String?>(mealJson),
      'loggedAt': serializer.toJson<DateTime?>(loggedAt),
      'attempts': serializer.toJson<int>(attempts),
      'lastError': serializer.toJson<String?>(lastError),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  HealthConnectSyncQueueTableData copyWith({
    int? id,
    String? operation,
    String? clientRecordId,
    int? clientRecordVersion,
    Value<String?> mealJson = const Value.absent(),
    Value<DateTime?> loggedAt = const Value.absent(),
    int? attempts,
    Value<String?> lastError = const Value.absent(),
    DateTime? updatedAt,
  }) => HealthConnectSyncQueueTableData(
    id: id ?? this.id,
    operation: operation ?? this.operation,
    clientRecordId: clientRecordId ?? this.clientRecordId,
    clientRecordVersion: clientRecordVersion ?? this.clientRecordVersion,
    mealJson: mealJson.present ? mealJson.value : this.mealJson,
    loggedAt: loggedAt.present ? loggedAt.value : this.loggedAt,
    attempts: attempts ?? this.attempts,
    lastError: lastError.present ? lastError.value : this.lastError,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  HealthConnectSyncQueueTableData copyWithCompanion(
    HealthConnectSyncQueueTableCompanion data,
  ) {
    return HealthConnectSyncQueueTableData(
      id: data.id.present ? data.id.value : this.id,
      operation: data.operation.present ? data.operation.value : this.operation,
      clientRecordId:
          data.clientRecordId.present
              ? data.clientRecordId.value
              : this.clientRecordId,
      clientRecordVersion:
          data.clientRecordVersion.present
              ? data.clientRecordVersion.value
              : this.clientRecordVersion,
      mealJson: data.mealJson.present ? data.mealJson.value : this.mealJson,
      loggedAt: data.loggedAt.present ? data.loggedAt.value : this.loggedAt,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HealthConnectSyncQueueTableData(')
          ..write('id: $id, ')
          ..write('operation: $operation, ')
          ..write('clientRecordId: $clientRecordId, ')
          ..write('clientRecordVersion: $clientRecordVersion, ')
          ..write('mealJson: $mealJson, ')
          ..write('loggedAt: $loggedAt, ')
          ..write('attempts: $attempts, ')
          ..write('lastError: $lastError, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    operation,
    clientRecordId,
    clientRecordVersion,
    mealJson,
    loggedAt,
    attempts,
    lastError,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HealthConnectSyncQueueTableData &&
          other.id == this.id &&
          other.operation == this.operation &&
          other.clientRecordId == this.clientRecordId &&
          other.clientRecordVersion == this.clientRecordVersion &&
          other.mealJson == this.mealJson &&
          other.loggedAt == this.loggedAt &&
          other.attempts == this.attempts &&
          other.lastError == this.lastError &&
          other.updatedAt == this.updatedAt);
}

class HealthConnectSyncQueueTableCompanion
    extends UpdateCompanion<HealthConnectSyncQueueTableData> {
  final Value<int> id;
  final Value<String> operation;
  final Value<String> clientRecordId;
  final Value<int> clientRecordVersion;
  final Value<String?> mealJson;
  final Value<DateTime?> loggedAt;
  final Value<int> attempts;
  final Value<String?> lastError;
  final Value<DateTime> updatedAt;
  const HealthConnectSyncQueueTableCompanion({
    this.id = const Value.absent(),
    this.operation = const Value.absent(),
    this.clientRecordId = const Value.absent(),
    this.clientRecordVersion = const Value.absent(),
    this.mealJson = const Value.absent(),
    this.loggedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.lastError = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  HealthConnectSyncQueueTableCompanion.insert({
    this.id = const Value.absent(),
    required String operation,
    required String clientRecordId,
    required int clientRecordVersion,
    this.mealJson = const Value.absent(),
    this.loggedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.lastError = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : operation = Value(operation),
       clientRecordId = Value(clientRecordId),
       clientRecordVersion = Value(clientRecordVersion);
  static Insertable<HealthConnectSyncQueueTableData> custom({
    Expression<int>? id,
    Expression<String>? operation,
    Expression<String>? clientRecordId,
    Expression<int>? clientRecordVersion,
    Expression<String>? mealJson,
    Expression<DateTime>? loggedAt,
    Expression<int>? attempts,
    Expression<String>? lastError,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (operation != null) 'operation': operation,
      if (clientRecordId != null) 'client_record_id': clientRecordId,
      if (clientRecordVersion != null)
        'client_record_version': clientRecordVersion,
      if (mealJson != null) 'meal_json': mealJson,
      if (loggedAt != null) 'logged_at': loggedAt,
      if (attempts != null) 'attempts': attempts,
      if (lastError != null) 'last_error': lastError,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  HealthConnectSyncQueueTableCompanion copyWith({
    Value<int>? id,
    Value<String>? operation,
    Value<String>? clientRecordId,
    Value<int>? clientRecordVersion,
    Value<String?>? mealJson,
    Value<DateTime?>? loggedAt,
    Value<int>? attempts,
    Value<String?>? lastError,
    Value<DateTime>? updatedAt,
  }) {
    return HealthConnectSyncQueueTableCompanion(
      id: id ?? this.id,
      operation: operation ?? this.operation,
      clientRecordId: clientRecordId ?? this.clientRecordId,
      clientRecordVersion: clientRecordVersion ?? this.clientRecordVersion,
      mealJson: mealJson ?? this.mealJson,
      loggedAt: loggedAt ?? this.loggedAt,
      attempts: attempts ?? this.attempts,
      lastError: lastError ?? this.lastError,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (clientRecordId.present) {
      map['client_record_id'] = Variable<String>(clientRecordId.value);
    }
    if (clientRecordVersion.present) {
      map['client_record_version'] = Variable<int>(clientRecordVersion.value);
    }
    if (mealJson.present) {
      map['meal_json'] = Variable<String>(mealJson.value);
    }
    if (loggedAt.present) {
      map['logged_at'] = Variable<DateTime>(loggedAt.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HealthConnectSyncQueueTableCompanion(')
          ..write('id: $id, ')
          ..write('operation: $operation, ')
          ..write('clientRecordId: $clientRecordId, ')
          ..write('clientRecordVersion: $clientRecordVersion, ')
          ..write('mealJson: $mealJson, ')
          ..write('loggedAt: $loggedAt, ')
          ..write('attempts: $attempts, ')
          ..write('lastError: $lastError, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $MealLogSyncQueueTableTable extends MealLogSyncQueueTable
    with TableInfo<$MealLogSyncQueueTableTable, MealLogSyncQueueTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealLogSyncQueueTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _analysisIdMeta = const VerificationMeta(
    'analysisId',
  );
  @override
  late final GeneratedColumn<String> analysisId = GeneratedColumn<String>(
    'analysis_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _operationMeta = const VerificationMeta(
    'operation',
  );
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
    'operation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealJsonMeta = const VerificationMeta(
    'mealJson',
  );
  @override
  late final GeneratedColumn<String> mealJson = GeneratedColumn<String>(
    'meal_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _loggedAtMeta = const VerificationMeta(
    'loggedAt',
  );
  @override
  late final GeneratedColumn<DateTime> loggedAt = GeneratedColumn<DateTime>(
    'logged_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastErrorMeta = const VerificationMeta(
    'lastError',
  );
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
    'last_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    analysisId,
    operation,
    version,
    mealJson,
    loggedAt,
    attempts,
    lastError,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meal_log_sync_queue_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MealLogSyncQueueTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('analysis_id')) {
      context.handle(
        _analysisIdMeta,
        analysisId.isAcceptableOrUnknown(data['analysis_id']!, _analysisIdMeta),
      );
    } else if (isInserting) {
      context.missing(_analysisIdMeta);
    }
    if (data.containsKey('operation')) {
      context.handle(
        _operationMeta,
        operation.isAcceptableOrUnknown(data['operation']!, _operationMeta),
      );
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('meal_json')) {
      context.handle(
        _mealJsonMeta,
        mealJson.isAcceptableOrUnknown(data['meal_json']!, _mealJsonMeta),
      );
    }
    if (data.containsKey('logged_at')) {
      context.handle(
        _loggedAtMeta,
        loggedAt.isAcceptableOrUnknown(data['logged_at']!, _loggedAtMeta),
      );
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MealLogSyncQueueTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealLogSyncQueueTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      analysisId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}analysis_id'],
          )!,
      operation:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}operation'],
          )!,
      version:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}version'],
          )!,
      mealJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meal_json'],
      ),
      loggedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}logged_at'],
      ),
      attempts:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}attempts'],
          )!,
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $MealLogSyncQueueTableTable createAlias(String alias) {
    return $MealLogSyncQueueTableTable(attachedDatabase, alias);
  }
}

class MealLogSyncQueueTableData extends DataClass
    implements Insertable<MealLogSyncQueueTableData> {
  final int id;
  final String analysisId;
  final String operation;
  final int version;
  final String? mealJson;
  final DateTime? loggedAt;
  final int attempts;
  final String? lastError;
  final DateTime updatedAt;
  const MealLogSyncQueueTableData({
    required this.id,
    required this.analysisId,
    required this.operation,
    required this.version,
    this.mealJson,
    this.loggedAt,
    required this.attempts,
    this.lastError,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['analysis_id'] = Variable<String>(analysisId);
    map['operation'] = Variable<String>(operation);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || mealJson != null) {
      map['meal_json'] = Variable<String>(mealJson);
    }
    if (!nullToAbsent || loggedAt != null) {
      map['logged_at'] = Variable<DateTime>(loggedAt);
    }
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  MealLogSyncQueueTableCompanion toCompanion(bool nullToAbsent) {
    return MealLogSyncQueueTableCompanion(
      id: Value(id),
      analysisId: Value(analysisId),
      operation: Value(operation),
      version: Value(version),
      mealJson:
          mealJson == null && nullToAbsent
              ? const Value.absent()
              : Value(mealJson),
      loggedAt:
          loggedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(loggedAt),
      attempts: Value(attempts),
      lastError:
          lastError == null && nullToAbsent
              ? const Value.absent()
              : Value(lastError),
      updatedAt: Value(updatedAt),
    );
  }

  factory MealLogSyncQueueTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealLogSyncQueueTableData(
      id: serializer.fromJson<int>(json['id']),
      analysisId: serializer.fromJson<String>(json['analysisId']),
      operation: serializer.fromJson<String>(json['operation']),
      version: serializer.fromJson<int>(json['version']),
      mealJson: serializer.fromJson<String?>(json['mealJson']),
      loggedAt: serializer.fromJson<DateTime?>(json['loggedAt']),
      attempts: serializer.fromJson<int>(json['attempts']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'analysisId': serializer.toJson<String>(analysisId),
      'operation': serializer.toJson<String>(operation),
      'version': serializer.toJson<int>(version),
      'mealJson': serializer.toJson<String?>(mealJson),
      'loggedAt': serializer.toJson<DateTime?>(loggedAt),
      'attempts': serializer.toJson<int>(attempts),
      'lastError': serializer.toJson<String?>(lastError),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MealLogSyncQueueTableData copyWith({
    int? id,
    String? analysisId,
    String? operation,
    int? version,
    Value<String?> mealJson = const Value.absent(),
    Value<DateTime?> loggedAt = const Value.absent(),
    int? attempts,
    Value<String?> lastError = const Value.absent(),
    DateTime? updatedAt,
  }) => MealLogSyncQueueTableData(
    id: id ?? this.id,
    analysisId: analysisId ?? this.analysisId,
    operation: operation ?? this.operation,
    version: version ?? this.version,
    mealJson: mealJson.present ? mealJson.value : this.mealJson,
    loggedAt: loggedAt.present ? loggedAt.value : this.loggedAt,
    attempts: attempts ?? this.attempts,
    lastError: lastError.present ? lastError.value : this.lastError,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  MealLogSyncQueueTableData copyWithCompanion(
    MealLogSyncQueueTableCompanion data,
  ) {
    return MealLogSyncQueueTableData(
      id: data.id.present ? data.id.value : this.id,
      analysisId:
          data.analysisId.present ? data.analysisId.value : this.analysisId,
      operation: data.operation.present ? data.operation.value : this.operation,
      version: data.version.present ? data.version.value : this.version,
      mealJson: data.mealJson.present ? data.mealJson.value : this.mealJson,
      loggedAt: data.loggedAt.present ? data.loggedAt.value : this.loggedAt,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MealLogSyncQueueTableData(')
          ..write('id: $id, ')
          ..write('analysisId: $analysisId, ')
          ..write('operation: $operation, ')
          ..write('version: $version, ')
          ..write('mealJson: $mealJson, ')
          ..write('loggedAt: $loggedAt, ')
          ..write('attempts: $attempts, ')
          ..write('lastError: $lastError, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    analysisId,
    operation,
    version,
    mealJson,
    loggedAt,
    attempts,
    lastError,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealLogSyncQueueTableData &&
          other.id == this.id &&
          other.analysisId == this.analysisId &&
          other.operation == this.operation &&
          other.version == this.version &&
          other.mealJson == this.mealJson &&
          other.loggedAt == this.loggedAt &&
          other.attempts == this.attempts &&
          other.lastError == this.lastError &&
          other.updatedAt == this.updatedAt);
}

class MealLogSyncQueueTableCompanion
    extends UpdateCompanion<MealLogSyncQueueTableData> {
  final Value<int> id;
  final Value<String> analysisId;
  final Value<String> operation;
  final Value<int> version;
  final Value<String?> mealJson;
  final Value<DateTime?> loggedAt;
  final Value<int> attempts;
  final Value<String?> lastError;
  final Value<DateTime> updatedAt;
  const MealLogSyncQueueTableCompanion({
    this.id = const Value.absent(),
    this.analysisId = const Value.absent(),
    this.operation = const Value.absent(),
    this.version = const Value.absent(),
    this.mealJson = const Value.absent(),
    this.loggedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.lastError = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  MealLogSyncQueueTableCompanion.insert({
    this.id = const Value.absent(),
    required String analysisId,
    required String operation,
    required int version,
    this.mealJson = const Value.absent(),
    this.loggedAt = const Value.absent(),
    this.attempts = const Value.absent(),
    this.lastError = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : analysisId = Value(analysisId),
       operation = Value(operation),
       version = Value(version);
  static Insertable<MealLogSyncQueueTableData> custom({
    Expression<int>? id,
    Expression<String>? analysisId,
    Expression<String>? operation,
    Expression<int>? version,
    Expression<String>? mealJson,
    Expression<DateTime>? loggedAt,
    Expression<int>? attempts,
    Expression<String>? lastError,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (analysisId != null) 'analysis_id': analysisId,
      if (operation != null) 'operation': operation,
      if (version != null) 'version': version,
      if (mealJson != null) 'meal_json': mealJson,
      if (loggedAt != null) 'logged_at': loggedAt,
      if (attempts != null) 'attempts': attempts,
      if (lastError != null) 'last_error': lastError,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  MealLogSyncQueueTableCompanion copyWith({
    Value<int>? id,
    Value<String>? analysisId,
    Value<String>? operation,
    Value<int>? version,
    Value<String?>? mealJson,
    Value<DateTime?>? loggedAt,
    Value<int>? attempts,
    Value<String?>? lastError,
    Value<DateTime>? updatedAt,
  }) {
    return MealLogSyncQueueTableCompanion(
      id: id ?? this.id,
      analysisId: analysisId ?? this.analysisId,
      operation: operation ?? this.operation,
      version: version ?? this.version,
      mealJson: mealJson ?? this.mealJson,
      loggedAt: loggedAt ?? this.loggedAt,
      attempts: attempts ?? this.attempts,
      lastError: lastError ?? this.lastError,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (analysisId.present) {
      map['analysis_id'] = Variable<String>(analysisId.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (mealJson.present) {
      map['meal_json'] = Variable<String>(mealJson.value);
    }
    if (loggedAt.present) {
      map['logged_at'] = Variable<DateTime>(loggedAt.value);
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealLogSyncQueueTableCompanion(')
          ..write('id: $id, ')
          ..write('analysisId: $analysisId, ')
          ..write('operation: $operation, ')
          ..write('version: $version, ')
          ..write('mealJson: $mealJson, ')
          ..write('loggedAt: $loggedAt, ')
          ..write('attempts: $attempts, ')
          ..write('lastError: $lastError, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $LocalAiSummaryTableTable extends LocalAiSummaryTable
    with TableInfo<$LocalAiSummaryTableTable, LocalAiSummaryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalAiSummaryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _summaryLocalDateMeta = const VerificationMeta(
    'summaryLocalDate',
  );
  @override
  late final GeneratedColumn<String> summaryLocalDate = GeneratedColumn<String>(
    'summary_local_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _responseJsonMeta = const VerificationMeta(
    'responseJson',
  );
  @override
  late final GeneratedColumn<String> responseJson = GeneratedColumn<String>(
    'response_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _resolvedLocaleMeta = const VerificationMeta(
    'resolvedLocale',
  );
  @override
  late final GeneratedColumn<String> resolvedLocale = GeneratedColumn<String>(
    'resolved_locale',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    summaryLocalDate,
    responseJson,
    resolvedLocale,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_ai_summary_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalAiSummaryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('summary_local_date')) {
      context.handle(
        _summaryLocalDateMeta,
        summaryLocalDate.isAcceptableOrUnknown(
          data['summary_local_date']!,
          _summaryLocalDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_summaryLocalDateMeta);
    }
    if (data.containsKey('response_json')) {
      context.handle(
        _responseJsonMeta,
        responseJson.isAcceptableOrUnknown(
          data['response_json']!,
          _responseJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_responseJsonMeta);
    }
    if (data.containsKey('resolved_locale')) {
      context.handle(
        _resolvedLocaleMeta,
        resolvedLocale.isAcceptableOrUnknown(
          data['resolved_locale']!,
          _resolvedLocaleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_resolvedLocaleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {summaryLocalDate};
  @override
  LocalAiSummaryTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalAiSummaryTableData(
      summaryLocalDate:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}summary_local_date'],
          )!,
      responseJson:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}response_json'],
          )!,
      resolvedLocale:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}resolved_locale'],
          )!,
    );
  }

  @override
  $LocalAiSummaryTableTable createAlias(String alias) {
    return $LocalAiSummaryTableTable(attachedDatabase, alias);
  }
}

class LocalAiSummaryTableData extends DataClass
    implements Insertable<LocalAiSummaryTableData> {
  final String summaryLocalDate;
  final String responseJson;
  final String resolvedLocale;
  const LocalAiSummaryTableData({
    required this.summaryLocalDate,
    required this.responseJson,
    required this.resolvedLocale,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['summary_local_date'] = Variable<String>(summaryLocalDate);
    map['response_json'] = Variable<String>(responseJson);
    map['resolved_locale'] = Variable<String>(resolvedLocale);
    return map;
  }

  LocalAiSummaryTableCompanion toCompanion(bool nullToAbsent) {
    return LocalAiSummaryTableCompanion(
      summaryLocalDate: Value(summaryLocalDate),
      responseJson: Value(responseJson),
      resolvedLocale: Value(resolvedLocale),
    );
  }

  factory LocalAiSummaryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalAiSummaryTableData(
      summaryLocalDate: serializer.fromJson<String>(json['summaryLocalDate']),
      responseJson: serializer.fromJson<String>(json['responseJson']),
      resolvedLocale: serializer.fromJson<String>(json['resolvedLocale']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'summaryLocalDate': serializer.toJson<String>(summaryLocalDate),
      'responseJson': serializer.toJson<String>(responseJson),
      'resolvedLocale': serializer.toJson<String>(resolvedLocale),
    };
  }

  LocalAiSummaryTableData copyWith({
    String? summaryLocalDate,
    String? responseJson,
    String? resolvedLocale,
  }) => LocalAiSummaryTableData(
    summaryLocalDate: summaryLocalDate ?? this.summaryLocalDate,
    responseJson: responseJson ?? this.responseJson,
    resolvedLocale: resolvedLocale ?? this.resolvedLocale,
  );
  LocalAiSummaryTableData copyWithCompanion(LocalAiSummaryTableCompanion data) {
    return LocalAiSummaryTableData(
      summaryLocalDate:
          data.summaryLocalDate.present
              ? data.summaryLocalDate.value
              : this.summaryLocalDate,
      responseJson:
          data.responseJson.present
              ? data.responseJson.value
              : this.responseJson,
      resolvedLocale:
          data.resolvedLocale.present
              ? data.resolvedLocale.value
              : this.resolvedLocale,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalAiSummaryTableData(')
          ..write('summaryLocalDate: $summaryLocalDate, ')
          ..write('responseJson: $responseJson, ')
          ..write('resolvedLocale: $resolvedLocale')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(summaryLocalDate, responseJson, resolvedLocale);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalAiSummaryTableData &&
          other.summaryLocalDate == this.summaryLocalDate &&
          other.responseJson == this.responseJson &&
          other.resolvedLocale == this.resolvedLocale);
}

class LocalAiSummaryTableCompanion
    extends UpdateCompanion<LocalAiSummaryTableData> {
  final Value<String> summaryLocalDate;
  final Value<String> responseJson;
  final Value<String> resolvedLocale;
  final Value<int> rowid;
  const LocalAiSummaryTableCompanion({
    this.summaryLocalDate = const Value.absent(),
    this.responseJson = const Value.absent(),
    this.resolvedLocale = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalAiSummaryTableCompanion.insert({
    required String summaryLocalDate,
    required String responseJson,
    required String resolvedLocale,
    this.rowid = const Value.absent(),
  }) : summaryLocalDate = Value(summaryLocalDate),
       responseJson = Value(responseJson),
       resolvedLocale = Value(resolvedLocale);
  static Insertable<LocalAiSummaryTableData> custom({
    Expression<String>? summaryLocalDate,
    Expression<String>? responseJson,
    Expression<String>? resolvedLocale,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (summaryLocalDate != null) 'summary_local_date': summaryLocalDate,
      if (responseJson != null) 'response_json': responseJson,
      if (resolvedLocale != null) 'resolved_locale': resolvedLocale,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalAiSummaryTableCompanion copyWith({
    Value<String>? summaryLocalDate,
    Value<String>? responseJson,
    Value<String>? resolvedLocale,
    Value<int>? rowid,
  }) {
    return LocalAiSummaryTableCompanion(
      summaryLocalDate: summaryLocalDate ?? this.summaryLocalDate,
      responseJson: responseJson ?? this.responseJson,
      resolvedLocale: resolvedLocale ?? this.resolvedLocale,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (summaryLocalDate.present) {
      map['summary_local_date'] = Variable<String>(summaryLocalDate.value);
    }
    if (responseJson.present) {
      map['response_json'] = Variable<String>(responseJson.value);
    }
    if (resolvedLocale.present) {
      map['resolved_locale'] = Variable<String>(resolvedLocale.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalAiSummaryTableCompanion(')
          ..write('summaryLocalDate: $summaryLocalDate, ')
          ..write('responseJson: $responseJson, ')
          ..write('resolvedLocale: $resolvedLocale, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MealInfoTableTable mealInfoTable = $MealInfoTableTable(this);
  late final $UserProfileTableTable userProfileTable = $UserProfileTableTable(
    this,
  );
  late final $UserPreferencesTableTable userPreferencesTable =
      $UserPreferencesTableTable(this);
  late final $FavoriteMealTableTable favoriteMealTable =
      $FavoriteMealTableTable(this);
  late final $LocalNutritionCacheTableTable localNutritionCacheTable =
      $LocalNutritionCacheTableTable(this);
  late final $HealthConnectSyncQueueTableTable healthConnectSyncQueueTable =
      $HealthConnectSyncQueueTableTable(this);
  late final $MealLogSyncQueueTableTable mealLogSyncQueueTable =
      $MealLogSyncQueueTableTable(this);
  late final $LocalAiSummaryTableTable localAiSummaryTable =
      $LocalAiSummaryTableTable(this);
  late final Index mealInfoAnalysisIdUnique = Index(
    'meal_info_analysis_id_unique',
    'CREATE UNIQUE INDEX meal_info_analysis_id_unique ON meal_info_table (analysis_id)',
  );
  late final Index healthConnectSyncClientRecordUnique = Index(
    'health_connect_sync_client_record_unique',
    'CREATE UNIQUE INDEX health_connect_sync_client_record_unique ON health_connect_sync_queue_table (client_record_id)',
  );
  late final Index mealLogSyncAnalysisIdUnique = Index(
    'meal_log_sync_analysis_id_unique',
    'CREATE UNIQUE INDEX meal_log_sync_analysis_id_unique ON meal_log_sync_queue_table (analysis_id)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    mealInfoTable,
    userProfileTable,
    userPreferencesTable,
    favoriteMealTable,
    localNutritionCacheTable,
    healthConnectSyncQueueTable,
    mealLogSyncQueueTable,
    localAiSummaryTable,
    mealInfoAnalysisIdUnique,
    healthConnectSyncClientRecordUnique,
    mealLogSyncAnalysisIdUnique,
  ];
}

typedef $$MealInfoTableTableCreateCompanionBuilder =
    MealInfoTableCompanion Function({
      Value<int> id,
      required String mealName,
      required String mealQuantity,
      required String mealType,
      required int calories,
      required int protein,
      required int carbs,
      required int fat,
      required int fiber,
      required DateTime timestamp,
      Value<String?> imageUrl,
      Value<String?> healthScore,
      Value<String?> healthScoreReason,
      Value<String?> analysisId,
      Value<String?> analysisSnapshotJson,
      Value<String?> healthConnectRecordId,
      Value<int> healthConnectRecordVersion,
      Value<int> mealLogSyncVersion,
      Value<int> mealLogSyncedVersion,
    });
typedef $$MealInfoTableTableUpdateCompanionBuilder =
    MealInfoTableCompanion Function({
      Value<int> id,
      Value<String> mealName,
      Value<String> mealQuantity,
      Value<String> mealType,
      Value<int> calories,
      Value<int> protein,
      Value<int> carbs,
      Value<int> fat,
      Value<int> fiber,
      Value<DateTime> timestamp,
      Value<String?> imageUrl,
      Value<String?> healthScore,
      Value<String?> healthScoreReason,
      Value<String?> analysisId,
      Value<String?> analysisSnapshotJson,
      Value<String?> healthConnectRecordId,
      Value<int> healthConnectRecordVersion,
      Value<int> mealLogSyncVersion,
      Value<int> mealLogSyncedVersion,
    });

class $$MealInfoTableTableFilterComposer
    extends Composer<_$AppDatabase, $MealInfoTableTable> {
  $$MealInfoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealName => $composableBuilder(
    column: $table.mealName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealQuantity => $composableBuilder(
    column: $table.mealQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealType => $composableBuilder(
    column: $table.mealType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get calories => $composableBuilder(
    column: $table.calories,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get protein => $composableBuilder(
    column: $table.protein,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get carbs => $composableBuilder(
    column: $table.carbs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fat => $composableBuilder(
    column: $table.fat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fiber => $composableBuilder(
    column: $table.fiber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get healthScore => $composableBuilder(
    column: $table.healthScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get healthScoreReason => $composableBuilder(
    column: $table.healthScoreReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get analysisSnapshotJson => $composableBuilder(
    column: $table.analysisSnapshotJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get healthConnectRecordId => $composableBuilder(
    column: $table.healthConnectRecordId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get healthConnectRecordVersion => $composableBuilder(
    column: $table.healthConnectRecordVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mealLogSyncVersion => $composableBuilder(
    column: $table.mealLogSyncVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mealLogSyncedVersion => $composableBuilder(
    column: $table.mealLogSyncedVersion,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MealInfoTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MealInfoTableTable> {
  $$MealInfoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealName => $composableBuilder(
    column: $table.mealName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealQuantity => $composableBuilder(
    column: $table.mealQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealType => $composableBuilder(
    column: $table.mealType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get calories => $composableBuilder(
    column: $table.calories,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get protein => $composableBuilder(
    column: $table.protein,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get carbs => $composableBuilder(
    column: $table.carbs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fat => $composableBuilder(
    column: $table.fat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fiber => $composableBuilder(
    column: $table.fiber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get healthScore => $composableBuilder(
    column: $table.healthScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get healthScoreReason => $composableBuilder(
    column: $table.healthScoreReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get analysisSnapshotJson => $composableBuilder(
    column: $table.analysisSnapshotJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get healthConnectRecordId => $composableBuilder(
    column: $table.healthConnectRecordId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get healthConnectRecordVersion => $composableBuilder(
    column: $table.healthConnectRecordVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mealLogSyncVersion => $composableBuilder(
    column: $table.mealLogSyncVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mealLogSyncedVersion => $composableBuilder(
    column: $table.mealLogSyncedVersion,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MealInfoTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MealInfoTableTable> {
  $$MealInfoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get mealName =>
      $composableBuilder(column: $table.mealName, builder: (column) => column);

  GeneratedColumn<String> get mealQuantity => $composableBuilder(
    column: $table.mealQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mealType =>
      $composableBuilder(column: $table.mealType, builder: (column) => column);

  GeneratedColumn<int> get calories =>
      $composableBuilder(column: $table.calories, builder: (column) => column);

  GeneratedColumn<int> get protein =>
      $composableBuilder(column: $table.protein, builder: (column) => column);

  GeneratedColumn<int> get carbs =>
      $composableBuilder(column: $table.carbs, builder: (column) => column);

  GeneratedColumn<int> get fat =>
      $composableBuilder(column: $table.fat, builder: (column) => column);

  GeneratedColumn<int> get fiber =>
      $composableBuilder(column: $table.fiber, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get healthScore => $composableBuilder(
    column: $table.healthScore,
    builder: (column) => column,
  );

  GeneratedColumn<String> get healthScoreReason => $composableBuilder(
    column: $table.healthScoreReason,
    builder: (column) => column,
  );

  GeneratedColumn<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get analysisSnapshotJson => $composableBuilder(
    column: $table.analysisSnapshotJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get healthConnectRecordId => $composableBuilder(
    column: $table.healthConnectRecordId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get healthConnectRecordVersion => $composableBuilder(
    column: $table.healthConnectRecordVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get mealLogSyncVersion => $composableBuilder(
    column: $table.mealLogSyncVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get mealLogSyncedVersion => $composableBuilder(
    column: $table.mealLogSyncedVersion,
    builder: (column) => column,
  );
}

class $$MealInfoTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MealInfoTableTable,
          MealInfoTableData,
          $$MealInfoTableTableFilterComposer,
          $$MealInfoTableTableOrderingComposer,
          $$MealInfoTableTableAnnotationComposer,
          $$MealInfoTableTableCreateCompanionBuilder,
          $$MealInfoTableTableUpdateCompanionBuilder,
          (
            MealInfoTableData,
            BaseReferences<
              _$AppDatabase,
              $MealInfoTableTable,
              MealInfoTableData
            >,
          ),
          MealInfoTableData,
          PrefetchHooks Function()
        > {
  $$MealInfoTableTableTableManager(_$AppDatabase db, $MealInfoTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$MealInfoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$MealInfoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$MealInfoTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> mealName = const Value.absent(),
                Value<String> mealQuantity = const Value.absent(),
                Value<String> mealType = const Value.absent(),
                Value<int> calories = const Value.absent(),
                Value<int> protein = const Value.absent(),
                Value<int> carbs = const Value.absent(),
                Value<int> fat = const Value.absent(),
                Value<int> fiber = const Value.absent(),
                Value<DateTime> timestamp = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> healthScore = const Value.absent(),
                Value<String?> healthScoreReason = const Value.absent(),
                Value<String?> analysisId = const Value.absent(),
                Value<String?> analysisSnapshotJson = const Value.absent(),
                Value<String?> healthConnectRecordId = const Value.absent(),
                Value<int> healthConnectRecordVersion = const Value.absent(),
                Value<int> mealLogSyncVersion = const Value.absent(),
                Value<int> mealLogSyncedVersion = const Value.absent(),
              }) => MealInfoTableCompanion(
                id: id,
                mealName: mealName,
                mealQuantity: mealQuantity,
                mealType: mealType,
                calories: calories,
                protein: protein,
                carbs: carbs,
                fat: fat,
                fiber: fiber,
                timestamp: timestamp,
                imageUrl: imageUrl,
                healthScore: healthScore,
                healthScoreReason: healthScoreReason,
                analysisId: analysisId,
                analysisSnapshotJson: analysisSnapshotJson,
                healthConnectRecordId: healthConnectRecordId,
                healthConnectRecordVersion: healthConnectRecordVersion,
                mealLogSyncVersion: mealLogSyncVersion,
                mealLogSyncedVersion: mealLogSyncedVersion,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String mealName,
                required String mealQuantity,
                required String mealType,
                required int calories,
                required int protein,
                required int carbs,
                required int fat,
                required int fiber,
                required DateTime timestamp,
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> healthScore = const Value.absent(),
                Value<String?> healthScoreReason = const Value.absent(),
                Value<String?> analysisId = const Value.absent(),
                Value<String?> analysisSnapshotJson = const Value.absent(),
                Value<String?> healthConnectRecordId = const Value.absent(),
                Value<int> healthConnectRecordVersion = const Value.absent(),
                Value<int> mealLogSyncVersion = const Value.absent(),
                Value<int> mealLogSyncedVersion = const Value.absent(),
              }) => MealInfoTableCompanion.insert(
                id: id,
                mealName: mealName,
                mealQuantity: mealQuantity,
                mealType: mealType,
                calories: calories,
                protein: protein,
                carbs: carbs,
                fat: fat,
                fiber: fiber,
                timestamp: timestamp,
                imageUrl: imageUrl,
                healthScore: healthScore,
                healthScoreReason: healthScoreReason,
                analysisId: analysisId,
                analysisSnapshotJson: analysisSnapshotJson,
                healthConnectRecordId: healthConnectRecordId,
                healthConnectRecordVersion: healthConnectRecordVersion,
                mealLogSyncVersion: mealLogSyncVersion,
                mealLogSyncedVersion: mealLogSyncedVersion,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MealInfoTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MealInfoTableTable,
      MealInfoTableData,
      $$MealInfoTableTableFilterComposer,
      $$MealInfoTableTableOrderingComposer,
      $$MealInfoTableTableAnnotationComposer,
      $$MealInfoTableTableCreateCompanionBuilder,
      $$MealInfoTableTableUpdateCompanionBuilder,
      (
        MealInfoTableData,
        BaseReferences<_$AppDatabase, $MealInfoTableTable, MealInfoTableData>,
      ),
      MealInfoTableData,
      PrefetchHooks Function()
    >;
typedef $$UserProfileTableTableCreateCompanionBuilder =
    UserProfileTableCompanion Function({
      Value<int> id,
      Value<int?> dailyCalorieGoal,
      Value<double?> height,
      Value<double?> weight,
      Value<double?> targetWeight,
      Value<String?> gender,
      Value<DateTime?> dateOfBirth,
      Value<String?> weightGoal,
      Value<String?> activityLevel,
      Value<String> heightUnit,
      Value<String> weightUnit,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> needsRemoteSync,
      Value<String?> remoteSyncRevision,
    });
typedef $$UserProfileTableTableUpdateCompanionBuilder =
    UserProfileTableCompanion Function({
      Value<int> id,
      Value<int?> dailyCalorieGoal,
      Value<double?> height,
      Value<double?> weight,
      Value<double?> targetWeight,
      Value<String?> gender,
      Value<DateTime?> dateOfBirth,
      Value<String?> weightGoal,
      Value<String?> activityLevel,
      Value<String> heightUnit,
      Value<String> weightUnit,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> needsRemoteSync,
      Value<String?> remoteSyncRevision,
    });

class $$UserProfileTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfileTableTable> {
  $$UserProfileTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dailyCalorieGoal => $composableBuilder(
    column: $table.dailyCalorieGoal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetWeight => $composableBuilder(
    column: $table.targetWeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dateOfBirth => $composableBuilder(
    column: $table.dateOfBirth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get weightGoal => $composableBuilder(
    column: $table.weightGoal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get activityLevel => $composableBuilder(
    column: $table.activityLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get heightUnit => $composableBuilder(
    column: $table.heightUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get weightUnit => $composableBuilder(
    column: $table.weightUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get needsRemoteSync => $composableBuilder(
    column: $table.needsRemoteSync,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteSyncRevision => $composableBuilder(
    column: $table.remoteSyncRevision,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserProfileTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfileTableTable> {
  $$UserProfileTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dailyCalorieGoal => $composableBuilder(
    column: $table.dailyCalorieGoal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetWeight => $composableBuilder(
    column: $table.targetWeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dateOfBirth => $composableBuilder(
    column: $table.dateOfBirth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get weightGoal => $composableBuilder(
    column: $table.weightGoal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get activityLevel => $composableBuilder(
    column: $table.activityLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get heightUnit => $composableBuilder(
    column: $table.heightUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get weightUnit => $composableBuilder(
    column: $table.weightUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get needsRemoteSync => $composableBuilder(
    column: $table.needsRemoteSync,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteSyncRevision => $composableBuilder(
    column: $table.remoteSyncRevision,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserProfileTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfileTableTable> {
  $$UserProfileTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get dailyCalorieGoal => $composableBuilder(
    column: $table.dailyCalorieGoal,
    builder: (column) => column,
  );

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<double> get targetWeight => $composableBuilder(
    column: $table.targetWeight,
    builder: (column) => column,
  );

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get dateOfBirth => $composableBuilder(
    column: $table.dateOfBirth,
    builder: (column) => column,
  );

  GeneratedColumn<String> get weightGoal => $composableBuilder(
    column: $table.weightGoal,
    builder: (column) => column,
  );

  GeneratedColumn<String> get activityLevel => $composableBuilder(
    column: $table.activityLevel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get heightUnit => $composableBuilder(
    column: $table.heightUnit,
    builder: (column) => column,
  );

  GeneratedColumn<String> get weightUnit => $composableBuilder(
    column: $table.weightUnit,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get needsRemoteSync => $composableBuilder(
    column: $table.needsRemoteSync,
    builder: (column) => column,
  );

  GeneratedColumn<String> get remoteSyncRevision => $composableBuilder(
    column: $table.remoteSyncRevision,
    builder: (column) => column,
  );
}

class $$UserProfileTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserProfileTableTable,
          UserProfileTableData,
          $$UserProfileTableTableFilterComposer,
          $$UserProfileTableTableOrderingComposer,
          $$UserProfileTableTableAnnotationComposer,
          $$UserProfileTableTableCreateCompanionBuilder,
          $$UserProfileTableTableUpdateCompanionBuilder,
          (
            UserProfileTableData,
            BaseReferences<
              _$AppDatabase,
              $UserProfileTableTable,
              UserProfileTableData
            >,
          ),
          UserProfileTableData,
          PrefetchHooks Function()
        > {
  $$UserProfileTableTableTableManager(
    _$AppDatabase db,
    $UserProfileTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$UserProfileTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$UserProfileTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$UserProfileTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> dailyCalorieGoal = const Value.absent(),
                Value<double?> height = const Value.absent(),
                Value<double?> weight = const Value.absent(),
                Value<double?> targetWeight = const Value.absent(),
                Value<String?> gender = const Value.absent(),
                Value<DateTime?> dateOfBirth = const Value.absent(),
                Value<String?> weightGoal = const Value.absent(),
                Value<String?> activityLevel = const Value.absent(),
                Value<String> heightUnit = const Value.absent(),
                Value<String> weightUnit = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> needsRemoteSync = const Value.absent(),
                Value<String?> remoteSyncRevision = const Value.absent(),
              }) => UserProfileTableCompanion(
                id: id,
                dailyCalorieGoal: dailyCalorieGoal,
                height: height,
                weight: weight,
                targetWeight: targetWeight,
                gender: gender,
                dateOfBirth: dateOfBirth,
                weightGoal: weightGoal,
                activityLevel: activityLevel,
                heightUnit: heightUnit,
                weightUnit: weightUnit,
                createdAt: createdAt,
                updatedAt: updatedAt,
                needsRemoteSync: needsRemoteSync,
                remoteSyncRevision: remoteSyncRevision,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> dailyCalorieGoal = const Value.absent(),
                Value<double?> height = const Value.absent(),
                Value<double?> weight = const Value.absent(),
                Value<double?> targetWeight = const Value.absent(),
                Value<String?> gender = const Value.absent(),
                Value<DateTime?> dateOfBirth = const Value.absent(),
                Value<String?> weightGoal = const Value.absent(),
                Value<String?> activityLevel = const Value.absent(),
                Value<String> heightUnit = const Value.absent(),
                Value<String> weightUnit = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> needsRemoteSync = const Value.absent(),
                Value<String?> remoteSyncRevision = const Value.absent(),
              }) => UserProfileTableCompanion.insert(
                id: id,
                dailyCalorieGoal: dailyCalorieGoal,
                height: height,
                weight: weight,
                targetWeight: targetWeight,
                gender: gender,
                dateOfBirth: dateOfBirth,
                weightGoal: weightGoal,
                activityLevel: activityLevel,
                heightUnit: heightUnit,
                weightUnit: weightUnit,
                createdAt: createdAt,
                updatedAt: updatedAt,
                needsRemoteSync: needsRemoteSync,
                remoteSyncRevision: remoteSyncRevision,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserProfileTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserProfileTableTable,
      UserProfileTableData,
      $$UserProfileTableTableFilterComposer,
      $$UserProfileTableTableOrderingComposer,
      $$UserProfileTableTableAnnotationComposer,
      $$UserProfileTableTableCreateCompanionBuilder,
      $$UserProfileTableTableUpdateCompanionBuilder,
      (
        UserProfileTableData,
        BaseReferences<
          _$AppDatabase,
          $UserProfileTableTable,
          UserProfileTableData
        >,
      ),
      UserProfileTableData,
      PrefetchHooks Function()
    >;
typedef $$UserPreferencesTableTableCreateCompanionBuilder =
    UserPreferencesTableCompanion Function({
      Value<int> id,
      Value<String?> languageCode,
      Value<String?> theme,
      Value<DateTime?> feedbackSheetShownAt,
      Value<int?> onboardingCurrentStep,
      Value<DateTime?> onboardingCompletedAt,
      Value<bool> localInferenceEnabled,
      Value<bool> offlineNutritionEnabled,
      Value<bool?> healthConnectNutritionSyncEnabled,
      Value<bool> healthConnectPromptDismissed,
      Value<DateTime> updatedAt,
    });
typedef $$UserPreferencesTableTableUpdateCompanionBuilder =
    UserPreferencesTableCompanion Function({
      Value<int> id,
      Value<String?> languageCode,
      Value<String?> theme,
      Value<DateTime?> feedbackSheetShownAt,
      Value<int?> onboardingCurrentStep,
      Value<DateTime?> onboardingCompletedAt,
      Value<bool> localInferenceEnabled,
      Value<bool> offlineNutritionEnabled,
      Value<bool?> healthConnectNutritionSyncEnabled,
      Value<bool> healthConnectPromptDismissed,
      Value<DateTime> updatedAt,
    });

class $$UserPreferencesTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserPreferencesTableTable> {
  $$UserPreferencesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get theme => $composableBuilder(
    column: $table.theme,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get feedbackSheetShownAt => $composableBuilder(
    column: $table.feedbackSheetShownAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get onboardingCurrentStep => $composableBuilder(
    column: $table.onboardingCurrentStep,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get onboardingCompletedAt => $composableBuilder(
    column: $table.onboardingCompletedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get localInferenceEnabled => $composableBuilder(
    column: $table.localInferenceEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get offlineNutritionEnabled => $composableBuilder(
    column: $table.offlineNutritionEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get healthConnectNutritionSyncEnabled =>
      $composableBuilder(
        column: $table.healthConnectNutritionSyncEnabled,
        builder: (column) => ColumnFilters(column),
      );

  ColumnFilters<bool> get healthConnectPromptDismissed => $composableBuilder(
    column: $table.healthConnectPromptDismissed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserPreferencesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserPreferencesTableTable> {
  $$UserPreferencesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get theme => $composableBuilder(
    column: $table.theme,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get feedbackSheetShownAt => $composableBuilder(
    column: $table.feedbackSheetShownAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get onboardingCurrentStep => $composableBuilder(
    column: $table.onboardingCurrentStep,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get onboardingCompletedAt => $composableBuilder(
    column: $table.onboardingCompletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get localInferenceEnabled => $composableBuilder(
    column: $table.localInferenceEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get offlineNutritionEnabled => $composableBuilder(
    column: $table.offlineNutritionEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get healthConnectNutritionSyncEnabled =>
      $composableBuilder(
        column: $table.healthConnectNutritionSyncEnabled,
        builder: (column) => ColumnOrderings(column),
      );

  ColumnOrderings<bool> get healthConnectPromptDismissed => $composableBuilder(
    column: $table.healthConnectPromptDismissed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserPreferencesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserPreferencesTableTable> {
  $$UserPreferencesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get theme =>
      $composableBuilder(column: $table.theme, builder: (column) => column);

  GeneratedColumn<DateTime> get feedbackSheetShownAt => $composableBuilder(
    column: $table.feedbackSheetShownAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get onboardingCurrentStep => $composableBuilder(
    column: $table.onboardingCurrentStep,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get onboardingCompletedAt => $composableBuilder(
    column: $table.onboardingCompletedAt,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get localInferenceEnabled => $composableBuilder(
    column: $table.localInferenceEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get offlineNutritionEnabled => $composableBuilder(
    column: $table.offlineNutritionEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get healthConnectNutritionSyncEnabled =>
      $composableBuilder(
        column: $table.healthConnectNutritionSyncEnabled,
        builder: (column) => column,
      );

  GeneratedColumn<bool> get healthConnectPromptDismissed => $composableBuilder(
    column: $table.healthConnectPromptDismissed,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$UserPreferencesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserPreferencesTableTable,
          UserPreferencesTableData,
          $$UserPreferencesTableTableFilterComposer,
          $$UserPreferencesTableTableOrderingComposer,
          $$UserPreferencesTableTableAnnotationComposer,
          $$UserPreferencesTableTableCreateCompanionBuilder,
          $$UserPreferencesTableTableUpdateCompanionBuilder,
          (
            UserPreferencesTableData,
            BaseReferences<
              _$AppDatabase,
              $UserPreferencesTableTable,
              UserPreferencesTableData
            >,
          ),
          UserPreferencesTableData,
          PrefetchHooks Function()
        > {
  $$UserPreferencesTableTableTableManager(
    _$AppDatabase db,
    $UserPreferencesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$UserPreferencesTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$UserPreferencesTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$UserPreferencesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> languageCode = const Value.absent(),
                Value<String?> theme = const Value.absent(),
                Value<DateTime?> feedbackSheetShownAt = const Value.absent(),
                Value<int?> onboardingCurrentStep = const Value.absent(),
                Value<DateTime?> onboardingCompletedAt = const Value.absent(),
                Value<bool> localInferenceEnabled = const Value.absent(),
                Value<bool> offlineNutritionEnabled = const Value.absent(),
                Value<bool?> healthConnectNutritionSyncEnabled =
                    const Value.absent(),
                Value<bool> healthConnectPromptDismissed = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => UserPreferencesTableCompanion(
                id: id,
                languageCode: languageCode,
                theme: theme,
                feedbackSheetShownAt: feedbackSheetShownAt,
                onboardingCurrentStep: onboardingCurrentStep,
                onboardingCompletedAt: onboardingCompletedAt,
                localInferenceEnabled: localInferenceEnabled,
                offlineNutritionEnabled: offlineNutritionEnabled,
                healthConnectNutritionSyncEnabled:
                    healthConnectNutritionSyncEnabled,
                healthConnectPromptDismissed: healthConnectPromptDismissed,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> languageCode = const Value.absent(),
                Value<String?> theme = const Value.absent(),
                Value<DateTime?> feedbackSheetShownAt = const Value.absent(),
                Value<int?> onboardingCurrentStep = const Value.absent(),
                Value<DateTime?> onboardingCompletedAt = const Value.absent(),
                Value<bool> localInferenceEnabled = const Value.absent(),
                Value<bool> offlineNutritionEnabled = const Value.absent(),
                Value<bool?> healthConnectNutritionSyncEnabled =
                    const Value.absent(),
                Value<bool> healthConnectPromptDismissed = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => UserPreferencesTableCompanion.insert(
                id: id,
                languageCode: languageCode,
                theme: theme,
                feedbackSheetShownAt: feedbackSheetShownAt,
                onboardingCurrentStep: onboardingCurrentStep,
                onboardingCompletedAt: onboardingCompletedAt,
                localInferenceEnabled: localInferenceEnabled,
                offlineNutritionEnabled: offlineNutritionEnabled,
                healthConnectNutritionSyncEnabled:
                    healthConnectNutritionSyncEnabled,
                healthConnectPromptDismissed: healthConnectPromptDismissed,
                updatedAt: updatedAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserPreferencesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserPreferencesTableTable,
      UserPreferencesTableData,
      $$UserPreferencesTableTableFilterComposer,
      $$UserPreferencesTableTableOrderingComposer,
      $$UserPreferencesTableTableAnnotationComposer,
      $$UserPreferencesTableTableCreateCompanionBuilder,
      $$UserPreferencesTableTableUpdateCompanionBuilder,
      (
        UserPreferencesTableData,
        BaseReferences<
          _$AppDatabase,
          $UserPreferencesTableTable,
          UserPreferencesTableData
        >,
      ),
      UserPreferencesTableData,
      PrefetchHooks Function()
    >;
typedef $$FavoriteMealTableTableCreateCompanionBuilder =
    FavoriteMealTableCompanion Function({
      Value<int> id,
      required String mealName,
      required String mealQuantity,
      required String mealType,
      required int calories,
      required int protein,
      required int carbs,
      required int fat,
      required int fiber,
      required DateTime timestamp,
      Value<String?> imageUrl,
      Value<String?> healthScore,
      Value<String?> healthScoreReason,
      Value<String?> analysisId,
      Value<String?> analysisSnapshotJson,
      Value<String?> healthConnectRecordId,
      Value<int> healthConnectRecordVersion,
      Value<int> mealLogSyncVersion,
      Value<int> mealLogSyncedVersion,
      Value<int?> sourceMealId,
      Value<DateTime> createdAt,
      Value<DateTime?> lastUsedAt,
    });
typedef $$FavoriteMealTableTableUpdateCompanionBuilder =
    FavoriteMealTableCompanion Function({
      Value<int> id,
      Value<String> mealName,
      Value<String> mealQuantity,
      Value<String> mealType,
      Value<int> calories,
      Value<int> protein,
      Value<int> carbs,
      Value<int> fat,
      Value<int> fiber,
      Value<DateTime> timestamp,
      Value<String?> imageUrl,
      Value<String?> healthScore,
      Value<String?> healthScoreReason,
      Value<String?> analysisId,
      Value<String?> analysisSnapshotJson,
      Value<String?> healthConnectRecordId,
      Value<int> healthConnectRecordVersion,
      Value<int> mealLogSyncVersion,
      Value<int> mealLogSyncedVersion,
      Value<int?> sourceMealId,
      Value<DateTime> createdAt,
      Value<DateTime?> lastUsedAt,
    });

class $$FavoriteMealTableTableFilterComposer
    extends Composer<_$AppDatabase, $FavoriteMealTableTable> {
  $$FavoriteMealTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealName => $composableBuilder(
    column: $table.mealName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealQuantity => $composableBuilder(
    column: $table.mealQuantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealType => $composableBuilder(
    column: $table.mealType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get calories => $composableBuilder(
    column: $table.calories,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get protein => $composableBuilder(
    column: $table.protein,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get carbs => $composableBuilder(
    column: $table.carbs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fat => $composableBuilder(
    column: $table.fat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fiber => $composableBuilder(
    column: $table.fiber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get healthScore => $composableBuilder(
    column: $table.healthScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get healthScoreReason => $composableBuilder(
    column: $table.healthScoreReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get analysisSnapshotJson => $composableBuilder(
    column: $table.analysisSnapshotJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get healthConnectRecordId => $composableBuilder(
    column: $table.healthConnectRecordId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get healthConnectRecordVersion => $composableBuilder(
    column: $table.healthConnectRecordVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mealLogSyncVersion => $composableBuilder(
    column: $table.mealLogSyncVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mealLogSyncedVersion => $composableBuilder(
    column: $table.mealLogSyncedVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sourceMealId => $composableBuilder(
    column: $table.sourceMealId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavoriteMealTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoriteMealTableTable> {
  $$FavoriteMealTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealName => $composableBuilder(
    column: $table.mealName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealQuantity => $composableBuilder(
    column: $table.mealQuantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealType => $composableBuilder(
    column: $table.mealType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get calories => $composableBuilder(
    column: $table.calories,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get protein => $composableBuilder(
    column: $table.protein,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get carbs => $composableBuilder(
    column: $table.carbs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fat => $composableBuilder(
    column: $table.fat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fiber => $composableBuilder(
    column: $table.fiber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get healthScore => $composableBuilder(
    column: $table.healthScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get healthScoreReason => $composableBuilder(
    column: $table.healthScoreReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get analysisSnapshotJson => $composableBuilder(
    column: $table.analysisSnapshotJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get healthConnectRecordId => $composableBuilder(
    column: $table.healthConnectRecordId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get healthConnectRecordVersion => $composableBuilder(
    column: $table.healthConnectRecordVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mealLogSyncVersion => $composableBuilder(
    column: $table.mealLogSyncVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mealLogSyncedVersion => $composableBuilder(
    column: $table.mealLogSyncedVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sourceMealId => $composableBuilder(
    column: $table.sourceMealId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoriteMealTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoriteMealTableTable> {
  $$FavoriteMealTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get mealName =>
      $composableBuilder(column: $table.mealName, builder: (column) => column);

  GeneratedColumn<String> get mealQuantity => $composableBuilder(
    column: $table.mealQuantity,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mealType =>
      $composableBuilder(column: $table.mealType, builder: (column) => column);

  GeneratedColumn<int> get calories =>
      $composableBuilder(column: $table.calories, builder: (column) => column);

  GeneratedColumn<int> get protein =>
      $composableBuilder(column: $table.protein, builder: (column) => column);

  GeneratedColumn<int> get carbs =>
      $composableBuilder(column: $table.carbs, builder: (column) => column);

  GeneratedColumn<int> get fat =>
      $composableBuilder(column: $table.fat, builder: (column) => column);

  GeneratedColumn<int> get fiber =>
      $composableBuilder(column: $table.fiber, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get healthScore => $composableBuilder(
    column: $table.healthScore,
    builder: (column) => column,
  );

  GeneratedColumn<String> get healthScoreReason => $composableBuilder(
    column: $table.healthScoreReason,
    builder: (column) => column,
  );

  GeneratedColumn<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get analysisSnapshotJson => $composableBuilder(
    column: $table.analysisSnapshotJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get healthConnectRecordId => $composableBuilder(
    column: $table.healthConnectRecordId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get healthConnectRecordVersion => $composableBuilder(
    column: $table.healthConnectRecordVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get mealLogSyncVersion => $composableBuilder(
    column: $table.mealLogSyncVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get mealLogSyncedVersion => $composableBuilder(
    column: $table.mealLogSyncedVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sourceMealId => $composableBuilder(
    column: $table.sourceMealId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => column,
  );
}

class $$FavoriteMealTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoriteMealTableTable,
          FavoriteMealTableData,
          $$FavoriteMealTableTableFilterComposer,
          $$FavoriteMealTableTableOrderingComposer,
          $$FavoriteMealTableTableAnnotationComposer,
          $$FavoriteMealTableTableCreateCompanionBuilder,
          $$FavoriteMealTableTableUpdateCompanionBuilder,
          (
            FavoriteMealTableData,
            BaseReferences<
              _$AppDatabase,
              $FavoriteMealTableTable,
              FavoriteMealTableData
            >,
          ),
          FavoriteMealTableData,
          PrefetchHooks Function()
        > {
  $$FavoriteMealTableTableTableManager(
    _$AppDatabase db,
    $FavoriteMealTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$FavoriteMealTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$FavoriteMealTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$FavoriteMealTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> mealName = const Value.absent(),
                Value<String> mealQuantity = const Value.absent(),
                Value<String> mealType = const Value.absent(),
                Value<int> calories = const Value.absent(),
                Value<int> protein = const Value.absent(),
                Value<int> carbs = const Value.absent(),
                Value<int> fat = const Value.absent(),
                Value<int> fiber = const Value.absent(),
                Value<DateTime> timestamp = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> healthScore = const Value.absent(),
                Value<String?> healthScoreReason = const Value.absent(),
                Value<String?> analysisId = const Value.absent(),
                Value<String?> analysisSnapshotJson = const Value.absent(),
                Value<String?> healthConnectRecordId = const Value.absent(),
                Value<int> healthConnectRecordVersion = const Value.absent(),
                Value<int> mealLogSyncVersion = const Value.absent(),
                Value<int> mealLogSyncedVersion = const Value.absent(),
                Value<int?> sourceMealId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> lastUsedAt = const Value.absent(),
              }) => FavoriteMealTableCompanion(
                id: id,
                mealName: mealName,
                mealQuantity: mealQuantity,
                mealType: mealType,
                calories: calories,
                protein: protein,
                carbs: carbs,
                fat: fat,
                fiber: fiber,
                timestamp: timestamp,
                imageUrl: imageUrl,
                healthScore: healthScore,
                healthScoreReason: healthScoreReason,
                analysisId: analysisId,
                analysisSnapshotJson: analysisSnapshotJson,
                healthConnectRecordId: healthConnectRecordId,
                healthConnectRecordVersion: healthConnectRecordVersion,
                mealLogSyncVersion: mealLogSyncVersion,
                mealLogSyncedVersion: mealLogSyncedVersion,
                sourceMealId: sourceMealId,
                createdAt: createdAt,
                lastUsedAt: lastUsedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String mealName,
                required String mealQuantity,
                required String mealType,
                required int calories,
                required int protein,
                required int carbs,
                required int fat,
                required int fiber,
                required DateTime timestamp,
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> healthScore = const Value.absent(),
                Value<String?> healthScoreReason = const Value.absent(),
                Value<String?> analysisId = const Value.absent(),
                Value<String?> analysisSnapshotJson = const Value.absent(),
                Value<String?> healthConnectRecordId = const Value.absent(),
                Value<int> healthConnectRecordVersion = const Value.absent(),
                Value<int> mealLogSyncVersion = const Value.absent(),
                Value<int> mealLogSyncedVersion = const Value.absent(),
                Value<int?> sourceMealId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> lastUsedAt = const Value.absent(),
              }) => FavoriteMealTableCompanion.insert(
                id: id,
                mealName: mealName,
                mealQuantity: mealQuantity,
                mealType: mealType,
                calories: calories,
                protein: protein,
                carbs: carbs,
                fat: fat,
                fiber: fiber,
                timestamp: timestamp,
                imageUrl: imageUrl,
                healthScore: healthScore,
                healthScoreReason: healthScoreReason,
                analysisId: analysisId,
                analysisSnapshotJson: analysisSnapshotJson,
                healthConnectRecordId: healthConnectRecordId,
                healthConnectRecordVersion: healthConnectRecordVersion,
                mealLogSyncVersion: mealLogSyncVersion,
                mealLogSyncedVersion: mealLogSyncedVersion,
                sourceMealId: sourceMealId,
                createdAt: createdAt,
                lastUsedAt: lastUsedAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoriteMealTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoriteMealTableTable,
      FavoriteMealTableData,
      $$FavoriteMealTableTableFilterComposer,
      $$FavoriteMealTableTableOrderingComposer,
      $$FavoriteMealTableTableAnnotationComposer,
      $$FavoriteMealTableTableCreateCompanionBuilder,
      $$FavoriteMealTableTableUpdateCompanionBuilder,
      (
        FavoriteMealTableData,
        BaseReferences<
          _$AppDatabase,
          $FavoriteMealTableTable,
          FavoriteMealTableData
        >,
      ),
      FavoriteMealTableData,
      PrefetchHooks Function()
    >;
typedef $$LocalNutritionCacheTableTableCreateCompanionBuilder =
    LocalNutritionCacheTableCompanion Function({
      required String fdcId,
      required String datasetVersion,
      required String description,
      required String normalizedName,
      required String dataType,
      required String lookupKeysJson,
      required double caloriesPer100g,
      required double proteinPer100g,
      required double carbsPer100g,
      required double fatPer100g,
      required double fiberPer100g,
      required DateTime retrievedAt,
      required DateTime lastAccessedAt,
      required int approximateBytes,
      Value<int> rowid,
    });
typedef $$LocalNutritionCacheTableTableUpdateCompanionBuilder =
    LocalNutritionCacheTableCompanion Function({
      Value<String> fdcId,
      Value<String> datasetVersion,
      Value<String> description,
      Value<String> normalizedName,
      Value<String> dataType,
      Value<String> lookupKeysJson,
      Value<double> caloriesPer100g,
      Value<double> proteinPer100g,
      Value<double> carbsPer100g,
      Value<double> fatPer100g,
      Value<double> fiberPer100g,
      Value<DateTime> retrievedAt,
      Value<DateTime> lastAccessedAt,
      Value<int> approximateBytes,
      Value<int> rowid,
    });

class $$LocalNutritionCacheTableTableFilterComposer
    extends Composer<_$AppDatabase, $LocalNutritionCacheTableTable> {
  $$LocalNutritionCacheTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get fdcId => $composableBuilder(
    column: $table.fdcId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get datasetVersion => $composableBuilder(
    column: $table.datasetVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get normalizedName => $composableBuilder(
    column: $table.normalizedName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dataType => $composableBuilder(
    column: $table.dataType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lookupKeysJson => $composableBuilder(
    column: $table.lookupKeysJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get caloriesPer100g => $composableBuilder(
    column: $table.caloriesPer100g,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get proteinPer100g => $composableBuilder(
    column: $table.proteinPer100g,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get carbsPer100g => $composableBuilder(
    column: $table.carbsPer100g,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fatPer100g => $composableBuilder(
    column: $table.fatPer100g,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fiberPer100g => $composableBuilder(
    column: $table.fiberPer100g,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get retrievedAt => $composableBuilder(
    column: $table.retrievedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastAccessedAt => $composableBuilder(
    column: $table.lastAccessedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get approximateBytes => $composableBuilder(
    column: $table.approximateBytes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LocalNutritionCacheTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalNutritionCacheTableTable> {
  $$LocalNutritionCacheTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get fdcId => $composableBuilder(
    column: $table.fdcId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get datasetVersion => $composableBuilder(
    column: $table.datasetVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get normalizedName => $composableBuilder(
    column: $table.normalizedName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dataType => $composableBuilder(
    column: $table.dataType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lookupKeysJson => $composableBuilder(
    column: $table.lookupKeysJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get caloriesPer100g => $composableBuilder(
    column: $table.caloriesPer100g,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get proteinPer100g => $composableBuilder(
    column: $table.proteinPer100g,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get carbsPer100g => $composableBuilder(
    column: $table.carbsPer100g,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fatPer100g => $composableBuilder(
    column: $table.fatPer100g,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fiberPer100g => $composableBuilder(
    column: $table.fiberPer100g,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get retrievedAt => $composableBuilder(
    column: $table.retrievedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastAccessedAt => $composableBuilder(
    column: $table.lastAccessedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get approximateBytes => $composableBuilder(
    column: $table.approximateBytes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LocalNutritionCacheTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalNutritionCacheTableTable> {
  $$LocalNutritionCacheTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get fdcId =>
      $composableBuilder(column: $table.fdcId, builder: (column) => column);

  GeneratedColumn<String> get datasetVersion => $composableBuilder(
    column: $table.datasetVersion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get normalizedName => $composableBuilder(
    column: $table.normalizedName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get dataType =>
      $composableBuilder(column: $table.dataType, builder: (column) => column);

  GeneratedColumn<String> get lookupKeysJson => $composableBuilder(
    column: $table.lookupKeysJson,
    builder: (column) => column,
  );

  GeneratedColumn<double> get caloriesPer100g => $composableBuilder(
    column: $table.caloriesPer100g,
    builder: (column) => column,
  );

  GeneratedColumn<double> get proteinPer100g => $composableBuilder(
    column: $table.proteinPer100g,
    builder: (column) => column,
  );

  GeneratedColumn<double> get carbsPer100g => $composableBuilder(
    column: $table.carbsPer100g,
    builder: (column) => column,
  );

  GeneratedColumn<double> get fatPer100g => $composableBuilder(
    column: $table.fatPer100g,
    builder: (column) => column,
  );

  GeneratedColumn<double> get fiberPer100g => $composableBuilder(
    column: $table.fiberPer100g,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get retrievedAt => $composableBuilder(
    column: $table.retrievedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastAccessedAt => $composableBuilder(
    column: $table.lastAccessedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get approximateBytes => $composableBuilder(
    column: $table.approximateBytes,
    builder: (column) => column,
  );
}

class $$LocalNutritionCacheTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalNutritionCacheTableTable,
          LocalNutritionCacheTableData,
          $$LocalNutritionCacheTableTableFilterComposer,
          $$LocalNutritionCacheTableTableOrderingComposer,
          $$LocalNutritionCacheTableTableAnnotationComposer,
          $$LocalNutritionCacheTableTableCreateCompanionBuilder,
          $$LocalNutritionCacheTableTableUpdateCompanionBuilder,
          (
            LocalNutritionCacheTableData,
            BaseReferences<
              _$AppDatabase,
              $LocalNutritionCacheTableTable,
              LocalNutritionCacheTableData
            >,
          ),
          LocalNutritionCacheTableData,
          PrefetchHooks Function()
        > {
  $$LocalNutritionCacheTableTableTableManager(
    _$AppDatabase db,
    $LocalNutritionCacheTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$LocalNutritionCacheTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$LocalNutritionCacheTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$LocalNutritionCacheTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> fdcId = const Value.absent(),
                Value<String> datasetVersion = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> normalizedName = const Value.absent(),
                Value<String> dataType = const Value.absent(),
                Value<String> lookupKeysJson = const Value.absent(),
                Value<double> caloriesPer100g = const Value.absent(),
                Value<double> proteinPer100g = const Value.absent(),
                Value<double> carbsPer100g = const Value.absent(),
                Value<double> fatPer100g = const Value.absent(),
                Value<double> fiberPer100g = const Value.absent(),
                Value<DateTime> retrievedAt = const Value.absent(),
                Value<DateTime> lastAccessedAt = const Value.absent(),
                Value<int> approximateBytes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalNutritionCacheTableCompanion(
                fdcId: fdcId,
                datasetVersion: datasetVersion,
                description: description,
                normalizedName: normalizedName,
                dataType: dataType,
                lookupKeysJson: lookupKeysJson,
                caloriesPer100g: caloriesPer100g,
                proteinPer100g: proteinPer100g,
                carbsPer100g: carbsPer100g,
                fatPer100g: fatPer100g,
                fiberPer100g: fiberPer100g,
                retrievedAt: retrievedAt,
                lastAccessedAt: lastAccessedAt,
                approximateBytes: approximateBytes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String fdcId,
                required String datasetVersion,
                required String description,
                required String normalizedName,
                required String dataType,
                required String lookupKeysJson,
                required double caloriesPer100g,
                required double proteinPer100g,
                required double carbsPer100g,
                required double fatPer100g,
                required double fiberPer100g,
                required DateTime retrievedAt,
                required DateTime lastAccessedAt,
                required int approximateBytes,
                Value<int> rowid = const Value.absent(),
              }) => LocalNutritionCacheTableCompanion.insert(
                fdcId: fdcId,
                datasetVersion: datasetVersion,
                description: description,
                normalizedName: normalizedName,
                dataType: dataType,
                lookupKeysJson: lookupKeysJson,
                caloriesPer100g: caloriesPer100g,
                proteinPer100g: proteinPer100g,
                carbsPer100g: carbsPer100g,
                fatPer100g: fatPer100g,
                fiberPer100g: fiberPer100g,
                retrievedAt: retrievedAt,
                lastAccessedAt: lastAccessedAt,
                approximateBytes: approximateBytes,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LocalNutritionCacheTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalNutritionCacheTableTable,
      LocalNutritionCacheTableData,
      $$LocalNutritionCacheTableTableFilterComposer,
      $$LocalNutritionCacheTableTableOrderingComposer,
      $$LocalNutritionCacheTableTableAnnotationComposer,
      $$LocalNutritionCacheTableTableCreateCompanionBuilder,
      $$LocalNutritionCacheTableTableUpdateCompanionBuilder,
      (
        LocalNutritionCacheTableData,
        BaseReferences<
          _$AppDatabase,
          $LocalNutritionCacheTableTable,
          LocalNutritionCacheTableData
        >,
      ),
      LocalNutritionCacheTableData,
      PrefetchHooks Function()
    >;
typedef $$HealthConnectSyncQueueTableTableCreateCompanionBuilder =
    HealthConnectSyncQueueTableCompanion Function({
      Value<int> id,
      required String operation,
      required String clientRecordId,
      required int clientRecordVersion,
      Value<String?> mealJson,
      Value<DateTime?> loggedAt,
      Value<int> attempts,
      Value<String?> lastError,
      Value<DateTime> updatedAt,
    });
typedef $$HealthConnectSyncQueueTableTableUpdateCompanionBuilder =
    HealthConnectSyncQueueTableCompanion Function({
      Value<int> id,
      Value<String> operation,
      Value<String> clientRecordId,
      Value<int> clientRecordVersion,
      Value<String?> mealJson,
      Value<DateTime?> loggedAt,
      Value<int> attempts,
      Value<String?> lastError,
      Value<DateTime> updatedAt,
    });

class $$HealthConnectSyncQueueTableTableFilterComposer
    extends Composer<_$AppDatabase, $HealthConnectSyncQueueTableTable> {
  $$HealthConnectSyncQueueTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clientRecordId => $composableBuilder(
    column: $table.clientRecordId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get clientRecordVersion => $composableBuilder(
    column: $table.clientRecordVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealJson => $composableBuilder(
    column: $table.mealJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get loggedAt => $composableBuilder(
    column: $table.loggedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HealthConnectSyncQueueTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HealthConnectSyncQueueTableTable> {
  $$HealthConnectSyncQueueTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clientRecordId => $composableBuilder(
    column: $table.clientRecordId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get clientRecordVersion => $composableBuilder(
    column: $table.clientRecordVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealJson => $composableBuilder(
    column: $table.mealJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get loggedAt => $composableBuilder(
    column: $table.loggedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HealthConnectSyncQueueTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HealthConnectSyncQueueTableTable> {
  $$HealthConnectSyncQueueTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get operation =>
      $composableBuilder(column: $table.operation, builder: (column) => column);

  GeneratedColumn<String> get clientRecordId => $composableBuilder(
    column: $table.clientRecordId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get clientRecordVersion => $composableBuilder(
    column: $table.clientRecordVersion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mealJson =>
      $composableBuilder(column: $table.mealJson, builder: (column) => column);

  GeneratedColumn<DateTime> get loggedAt =>
      $composableBuilder(column: $table.loggedAt, builder: (column) => column);

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$HealthConnectSyncQueueTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HealthConnectSyncQueueTableTable,
          HealthConnectSyncQueueTableData,
          $$HealthConnectSyncQueueTableTableFilterComposer,
          $$HealthConnectSyncQueueTableTableOrderingComposer,
          $$HealthConnectSyncQueueTableTableAnnotationComposer,
          $$HealthConnectSyncQueueTableTableCreateCompanionBuilder,
          $$HealthConnectSyncQueueTableTableUpdateCompanionBuilder,
          (
            HealthConnectSyncQueueTableData,
            BaseReferences<
              _$AppDatabase,
              $HealthConnectSyncQueueTableTable,
              HealthConnectSyncQueueTableData
            >,
          ),
          HealthConnectSyncQueueTableData,
          PrefetchHooks Function()
        > {
  $$HealthConnectSyncQueueTableTableTableManager(
    _$AppDatabase db,
    $HealthConnectSyncQueueTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$HealthConnectSyncQueueTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$HealthConnectSyncQueueTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$HealthConnectSyncQueueTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> operation = const Value.absent(),
                Value<String> clientRecordId = const Value.absent(),
                Value<int> clientRecordVersion = const Value.absent(),
                Value<String?> mealJson = const Value.absent(),
                Value<DateTime?> loggedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => HealthConnectSyncQueueTableCompanion(
                id: id,
                operation: operation,
                clientRecordId: clientRecordId,
                clientRecordVersion: clientRecordVersion,
                mealJson: mealJson,
                loggedAt: loggedAt,
                attempts: attempts,
                lastError: lastError,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String operation,
                required String clientRecordId,
                required int clientRecordVersion,
                Value<String?> mealJson = const Value.absent(),
                Value<DateTime?> loggedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => HealthConnectSyncQueueTableCompanion.insert(
                id: id,
                operation: operation,
                clientRecordId: clientRecordId,
                clientRecordVersion: clientRecordVersion,
                mealJson: mealJson,
                loggedAt: loggedAt,
                attempts: attempts,
                lastError: lastError,
                updatedAt: updatedAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HealthConnectSyncQueueTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HealthConnectSyncQueueTableTable,
      HealthConnectSyncQueueTableData,
      $$HealthConnectSyncQueueTableTableFilterComposer,
      $$HealthConnectSyncQueueTableTableOrderingComposer,
      $$HealthConnectSyncQueueTableTableAnnotationComposer,
      $$HealthConnectSyncQueueTableTableCreateCompanionBuilder,
      $$HealthConnectSyncQueueTableTableUpdateCompanionBuilder,
      (
        HealthConnectSyncQueueTableData,
        BaseReferences<
          _$AppDatabase,
          $HealthConnectSyncQueueTableTable,
          HealthConnectSyncQueueTableData
        >,
      ),
      HealthConnectSyncQueueTableData,
      PrefetchHooks Function()
    >;
typedef $$MealLogSyncQueueTableTableCreateCompanionBuilder =
    MealLogSyncQueueTableCompanion Function({
      Value<int> id,
      required String analysisId,
      required String operation,
      required int version,
      Value<String?> mealJson,
      Value<DateTime?> loggedAt,
      Value<int> attempts,
      Value<String?> lastError,
      Value<DateTime> updatedAt,
    });
typedef $$MealLogSyncQueueTableTableUpdateCompanionBuilder =
    MealLogSyncQueueTableCompanion Function({
      Value<int> id,
      Value<String> analysisId,
      Value<String> operation,
      Value<int> version,
      Value<String?> mealJson,
      Value<DateTime?> loggedAt,
      Value<int> attempts,
      Value<String?> lastError,
      Value<DateTime> updatedAt,
    });

class $$MealLogSyncQueueTableTableFilterComposer
    extends Composer<_$AppDatabase, $MealLogSyncQueueTableTable> {
  $$MealLogSyncQueueTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealJson => $composableBuilder(
    column: $table.mealJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get loggedAt => $composableBuilder(
    column: $table.loggedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MealLogSyncQueueTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MealLogSyncQueueTableTable> {
  $$MealLogSyncQueueTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealJson => $composableBuilder(
    column: $table.mealJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get loggedAt => $composableBuilder(
    column: $table.loggedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MealLogSyncQueueTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MealLogSyncQueueTableTable> {
  $$MealLogSyncQueueTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get analysisId => $composableBuilder(
    column: $table.analysisId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get operation =>
      $composableBuilder(column: $table.operation, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get mealJson =>
      $composableBuilder(column: $table.mealJson, builder: (column) => column);

  GeneratedColumn<DateTime> get loggedAt =>
      $composableBuilder(column: $table.loggedAt, builder: (column) => column);

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$MealLogSyncQueueTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MealLogSyncQueueTableTable,
          MealLogSyncQueueTableData,
          $$MealLogSyncQueueTableTableFilterComposer,
          $$MealLogSyncQueueTableTableOrderingComposer,
          $$MealLogSyncQueueTableTableAnnotationComposer,
          $$MealLogSyncQueueTableTableCreateCompanionBuilder,
          $$MealLogSyncQueueTableTableUpdateCompanionBuilder,
          (
            MealLogSyncQueueTableData,
            BaseReferences<
              _$AppDatabase,
              $MealLogSyncQueueTableTable,
              MealLogSyncQueueTableData
            >,
          ),
          MealLogSyncQueueTableData,
          PrefetchHooks Function()
        > {
  $$MealLogSyncQueueTableTableTableManager(
    _$AppDatabase db,
    $MealLogSyncQueueTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$MealLogSyncQueueTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$MealLogSyncQueueTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$MealLogSyncQueueTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> analysisId = const Value.absent(),
                Value<String> operation = const Value.absent(),
                Value<int> version = const Value.absent(),
                Value<String?> mealJson = const Value.absent(),
                Value<DateTime?> loggedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => MealLogSyncQueueTableCompanion(
                id: id,
                analysisId: analysisId,
                operation: operation,
                version: version,
                mealJson: mealJson,
                loggedAt: loggedAt,
                attempts: attempts,
                lastError: lastError,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String analysisId,
                required String operation,
                required int version,
                Value<String?> mealJson = const Value.absent(),
                Value<DateTime?> loggedAt = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => MealLogSyncQueueTableCompanion.insert(
                id: id,
                analysisId: analysisId,
                operation: operation,
                version: version,
                mealJson: mealJson,
                loggedAt: loggedAt,
                attempts: attempts,
                lastError: lastError,
                updatedAt: updatedAt,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MealLogSyncQueueTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MealLogSyncQueueTableTable,
      MealLogSyncQueueTableData,
      $$MealLogSyncQueueTableTableFilterComposer,
      $$MealLogSyncQueueTableTableOrderingComposer,
      $$MealLogSyncQueueTableTableAnnotationComposer,
      $$MealLogSyncQueueTableTableCreateCompanionBuilder,
      $$MealLogSyncQueueTableTableUpdateCompanionBuilder,
      (
        MealLogSyncQueueTableData,
        BaseReferences<
          _$AppDatabase,
          $MealLogSyncQueueTableTable,
          MealLogSyncQueueTableData
        >,
      ),
      MealLogSyncQueueTableData,
      PrefetchHooks Function()
    >;
typedef $$LocalAiSummaryTableTableCreateCompanionBuilder =
    LocalAiSummaryTableCompanion Function({
      required String summaryLocalDate,
      required String responseJson,
      required String resolvedLocale,
      Value<int> rowid,
    });
typedef $$LocalAiSummaryTableTableUpdateCompanionBuilder =
    LocalAiSummaryTableCompanion Function({
      Value<String> summaryLocalDate,
      Value<String> responseJson,
      Value<String> resolvedLocale,
      Value<int> rowid,
    });

class $$LocalAiSummaryTableTableFilterComposer
    extends Composer<_$AppDatabase, $LocalAiSummaryTableTable> {
  $$LocalAiSummaryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get summaryLocalDate => $composableBuilder(
    column: $table.summaryLocalDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get responseJson => $composableBuilder(
    column: $table.responseJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get resolvedLocale => $composableBuilder(
    column: $table.resolvedLocale,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LocalAiSummaryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalAiSummaryTableTable> {
  $$LocalAiSummaryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get summaryLocalDate => $composableBuilder(
    column: $table.summaryLocalDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get responseJson => $composableBuilder(
    column: $table.responseJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get resolvedLocale => $composableBuilder(
    column: $table.resolvedLocale,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LocalAiSummaryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalAiSummaryTableTable> {
  $$LocalAiSummaryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get summaryLocalDate => $composableBuilder(
    column: $table.summaryLocalDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get responseJson => $composableBuilder(
    column: $table.responseJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get resolvedLocale => $composableBuilder(
    column: $table.resolvedLocale,
    builder: (column) => column,
  );
}

class $$LocalAiSummaryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalAiSummaryTableTable,
          LocalAiSummaryTableData,
          $$LocalAiSummaryTableTableFilterComposer,
          $$LocalAiSummaryTableTableOrderingComposer,
          $$LocalAiSummaryTableTableAnnotationComposer,
          $$LocalAiSummaryTableTableCreateCompanionBuilder,
          $$LocalAiSummaryTableTableUpdateCompanionBuilder,
          (
            LocalAiSummaryTableData,
            BaseReferences<
              _$AppDatabase,
              $LocalAiSummaryTableTable,
              LocalAiSummaryTableData
            >,
          ),
          LocalAiSummaryTableData,
          PrefetchHooks Function()
        > {
  $$LocalAiSummaryTableTableTableManager(
    _$AppDatabase db,
    $LocalAiSummaryTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$LocalAiSummaryTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$LocalAiSummaryTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$LocalAiSummaryTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> summaryLocalDate = const Value.absent(),
                Value<String> responseJson = const Value.absent(),
                Value<String> resolvedLocale = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalAiSummaryTableCompanion(
                summaryLocalDate: summaryLocalDate,
                responseJson: responseJson,
                resolvedLocale: resolvedLocale,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String summaryLocalDate,
                required String responseJson,
                required String resolvedLocale,
                Value<int> rowid = const Value.absent(),
              }) => LocalAiSummaryTableCompanion.insert(
                summaryLocalDate: summaryLocalDate,
                responseJson: responseJson,
                resolvedLocale: resolvedLocale,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LocalAiSummaryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalAiSummaryTableTable,
      LocalAiSummaryTableData,
      $$LocalAiSummaryTableTableFilterComposer,
      $$LocalAiSummaryTableTableOrderingComposer,
      $$LocalAiSummaryTableTableAnnotationComposer,
      $$LocalAiSummaryTableTableCreateCompanionBuilder,
      $$LocalAiSummaryTableTableUpdateCompanionBuilder,
      (
        LocalAiSummaryTableData,
        BaseReferences<
          _$AppDatabase,
          $LocalAiSummaryTableTable,
          LocalAiSummaryTableData
        >,
      ),
      LocalAiSummaryTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MealInfoTableTableTableManager get mealInfoTable =>
      $$MealInfoTableTableTableManager(_db, _db.mealInfoTable);
  $$UserProfileTableTableTableManager get userProfileTable =>
      $$UserProfileTableTableTableManager(_db, _db.userProfileTable);
  $$UserPreferencesTableTableTableManager get userPreferencesTable =>
      $$UserPreferencesTableTableTableManager(_db, _db.userPreferencesTable);
  $$FavoriteMealTableTableTableManager get favoriteMealTable =>
      $$FavoriteMealTableTableTableManager(_db, _db.favoriteMealTable);
  $$LocalNutritionCacheTableTableTableManager get localNutritionCacheTable =>
      $$LocalNutritionCacheTableTableTableManager(
        _db,
        _db.localNutritionCacheTable,
      );
  $$HealthConnectSyncQueueTableTableTableManager
  get healthConnectSyncQueueTable =>
      $$HealthConnectSyncQueueTableTableTableManager(
        _db,
        _db.healthConnectSyncQueueTable,
      );
  $$MealLogSyncQueueTableTableTableManager get mealLogSyncQueueTable =>
      $$MealLogSyncQueueTableTableTableManager(_db, _db.mealLogSyncQueueTable);
  $$LocalAiSummaryTableTableTableManager get localAiSummaryTable =>
      $$LocalAiSummaryTableTableTableManager(_db, _db.localAiSummaryTable);
}
