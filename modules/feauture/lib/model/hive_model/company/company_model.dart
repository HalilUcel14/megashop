import 'package:equatable/equatable.dart';
import 'package:feauture/feauture.dart';

final class CompanyModel extends Equatable
    with HiveModelMixin
    implements BaseModel<CompanyModel> {
  @override
  CompanyModel fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement key
  String get key => throw UnimplementedError();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
