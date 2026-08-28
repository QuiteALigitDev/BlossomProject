// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $GoalsTable extends Goals with TableInfo<$GoalsTable, Goal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
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
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, description, completed];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goals';
  @override
  VerificationContext validateIntegrity(
    Insertable<Goal> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
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
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Goal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Goal(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
    );
  }

  @override
  $GoalsTable createAlias(String alias) {
    return $GoalsTable(attachedDatabase, alias);
  }
}

class Goal extends DataClass implements Insertable<Goal> {
  final int id;
  final String title;
  final String description;
  final bool completed;
  const Goal({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  GoalsCompanion toCompanion(bool nullToAbsent) {
    return GoalsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      completed: Value(completed),
    );
  }

  factory Goal.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Goal(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  Goal copyWith({
    int? id,
    String? title,
    String? description,
    bool? completed,
  }) => Goal(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    completed: completed ?? this.completed,
  );
  Goal copyWithCompanion(GoalsCompanion data) {
    return Goal(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      completed: data.completed.present ? data.completed.value : this.completed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Goal(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, completed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Goal &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.completed == this.completed);
}

class GoalsCompanion extends UpdateCompanion<Goal> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<bool> completed;
  const GoalsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.completed = const Value.absent(),
  });
  GoalsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    this.completed = const Value.absent(),
  }) : title = Value(title),
       description = Value(description);
  static Insertable<Goal> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (completed != null) 'completed': completed,
    });
  }

  GoalsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? description,
    Value<bool>? completed,
  }) {
    return GoalsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $CalendarEventsTable extends CalendarEvents
    with TableInfo<$CalendarEventsTable, CalendarEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CalendarEventsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _placeMeta = const VerificationMeta('place');
  @override
  late final GeneratedColumn<String> place = GeneratedColumn<String>(
    'place',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, date, time, place];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'calendar_events';
  @override
  VerificationContext validateIntegrity(
    Insertable<CalendarEvent> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('place')) {
      context.handle(
        _placeMeta,
        place.isAcceptableOrUnknown(data['place']!, _placeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CalendarEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CalendarEvent(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time'],
      )!,
      place: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}place'],
      ),
    );
  }

  @override
  $CalendarEventsTable createAlias(String alias) {
    return $CalendarEventsTable(attachedDatabase, alias);
  }
}

class CalendarEvent extends DataClass implements Insertable<CalendarEvent> {
  final int id;
  final String title;
  final DateTime date;
  final String time;
  final String? place;
  const CalendarEvent({
    required this.id,
    required this.title,
    required this.date,
    required this.time,
    this.place,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['date'] = Variable<DateTime>(date);
    map['time'] = Variable<String>(time);
    if (!nullToAbsent || place != null) {
      map['place'] = Variable<String>(place);
    }
    return map;
  }

  CalendarEventsCompanion toCompanion(bool nullToAbsent) {
    return CalendarEventsCompanion(
      id: Value(id),
      title: Value(title),
      date: Value(date),
      time: Value(time),
      place: place == null && nullToAbsent
          ? const Value.absent()
          : Value(place),
    );
  }

  factory CalendarEvent.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CalendarEvent(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      date: serializer.fromJson<DateTime>(json['date']),
      time: serializer.fromJson<String>(json['time']),
      place: serializer.fromJson<String?>(json['place']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'date': serializer.toJson<DateTime>(date),
      'time': serializer.toJson<String>(time),
      'place': serializer.toJson<String?>(place),
    };
  }

  CalendarEvent copyWith({
    int? id,
    String? title,
    DateTime? date,
    String? time,
    Value<String?> place = const Value.absent(),
  }) => CalendarEvent(
    id: id ?? this.id,
    title: title ?? this.title,
    date: date ?? this.date,
    time: time ?? this.time,
    place: place.present ? place.value : this.place,
  );
  CalendarEvent copyWithCompanion(CalendarEventsCompanion data) {
    return CalendarEvent(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      date: data.date.present ? data.date.value : this.date,
      time: data.time.present ? data.time.value : this.time,
      place: data.place.present ? data.place.value : this.place,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CalendarEvent(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('place: $place')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, date, time, place);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CalendarEvent &&
          other.id == this.id &&
          other.title == this.title &&
          other.date == this.date &&
          other.time == this.time &&
          other.place == this.place);
}

class CalendarEventsCompanion extends UpdateCompanion<CalendarEvent> {
  final Value<int> id;
  final Value<String> title;
  final Value<DateTime> date;
  final Value<String> time;
  final Value<String?> place;
  const CalendarEventsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.date = const Value.absent(),
    this.time = const Value.absent(),
    this.place = const Value.absent(),
  });
  CalendarEventsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required DateTime date,
    required String time,
    this.place = const Value.absent(),
  }) : title = Value(title),
       date = Value(date),
       time = Value(time);
  static Insertable<CalendarEvent> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<DateTime>? date,
    Expression<String>? time,
    Expression<String>? place,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (place != null) 'place': place,
    });
  }

  CalendarEventsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<DateTime>? date,
    Value<String>? time,
    Value<String?>? place,
  }) {
    return CalendarEventsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      date: date ?? this.date,
      time: time ?? this.time,
      place: place ?? this.place,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (place.present) {
      map['place'] = Variable<String>(place.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarEventsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('place: $place')
          ..write(')'))
        .toString();
  }
}

