// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 1;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      email: fields[1] as String,
      password: fields[2] as String,
      role: fields[3] as String,
      isActive: fields[4] as bool,
      lastEntry: fields[5] as DateTime,
      phoneNumber: fields[6] as String,
      emailValid: fields[7] as bool,
      phoneValid: fields[8] as bool,
      activeCompanyKey: (fields[9] as List).cast<String>(),
      key: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.isActive)
      ..writeByte(5)
      ..write(obj.lastEntry)
      ..writeByte(6)
      ..write(obj.phoneNumber)
      ..writeByte(7)
      ..write(obj.emailValid)
      ..writeByte(8)
      ..write(obj.phoneValid)
      ..writeByte(9)
      ..write(obj.activeCompanyKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
