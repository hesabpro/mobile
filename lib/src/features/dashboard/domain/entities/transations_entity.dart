import 'package:hesab/imports_bindings.dart';

class TransationsEntity {
  const TransationsEntity({
    required this.totalDataCount,
    required this.transations,
    required this.page,
    required this.limit,
  });

  final int totalDataCount;
  final List<TransationEntity> transations;
  final int page;
  final int limit;
}

class TransationEntity {
  const TransationEntity({
    required this.id,
    required this.amount,
    required this.date,
    required this.name,
    required this.type,
    this.categoryId,
  });

  final int id;
  final double amount;
  final DateTime date;
  final String name;
  final TransationType type;
  final String? categoryId;
}

enum TransationType {
  income,
  expense;

  String get label => this == income ? 'Income' : 'Expense';

  IconData get icon => this == income ? Icons.trending_up : Icons.trending_down;

  Color get color => this == income ? Colors.green : Colors.red;
}
