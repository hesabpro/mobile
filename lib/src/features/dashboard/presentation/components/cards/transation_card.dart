import 'package:hesab/imports_bindings.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TransationCard extends StatelessWidget {
  const TransationCard({required this.transation, super.key});

  final TransationEntity transation;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(transation.id),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.3,
        children: [
          SlidableAction(
            onPressed: (context) {
              CreateTransationDialog(transation: transation).show(context);
            },
            padding: EdgeInsets.zero,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.edit,
          ),
          SlidableAction(
            onPressed: (context) {
              context.read<TransationsCubit>().deleteTransation(transation.id.toString());
            },
            padding: EdgeInsets.zero,
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            icon: Icons.delete,
          ),
        ],
      ),
      child: ListTile(
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
      ),
    );
  }
}
