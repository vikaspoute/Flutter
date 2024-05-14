import 'package:get_storage/get_storage.dart';

class LocalStorage {
  static final LocalStorage _instance = LocalStorage.internal();

  factory LocalStorage() => _instance;

  LocalStorage.internal();

  final _storage = GetStorage();

  //generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //generic method to read data
  Future<T?> readData<T>(String key) async {
    return _storage.read<T>(key);
  }

  //generic method to delete data
  Future<void> deleteData(String key) async {
    await _storage.remove(key);
  }

  //generic method to clear data
  Future<void> clearData() async {
    await _storage.erase();
  }
}
