import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'local_storage_contract.repo.dart';

/// Created by marcellocamara@id.uff.br on 04/06/2021.

class LocalStorageRepository implements ILocalStorage {
  final FlutterSecureStorage _instance;

  LocalStorageRepository([this._instance = const FlutterSecureStorage()]);

  @override
  Future<String> readValue(String key) async {
    return await _instance.read(key: key);
  }

  @override
  Future<void> saveValue(String key, String value) async {
    return await _instance.write(key: key, value: value);
  }
}
