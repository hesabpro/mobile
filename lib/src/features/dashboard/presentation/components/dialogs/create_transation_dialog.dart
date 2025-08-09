import 'package:hesab/imports_bindings.dart';

class CreateTransationDialog extends StatefulWidget {
  const CreateTransationDialog({
    super.key,
    this.transation,
  });

  final TransationEntity? transation;

  Future<void> show(
    BuildContext context,
  ) async {
    await showDialog<Widget>(
      context: context,
      barrierColor: context.color.withAlpha(64),
      builder: (context) => this,
    );
  }

  @override
  State<CreateTransationDialog> createState() => _CreateTransationDialogState();
}

class _CreateTransationDialogState extends State<CreateTransationDialog> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _amountCtrl;
  late final bool _isUpdate;
  DateTime? _selectedDate;
  late TransationType _selectedType;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.transation?.name);
    _amountCtrl = TextEditingController(text: widget.transation?.amount.toString());
    _selectedDate = widget.transation?.date ?? context.read<TransationsCubit>().state.selectedDate;
    _selectedType = widget.transation?.type ?? TransationType.expense;
    _isUpdate = widget.transation != null;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _amountCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TransationsCubit, TransationsState>(
          listenWhen: (previous, current) => previous.addTransation != current.addTransation,
          listener: (context, state) {
            state.addTransation?.fold(
              () {},
              (t) => t.fold(
                (l) => showSnackBar(context, l.msg, type: SnackBarType.error),
                (r) {
                  showSnackBar(context, 'Transation created successfully');
                  Navigator.of(context).pop();
                },
              ),
            );
          },
        ),
        BlocListener<TransationsCubit, TransationsState>(
          listenWhen: (previous, current) => previous.updateTransation != current.updateTransation,
          listener: (context, state) {
            state.updateTransation?.fold(
              () {},
              (t) => t.fold(
                (l) => showSnackBar(context, l.msg, type: SnackBarType.error),
                (r) {
                  showSnackBar(context, 'Transation updated successfully');
                  Navigator.of(context).pop();
                },
              ),
            );
          },
        ),
      ],
      child: CreateDialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _isUpdate ? 'Update Transation' : 'Create Transation',
              style: AppStyles.text20Px.copyWith(
                letterSpacing: -.5,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: _nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Enter name',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _amountCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
                hintText: 'Enter amount',
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<TransationType>(
              value: _selectedType,
              decoration: const InputDecoration(
                labelText: 'Type',
                hintText: 'Select type',
              ),
              items: TransationType.values
                  .map(
                    (type) => DropdownMenuItem<TransationType>(
                      value: type,
                      child: Row(
                        children: [
                          Icon(type.icon, color: type.color),
                          const SizedBox(width: 8),
                          Text(type.label),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (TransationType? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedType = newValue;
                  });
                }
              },
            ),
            const SizedBox(height: 16),
            // DropdownButtonFormField<CategoryEntity>(
            //   value: _selectedCategory,
            //   decoration: const InputDecoration(
            //     labelText: 'Category',
            //     hintText: 'Select category',
            //   ),
            //   items: context
            //       .read<TransationsCubit>()
            //       .state
            //       .categories
            //       .values
            //       .map(
            //         (category) => DropdownMenuItem<CategoryEntity>(
            //           value: category,
            //           child: Text(category.name),
            //         ),
            //       )
            //       .toList(),
            //   onChanged: (CategoryEntity? newValue) {
            //     setState(() {
            //       _selectedCategory = newValue;
            //     });
            //   },
            // ),
            // const SizedBox(height: 16),
            InkWell(
              onTap: () async {
                final now = DateTime.now();
                final picked = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate ?? now,
                  firstDate: DateTime(now.year - 5),
                  lastDate: DateTime(now.year + 5),
                );
                if (picked != null) {
                  setState(() {
                    _selectedDate = picked;
                  });
                }
              },
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Date',
                  hintText: 'Select date',
                ),
                child: Text(
                  _selectedDate != null ? DateFormat('dd MMMM yyyy').format(_selectedDate!) : 'No date selected',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: _selectedDate != null ? null : Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final name = _nameCtrl.text;
                  final amount = _amountCtrl.text;
                  if (name.isEmpty || amount.isEmpty || _selectedDate == null) {
                    FocusScope.of(context).unfocus();
                    showSnackBar(
                      context,
                      [
                        if (name.isEmpty) 'Name is required.',
                        if (amount.isEmpty) 'Amount is required.',
                        if (_selectedDate == null) 'Date is required.',
                      ].join(' '),
                      type: SnackBarType.error,
                    );
                    return;
                  }
                  if (_isUpdate) {
                    context.read<TransationsCubit>().updateTransation(
                          widget.transation!.id.toString(),
                          TransationEntity(
                            id: widget.transation!.id,
                            amount: double.parse(amount),
                            date: _selectedDate!,
                            name: name,
                            type: _selectedType,
                          ),
                        );
                  } else {
                    context.read<TransationsCubit>().addTransation(
                          TransationEntity(
                            id: -1,
                            amount: double.parse(amount),
                            date: _selectedDate!,
                            name: name,
                            type: _selectedType,
                          ),
                        );
                  }
                },
                child: Text(
                  switch (_isUpdate) {
                    true => 'Update',
                    false => 'Create',
                  },
                  style: AppStyles.text16Px.copyWith(
                    color: AppColors.light,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ).pad(24),
      ),
    ).pad(16);
  }
}
