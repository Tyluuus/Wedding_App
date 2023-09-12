import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_page_cubit.freezed.dart';
part 'base_page_state.dart';

class BasePageCubit extends Cubit<BasePageState> {

  BasePageCubit(
      ) : super(const BasePageState.idle());

}
