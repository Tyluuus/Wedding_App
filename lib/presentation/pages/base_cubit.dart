import 'package:bloc/bloc.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  BaseCubit(super.initialState);

  Future<void> delay(int seconds) async => await Future.delayed(Duration(seconds: seconds));
}
