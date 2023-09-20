import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageRepository {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  static const _confirmationKey = 'confirmationKey';

  Future<String?> isConfirmed() async => await secureStorage.read(key: _confirmationKey);

  Future<void> setAsConfirmed() async {
    await secureStorage.write(key: _confirmationKey, value: "true");
  }

  Future<void> deleteConfirmed() async => await secureStorage.delete(key: _confirmationKey);
}
