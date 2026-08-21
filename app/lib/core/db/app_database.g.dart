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
          ..write('analysisId: $analysisId')
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
          other.analysisId == this.analysisId);
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
          ..write('analysisId: $analysisId')
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
  static const VerificationMeta _localInferenceAcknowledgedPolicyVersionMeta =
      const VerificationMeta('localInferenceAcknowledgedPolicyVersion');
  @override
  late final GeneratedColumn<String> localInferenceAcknowledgedPolicyVersion =
      GeneratedColumn<String>(
        'local_inference_acknowledged_policy_version',
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
    languageCode,
    theme,
    feedbackSheetShownAt,
    onboardingCurrentStep,
    onboardingCompletedAt,
    localInferenceEnabled,
    localInferenceAcknowledgedPolicyVersion,
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
    if (data.containsKey('local_inference_acknowledged_policy_version')) {
      context.handle(
        _localInferenceAcknowledgedPolicyVersionMeta,
        localInferenceAcknowledgedPolicyVersion.isAcceptableOrUnknown(
          data['local_inference_acknowledged_policy_version']!,
          _localInferenceAcknowledgedPolicyVersionMeta,
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
      localInferenceAcknowledgedPolicyVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_inference_acknowledged_policy_version'],
      ),
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
  final String? localInferenceAcknowledgedPolicyVersion;
  final DateTime updatedAt;
  const UserPreferencesTableData({
    required this.id,
    this.languageCode,
    this.theme,
    this.feedbackSheetShownAt,
    this.onboardingCurrentStep,
    this.onboardingCompletedAt,
    required this.localInferenceEnabled,
    this.localInferenceAcknowledgedPolicyVersion,
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
    if (!nullToAbsent || localInferenceAcknowledgedPolicyVersion != null) {
      map['local_inference_acknowledged_policy_version'] = Variable<String>(
        localInferenceAcknowledgedPolicyVersion,
      );
    }
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
      localInferenceAcknowledgedPolicyVersion:
          localInferenceAcknowledgedPolicyVersion == null && nullToAbsent
              ? const Value.absent()
              : Value(localInferenceAcknowledgedPolicyVersion),
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
      localInferenceAcknowledgedPolicyVersion: serializer.fromJson<String?>(
        json['localInferenceAcknowledgedPolicyVersion'],
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
      'localInferenceAcknowledgedPolicyVersion': serializer.toJson<String?>(
        localInferenceAcknowledgedPolicyVersion,
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
    Value<String?> localInferenceAcknowledgedPolicyVersion =
        const Value.absent(),
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
    localInferenceAcknowledgedPolicyVersion:
        localInferenceAcknowledgedPolicyVersion.present
            ? localInferenceAcknowledgedPolicyVersion.value
            : this.localInferenceAcknowledgedPolicyVersion,
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
      localInferenceAcknowledgedPolicyVersion:
          data.localInferenceAcknowledgedPolicyVersion.present
              ? data.localInferenceAcknowledgedPolicyVersion.value
              : this.localInferenceAcknowledgedPolicyVersion,
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
          ..write(
            'localInferenceAcknowledgedPolicyVersion: $localInferenceAcknowledgedPolicyVersion, ',
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
    localInferenceAcknowledgedPolicyVersion,
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
          other.localInferenceAcknowledgedPolicyVersion ==
              this.localInferenceAcknowledgedPolicyVersion &&
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
  final Value<String?> localInferenceAcknowledgedPolicyVersion;
  final Value<DateTime> updatedAt;
  const UserPreferencesTableCompanion({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.theme = const Value.absent(),
    this.feedbackSheetShownAt = const Value.absent(),
    this.onboardingCurrentStep = const Value.absent(),
    this.onboardingCompletedAt = const Value.absent(),
    this.localInferenceEnabled = const Value.absent(),
    this.localInferenceAcknowledgedPolicyVersion = const Value.absent(),
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
    this.localInferenceAcknowledgedPolicyVersion = const Value.absent(),
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
    Expression<String>? localInferenceAcknowledgedPolicyVersion,
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
      if (localInferenceAcknowledgedPolicyVersion != null)
        'local_inference_acknowledged_policy_version':
            localInferenceAcknowledgedPolicyVersion,
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
    Value<String?>? localInferenceAcknowledgedPolicyVersion,
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
      localInferenceAcknowledgedPolicyVersion:
          localInferenceAcknowledgedPolicyVersion ??
          this.localInferenceAcknowledgedPolicyVersion,
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
    if (localInferenceAcknowledgedPolicyVersion.present) {
      map['local_inference_acknowledged_policy_version'] = Variable<String>(
        localInferenceAcknowledgedPolicyVersion.value,
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
          ..write(
            'localInferenceAcknowledgedPolicyVersion: $localInferenceAcknowledgedPolicyVersion, ',
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
          ..write('sourceMealId: $sourceMealId, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastUsedAt: $lastUsedAt')
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
    sourceMealId,
    createdAt,
    lastUsedAt,
  );
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
          ..write('sourceMealId: $sourceMealId, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastUsedAt: $lastUsedAt')
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
  late final Index mealInfoAnalysisIdUnique = Index(
    'meal_info_analysis_id_unique',
    'CREATE UNIQUE INDEX meal_info_analysis_id_unique ON meal_info_table (analysis_id)',
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
    mealInfoAnalysisIdUnique,
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
      Value<String?> localInferenceAcknowledgedPolicyVersion,
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
      Value<String?> localInferenceAcknowledgedPolicyVersion,
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

  ColumnFilters<String> get localInferenceAcknowledgedPolicyVersion =>
      $composableBuilder(
        column: $table.localInferenceAcknowledgedPolicyVersion,
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

  ColumnOrderings<String> get localInferenceAcknowledgedPolicyVersion =>
      $composableBuilder(
        column: $table.localInferenceAcknowledgedPolicyVersion,
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

  GeneratedColumn<String> get localInferenceAcknowledgedPolicyVersion =>
      $composableBuilder(
        column: $table.localInferenceAcknowledgedPolicyVersion,
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
                Value<String?> localInferenceAcknowledgedPolicyVersion =
                    const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => UserPreferencesTableCompanion(
                id: id,
                languageCode: languageCode,
                theme: theme,
                feedbackSheetShownAt: feedbackSheetShownAt,
                onboardingCurrentStep: onboardingCurrentStep,
                onboardingCompletedAt: onboardingCompletedAt,
                localInferenceEnabled: localInferenceEnabled,
                localInferenceAcknowledgedPolicyVersion:
                    localInferenceAcknowledgedPolicyVersion,
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
                Value<String?> localInferenceAcknowledgedPolicyVersion =
                    const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => UserPreferencesTableCompanion.insert(
                id: id,
                languageCode: languageCode,
                theme: theme,
                feedbackSheetShownAt: feedbackSheetShownAt,
                onboardingCurrentStep: onboardingCurrentStep,
                onboardingCompletedAt: onboardingCompletedAt,
                localInferenceEnabled: localInferenceEnabled,
                localInferenceAcknowledgedPolicyVersion:
                    localInferenceAcknowledgedPolicyVersion,
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
}
