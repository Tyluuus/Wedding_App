import 'package:rxdart/rxdart.dart';

class ErrorsService {
  ErrorsService();

  final BehaviorSubject<bool> _connectionErrorsSubject = BehaviorSubject();

  Stream<bool> get connectionErrorsStream => _connectionErrorsSubject.stream;

  Future<void> activateConnectionError() async {
    if (!_connectionErrorsSubject.hasValue) {
      _connectionErrorsSubject.add(true);
      return;
    }
    if (_connectionErrorsSubject.hasValue && !_connectionErrorsSubject.value) {
      _connectionErrorsSubject.add(true);
    }
  }

  Future<void> deactivateConnectionError() async {
    if (!_connectionErrorsSubject.hasValue) {
      _connectionErrorsSubject.add(false);
      return;
    }
    if (_connectionErrorsSubject.hasValue && _connectionErrorsSubject.value) {
      _connectionErrorsSubject.add(false);
    }
  }
}
