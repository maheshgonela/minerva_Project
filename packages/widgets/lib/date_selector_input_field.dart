part of widgets;

class DateSelectorInputField extends StatefulWidget {
  final String title;
  final Function(DateTime) onSelected;
  final DateFormat? dateFormat;
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? initialSelectedDate;

  DateSelectorInputField({
    Key? key,
    required this.title,
    required this.onSelected,
    this.dateFormat,
    this.startDate,
    this.endDate,
    this.initialSelectedDate,
  }) : super(key: key);

  @override
  _DateSelectorInputFieldState createState() => _DateSelectorInputFieldState();
}

class _DateSelectorInputFieldState extends State<DateSelectorInputField> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialSelectedDate;
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = widget.dateFormat ?? DateFormat.yMEd();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title.toUpperCase(),
          style: TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 12.0, right: 12.0),
            trailing: InkWell(
              onTap: () {
                _showDatePicker();
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.calendar_today),
              ),
            ),
            title: _selectedDate == null
                ? null
                : Text(
                    dateFormat.format(_selectedDate!),
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        )
      ],
    );
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _selectedDate == null ? DateTime.now() : _selectedDate!,
      firstDate: widget.startDate == null ? DateTime.now() : widget.startDate!,
      lastDate: widget.endDate == null
          ? DateTime.now().add(Duration(
              days: 365,
            ))
          : widget.endDate!,
    ).then((value) {
      if (value != null) {
        widget.onSelected(value);
        this._selectedDate = value;
        setState(() {});
      }
    });
  }
}
