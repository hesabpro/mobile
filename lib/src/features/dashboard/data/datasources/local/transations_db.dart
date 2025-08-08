import 'package:hesab/imports_bindings.dart';
import 'package:sqflite/sqflite.dart';

class TransationsDB {
  factory TransationsDB() => _instance;
  TransationsDB._();
  static final _instance = TransationsDB._();

  late final Database _db;

  static const String tableName = 'transations';
  static const String columnId = '_id';
  static const String columnName = 'name';
  static const String columnAmount = 'amount';
  static const String columnDate = 'date';
  static const String columnCategoryId = 'category_id';
  static const String columnType = 'type';
  static const String path = 'transations.db';

  Future<void> open() async {
    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
create table $tableName (
  $columnId integer primary key autoincrement, 
  $columnName text not null,
  $columnAmount real not null,
  $columnDate text not null,
  $columnType text not null,
  $columnCategoryId text)
''');
      },
    );
  }

  Future<List<TransationModel>> fetch({
    DateTime? from,
    DateTime? to,
    int? categoryId,
    String? name,
    double? minAmount,
    double? maxAmount,
    TransationType? type,
    int limit = 10,
    int offset = 0,
    String orderBy = '$columnDate ASC',
  }) async {
    final whereClauses = <String>[];
    final whereArgs = <dynamic>[];
    if (from != null) {
      whereClauses.add('$columnDate >= ?');
      whereArgs.add(from.toIso8601String());
    }
    if (to != null) {
      whereClauses.add('$columnDate <= ?');
      whereArgs.add(to.toIso8601String());
    }
    if (categoryId != null) {
      whereClauses.add('$columnCategoryId = ?');
      whereArgs.add(categoryId.toString());
    }
    if (name != null && name.isNotEmpty) {
      whereClauses.add('$columnName LIKE ?');
      whereArgs.add('%$name%');
    }
    if (minAmount != null) {
      whereClauses.add('$columnAmount >= ?');
      whereArgs.add(minAmount);
    }
    if (maxAmount != null) {
      whereClauses.add('$columnAmount <= ?');
      whereArgs.add(maxAmount);
    }
    if (type != null) {
      whereClauses.add('$columnType = ?');
      whereArgs.add(type.name);
    }
    final maps = await _db.query(
      tableName,
      columns: [columnId, columnName, columnAmount, columnDate, columnCategoryId, columnType],
      where: whereClauses.isNotEmpty ? whereClauses.join(' AND ') : null,
      whereArgs: whereClauses.isNotEmpty ? whereArgs : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
    );
    return maps.map((map) => TransationModel.fromJson(map as Map<String, dynamic>)).toList();
  }

  Future<TransationModel> insert(TransationModel transation) async {
    final id = await _db.insert(tableName, transation.toDB);
    return transation.copyWith(id: id);
  }

  Future<int> update(TransationModel transation) async {
    return _db.update(tableName, transation.toDB, where: '$columnId = ?', whereArgs: [transation.id]);
  }

  Future<int> delete(int id) async {
    return _db.delete(tableName, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<void> close() async => _db.close();
}
