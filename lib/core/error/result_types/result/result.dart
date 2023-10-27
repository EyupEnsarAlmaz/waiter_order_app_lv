// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../custom_error.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.failure(CustomFailure failure) = Failure;
}

class AModel {
  final String name;
  AModel({
    required this.name,
  });

  AModel copyWith({
    String? name,
  }) {
    return AModel(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AModel.fromMap(Map<String, dynamic> map) {
    return AModel(
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AModel.fromJson(String source) => AModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AModel(name: $name)';

  @override
  bool operator ==(covariant AModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}


