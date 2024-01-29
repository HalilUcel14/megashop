import 'package:feauture/feauture.dart';
import 'package:hive_flutter/hive_flutter.dart';

final class HiveManager implements IHive {
  final String _subDirectory = 'HiveDatabase';

  @override
  Future<void> open() async {
    await _open();
    _initialOperation();
  }

  @override
  Future<void> close() async {
    await Hive.deleteFromDisk();
    await FileOperation.instance.removeSubDirectory(_subDirectory);
  }

  Future<void> _open() async {
    final subPath =
        await FileOperation.instance.createSubDirectory(_subDirectory);
    await Hive.initFlutter(subPath);
  }

  void _initialOperation() {
    Hive.registerAdapter(UserModelAdapter());
  }
}
