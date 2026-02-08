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
          ..write('healthScoreReason: $healthScoreReason')
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
          other.healthScoreReason == this.healthScoreReason);
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
          ..write('healthScoreReason: $healthScoreReason')
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
          ..write('updatedAt: $updatedAt')
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
          other.updatedAt == this.updatedAt);
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
          ..write('updatedAt: $updatedAt')
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
  static const VerificationMeta _feedbackSheetShownMeta =
      const VerificationMeta('feedbackSheetShown');
  @override
  late final GeneratedColumn<bool> feedbackSheetShown = GeneratedColumn<bool>(
    'feedback_sheet_shown',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("feedback_sheet_shown" IN (0, 1))',
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
    feedbackSheetShown,
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
    if (data.containsKey('feedback_sheet_shown')) {
      context.handle(
        _feedbackSheetShownMeta,
        feedbackSheetShown.isAcceptableOrUnknown(
          data['feedback_sheet_shown']!,
          _feedbackSheetShownMeta,
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
      feedbackSheetShown:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}feedback_sheet_shown'],
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
  final bool feedbackSheetShown;
  final DateTime updatedAt;
  const UserPreferencesTableData({
    required this.id,
    this.languageCode,
    this.theme,
    required this.feedbackSheetShown,
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
    map['feedback_sheet_shown'] = Variable<bool>(feedbackSheetShown);
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
      feedbackSheetShown: Value(feedbackSheetShown),
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
      feedbackSheetShown: serializer.fromJson<bool>(json['feedbackSheetShown']),
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
      'feedbackSheetShown': serializer.toJson<bool>(feedbackSheetShown),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  UserPreferencesTableData copyWith({
    int? id,
    Value<String?> languageCode = const Value.absent(),
    Value<String?> theme = const Value.absent(),
    bool? feedbackSheetShown,
    DateTime? updatedAt,
  }) => UserPreferencesTableData(
    id: id ?? this.id,
    languageCode: languageCode.present ? languageCode.value : this.languageCode,
    theme: theme.present ? theme.value : this.theme,
    feedbackSheetShown: feedbackSheetShown ?? this.feedbackSheetShown,
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
      feedbackSheetShown:
          data.feedbackSheetShown.present
              ? data.feedbackSheetShown.value
              : this.feedbackSheetShown,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserPreferencesTableData(')
          ..write('id: $id, ')
          ..write('languageCode: $languageCode, ')
          ..write('theme: $theme, ')
          ..write('feedbackSheetShown: $feedbackSheetShown, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, languageCode, theme, feedbackSheetShown, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPreferencesTableData &&
          other.id == this.id &&
          other.languageCode == this.languageCode &&
          other.theme == this.theme &&
          other.feedbackSheetShown == this.feedbackSheetShown &&
          other.updatedAt == this.updatedAt);
}

class UserPreferencesTableCompanion
    extends UpdateCompanion<UserPreferencesTableData> {
  final Value<int> id;
  final Value<String?> languageCode;
  final Value<String?> theme;
  final Value<bool> feedbackSheetShown;
  final Value<DateTime> updatedAt;
  const UserPreferencesTableCompanion({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.theme = const Value.absent(),
    this.feedbackSheetShown = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UserPreferencesTableCompanion.insert({
    this.id = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.theme = const Value.absent(),
    this.feedbackSheetShown = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  static Insertable<UserPreferencesTableData> custom({
    Expression<int>? id,
    Expression<String>? languageCode,
    Expression<String>? theme,
    Expression<bool>? feedbackSheetShown,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (languageCode != null) 'language_code': languageCode,
      if (theme != null) 'theme': theme,
      if (feedbackSheetShown != null)
        'feedback_sheet_shown': feedbackSheetShown,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  UserPreferencesTableCompanion copyWith({
    Value<int>? id,
    Value<String?>? languageCode,
    Value<String?>? theme,
    Value<bool>? feedbackSheetShown,
    Value<DateTime>? updatedAt,
  }) {
    return UserPreferencesTableCompanion(
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      theme: theme ?? this.theme,
      feedbackSheetShown: feedbackSheetShown ?? this.feedbackSheetShown,
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
    if (feedbackSheetShown.present) {
      map['feedback_sheet_shown'] = Variable<bool>(feedbackSheetShown.value);
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
          ..write('feedbackSheetShown: $feedbackSheetShown, ')
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
          ..write('createdAt: $createdAt, ')
          ..write('lastUsedAt: $lastUsedAt')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTableTable extends SyncQueueTable
    with TableInfo<$SyncQueueTableTable, SyncQueueTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTableTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _opTypeMeta = const VerificationMeta('opType');
  @override
  late final GeneratedColumn<int> opType = GeneratedColumn<int>(
    'op_type',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idempotencyKeyMeta = const VerificationMeta(
    'idempotencyKey',
  );
  @override
  late final GeneratedColumn<String> idempotencyKey = GeneratedColumn<String>(
    'idempotency_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<Uint8List> payload = GeneratedColumn<Uint8List>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _attemptCountMeta = const VerificationMeta(
    'attemptCount',
  );
  @override
  late final GeneratedColumn<int> attemptCount = GeneratedColumn<int>(
    'attempt_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
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
  static const VerificationMeta _lastAttemptAtMeta = const VerificationMeta(
    'lastAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastAttemptAt =
      GeneratedColumn<DateTime>(
        'last_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _nextRetryAtMeta = const VerificationMeta(
    'nextRetryAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextRetryAt = GeneratedColumn<DateTime>(
    'next_retry_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
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
  @override
  List<GeneratedColumn> get $columns => [
    id,
    opType,
    idempotencyKey,
    payload,
    attemptCount,
    createdAt,
    lastAttemptAt,
    nextRetryAt,
    lastError,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncQueueTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('op_type')) {
      context.handle(
        _opTypeMeta,
        opType.isAcceptableOrUnknown(data['op_type']!, _opTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_opTypeMeta);
    }
    if (data.containsKey('idempotency_key')) {
      context.handle(
        _idempotencyKeyMeta,
        idempotencyKey.isAcceptableOrUnknown(
          data['idempotency_key']!,
          _idempotencyKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_idempotencyKeyMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('attempt_count')) {
      context.handle(
        _attemptCountMeta,
        attemptCount.isAcceptableOrUnknown(
          data['attempt_count']!,
          _attemptCountMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('last_attempt_at')) {
      context.handle(
        _lastAttemptAtMeta,
        lastAttemptAt.isAcceptableOrUnknown(
          data['last_attempt_at']!,
          _lastAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('next_retry_at')) {
      context.handle(
        _nextRetryAtMeta,
        nextRetryAt.isAcceptableOrUnknown(
          data['next_retry_at']!,
          _nextRetryAtMeta,
        ),
      );
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      opType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}op_type'],
          )!,
      idempotencyKey:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}idempotency_key'],
          )!,
      payload:
          attachedDatabase.typeMapping.read(
            DriftSqlType.blob,
            data['${effectivePrefix}payload'],
          )!,
      attemptCount:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}attempt_count'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      lastAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_attempt_at'],
      ),
      nextRetryAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_retry_at'],
      ),
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
    );
  }

  @override
  $SyncQueueTableTable createAlias(String alias) {
    return $SyncQueueTableTable(attachedDatabase, alias);
  }
}

class SyncQueueTableData extends DataClass
    implements Insertable<SyncQueueTableData> {
  final int id;
  final int opType;
  final String idempotencyKey;
  final Uint8List payload;
  final int attemptCount;
  final DateTime createdAt;
  final DateTime? lastAttemptAt;
  final DateTime? nextRetryAt;
  final String? lastError;
  const SyncQueueTableData({
    required this.id,
    required this.opType,
    required this.idempotencyKey,
    required this.payload,
    required this.attemptCount,
    required this.createdAt,
    this.lastAttemptAt,
    this.nextRetryAt,
    this.lastError,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['op_type'] = Variable<int>(opType);
    map['idempotency_key'] = Variable<String>(idempotencyKey);
    map['payload'] = Variable<Uint8List>(payload);
    map['attempt_count'] = Variable<int>(attemptCount);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || lastAttemptAt != null) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt);
    }
    if (!nullToAbsent || nextRetryAt != null) {
      map['next_retry_at'] = Variable<DateTime>(nextRetryAt);
    }
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    return map;
  }

  SyncQueueTableCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueTableCompanion(
      id: Value(id),
      opType: Value(opType),
      idempotencyKey: Value(idempotencyKey),
      payload: Value(payload),
      attemptCount: Value(attemptCount),
      createdAt: Value(createdAt),
      lastAttemptAt:
          lastAttemptAt == null && nullToAbsent
              ? const Value.absent()
              : Value(lastAttemptAt),
      nextRetryAt:
          nextRetryAt == null && nullToAbsent
              ? const Value.absent()
              : Value(nextRetryAt),
      lastError:
          lastError == null && nullToAbsent
              ? const Value.absent()
              : Value(lastError),
    );
  }

  factory SyncQueueTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueTableData(
      id: serializer.fromJson<int>(json['id']),
      opType: serializer.fromJson<int>(json['opType']),
      idempotencyKey: serializer.fromJson<String>(json['idempotencyKey']),
      payload: serializer.fromJson<Uint8List>(json['payload']),
      attemptCount: serializer.fromJson<int>(json['attemptCount']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lastAttemptAt: serializer.fromJson<DateTime?>(json['lastAttemptAt']),
      nextRetryAt: serializer.fromJson<DateTime?>(json['nextRetryAt']),
      lastError: serializer.fromJson<String?>(json['lastError']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'opType': serializer.toJson<int>(opType),
      'idempotencyKey': serializer.toJson<String>(idempotencyKey),
      'payload': serializer.toJson<Uint8List>(payload),
      'attemptCount': serializer.toJson<int>(attemptCount),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lastAttemptAt': serializer.toJson<DateTime?>(lastAttemptAt),
      'nextRetryAt': serializer.toJson<DateTime?>(nextRetryAt),
      'lastError': serializer.toJson<String?>(lastError),
    };
  }

  SyncQueueTableData copyWith({
    int? id,
    int? opType,
    String? idempotencyKey,
    Uint8List? payload,
    int? attemptCount,
    DateTime? createdAt,
    Value<DateTime?> lastAttemptAt = const Value.absent(),
    Value<DateTime?> nextRetryAt = const Value.absent(),
    Value<String?> lastError = const Value.absent(),
  }) => SyncQueueTableData(
    id: id ?? this.id,
    opType: opType ?? this.opType,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    payload: payload ?? this.payload,
    attemptCount: attemptCount ?? this.attemptCount,
    createdAt: createdAt ?? this.createdAt,
    lastAttemptAt:
        lastAttemptAt.present ? lastAttemptAt.value : this.lastAttemptAt,
    nextRetryAt: nextRetryAt.present ? nextRetryAt.value : this.nextRetryAt,
    lastError: lastError.present ? lastError.value : this.lastError,
  );
  SyncQueueTableData copyWithCompanion(SyncQueueTableCompanion data) {
    return SyncQueueTableData(
      id: data.id.present ? data.id.value : this.id,
      opType: data.opType.present ? data.opType.value : this.opType,
      idempotencyKey:
          data.idempotencyKey.present
              ? data.idempotencyKey.value
              : this.idempotencyKey,
      payload: data.payload.present ? data.payload.value : this.payload,
      attemptCount:
          data.attemptCount.present
              ? data.attemptCount.value
              : this.attemptCount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastAttemptAt:
          data.lastAttemptAt.present
              ? data.lastAttemptAt.value
              : this.lastAttemptAt,
      nextRetryAt:
          data.nextRetryAt.present ? data.nextRetryAt.value : this.nextRetryAt,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueTableData(')
          ..write('id: $id, ')
          ..write('opType: $opType, ')
          ..write('idempotencyKey: $idempotencyKey, ')
          ..write('payload: $payload, ')
          ..write('attemptCount: $attemptCount, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastAttemptAt: $lastAttemptAt, ')
          ..write('nextRetryAt: $nextRetryAt, ')
          ..write('lastError: $lastError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    opType,
    idempotencyKey,
    $driftBlobEquality.hash(payload),
    attemptCount,
    createdAt,
    lastAttemptAt,
    nextRetryAt,
    lastError,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueTableData &&
          other.id == this.id &&
          other.opType == this.opType &&
          other.idempotencyKey == this.idempotencyKey &&
          $driftBlobEquality.equals(other.payload, this.payload) &&
          other.attemptCount == this.attemptCount &&
          other.createdAt == this.createdAt &&
          other.lastAttemptAt == this.lastAttemptAt &&
          other.nextRetryAt == this.nextRetryAt &&
          other.lastError == this.lastError);
}

class SyncQueueTableCompanion extends UpdateCompanion<SyncQueueTableData> {
  final Value<int> id;
  final Value<int> opType;
  final Value<String> idempotencyKey;
  final Value<Uint8List> payload;
  final Value<int> attemptCount;
  final Value<DateTime> createdAt;
  final Value<DateTime?> lastAttemptAt;
  final Value<DateTime?> nextRetryAt;
  final Value<String?> lastError;
  const SyncQueueTableCompanion({
    this.id = const Value.absent(),
    this.opType = const Value.absent(),
    this.idempotencyKey = const Value.absent(),
    this.payload = const Value.absent(),
    this.attemptCount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
    this.nextRetryAt = const Value.absent(),
    this.lastError = const Value.absent(),
  });
  SyncQueueTableCompanion.insert({
    this.id = const Value.absent(),
    required int opType,
    required String idempotencyKey,
    required Uint8List payload,
    this.attemptCount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
    this.nextRetryAt = const Value.absent(),
    this.lastError = const Value.absent(),
  }) : opType = Value(opType),
       idempotencyKey = Value(idempotencyKey),
       payload = Value(payload);
  static Insertable<SyncQueueTableData> custom({
    Expression<int>? id,
    Expression<int>? opType,
    Expression<String>? idempotencyKey,
    Expression<Uint8List>? payload,
    Expression<int>? attemptCount,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? lastAttemptAt,
    Expression<DateTime>? nextRetryAt,
    Expression<String>? lastError,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (opType != null) 'op_type': opType,
      if (idempotencyKey != null) 'idempotency_key': idempotencyKey,
      if (payload != null) 'payload': payload,
      if (attemptCount != null) 'attempt_count': attemptCount,
      if (createdAt != null) 'created_at': createdAt,
      if (lastAttemptAt != null) 'last_attempt_at': lastAttemptAt,
      if (nextRetryAt != null) 'next_retry_at': nextRetryAt,
      if (lastError != null) 'last_error': lastError,
    });
  }

  SyncQueueTableCompanion copyWith({
    Value<int>? id,
    Value<int>? opType,
    Value<String>? idempotencyKey,
    Value<Uint8List>? payload,
    Value<int>? attemptCount,
    Value<DateTime>? createdAt,
    Value<DateTime?>? lastAttemptAt,
    Value<DateTime?>? nextRetryAt,
    Value<String?>? lastError,
  }) {
    return SyncQueueTableCompanion(
      id: id ?? this.id,
      opType: opType ?? this.opType,
      idempotencyKey: idempotencyKey ?? this.idempotencyKey,
      payload: payload ?? this.payload,
      attemptCount: attemptCount ?? this.attemptCount,
      createdAt: createdAt ?? this.createdAt,
      lastAttemptAt: lastAttemptAt ?? this.lastAttemptAt,
      nextRetryAt: nextRetryAt ?? this.nextRetryAt,
      lastError: lastError ?? this.lastError,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (opType.present) {
      map['op_type'] = Variable<int>(opType.value);
    }
    if (idempotencyKey.present) {
      map['idempotency_key'] = Variable<String>(idempotencyKey.value);
    }
    if (payload.present) {
      map['payload'] = Variable<Uint8List>(payload.value);
    }
    if (attemptCount.present) {
      map['attempt_count'] = Variable<int>(attemptCount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lastAttemptAt.present) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt.value);
    }
    if (nextRetryAt.present) {
      map['next_retry_at'] = Variable<DateTime>(nextRetryAt.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueTableCompanion(')
          ..write('id: $id, ')
          ..write('opType: $opType, ')
          ..write('idempotencyKey: $idempotencyKey, ')
          ..write('payload: $payload, ')
          ..write('attemptCount: $attemptCount, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastAttemptAt: $lastAttemptAt, ')
          ..write('nextRetryAt: $nextRetryAt, ')
          ..write('lastError: $lastError')
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
  late final $SyncQueueTableTable syncQueueTable = $SyncQueueTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    mealInfoTable,
    userProfileTable,
    userPreferencesTable,
    favoriteMealTable,
    syncQueueTable,
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
      Value<bool> feedbackSheetShown,
      Value<DateTime> updatedAt,
    });
typedef $$UserPreferencesTableTableUpdateCompanionBuilder =
    UserPreferencesTableCompanion Function({
      Value<int> id,
      Value<String?> languageCode,
      Value<String?> theme,
      Value<bool> feedbackSheetShown,
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

  ColumnFilters<bool> get feedbackSheetShown => $composableBuilder(
    column: $table.feedbackSheetShown,
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

  ColumnOrderings<bool> get feedbackSheetShown => $composableBuilder(
    column: $table.feedbackSheetShown,
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

  GeneratedColumn<bool> get feedbackSheetShown => $composableBuilder(
    column: $table.feedbackSheetShown,
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
                Value<bool> feedbackSheetShown = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => UserPreferencesTableCompanion(
                id: id,
                languageCode: languageCode,
                theme: theme,
                feedbackSheetShown: feedbackSheetShown,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> languageCode = const Value.absent(),
                Value<String?> theme = const Value.absent(),
                Value<bool> feedbackSheetShown = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => UserPreferencesTableCompanion.insert(
                id: id,
                languageCode: languageCode,
                theme: theme,
                feedbackSheetShown: feedbackSheetShown,
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
typedef $$SyncQueueTableTableCreateCompanionBuilder =
    SyncQueueTableCompanion Function({
      Value<int> id,
      required int opType,
      required String idempotencyKey,
      required Uint8List payload,
      Value<int> attemptCount,
      Value<DateTime> createdAt,
      Value<DateTime?> lastAttemptAt,
      Value<DateTime?> nextRetryAt,
      Value<String?> lastError,
    });
typedef $$SyncQueueTableTableUpdateCompanionBuilder =
    SyncQueueTableCompanion Function({
      Value<int> id,
      Value<int> opType,
      Value<String> idempotencyKey,
      Value<Uint8List> payload,
      Value<int> attemptCount,
      Value<DateTime> createdAt,
      Value<DateTime?> lastAttemptAt,
      Value<DateTime?> nextRetryAt,
      Value<String?> lastError,
    });

class $$SyncQueueTableTableFilterComposer
    extends Composer<_$AppDatabase, $SyncQueueTableTable> {
  $$SyncQueueTableTableFilterComposer({
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

  ColumnFilters<int> get opType => $composableBuilder(
    column: $table.opType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get idempotencyKey => $composableBuilder(
    column: $table.idempotencyKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attemptCount => $composableBuilder(
    column: $table.attemptCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextRetryAt => $composableBuilder(
    column: $table.nextRetryAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncQueueTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncQueueTableTable> {
  $$SyncQueueTableTableOrderingComposer({
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

  ColumnOrderings<int> get opType => $composableBuilder(
    column: $table.opType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get idempotencyKey => $composableBuilder(
    column: $table.idempotencyKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attemptCount => $composableBuilder(
    column: $table.attemptCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextRetryAt => $composableBuilder(
    column: $table.nextRetryAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncQueueTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncQueueTableTable> {
  $$SyncQueueTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get opType =>
      $composableBuilder(column: $table.opType, builder: (column) => column);

  GeneratedColumn<String> get idempotencyKey => $composableBuilder(
    column: $table.idempotencyKey,
    builder: (column) => column,
  );

  GeneratedColumn<Uint8List> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<int> get attemptCount => $composableBuilder(
    column: $table.attemptCount,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get nextRetryAt => $composableBuilder(
    column: $table.nextRetryAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);
}

class $$SyncQueueTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncQueueTableTable,
          SyncQueueTableData,
          $$SyncQueueTableTableFilterComposer,
          $$SyncQueueTableTableOrderingComposer,
          $$SyncQueueTableTableAnnotationComposer,
          $$SyncQueueTableTableCreateCompanionBuilder,
          $$SyncQueueTableTableUpdateCompanionBuilder,
          (
            SyncQueueTableData,
            BaseReferences<
              _$AppDatabase,
              $SyncQueueTableTable,
              SyncQueueTableData
            >,
          ),
          SyncQueueTableData,
          PrefetchHooks Function()
        > {
  $$SyncQueueTableTableTableManager(
    _$AppDatabase db,
    $SyncQueueTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SyncQueueTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$SyncQueueTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$SyncQueueTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> opType = const Value.absent(),
                Value<String> idempotencyKey = const Value.absent(),
                Value<Uint8List> payload = const Value.absent(),
                Value<int> attemptCount = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> lastAttemptAt = const Value.absent(),
                Value<DateTime?> nextRetryAt = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
              }) => SyncQueueTableCompanion(
                id: id,
                opType: opType,
                idempotencyKey: idempotencyKey,
                payload: payload,
                attemptCount: attemptCount,
                createdAt: createdAt,
                lastAttemptAt: lastAttemptAt,
                nextRetryAt: nextRetryAt,
                lastError: lastError,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int opType,
                required String idempotencyKey,
                required Uint8List payload,
                Value<int> attemptCount = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> lastAttemptAt = const Value.absent(),
                Value<DateTime?> nextRetryAt = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
              }) => SyncQueueTableCompanion.insert(
                id: id,
                opType: opType,
                idempotencyKey: idempotencyKey,
                payload: payload,
                attemptCount: attemptCount,
                createdAt: createdAt,
                lastAttemptAt: lastAttemptAt,
                nextRetryAt: nextRetryAt,
                lastError: lastError,
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

typedef $$SyncQueueTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncQueueTableTable,
      SyncQueueTableData,
      $$SyncQueueTableTableFilterComposer,
      $$SyncQueueTableTableOrderingComposer,
      $$SyncQueueTableTableAnnotationComposer,
      $$SyncQueueTableTableCreateCompanionBuilder,
      $$SyncQueueTableTableUpdateCompanionBuilder,
      (
        SyncQueueTableData,
        BaseReferences<_$AppDatabase, $SyncQueueTableTable, SyncQueueTableData>,
      ),
      SyncQueueTableData,
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
  $$SyncQueueTableTableTableManager get syncQueueTable =>
      $$SyncQueueTableTableTableManager(_db, _db.syncQueueTable);
}