class $MedsTable extends Meds with TableInfo<$MedsTable, Med> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MedsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _perPillMgMeta = const VerificationMeta(
    'perPillMg',
  );
  @override
  late final GeneratedColumn<double> perPillMg = GeneratedColumn<double>(
    'per_pill_mg',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _supplyMeta = const VerificationMeta('supply');
  @override
  late final GeneratedColumn<int> supply = GeneratedColumn<int>(
    'supply',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, perPillMg, supply];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meds';
  @override
  VerificationContext validateIntegrity(
    Insertable<Med> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('per_pill_mg')) {
      context.handle(
        _perPillMgMeta,
        perPillMg.isAcceptableOrUnknown(data['per_pill_mg']!, _perPillMgMeta),
      );
    } else if (isInserting) {
      context.missing(_perPillMgMeta);
    }
    if (data.containsKey('supply')) {
      context.handle(
        _supplyMeta,
        supply.isAcceptableOrUnknown(data['supply']!, _supplyMeta),
      );
    } else if (isInserting) {
      context.missing(_supplyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Med map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Med(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      perPillMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}per_pill_mg'],
      )!,
      supply: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}supply'],
      )!,
    );
  }

  @override
  $MedsTable createAlias(String alias) {
    return $MedsTable(attachedDatabase, alias);
  }
}

