import 'package:flutter/foundation.dart';

import '../entities/event.dart';


class EventProvider with ChangeNotifier {
  List<ExamEvent> _events = [];

  List<ExamEvent> get events => _events;

  void addEvent(ExamEvent event) {
    _events.add(event);
    notifyListeners();
  }

  List<ExamEvent> getEventsForDay(DateTime day) {
    return _events.where((event) =>
    event.dateTime.year == day.year &&
        event.dateTime.month == day.month &&
        event.dateTime.day == day.day).toList();
  }
}