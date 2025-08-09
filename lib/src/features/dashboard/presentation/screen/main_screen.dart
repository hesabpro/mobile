import 'package:hesab/imports_bindings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TransationsCubit>().fetchTransations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: BlocBuilder<TransationsCubit, TransationsState>(
        buildWhen: (previous, current) => previous.transations != current.transations,
        builder: (context, state) {
          return SafeArea(
            child: state.transations.fold(
              () => const Center(child: CircularProgressIndicator()),
              (t) => t.fold(
                (l) => Center(child: Text(l.msg)),
                (r) {
                  if (r.isEmpty) {
                    return const Center(child: Text('No transations found'));
                  }
                  return RefreshIndicator.adaptive(
                    onRefresh: context.read<TransationsCubit>().fetchTransations,
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Income',
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '+${state.totalIncome.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 32,
                                  color: Theme.of(context).dividerColor.withAlpha(60),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Expense',
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '-${state.totalExpense.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 32,
                                  color: Theme.of(context).dividerColor.withAlpha(60),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Balance',
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      state.totalBalance.toStringAsFixed(2),
                                      style: TextStyle(
                                        color: state.totalBalance >= 0 ? Colors.green : Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SliverList.separated(
                          itemCount: r.length,
                          separatorBuilder: (context, index) => SizedBox(
                            height: 1,
                            child: Divider(
                              color: Theme.of(context).colorScheme.onSurface.withAlpha(24),
                              height: 1,
                            ),
                          ),
                          itemBuilder: (context, index) {
                            return TransationCard(transation: r[index]);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BlurredCard(
        borderRadius: BorderRadius.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<TransationsCubit, TransationsState>(
              buildWhen: (previous, current) => previous.selectedDate != current.selectedDate,
              builder: (context, state) {
                return InkWell(
                  onTap: () async {
                    final now = DateTime.now();
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: state.selectedDate,
                      firstDate: DateTime(now.year - 5),
                      lastDate: DateTime(now.year + 5),
                    );
                    if (picked != null && context.mounted) {
                      context.read<TransationsCubit>().setSelectedDate(picked);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
                    child: Text(
                      DateFormat.yMMMMEEEEd().format(state.selectedDate.toLocal()),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                );
              },
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     padding: const EdgeInsets.all(12),
            //     decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            //     child: Text(
            //       'Categories',
            //       style: TextStyle(
            //         color: Theme.of(context).colorScheme.onPrimary,
            //         fontSize: 14,
            //         fontWeight: FontWeight.w600,
            //         letterSpacing: -0.5,
            //       ),
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () => const CreateTransationDialog().show(context),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 24,
                ),
              ),
            ),
          ],
        ).pad(16).pOnly(bottom: MediaQuery.of(context).viewPadding.bottom),
      ),
    );
  }
}
