import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

final DateTime _currentDate = DateTime.now();
final DateTime _firstDay =
    DateTime(_currentDate.year, _currentDate.month - 3, _currentDate.day);
final DateTime _lastDay =
    DateTime(_currentDate.year, _currentDate.month + 3, _currentDate.day);

final AppTheme _appTheme = AppTheme();

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _currentDate,
      firstDay: _firstDay,
      lastDay: _lastDay,
      headerStyle: header(),
      calendarStyle: CalendarStyle(
        todayDecoration:
            BoxDecoration(color: Colors.blue[600], shape: BoxShape.circle),
        todayTextStyle: _appTheme.textoCalendarioFimDeSemana,
        weekendDecoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        weekendTextStyle: _appTheme.textoCalendarioFimDeSemana,
        outsideDecoration: BoxDecoration(
          color: _appTheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        outsideTextStyle: _appTheme.textoCalendarioFimDeSemana,
        defaultTextStyle: _appTheme.textoCalendario,
        defaultDecoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  HeaderStyle header() {
    return HeaderStyle(
      headerMargin: const EdgeInsets.all(15),
      titleCentered: true,
      titleTextStyle: _appTheme.textoTituloCalendario,
      formatButtonVisible: false,
      leftChevronIcon: const Icon(
        Icons.arrow_left,
        color: Colors.white,
        size: 36,
      ),
      rightChevronIcon: const Icon(
        Icons.arrow_right,
        color: Colors.white,
        size: 36,
      ),
    );
  }
}
