// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_database.dart';

// ignore_for_file: type=lint
class $CachedMealsTableTable extends CachedMealsTable
    with TableInfo<$CachedMealsTableTable, CachedMealsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedMealsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mealIdMeta = const VerificationMeta('mealId');
  @override
  late final GeneratedColumn<int> mealId = GeneratedColumn<int>(
    'meal_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
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
  @override
  List<GeneratedColumn> get $columns => [
    mealId,
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
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_meals_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedMealsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('meal_id')) {
      context.handle(
        _mealIdMeta,
        mealId.isAcceptableOrUnknown(data['meal_id']!, _mealIdMeta),
      );
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {mealId};
  @override
  CachedMealsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedMealsTableData(
      mealId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_id'],
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
    );
  }

  @override
  $CachedMealsTableTable createAlias(String alias) {
    return $CachedMealsTableTable(attachedDatabase, alias);
  }
}

class CachedMealsTableData extends DataClass
    implements Insertable<CachedMealsTableData> {
  final int mealId;
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
  const CachedMealsTableData({
    required this.mealId,
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
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['meal_id'] = Variable<int>(mealId);
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
    return map;
  }

  CachedMealsTableCompanion toCompanion(bool nullToAbsent) {
    return CachedMealsTableCompanion(
      mealId: Value(mealId),
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
    );
  }

  factory CachedMealsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedMealsTableData(
      mealId: serializer.fromJson<int>(json['mealId']),
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
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mealId': serializer.toJson<int>(mealId),
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
    };
  }

  CachedMealsTableData copyWith({
    int? mealId,
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
  }) => CachedMealsTableData(
    mealId: mealId ?? this.mealId,
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
  );
  CachedMealsTableData copyWithCompanion(CachedMealsTableCompanion data) {
    return CachedMealsTableData(
      mealId: data.mealId.present ? data.mealId.value : this.mealId,
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
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedMealsTableData(')
          ..write('mealId: $mealId, ')
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
          ..write('healthScoreReason: $healthScoreReason')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    mealId,
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
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedMealsTableData &&
          other.mealId == this.mealId &&
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
          other.healthScoreReason == this.healthScoreReason);
}

class CachedMealsTableCompanion extends UpdateCompanion<CachedMealsTableData> {
  final Value<int> mealId;
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
  const CachedMealsTableCompanion({
    this.mealId = const Value.absent(),
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
  });
  CachedMealsTableCompanion.insert({
    this.mealId = const Value.absent(),
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
  }) : mealName = Value(mealName),
       mealQuantity = Value(mealQuantity),
       mealType = Value(mealType),
       calories = Value(calories),
       protein = Value(protein),
       carbs = Value(carbs),
       fat = Value(fat),
       fiber = Value(fiber),
       timestamp = Value(timestamp);
  static Insertable<CachedMealsTableData> custom({
    Expression<int>? mealId,
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
  }) {
    return RawValuesInsertable({
      if (mealId != null) 'meal_id': mealId,
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
    });
  }

  CachedMealsTableCompanion copyWith({
    Value<int>? mealId,
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
  }) {
    return CachedMealsTableCompanion(
      mealId: mealId ?? this.mealId,
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
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mealId.present) {
      map['meal_id'] = Variable<int>(mealId.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedMealsTableCompanion(')
          ..write('mealId: $mealId, ')
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
          ..write('healthScoreReason: $healthScoreReason')
          ..write(')'))
        .toString();
  }
}

class $CachedFavoritesTableTable extends CachedFavoritesTable
    with TableInfo<$CachedFavoritesTableTable, CachedFavoritesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedFavoritesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mealIdMeta = const VerificationMeta('mealId');
  @override
  late final GeneratedColumn<int> mealId = GeneratedColumn<int>(
    'meal_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
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
  static const VerificationMeta _favoritedAtMeta = const VerificationMeta(
    'favoritedAt',
  );
  @override
  late final GeneratedColumn<DateTime> favoritedAt = GeneratedColumn<DateTime>(
    'favorited_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
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
    mealId,
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
    favoritedAt,
    lastUsedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_favorites_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedFavoritesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('meal_id')) {
      context.handle(
        _mealIdMeta,
        mealId.isAcceptableOrUnknown(data['meal_id']!, _mealIdMeta),
      );
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
    if (data.containsKey('favorited_at')) {
      context.handle(
        _favoritedAtMeta,
        favoritedAt.isAcceptableOrUnknown(
          data['favorited_at']!,
          _favoritedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_favoritedAtMeta);
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
  Set<GeneratedColumn> get $primaryKey => {mealId};
  @override
  CachedFavoritesTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedFavoritesTableData(
      mealId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_id'],
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
      favoritedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}favorited_at'],
          )!,
      lastUsedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_used_at'],
      ),
    );
  }

  @override
  $CachedFavoritesTableTable createAlias(String alias) {
    return $CachedFavoritesTableTable(attachedDatabase, alias);
  }
}

class CachedFavoritesTableData extends DataClass
    implements Insertable<CachedFavoritesTableData> {
  final int mealId;
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
  final DateTime favoritedAt;
  final DateTime? lastUsedAt;
  const CachedFavoritesTableData({
    required this.mealId,
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
    required this.favoritedAt,
    this.lastUsedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['meal_id'] = Variable<int>(mealId);
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
    map['favorited_at'] = Variable<DateTime>(favoritedAt);
    if (!nullToAbsent || lastUsedAt != null) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt);
    }
    return map;
  }

  CachedFavoritesTableCompanion toCompanion(bool nullToAbsent) {
    return CachedFavoritesTableCompanion(
      mealId: Value(mealId),
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
      favoritedAt: Value(favoritedAt),
      lastUsedAt:
          lastUsedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(lastUsedAt),
    );
  }

  factory CachedFavoritesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedFavoritesTableData(
      mealId: serializer.fromJson<int>(json['mealId']),
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
      favoritedAt: serializer.fromJson<DateTime>(json['favoritedAt']),
      lastUsedAt: serializer.fromJson<DateTime?>(json['lastUsedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mealId': serializer.toJson<int>(mealId),
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
      'favoritedAt': serializer.toJson<DateTime>(favoritedAt),
      'lastUsedAt': serializer.toJson<DateTime?>(lastUsedAt),
    };
  }

  CachedFavoritesTableData copyWith({
    int? mealId,
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
    DateTime? favoritedAt,
    Value<DateTime?> lastUsedAt = const Value.absent(),
  }) => CachedFavoritesTableData(
    mealId: mealId ?? this.mealId,
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
    favoritedAt: favoritedAt ?? this.favoritedAt,
    lastUsedAt: lastUsedAt.present ? lastUsedAt.value : this.lastUsedAt,
  );
  CachedFavoritesTableData copyWithCompanion(
    CachedFavoritesTableCompanion data,
  ) {
    return CachedFavoritesTableData(
      mealId: data.mealId.present ? data.mealId.value : this.mealId,
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
      favoritedAt:
          data.favoritedAt.present ? data.favoritedAt.value : this.favoritedAt,
      lastUsedAt:
          data.lastUsedAt.present ? data.lastUsedAt.value : this.lastUsedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedFavoritesTableData(')
          ..write('mealId: $mealId, ')
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
          ..write('favoritedAt: $favoritedAt, ')
          ..write('lastUsedAt: $lastUsedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    mealId,
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
    favoritedAt,
    lastUsedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedFavoritesTableData &&
          other.mealId == this.mealId &&
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
          other.favoritedAt == this.favoritedAt &&
          other.lastUsedAt == this.lastUsedAt);
}

class CachedFavoritesTableCompanion
    extends UpdateCompanion<CachedFavoritesTableData> {
  final Value<int> mealId;
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
  final Value<DateTime> favoritedAt;
  final Value<DateTime?> lastUsedAt;
  const CachedFavoritesTableCompanion({
    this.mealId = const Value.absent(),
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
    this.favoritedAt = const Value.absent(),
    this.lastUsedAt = const Value.absent(),
  });
  CachedFavoritesTableCompanion.insert({
    this.mealId = const Value.absent(),
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
    required DateTime favoritedAt,
    this.lastUsedAt = const Value.absent(),
  }) : mealName = Value(mealName),
       mealQuantity = Value(mealQuantity),
       mealType = Value(mealType),
       calories = Value(calories),
       protein = Value(protein),
       carbs = Value(carbs),
       fat = Value(fat),
       fiber = Value(fiber),
       timestamp = Value(timestamp),
       favoritedAt = Value(favoritedAt);
  static Insertable<CachedFavoritesTableData> custom({
    Expression<int>? mealId,
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
    Expression<DateTime>? favoritedAt,
    Expression<DateTime>? lastUsedAt,
  }) {
    return RawValuesInsertable({
      if (mealId != null) 'meal_id': mealId,
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
      if (favoritedAt != null) 'favorited_at': favoritedAt,
      if (lastUsedAt != null) 'last_used_at': lastUsedAt,
    });
  }

  CachedFavoritesTableCompanion copyWith({
    Value<int>? mealId,
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
    Value<DateTime>? favoritedAt,
    Value<DateTime?>? lastUsedAt,
  }) {
    return CachedFavoritesTableCompanion(
      mealId: mealId ?? this.mealId,
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
      favoritedAt: favoritedAt ?? this.favoritedAt,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mealId.present) {
      map['meal_id'] = Variable<int>(mealId.value);
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
    if (favoritedAt.present) {
      map['favorited_at'] = Variable<DateTime>(favoritedAt.value);
    }
    if (lastUsedAt.present) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedFavoritesTableCompanion(')
          ..write('mealId: $mealId, ')
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
          ..write('favoritedAt: $favoritedAt, ')
          ..write('lastUsedAt: $lastUsedAt')
          ..write(')'))
        .toString();
  }
}

class $WatchCacheMetadataTableTable extends WatchCacheMetadataTable
    with TableInfo<$WatchCacheMetadataTableTable, WatchCacheMetadataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WatchCacheMetadataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _calorieGoalMeta = const VerificationMeta(
    'calorieGoal',
  );
  @override
  late final GeneratedColumn<int> calorieGoal = GeneratedColumn<int>(
    'calorie_goal',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastSyncAtMeta = const VerificationMeta(
    'lastSyncAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSyncAt = GeneratedColumn<DateTime>(
    'last_sync_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, calorieGoal, lastSyncAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'watch_cache_metadata_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<WatchCacheMetadataTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('calorie_goal')) {
      context.handle(
        _calorieGoalMeta,
        calorieGoal.isAcceptableOrUnknown(
          data['calorie_goal']!,
          _calorieGoalMeta,
        ),
      );
    }
    if (data.containsKey('last_sync_at')) {
      context.handle(
        _lastSyncAtMeta,
        lastSyncAt.isAcceptableOrUnknown(
          data['last_sync_at']!,
          _lastSyncAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WatchCacheMetadataTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WatchCacheMetadataTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      calorieGoal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}calorie_goal'],
      ),
      lastSyncAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_sync_at'],
      ),
    );
  }

  @override
  $WatchCacheMetadataTableTable createAlias(String alias) {
    return $WatchCacheMetadataTableTable(attachedDatabase, alias);
  }
}

class WatchCacheMetadataTableData extends DataClass
    implements Insertable<WatchCacheMetadataTableData> {
  final int id;
  final int? calorieGoal;
  final DateTime? lastSyncAt;
  const WatchCacheMetadataTableData({
    required this.id,
    this.calorieGoal,
    this.lastSyncAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || calorieGoal != null) {
      map['calorie_goal'] = Variable<int>(calorieGoal);
    }
    if (!nullToAbsent || lastSyncAt != null) {
      map['last_sync_at'] = Variable<DateTime>(lastSyncAt);
    }
    return map;
  }

  WatchCacheMetadataTableCompanion toCompanion(bool nullToAbsent) {
    return WatchCacheMetadataTableCompanion(
      id: Value(id),
      calorieGoal:
          calorieGoal == null && nullToAbsent
              ? const Value.absent()
              : Value(calorieGoal),
      lastSyncAt:
          lastSyncAt == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncAt),
    );
  }

  factory WatchCacheMetadataTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WatchCacheMetadataTableData(
      id: serializer.fromJson<int>(json['id']),
      calorieGoal: serializer.fromJson<int?>(json['calorieGoal']),
      lastSyncAt: serializer.fromJson<DateTime?>(json['lastSyncAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'calorieGoal': serializer.toJson<int?>(calorieGoal),
      'lastSyncAt': serializer.toJson<DateTime?>(lastSyncAt),
    };
  }

  WatchCacheMetadataTableData copyWith({
    int? id,
    Value<int?> calorieGoal = const Value.absent(),
    Value<DateTime?> lastSyncAt = const Value.absent(),
  }) => WatchCacheMetadataTableData(
    id: id ?? this.id,
    calorieGoal: calorieGoal.present ? calorieGoal.value : this.calorieGoal,
    lastSyncAt: lastSyncAt.present ? lastSyncAt.value : this.lastSyncAt,
  );
  WatchCacheMetadataTableData copyWithCompanion(
    WatchCacheMetadataTableCompanion data,
  ) {
    return WatchCacheMetadataTableData(
      id: data.id.present ? data.id.value : this.id,
      calorieGoal:
          data.calorieGoal.present ? data.calorieGoal.value : this.calorieGoal,
      lastSyncAt:
          data.lastSyncAt.present ? data.lastSyncAt.value : this.lastSyncAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WatchCacheMetadataTableData(')
          ..write('id: $id, ')
          ..write('calorieGoal: $calorieGoal, ')
          ..write('lastSyncAt: $lastSyncAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, calorieGoal, lastSyncAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatchCacheMetadataTableData &&
          other.id == this.id &&
          other.calorieGoal == this.calorieGoal &&
          other.lastSyncAt == this.lastSyncAt);
}

class WatchCacheMetadataTableCompanion
    extends UpdateCompanion<WatchCacheMetadataTableData> {
  final Value<int> id;
  final Value<int?> calorieGoal;
  final Value<DateTime?> lastSyncAt;
  const WatchCacheMetadataTableCompanion({
    this.id = const Value.absent(),
    this.calorieGoal = const Value.absent(),
    this.lastSyncAt = const Value.absent(),
  });
  WatchCacheMetadataTableCompanion.insert({
    this.id = const Value.absent(),
    this.calorieGoal = const Value.absent(),
    this.lastSyncAt = const Value.absent(),
  });
  static Insertable<WatchCacheMetadataTableData> custom({
    Expression<int>? id,
    Expression<int>? calorieGoal,
    Expression<DateTime>? lastSyncAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (calorieGoal != null) 'calorie_goal': calorieGoal,
      if (lastSyncAt != null) 'last_sync_at': lastSyncAt,
    });
  }

  WatchCacheMetadataTableCompanion copyWith({
    Value<int>? id,
    Value<int?>? calorieGoal,
    Value<DateTime?>? lastSyncAt,
  }) {
    return WatchCacheMetadataTableCompanion(
      id: id ?? this.id,
      calorieGoal: calorieGoal ?? this.calorieGoal,
      lastSyncAt: lastSyncAt ?? this.lastSyncAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (calorieGoal.present) {
      map['calorie_goal'] = Variable<int>(calorieGoal.value);
    }
    if (lastSyncAt.present) {
      map['last_sync_at'] = Variable<DateTime>(lastSyncAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WatchCacheMetadataTableCompanion(')
          ..write('id: $id, ')
          ..write('calorieGoal: $calorieGoal, ')
          ..write('lastSyncAt: $lastSyncAt')
          ..write(')'))
        .toString();
  }
}

class $PendingOperationsTableTable extends PendingOperationsTable
    with TableInfo<$PendingOperationsTableTable, PendingOperationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PendingOperationsTableTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _operationTypeMeta = const VerificationMeta(
    'operationType',
  );
  @override
  late final GeneratedColumn<String> operationType = GeneratedColumn<String>(
    'operation_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealIdMeta = const VerificationMeta('mealId');
  @override
  late final GeneratedColumn<int> mealId = GeneratedColumn<int>(
    'meal_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _favoriteMealIdMeta = const VerificationMeta(
    'favoriteMealId',
  );
  @override
  late final GeneratedColumn<int> favoriteMealId = GeneratedColumn<int>(
    'favorite_meal_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _payloadJsonMeta = const VerificationMeta(
    'payloadJson',
  );
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
    'payload_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
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
  @override
  List<GeneratedColumn> get $columns => [
    id,
    operationType,
    mealId,
    favoriteMealId,
    payloadJson,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pending_operations_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PendingOperationsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('operation_type')) {
      context.handle(
        _operationTypeMeta,
        operationType.isAcceptableOrUnknown(
          data['operation_type']!,
          _operationTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_operationTypeMeta);
    }
    if (data.containsKey('meal_id')) {
      context.handle(
        _mealIdMeta,
        mealId.isAcceptableOrUnknown(data['meal_id']!, _mealIdMeta),
      );
    } else if (isInserting) {
      context.missing(_mealIdMeta);
    }
    if (data.containsKey('favorite_meal_id')) {
      context.handle(
        _favoriteMealIdMeta,
        favoriteMealId.isAcceptableOrUnknown(
          data['favorite_meal_id']!,
          _favoriteMealIdMeta,
        ),
      );
    }
    if (data.containsKey('payload_json')) {
      context.handle(
        _payloadJsonMeta,
        payloadJson.isAcceptableOrUnknown(
          data['payload_json']!,
          _payloadJsonMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PendingOperationsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PendingOperationsTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      operationType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}operation_type'],
          )!,
      mealId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}meal_id'],
          )!,
      favoriteMealId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}favorite_meal_id'],
      ),
      payloadJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload_json'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $PendingOperationsTableTable createAlias(String alias) {
    return $PendingOperationsTableTable(attachedDatabase, alias);
  }
}

class PendingOperationsTableData extends DataClass
    implements Insertable<PendingOperationsTableData> {
  final int id;
  final String operationType;
  final int mealId;
  final int? favoriteMealId;
  final String? payloadJson;
  final DateTime createdAt;
  const PendingOperationsTableData({
    required this.id,
    required this.operationType,
    required this.mealId,
    this.favoriteMealId,
    this.payloadJson,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['operation_type'] = Variable<String>(operationType);
    map['meal_id'] = Variable<int>(mealId);
    if (!nullToAbsent || favoriteMealId != null) {
      map['favorite_meal_id'] = Variable<int>(favoriteMealId);
    }
    if (!nullToAbsent || payloadJson != null) {
      map['payload_json'] = Variable<String>(payloadJson);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PendingOperationsTableCompanion toCompanion(bool nullToAbsent) {
    return PendingOperationsTableCompanion(
      id: Value(id),
      operationType: Value(operationType),
      mealId: Value(mealId),
      favoriteMealId:
          favoriteMealId == null && nullToAbsent
              ? const Value.absent()
              : Value(favoriteMealId),
      payloadJson:
          payloadJson == null && nullToAbsent
              ? const Value.absent()
              : Value(payloadJson),
      createdAt: Value(createdAt),
    );
  }

  factory PendingOperationsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PendingOperationsTableData(
      id: serializer.fromJson<int>(json['id']),
      operationType: serializer.fromJson<String>(json['operationType']),
      mealId: serializer.fromJson<int>(json['mealId']),
      favoriteMealId: serializer.fromJson<int?>(json['favoriteMealId']),
      payloadJson: serializer.fromJson<String?>(json['payloadJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'operationType': serializer.toJson<String>(operationType),
      'mealId': serializer.toJson<int>(mealId),
      'favoriteMealId': serializer.toJson<int?>(favoriteMealId),
      'payloadJson': serializer.toJson<String?>(payloadJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PendingOperationsTableData copyWith({
    int? id,
    String? operationType,
    int? mealId,
    Value<int?> favoriteMealId = const Value.absent(),
    Value<String?> payloadJson = const Value.absent(),
    DateTime? createdAt,
  }) => PendingOperationsTableData(
    id: id ?? this.id,
    operationType: operationType ?? this.operationType,
    mealId: mealId ?? this.mealId,
    favoriteMealId:
        favoriteMealId.present ? favoriteMealId.value : this.favoriteMealId,
    payloadJson: payloadJson.present ? payloadJson.value : this.payloadJson,
    createdAt: createdAt ?? this.createdAt,
  );
  PendingOperationsTableData copyWithCompanion(
    PendingOperationsTableCompanion data,
  ) {
    return PendingOperationsTableData(
      id: data.id.present ? data.id.value : this.id,
      operationType:
          data.operationType.present
              ? data.operationType.value
              : this.operationType,
      mealId: data.mealId.present ? data.mealId.value : this.mealId,
      favoriteMealId:
          data.favoriteMealId.present
              ? data.favoriteMealId.value
              : this.favoriteMealId,
      payloadJson:
          data.payloadJson.present ? data.payloadJson.value : this.payloadJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PendingOperationsTableData(')
          ..write('id: $id, ')
          ..write('operationType: $operationType, ')
          ..write('mealId: $mealId, ')
          ..write('favoriteMealId: $favoriteMealId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    operationType,
    mealId,
    favoriteMealId,
    payloadJson,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PendingOperationsTableData &&
          other.id == this.id &&
          other.operationType == this.operationType &&
          other.mealId == this.mealId &&
          other.favoriteMealId == this.favoriteMealId &&
          other.payloadJson == this.payloadJson &&
          other.createdAt == this.createdAt);
}

class PendingOperationsTableCompanion
    extends UpdateCompanion<PendingOperationsTableData> {
  final Value<int> id;
  final Value<String> operationType;
  final Value<int> mealId;
  final Value<int?> favoriteMealId;
  final Value<String?> payloadJson;
  final Value<DateTime> createdAt;
  const PendingOperationsTableCompanion({
    this.id = const Value.absent(),
    this.operationType = const Value.absent(),
    this.mealId = const Value.absent(),
    this.favoriteMealId = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PendingOperationsTableCompanion.insert({
    this.id = const Value.absent(),
    required String operationType,
    required int mealId,
    this.favoriteMealId = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : operationType = Value(operationType),
       mealId = Value(mealId);
  static Insertable<PendingOperationsTableData> custom({
    Expression<int>? id,
    Expression<String>? operationType,
    Expression<int>? mealId,
    Expression<int>? favoriteMealId,
    Expression<String>? payloadJson,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (operationType != null) 'operation_type': operationType,
      if (mealId != null) 'meal_id': mealId,
      if (favoriteMealId != null) 'favorite_meal_id': favoriteMealId,
      if (payloadJson != null) 'payload_json': payloadJson,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PendingOperationsTableCompanion copyWith({
    Value<int>? id,
    Value<String>? operationType,
    Value<int>? mealId,
    Value<int?>? favoriteMealId,
    Value<String?>? payloadJson,
    Value<DateTime>? createdAt,
  }) {
    return PendingOperationsTableCompanion(
      id: id ?? this.id,
      operationType: operationType ?? this.operationType,
      mealId: mealId ?? this.mealId,
      favoriteMealId: favoriteMealId ?? this.favoriteMealId,
      payloadJson: payloadJson ?? this.payloadJson,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (operationType.present) {
      map['operation_type'] = Variable<String>(operationType.value);
    }
    if (mealId.present) {
      map['meal_id'] = Variable<int>(mealId.value);
    }
    if (favoriteMealId.present) {
      map['favorite_meal_id'] = Variable<int>(favoriteMealId.value);
    }
    if (payloadJson.present) {
      map['payload_json'] = Variable<String>(payloadJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PendingOperationsTableCompanion(')
          ..write('id: $id, ')
          ..write('operationType: $operationType, ')
          ..write('mealId: $mealId, ')
          ..write('favoriteMealId: $favoriteMealId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$WatchDatabase extends GeneratedDatabase {
  _$WatchDatabase(QueryExecutor e) : super(e);
  $WatchDatabaseManager get managers => $WatchDatabaseManager(this);
  late final $CachedMealsTableTable cachedMealsTable = $CachedMealsTableTable(
    this,
  );
  late final $CachedFavoritesTableTable cachedFavoritesTable =
      $CachedFavoritesTableTable(this);
  late final $WatchCacheMetadataTableTable watchCacheMetadataTable =
      $WatchCacheMetadataTableTable(this);
  late final $PendingOperationsTableTable pendingOperationsTable =
      $PendingOperationsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cachedMealsTable,
    cachedFavoritesTable,
    watchCacheMetadataTable,
    pendingOperationsTable,
  ];
}

typedef $$CachedMealsTableTableCreateCompanionBuilder =
    CachedMealsTableCompanion Function({
      Value<int> mealId,
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
    });
typedef $$CachedMealsTableTableUpdateCompanionBuilder =
    CachedMealsTableCompanion Function({
      Value<int> mealId,
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
    });

class $$CachedMealsTableTableFilterComposer
    extends Composer<_$WatchDatabase, $CachedMealsTableTable> {
  $$CachedMealsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get mealId => $composableBuilder(
    column: $table.mealId,
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
}

class $$CachedMealsTableTableOrderingComposer
    extends Composer<_$WatchDatabase, $CachedMealsTableTable> {
  $$CachedMealsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get mealId => $composableBuilder(
    column: $table.mealId,
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
}

class $$CachedMealsTableTableAnnotationComposer
    extends Composer<_$WatchDatabase, $CachedMealsTableTable> {
  $$CachedMealsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get mealId =>
      $composableBuilder(column: $table.mealId, builder: (column) => column);

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
}

class $$CachedMealsTableTableTableManager
    extends
        RootTableManager<
          _$WatchDatabase,
          $CachedMealsTableTable,
          CachedMealsTableData,
          $$CachedMealsTableTableFilterComposer,
          $$CachedMealsTableTableOrderingComposer,
          $$CachedMealsTableTableAnnotationComposer,
          $$CachedMealsTableTableCreateCompanionBuilder,
          $$CachedMealsTableTableUpdateCompanionBuilder,
          (
            CachedMealsTableData,
            BaseReferences<
              _$WatchDatabase,
              $CachedMealsTableTable,
              CachedMealsTableData
            >,
          ),
          CachedMealsTableData,
          PrefetchHooks Function()
        > {
  $$CachedMealsTableTableTableManager(
    _$WatchDatabase db,
    $CachedMealsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$CachedMealsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$CachedMealsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$CachedMealsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> mealId = const Value.absent(),
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
              }) => CachedMealsTableCompanion(
                mealId: mealId,
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
              ),
          createCompanionCallback:
              ({
                Value<int> mealId = const Value.absent(),
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
              }) => CachedMealsTableCompanion.insert(
                mealId: mealId,
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

typedef $$CachedMealsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$WatchDatabase,
      $CachedMealsTableTable,
      CachedMealsTableData,
      $$CachedMealsTableTableFilterComposer,
      $$CachedMealsTableTableOrderingComposer,
      $$CachedMealsTableTableAnnotationComposer,
      $$CachedMealsTableTableCreateCompanionBuilder,
      $$CachedMealsTableTableUpdateCompanionBuilder,
      (
        CachedMealsTableData,
        BaseReferences<
          _$WatchDatabase,
          $CachedMealsTableTable,
          CachedMealsTableData
        >,
      ),
      CachedMealsTableData,
      PrefetchHooks Function()
    >;
typedef $$CachedFavoritesTableTableCreateCompanionBuilder =
    CachedFavoritesTableCompanion Function({
      Value<int> mealId,
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
      required DateTime favoritedAt,
      Value<DateTime?> lastUsedAt,
    });
typedef $$CachedFavoritesTableTableUpdateCompanionBuilder =
    CachedFavoritesTableCompanion Function({
      Value<int> mealId,
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
      Value<DateTime> favoritedAt,
      Value<DateTime?> lastUsedAt,
    });

class $$CachedFavoritesTableTableFilterComposer
    extends Composer<_$WatchDatabase, $CachedFavoritesTableTable> {
  $$CachedFavoritesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get mealId => $composableBuilder(
    column: $table.mealId,
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

  ColumnFilters<DateTime> get favoritedAt => $composableBuilder(
    column: $table.favoritedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedFavoritesTableTableOrderingComposer
    extends Composer<_$WatchDatabase, $CachedFavoritesTableTable> {
  $$CachedFavoritesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get mealId => $composableBuilder(
    column: $table.mealId,
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

  ColumnOrderings<DateTime> get favoritedAt => $composableBuilder(
    column: $table.favoritedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedFavoritesTableTableAnnotationComposer
    extends Composer<_$WatchDatabase, $CachedFavoritesTableTable> {
  $$CachedFavoritesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get mealId =>
      $composableBuilder(column: $table.mealId, builder: (column) => column);

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

  GeneratedColumn<DateTime> get favoritedAt => $composableBuilder(
    column: $table.favoritedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastUsedAt => $composableBuilder(
    column: $table.lastUsedAt,
    builder: (column) => column,
  );
}

class $$CachedFavoritesTableTableTableManager
    extends
        RootTableManager<
          _$WatchDatabase,
          $CachedFavoritesTableTable,
          CachedFavoritesTableData,
          $$CachedFavoritesTableTableFilterComposer,
          $$CachedFavoritesTableTableOrderingComposer,
          $$CachedFavoritesTableTableAnnotationComposer,
          $$CachedFavoritesTableTableCreateCompanionBuilder,
          $$CachedFavoritesTableTableUpdateCompanionBuilder,
          (
            CachedFavoritesTableData,
            BaseReferences<
              _$WatchDatabase,
              $CachedFavoritesTableTable,
              CachedFavoritesTableData
            >,
          ),
          CachedFavoritesTableData,
          PrefetchHooks Function()
        > {
  $$CachedFavoritesTableTableTableManager(
    _$WatchDatabase db,
    $CachedFavoritesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$CachedFavoritesTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$CachedFavoritesTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$CachedFavoritesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> mealId = const Value.absent(),
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
                Value<DateTime> favoritedAt = const Value.absent(),
                Value<DateTime?> lastUsedAt = const Value.absent(),
              }) => CachedFavoritesTableCompanion(
                mealId: mealId,
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
                favoritedAt: favoritedAt,
                lastUsedAt: lastUsedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> mealId = const Value.absent(),
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
                required DateTime favoritedAt,
                Value<DateTime?> lastUsedAt = const Value.absent(),
              }) => CachedFavoritesTableCompanion.insert(
                mealId: mealId,
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
                favoritedAt: favoritedAt,
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

typedef $$CachedFavoritesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$WatchDatabase,
      $CachedFavoritesTableTable,
      CachedFavoritesTableData,
      $$CachedFavoritesTableTableFilterComposer,
      $$CachedFavoritesTableTableOrderingComposer,
      $$CachedFavoritesTableTableAnnotationComposer,
      $$CachedFavoritesTableTableCreateCompanionBuilder,
      $$CachedFavoritesTableTableUpdateCompanionBuilder,
      (
        CachedFavoritesTableData,
        BaseReferences<
          _$WatchDatabase,
          $CachedFavoritesTableTable,
          CachedFavoritesTableData
        >,
      ),
      CachedFavoritesTableData,
      PrefetchHooks Function()
    >;
typedef $$WatchCacheMetadataTableTableCreateCompanionBuilder =
    WatchCacheMetadataTableCompanion Function({
      Value<int> id,
      Value<int?> calorieGoal,
      Value<DateTime?> lastSyncAt,
    });
typedef $$WatchCacheMetadataTableTableUpdateCompanionBuilder =
    WatchCacheMetadataTableCompanion Function({
      Value<int> id,
      Value<int?> calorieGoal,
      Value<DateTime?> lastSyncAt,
    });

class $$WatchCacheMetadataTableTableFilterComposer
    extends Composer<_$WatchDatabase, $WatchCacheMetadataTableTable> {
  $$WatchCacheMetadataTableTableFilterComposer({
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

  ColumnFilters<int> get calorieGoal => $composableBuilder(
    column: $table.calorieGoal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSyncAt => $composableBuilder(
    column: $table.lastSyncAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WatchCacheMetadataTableTableOrderingComposer
    extends Composer<_$WatchDatabase, $WatchCacheMetadataTableTable> {
  $$WatchCacheMetadataTableTableOrderingComposer({
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

  ColumnOrderings<int> get calorieGoal => $composableBuilder(
    column: $table.calorieGoal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSyncAt => $composableBuilder(
    column: $table.lastSyncAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WatchCacheMetadataTableTableAnnotationComposer
    extends Composer<_$WatchDatabase, $WatchCacheMetadataTableTable> {
  $$WatchCacheMetadataTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get calorieGoal => $composableBuilder(
    column: $table.calorieGoal,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSyncAt => $composableBuilder(
    column: $table.lastSyncAt,
    builder: (column) => column,
  );
}

class $$WatchCacheMetadataTableTableTableManager
    extends
        RootTableManager<
          _$WatchDatabase,
          $WatchCacheMetadataTableTable,
          WatchCacheMetadataTableData,
          $$WatchCacheMetadataTableTableFilterComposer,
          $$WatchCacheMetadataTableTableOrderingComposer,
          $$WatchCacheMetadataTableTableAnnotationComposer,
          $$WatchCacheMetadataTableTableCreateCompanionBuilder,
          $$WatchCacheMetadataTableTableUpdateCompanionBuilder,
          (
            WatchCacheMetadataTableData,
            BaseReferences<
              _$WatchDatabase,
              $WatchCacheMetadataTableTable,
              WatchCacheMetadataTableData
            >,
          ),
          WatchCacheMetadataTableData,
          PrefetchHooks Function()
        > {
  $$WatchCacheMetadataTableTableTableManager(
    _$WatchDatabase db,
    $WatchCacheMetadataTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$WatchCacheMetadataTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$WatchCacheMetadataTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$WatchCacheMetadataTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> calorieGoal = const Value.absent(),
                Value<DateTime?> lastSyncAt = const Value.absent(),
              }) => WatchCacheMetadataTableCompanion(
                id: id,
                calorieGoal: calorieGoal,
                lastSyncAt: lastSyncAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> calorieGoal = const Value.absent(),
                Value<DateTime?> lastSyncAt = const Value.absent(),
              }) => WatchCacheMetadataTableCompanion.insert(
                id: id,
                calorieGoal: calorieGoal,
                lastSyncAt: lastSyncAt,
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

typedef $$WatchCacheMetadataTableTableProcessedTableManager =
    ProcessedTableManager<
      _$WatchDatabase,
      $WatchCacheMetadataTableTable,
      WatchCacheMetadataTableData,
      $$WatchCacheMetadataTableTableFilterComposer,
      $$WatchCacheMetadataTableTableOrderingComposer,
      $$WatchCacheMetadataTableTableAnnotationComposer,
      $$WatchCacheMetadataTableTableCreateCompanionBuilder,
      $$WatchCacheMetadataTableTableUpdateCompanionBuilder,
      (
        WatchCacheMetadataTableData,
        BaseReferences<
          _$WatchDatabase,
          $WatchCacheMetadataTableTable,
          WatchCacheMetadataTableData
        >,
      ),
      WatchCacheMetadataTableData,
      PrefetchHooks Function()
    >;
typedef $$PendingOperationsTableTableCreateCompanionBuilder =
    PendingOperationsTableCompanion Function({
      Value<int> id,
      required String operationType,
      required int mealId,
      Value<int?> favoriteMealId,
      Value<String?> payloadJson,
      Value<DateTime> createdAt,
    });
typedef $$PendingOperationsTableTableUpdateCompanionBuilder =
    PendingOperationsTableCompanion Function({
      Value<int> id,
      Value<String> operationType,
      Value<int> mealId,
      Value<int?> favoriteMealId,
      Value<String?> payloadJson,
      Value<DateTime> createdAt,
    });

class $$PendingOperationsTableTableFilterComposer
    extends Composer<_$WatchDatabase, $PendingOperationsTableTable> {
  $$PendingOperationsTableTableFilterComposer({
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

  ColumnFilters<String> get operationType => $composableBuilder(
    column: $table.operationType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mealId => $composableBuilder(
    column: $table.mealId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get favoriteMealId => $composableBuilder(
    column: $table.favoriteMealId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PendingOperationsTableTableOrderingComposer
    extends Composer<_$WatchDatabase, $PendingOperationsTableTable> {
  $$PendingOperationsTableTableOrderingComposer({
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

  ColumnOrderings<String> get operationType => $composableBuilder(
    column: $table.operationType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mealId => $composableBuilder(
    column: $table.mealId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get favoriteMealId => $composableBuilder(
    column: $table.favoriteMealId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PendingOperationsTableTableAnnotationComposer
    extends Composer<_$WatchDatabase, $PendingOperationsTableTable> {
  $$PendingOperationsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get operationType => $composableBuilder(
    column: $table.operationType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get mealId =>
      $composableBuilder(column: $table.mealId, builder: (column) => column);

  GeneratedColumn<int> get favoriteMealId => $composableBuilder(
    column: $table.favoriteMealId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$PendingOperationsTableTableTableManager
    extends
        RootTableManager<
          _$WatchDatabase,
          $PendingOperationsTableTable,
          PendingOperationsTableData,
          $$PendingOperationsTableTableFilterComposer,
          $$PendingOperationsTableTableOrderingComposer,
          $$PendingOperationsTableTableAnnotationComposer,
          $$PendingOperationsTableTableCreateCompanionBuilder,
          $$PendingOperationsTableTableUpdateCompanionBuilder,
          (
            PendingOperationsTableData,
            BaseReferences<
              _$WatchDatabase,
              $PendingOperationsTableTable,
              PendingOperationsTableData
            >,
          ),
          PendingOperationsTableData,
          PrefetchHooks Function()
        > {
  $$PendingOperationsTableTableTableManager(
    _$WatchDatabase db,
    $PendingOperationsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$PendingOperationsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$PendingOperationsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$PendingOperationsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> operationType = const Value.absent(),
                Value<int> mealId = const Value.absent(),
                Value<int?> favoriteMealId = const Value.absent(),
                Value<String?> payloadJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PendingOperationsTableCompanion(
                id: id,
                operationType: operationType,
                mealId: mealId,
                favoriteMealId: favoriteMealId,
                payloadJson: payloadJson,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String operationType,
                required int mealId,
                Value<int?> favoriteMealId = const Value.absent(),
                Value<String?> payloadJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PendingOperationsTableCompanion.insert(
                id: id,
                operationType: operationType,
                mealId: mealId,
                favoriteMealId: favoriteMealId,
                payloadJson: payloadJson,
                createdAt: createdAt,
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

typedef $$PendingOperationsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$WatchDatabase,
      $PendingOperationsTableTable,
      PendingOperationsTableData,
      $$PendingOperationsTableTableFilterComposer,
      $$PendingOperationsTableTableOrderingComposer,
      $$PendingOperationsTableTableAnnotationComposer,
      $$PendingOperationsTableTableCreateCompanionBuilder,
      $$PendingOperationsTableTableUpdateCompanionBuilder,
      (
        PendingOperationsTableData,
        BaseReferences<
          _$WatchDatabase,
          $PendingOperationsTableTable,
          PendingOperationsTableData
        >,
      ),
      PendingOperationsTableData,
      PrefetchHooks Function()
    >;

class $WatchDatabaseManager {
  final _$WatchDatabase _db;
  $WatchDatabaseManager(this._db);
  $$CachedMealsTableTableTableManager get cachedMealsTable =>
      $$CachedMealsTableTableTableManager(_db, _db.cachedMealsTable);
  $$CachedFavoritesTableTableTableManager get cachedFavoritesTable =>
      $$CachedFavoritesTableTableTableManager(_db, _db.cachedFavoritesTable);
  $$WatchCacheMetadataTableTableTableManager get watchCacheMetadataTable =>
      $$WatchCacheMetadataTableTableTableManager(
        _db,
        _db.watchCacheMetadataTable,
      );
  $$PendingOperationsTableTableTableManager get pendingOperationsTable =>
      $$PendingOperationsTableTableTableManager(
        _db,
        _db.pendingOperationsTable,
      );
}
