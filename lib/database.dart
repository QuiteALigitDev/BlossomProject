import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Goals extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
}

class CalendarEvents extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get place => text().nullable()();
}

class Meds extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  RealColumn get perPillMg => real()();
  IntColumn get supply => integer()();
}

class MedSchedules extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get medId => integer().references(Meds, #id)();
  TextColumn get time => text()(); 
  TextColumn get dayOfWeek => text()();
}

@DriftDatabase(tables: [Goals, CalendarEvents, Meds, MedSchedules])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Goals
  Stream<List<Goal>> watchAllGoals() => select(goals).watch();

  Future<int> addGoal(String title, String description) {
    return into(goals).insert(
      GoalsCompanion.insert(title: title, description: description),
    );
  }

  Future<void> toggleGoalCompleted(int id, bool value) =>
      (update(goals)..where((g) => g.id.equals(id)))
          .write(GoalsCompanion(completed: Value(value)));

  Future<void> deleteGoal(int id) =>
      (delete(goals)..where((g) => g.id.equals(id))).go();

  //  Medication
  Stream<List<Med>> watchAllMeds() => select(meds).watch();

  Future<int> addMed(String name, double perPillMg, int supply) {
    return into(meds).insert(
      MedsCompanion.insert(
        name: name,
        perPillMg: perPillMg,
        supply: supply,
      ),
    );
  }

  Future<void> deleteMed(int id) =>
      (delete(meds)..where((m) => m.id.equals(id))).go();

  Stream<List<MedSchedule>> watchSchedulesForMed(int medId) =>
      (select(medSchedules)..where((s) => s.medId.equals(medId))).watch();

  Future<int> addMedSchedule(int medId, String time, String dayOfWeek) {
    return into(medSchedules).insert(
      MedSchedulesCompanion.insert(
        medId: medId,
        time: time,
        dayOfWeek: dayOfWeek,
      ),
    );
  }

  Future<void> deleteMedSchedule(int id) =>
      (delete(medSchedules)..where((s) => s.id.equals(id))).go();

  // Calendar
  Stream<List<CalendarEvent>> watchAllEvents() =>
      select(calendarEvents).watch();

  Future<int> addEvent(String title, DateTime date, String time, {String? place}) {
    return into(calendarEvents).insert(
      CalendarEventsCompanion.insert(
        title: title,
        date: date,
        time: time,
        place: Value(place),
      ),
    );
  }

  Future<void> deleteEvent(int id) =>
      (delete(calendarEvents)..where((e) => e.id.equals(id))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}