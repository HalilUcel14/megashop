import 'package:feauture/feauture.dart';
import 'package:hive_flutter/hive_flutter.dart';

final class HiveUserOperation extends IHiveOperation<UserModel> {
  HiveUserOperation(super.boxName);

  @override
  Future<void> init() async {
    if (Hive.isBoxOpen(boxName)) {}
    await Hive.openBox<UserModel>(boxName);
    box = Hive.box<UserModel>(boxName);
  }

  @override
  List<UserModel> getAll() {
    return box.values.toList();
  }

  @override
  UserModel? getById(String key) {
    return box.get(key);
  }

  @override
  Future<void> insert(UserModel data) async {
    await box.put(data.key, data);
  }

  @override
  Future<void> update(UserModel data) async {
    await box.put(data.key, data);
  }

  @override
  Future<void> delete(String key) async {
    await box.delete(key);
  }

  @override
  Future<void> deleteAll(List<String> keys) async {
    await box.deleteAll(keys);
  }

  @override
  Future<void> close() async {
    await box.close();
  }
}
