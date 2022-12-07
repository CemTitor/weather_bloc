import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

///1. Weather Model
///In the API client, our weather model contained all the info RETURNED BY the API.
@JsonSerializable()
class Weather {
  final double temperature;
  @JsonKey(name: 'weathercode')
  final double weatherCode;

  const Weather({required this.temperature, required this.weatherCode});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