class Med extends DataClass implements Insertable<Med> {
  final int id;
  final String name;
  final double perPillMg;
  final int supply;
  const Med({
    required this.id,
    required this.name,
    required this.perPillMg,
    required this.supply,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['per_pill_mg'] = Variable<double>(perPillMg);
    map['supply'] = Variable<int>(supply);
    return map;
  }

  MedsCompanion toCompanion(bool nullToAbsent) {
    return MedsCompanion(
      id: Value(id),
      name: Value(name),
      perPillMg: Value(perPillMg),
      supply: Value(supply),
    );
  }

  factory Med.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Med(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      perPillMg: serializer.fromJson<double>(json['perPillMg']),
      supply: serializer.fromJson<int>(json['supply']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'perPillMg': serializer.toJson<double>(perPillMg),
      'supply': serializer.toJson<int>(supply),
    };
  }

  Med copyWith({int? id, String? name, double? perPillMg, int? supply}) => Med(
    id: id ?? this.id,
    name: name ?? this.name,
    perPillMg: perPillMg ?? this.perPillMg,
    supply: supply ?? this.supply,
  );
  Med copyWithCompanion(MedsCompanion data) {
    return Med(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      perPillMg: data.perPillMg.present ? data.perPillMg.value : this.perPillMg,
      supply: data.supply.present ? data.supply.value : this.supply,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Med(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('perPillMg: $perPillMg, ')
          ..write('supply: $supply')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, perPillMg, supply);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Med &&
          other.id == this.id &&
          other.name == this.name &&
          other.perPillMg == this.perPillMg &&
          other.supply == this.supply);
}

class MedsCompanion extends UpdateCompanion<Med> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> perPillMg;
  final Value<int> supply;
  const MedsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.perPillMg = const Value.absent(),
    this.supply = const Value.absent(),
  });
  MedsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double perPillMg,
    required int supply,
  }) : name = Value(name),
       perPillMg = Value(perPillMg),
       supply = Value(supply);
  static Insertable<Med> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? perPillMg,
    Expression<int>? supply,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (perPillMg != null) 'per_pill_mg': perPillMg,
      if (supply != null) 'supply': supply,
    });
  }

  MedsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<double>? perPillMg,
    Value<int>? supply,
  }) {
    return MedsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      perPillMg: perPillMg ?? this.perPillMg,
      supply: supply ?? this.supply,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (perPillMg.present) {
      map['per_pill_mg'] = Variable<double>(perPillMg.value);
    }
    if (supply.present) {
      map['supply'] = Variable<int>(supply.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('perPillMg: $perPillMg, ')
          ..write('supply: $supply')
          ..write(')'))
        .toString();
  }
}

class $MedSchedulesTable extends MedSchedules
    with TableInfo<$MedSchedulesTable, MedSchedule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MedSchedulesTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _medIdMeta = const VerificationMeta('medId');
  @override
  late final GeneratedColumn<int> medId = GeneratedColumn<int>(
    'med_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES meds (id)',
    ),
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayOfWeekMeta = const VerificationMeta(
    'dayOfWeek',
  );
  @override
  late final GeneratedColumn<String> dayOfWeek = GeneratedColumn<String>(
    'day_of_week',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, medId, time, dayOfWeek];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'med_schedules';
  @override
  VerificationContext validateIntegrity(
    Insertable<MedSchedule> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('med_id')) {
      context.handle(
        _medIdMeta,
        medId.isAcceptableOrUnknown(data['med_id']!, _medIdMeta),
      );
    } else if (isInserting) {
      context.missing(_medIdMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('day_of_week')) {
      context.handle(
        _dayOfWeekMeta,
        dayOfWeek.isAcceptableOrUnknown(data['day_of_week']!, _dayOfWeekMeta),
      );
    } else if (isInserting) {
      context.missing(_dayOfWeekMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MedSchedule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MedSchedule(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      medId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}med_id'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time'],
      )!,
      dayOfWeek: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}day_of_week'],
      )!,
    );
  }

  @override
  $MedSchedulesTable createAlias(String alias) {
    return $MedSchedulesTable(attachedDatabase, alias);
  }
}

