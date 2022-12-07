///We will be creating a new weather.dart file to expose a DOMAIN-SPECIFIC weather model. This model will contain ONLY DATA RELEVANT to our business cases -- in other words it should be completely DECOUPLED from the API client and raw data format.
///(Bu model YALNIZCA business casele ilgili verileri içermelidir - yani API istemcisinden ve ham veri biçiminden TAMAMEN AYRILMALIDIR.)

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

///2. Weather Model
/// In the repository layer, our weather model contained only the abstracted model BASED ON our BUSINESS CASE.
@JsonSerializable()
class Weather extends Equatable {
  final String location;
  final double temperature;
  final WeatherCondition condition;

  const Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  List<Object> get props => [location, temperature, condition];
}
