import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

bool _defaultBuildWhen<S>(S s) => true;

T useCubit<T extends Cubit>([List<dynamic> keys = const <dynamic>[]]) {
  final T cubit = useMemoized(() => GetIt.instance<T>(), keys);
  useEffect(() => cubit.close, [cubit]);
  return cubit;
}

S useCubitBuilder<C extends Cubit, S>(Cubit<S> cubit, {bool Function(S current)? buildWhen}) {
  final buildWhenConditioner = buildWhen ?? _defaultBuildWhen;
  final state = useMemoized(() => cubit.stream.where(buildWhenConditioner), [cubit.state]);
  return useStream(state, initialData: cubit.state).data as S;
}

void useCubitListener<BLOC extends Cubit<S>, S>(BLOC bloc,
    {void Function(BLOC cubit, S current, BuildContext context)? listener, bool Function(S current)? listenWhen}) {
  final context = useContext();
  final listenWhenConditioner = listenWhen ?? _defaultBuildWhen;

  if (listener != null) {
    useMemoized(() {
      final stream = bloc.stream.where(listenWhenConditioner).listen((state) => listener(bloc, state, context));
      return stream.cancel;
    }, [bloc]);
  }
}
