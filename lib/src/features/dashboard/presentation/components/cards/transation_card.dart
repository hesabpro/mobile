import 'package:hesab/imports_bindings.dart';

class TransationCard extends StatelessWidget {
  const TransationCard({required this.transation, super.key});

  final TransationEntity transation;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      tileColor: transation.type.color.withAlpha(25),
      leading: Icon(
        transation.type.icon,
        size: 16,
        color: transation.type.color,
      ),
      title: Text(transation.name),
      trailing: Text(
        transation.amount.toStringAsFixed(2),
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.primary,
          fontSize: 14,
        ),
      ),
    );
  }
}
