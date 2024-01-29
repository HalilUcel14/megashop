import 'package:feauture/feauture.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class IHiveOperation<T extends HiveModelMixin> {
  final String boxName;

  late final Box<T> box;

  IHiveOperation(this.boxName);

  Future<void> init();

  Future<void> close();

  Future<void> insert(T data);

  Future<void> update(T data);

  Future<void> delete(String key);

  Future<void> deleteAll(List<String> keys);

  List<T> getAll();

  T? getById(String key);
}
