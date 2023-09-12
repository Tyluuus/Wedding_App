import 'dart:async';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wedding_app/presentation/pages/base_cubit.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  bool isCounterActive = false;

  HomeCubit() : super(const HomeState.idle());

  Future<void> init() async {
    emit(const HomeState.loaded());
  }

  Future<void> countDown(ValueNotifier<Duration> counter) async {
    Timer timer;
    isCounterActive = true;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (!isCounterActive) {
          timer.cancel();
          return;
        }
        if (DateTime.now().isAfter(DateTime(2025, 8, 23))) {
          timer.cancel();
        } else {
          // if (!isCounterActive) return;
          final diff = DateTime(2025, 8, 23, 17).difference(DateTime.now());
          counter.value = diff;
        }
      },
    );
  }

  void createCalendarEvent() {
    final Event event =
        Event(title: "Wesele Julki i Piotrka", description: "", location: "", startDate: DateTime(2023, 8, 23, 17, 0), endDate: DateTime(2023, 8, 24, 5, 0));
    Add2Calendar.addEvent2Cal(event);
  }

  Future<void> stopCounter() async {
    isCounterActive = false;
  }
}