class MedSchedule extends DataClass implements Insertable<MedSchedule> {
  final int id;
  final int medId;
  final String time;
  final String dayOfWeek;
  const MedSchedule({
    required this.id,
    required this.medId,
    required this.time,
    required this.dayOfWeek,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['med_id'] = Variable<int>(medId);
    map['time'] = Variable<String>(time);
    map['day_of_week'] = Variable<String>(dayOfWeek);
    return map;
  }

  MedSchedulesCompanion toCompanion(bool nullToAbsent) {
    return MedSchedulesCompanion(
      id: Value(id),
      medId: Value(medId),
      time: Value(time),
      dayOfWeek: Value(dayOfWeek),
    );
  }

  factory MedSchedule.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MedSchedule(
      id: serializer.fromJson<int>(json['id']),
      medId: serializer.fromJson<int>(json['medId']),
      time: serializer.fromJson<String>(json['time']),
      dayOfWeek: serializer.fromJson<String>(json['dayOfWeek']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'medId': serializer.toJson<int>(medId),
      'time': serializer.toJson<String>(time),
      'dayOfWeek': serializer.toJson<String>(dayOfWeek),
    };
  }

  MedSchedule copyWith({
    int? id,
    int? medId,
    String? time,
    String? dayOfWeek,
  }) => MedSchedule(
    id: id ?? this.id,
    medId: medId ?? this.medId,
    time: time ?? this.time,
    dayOfWeek: dayOfWeek ?? this.dayOfWeek,
  );
  MedSchedule copyWithCompanion(MedSchedulesCompanion data) {
    return MedSchedule(
      id: data.id.present ? data.id.value : this.id,
      medId: data.medId.present ? data.medId.value : this.medId,
      time: data.time.present ? data.time.value : this.time,
      dayOfWeek: data.dayOfWeek.present ? data.dayOfWeek.value : this.dayOfWeek,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MedSchedule(')
          ..write('id: $id, ')
          ..write('medId: $medId, ')
          ..write('time: $time, ')
          ..write('dayOfWeek: $dayOfWeek')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, medId, time, dayOfWeek);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MedSchedule &&
          other.id == this.id &&
          other.medId == this.medId &&
          other.time == this.time &&
          other.dayOfWeek == this.dayOfWeek);
}

class MedSchedulesCompanion extends UpdateCompanion<MedSchedule> {
  final Value<int> id;
  final Value<int> medId;
  final Value<String> time;
  final Value<String> dayOfWeek;
  const MedSchedulesCompanion({
    this.id = const Value.absent(),
    this.medId = const Value.absent(),
    this.time = const Value.absent(),
    this.dayOfWeek = const Value.absent(),
  });
  MedSchedulesCompanion.insert({
    this.id = const Value.absent(),
    required int medId,
    required String time,
    required String dayOfWeek,
  }) : medId = Value(medId),
       time = Value(time),
       dayOfWeek = Value(dayOfWeek);
  static Insertable<MedSchedule> custom({
    Expression<int>? id,
    Expression<int>? medId,
    Expression<String>? time,
    Expression<String>? dayOfWeek,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (medId != null) 'med_id': medId,
      if (time != null) 'time': time,
      if (dayOfWeek != null) 'day_of_week': dayOfWeek,
    });
  }

  MedSchedulesCompanion copyWith({
    Value<int>? id,
    Value<int>? medId,
    Value<String>? time,
    Value<String>? dayOfWeek,
  }) {
    return MedSchedulesCompanion(
      id: id ?? this.id,
      medId: medId ?? this.medId,
      time: time ?? this.time,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (medId.present) {
      map['med_id'] = Variable<int>(medId.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (dayOfWeek.present) {
      map['day_of_week'] = Variable<String>(dayOfWeek.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedSchedulesCompanion(')
          ..write('id: $id, ')
          ..write('medId: $medId, ')
          ..write('time: $time, ')
          ..write('dayOfWeek: $dayOfWeek')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $GoalsTable goals = $GoalsTable(this);
  late final $CalendarEventsTable calendarEvents = $CalendarEventsTable(this);
  late final $MedsTable meds = $MedsTable(this);
  late final $MedSchedulesTable medSchedules = $MedSchedulesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    goals,
    calendarEvents,
    meds,
    medSchedules,
  ];
}

typedef $$GoalsTableCreateCompanionBuilder = GoalsCompanion Function({
  Value<int> id,
  required String title,
  required String description,
  Value<bool> completed,
});
typedef $$GoalsTableUpdateCompanionBuilder = GoalsCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> description,
  Value<bool> completed,
});

class $$GoalsTableFilterComposer extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableFilterComposer({
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

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GoalsTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableOrderingComposer({
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

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GoalsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);
}

class $$GoalsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalsTable,
          Goal,
          $$GoalsTableFilterComposer,
          $$GoalsTableOrderingComposer,
          $$GoalsTableAnnotationComposer,
          $$GoalsTableCreateCompanionBuilder,
          $$GoalsTableUpdateCompanionBuilder,
          (Goal, BaseReferences<_$AppDatabase, $GoalsTable, Goal>),
          Goal,
          PrefetchHooks Function()
        > {
  $$GoalsTableTableManager(_$AppDatabase db, $GoalsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<bool> completed = const Value.absent(),
              }) => GoalsCompanion(
                id: id,
                title: title,
                description: description,
                completed: completed,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String description,
                Value<bool> completed = const Value.absent(),
              }) => GoalsCompanion.insert(
                id: id,
                title: title,
                description: description,
                completed: completed,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GoalsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalsTable,
      Goal,
      $$GoalsTableFilterComposer,
      $$GoalsTableOrderingComposer,
      $$GoalsTableAnnotationComposer,
      $$GoalsTableCreateCompanionBuilder,
      $$GoalsTableUpdateCompanionBuilder,
      (Goal, BaseReferences<_$AppDatabase, $GoalsTable, Goal>),
      Goal,
      PrefetchHooks Function()
    >;
typedef $$CalendarEventsTableCreateCompanionBuilder =
    CalendarEventsCompanion Function({
      Value<int> id,
      required String title,
      required DateTime date,
      required String time,
      Value<String?> place,
    });
typedef $$CalendarEventsTableUpdateCompanionBuilder =
    CalendarEventsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<DateTime> date,
      Value<String> time,
      Value<String?> place,
    });

class $$CalendarEventsTableFilterComposer
    extends Composer<_$AppDatabase, $CalendarEventsTable> {
  $$CalendarEventsTableFilterComposer({
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

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get place => $composableBuilder(
    column: $table.place,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CalendarEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $CalendarEventsTable> {
  $$CalendarEventsTableOrderingComposer({
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

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get place => $composableBuilder(
    column: $table.place,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CalendarEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CalendarEventsTable> {
  $$CalendarEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get place =>
      $composableBuilder(column: $table.place, builder: (column) => column);
}

class $$CalendarEventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CalendarEventsTable,
          CalendarEvent,
          $$CalendarEventsTableFilterComposer,
          $$CalendarEventsTableOrderingComposer,
          $$CalendarEventsTableAnnotationComposer,
          $$CalendarEventsTableCreateCompanionBuilder,
          $$CalendarEventsTableUpdateCompanionBuilder,
          (
            CalendarEvent,
            BaseReferences<_$AppDatabase, $CalendarEventsTable, CalendarEvent>,
          ),
          CalendarEvent,
          PrefetchHooks Function()
        > {
  $$CalendarEventsTableTableManager(
    _$AppDatabase db,
    $CalendarEventsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CalendarEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CalendarEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CalendarEventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> time = const Value.absent(),
                Value<String?> place = const Value.absent(),
              }) => CalendarEventsCompanion(
                id: id,
                title: title,
                date: date,
                time: time,
                place: place,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required DateTime date,
                required String time,
                Value<String?> place = const Value.absent(),
              }) => CalendarEventsCompanion.insert(
                id: id,
                title: title,
                date: date,
                time: time,
                place: place,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CalendarEventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CalendarEventsTable,
      CalendarEvent,
      $$CalendarEventsTableFilterComposer,
      $$CalendarEventsTableOrderingComposer,
      $$CalendarEventsTableAnnotationComposer,
      $$CalendarEventsTableCreateCompanionBuilder,
      $$CalendarEventsTableUpdateCompanionBuilder,
      (
        CalendarEvent,
        BaseReferences<_$AppDatabase, $CalendarEventsTable, CalendarEvent>,
      ),
      CalendarEvent,
      PrefetchHooks Function()
    >;
typedef $$MedsTableCreateCompanionBuilder = MedsCompanion Function({
  Value<int> id,
  required String name,
  required double perPillMg,
  required int supply,
});
typedef $$MedsTableUpdateCompanionBuilder = MedsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<double> perPillMg,
  Value<int> supply,
});

final class $$MedsTableReferences
    extends BaseReferences<_$AppDatabase, $MedsTable, Med> {
  $$MedsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$MedSchedulesTable, List<MedSchedule>>
  _medSchedulesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.medSchedules,
    aliasName: 'meds__id__med_schedules__med_id',
  );

  $$MedSchedulesTableProcessedTableManager get medSchedulesRefs {
    final manager = $$MedSchedulesTableTableManager(
      $_db,
      $_db.medSchedules,
    ).filter((f) => f.medId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_medSchedulesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MedsTableFilterComposer extends Composer<_$AppDatabase, $MedsTable> {
  $$MedsTableFilterComposer({
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

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get perPillMg => $composableBuilder(
    column: $table.perPillMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get supply => $composableBuilder(
    column: $table.supply,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> medSchedulesRefs(
    Expression<bool> Function($$MedSchedulesTableFilterComposer f) f,
  ) {
    final $$MedSchedulesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.medSchedules,
      getReferencedColumn: (t) => t.medId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MedSchedulesTableFilterComposer(
            $db: $db,
            $table: $db.medSchedules,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MedsTableOrderingComposer extends Composer<_$AppDatabase, $MedsTable> {
  $$MedsTableOrderingComposer({
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

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get perPillMg => $composableBuilder(
    column: $table.perPillMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get supply => $composableBuilder(
    column: $table.supply,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MedsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MedsTable> {
  $$MedsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get perPillMg =>
      $composableBuilder(column: $table.perPillMg, builder: (column) => column);

  GeneratedColumn<int> get supply =>
      $composableBuilder(column: $table.supply, builder: (column) => column);

  Expression<T> medSchedulesRefs<T extends Object>(
    Expression<T> Function($$MedSchedulesTableAnnotationComposer a) f,
  ) {
    final $$MedSchedulesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.medSchedules,
      getReferencedColumn: (t) => t.medId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MedSchedulesTableAnnotationComposer(
            $db: $db,
            $table: $db.medSchedules,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MedsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MedsTable,
          Med,
          $$MedsTableFilterComposer,
          $$MedsTableOrderingComposer,
          $$MedsTableAnnotationComposer,
          $$MedsTableCreateCompanionBuilder,
          $$MedsTableUpdateCompanionBuilder,
          (Med, $$MedsTableReferences),
          Med,
          PrefetchHooks Function({bool medSchedulesRefs})
        > {
  $$MedsTableTableManager(_$AppDatabase db, $MedsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MedsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MedsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MedsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> perPillMg = const Value.absent(),
                Value<int> supply = const Value.absent(),
              }) => MedsCompanion(
                id: id,
                name: name,
                perPillMg: perPillMg,
                supply: supply,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required double perPillMg,
                required int supply,
              }) => MedsCompanion.insert(
                id: id,
                name: name,
                perPillMg: perPillMg,
                supply: supply,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$MedsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({medSchedulesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (medSchedulesRefs) db.medSchedules],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (medSchedulesRefs)
                    await $_getPrefetchedData<Med, $MedsTable, MedSchedule>(
                      currentTable: table,
                      referencedTable: $$MedsTableReferences
                          ._medSchedulesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$MedsTableReferences(db, table, p0).medSchedulesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.medId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MedsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MedsTable,
      Med,
      $$MedsTableFilterComposer,
      $$MedsTableOrderingComposer,
      $$MedsTableAnnotationComposer,
      $$MedsTableCreateCompanionBuilder,
      $$MedsTableUpdateCompanionBuilder,
      (Med, $$MedsTableReferences),
      Med,
      PrefetchHooks Function({bool medSchedulesRefs})
    >;
typedef $$MedSchedulesTableCreateCompanionBuilder =
    MedSchedulesCompanion Function({
      Value<int> id,
      required int medId,
      required String time,
      required String dayOfWeek,
    });
typedef $$MedSchedulesTableUpdateCompanionBuilder =
    MedSchedulesCompanion Function({
      Value<int> id,
      Value<int> medId,
      Value<String> time,
      Value<String> dayOfWeek,
    });

final class $$MedSchedulesTableReferences
    extends BaseReferences<_$AppDatabase, $MedSchedulesTable, MedSchedule> {
  $$MedSchedulesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MedsTable _medIdTable(_$AppDatabase db) =>
      db.meds.createAlias('med_schedules__med_id__meds__id');

  $$MedsTableProcessedTableManager get medId {
    final $_column = $_itemColumn<int>('med_id')!;

    final manager = $$MedsTableTableManager(
      $_db,
      $_db.meds,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_medIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$MedSchedulesTableFilterComposer
    extends Composer<_$AppDatabase, $MedSchedulesTable> {
  $$MedSchedulesTableFilterComposer({
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

  ColumnFilters<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnFilters(column),
  );

  $$MedsTableFilterComposer get medId {
    final $$MedsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.medId,
      referencedTable: $db.meds,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MedsTableFilterComposer(
            $db: $db,
            $table: $db.meds,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MedSchedulesTableOrderingComposer
    extends Composer<_$AppDatabase, $MedSchedulesTable> {
  $$MedSchedulesTableOrderingComposer({
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

  ColumnOrderings<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnOrderings(column),
  );

  $$MedsTableOrderingComposer get medId {
    final $$MedsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.medId,
      referencedTable: $db.meds,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MedsTableOrderingComposer(
            $db: $db,
            $table: $db.meds,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MedSchedulesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MedSchedulesTable> {
  $$MedSchedulesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get dayOfWeek =>
      $composableBuilder(column: $table.dayOfWeek, builder: (column) => column);

  $$MedsTableAnnotationComposer get medId {
    final $$MedsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.medId,
      referencedTable: $db.meds,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MedsTableAnnotationComposer(
            $db: $db,
            $table: $db.meds,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MedSchedulesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MedSchedulesTable,
          MedSchedule,
          $$MedSchedulesTableFilterComposer,
          $$MedSchedulesTableOrderingComposer,
          $$MedSchedulesTableAnnotationComposer,
          $$MedSchedulesTableCreateCompanionBuilder,
          $$MedSchedulesTableUpdateCompanionBuilder,
          (MedSchedule, $$MedSchedulesTableReferences),
          MedSchedule,
          PrefetchHooks Function({bool medId})
        > {
  $$MedSchedulesTableTableManager(_$AppDatabase db, $MedSchedulesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MedSchedulesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MedSchedulesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MedSchedulesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> medId = const Value.absent(),
                Value<String> time = const Value.absent(),
                Value<String> dayOfWeek = const Value.absent(),
              }) => MedSchedulesCompanion(
                id: id,
                medId: medId,
                time: time,
                dayOfWeek: dayOfWeek,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int medId,
                required String time,
                required String dayOfWeek,
              }) => MedSchedulesCompanion.insert(
                id: id,
                medId: medId,
                time: time,
                dayOfWeek: dayOfWeek,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MedSchedulesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({medId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (medId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.medId,
                        referencedTable: $$MedSchedulesTableReferences
                            ._medIdTable(db),
                        referencedColumn: $$MedSchedulesTableReferences
                            ._medIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$MedSchedulesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MedSchedulesTable,
      MedSchedule,
      $$MedSchedulesTableFilterComposer,
      $$MedSchedulesTableOrderingComposer,
      $$MedSchedulesTableAnnotationComposer,
      $$MedSchedulesTableCreateCompanionBuilder,
      $$MedSchedulesTableUpdateCompanionBuilder,
      (MedSchedule, $$MedSchedulesTableReferences),
      MedSchedule,
      PrefetchHooks Function({bool medId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$GoalsTableTableManager get goals =>
      $$GoalsTableTableManager(_db, _db.goals);
  $$CalendarEventsTableTableManager get calendarEvents =>
      $$CalendarEventsTableTableManager(_db, _db.calendarEvents);
  $$MedsTableTableManager get meds => $$MedsTableTableManager(_db, _db.meds);
  $$MedSchedulesTableTableManager get medSchedules =>
      $$MedSchedulesTableTableManager(_db, _db.medSchedules);
}
