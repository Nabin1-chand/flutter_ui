import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  String _selectedDate = '';
  String _dateCount = '';

  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePicker demo'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text('Selected date: $_selectedDate'),
            // Text('Selected date count: $_dateCount'),
            // Text('Selected range: $_range'),
            // Text('Selected ranges count: $_rangeCount'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color.fromARGB(31, 151, 142, 142),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('5:30 '),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(' date : $_selectedDate'),
                          Text('range : $_range'),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.wind_power),
                              SizedBox(
                                width: 10,
                              ),
                              Text('rain'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.sunny),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Sunny')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            SfDateRangePicker(
              backgroundColor: Colors.black12,
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 5))),
            ),
          ]),
    );
  }
}
