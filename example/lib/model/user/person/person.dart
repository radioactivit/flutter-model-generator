import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:model_generator_example/model/user/person/gender.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  @JsonKey(name: 'firstName', required: true)
  final String firstName;
  @JsonKey(name: 'gender', required: true)
  final Gender gender;

  Person({
    @required this.firstName,
    @required this.gender,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
