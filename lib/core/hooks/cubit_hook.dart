import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

typedef BlocBuilderCondition<S> = bool Function(S current);
typedef BlocListener<BLOC extends Cubit<S>, S> = void Function(BLOC cubit, S current, BuildContext context);
typedef BlocListenerSimple<BLOC extends Cubit<S>, S> = void Function(BLOC cubit, S current);

bool _defaultBuildWhen<S>(S s) => true;

T useCubit<T extends Cubit>([List<dynamic> keys = const <dynamic>[]]) {
  final T cubit = useMemoized(() => GetIt.instance<T>(), keys);
  useEffect(() => cubit.close, [cubit]);
  return cubit;
}

T useCubitWithParams<T extends Cubit>(param1, param2, [List<dynamic> keys = const <dynamic>[]]) {
  final T cubit = useMemoized(() => GetIt.instance.get(param1: param1, param2: param2), keys);
  useEffect(() => cubit.close, [cubit]);
  return cubit;
}

S useCubitBuilder<C extends Cubit, S>(Cubit<S> cubit, {BlocBuilderCondition<S>? buildWhen}) {
  final buildWhenConditioner = buildWhen ?? _defaultBuildWhen;
  final state = useMemoized(() => cubit.stream.where(buildWhenConditioner), [cubit.state]);
  return useStream(state, initialData: cubit.state).data as S;
}

void useCubitListener<BLOC extends Cubit<S>, S>(BLOC bloc, {BlocListener<BLOC, S>? listener, BlocBuilderCondition<S>? listenWhen}) {
  final context = useContext();
  final listenWhenConditioner = listenWhen ?? _defaultBuildWhen;

  if (listener != null) {
    useMemoized(() {
      final stream = bloc.stream.where(listenWhenConditioner).listen((state) => listener(bloc, state, context));
      return stream.cancel;
    }, [bloc]);
  }
}

void useCubitListenerSimple<BLOC extends Cubit<S>, S>(BLOC bloc, {BlocListenerSimple<BLOC, S>? listener, BlocBuilderCondition<S>? listenWhen}) {
  final listenWhenConditioner = listenWhen ?? _defaultBuildWhen;

  if (listener != null) {
    useMemoized(() {
      final stream = bloc.stream.where(listenWhenConditioner).listen((state) => listener(bloc, state));
      return stream.cancel;
    }, [bloc]);
  }
}
