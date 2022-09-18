class CurrentWeatherModel {
  final WeatherLocation location;
  final WeatherCurrent current;
  final Forecast forecast;

  CurrentWeatherModel({
    required this.location,
    required this.current,
    required this.forecast
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherModel(
      location: WeatherLocation.fromJson(json['location'] as Map<String, dynamic>),
      current: WeatherCurrent.fromJson(json['current'] as Map<String, dynamic>),
      forecast: Forecast.fromjson(json['forecast']as Map<String, dynamic> ),
    );
  }
}

class WeatherLocation {
  final String name;
  final String country;
  final double lat;
  final double lon;

  WeatherLocation({
    required this.name,
    required this.country,
    required this.lat,
    required this.lon,
  });

  factory WeatherLocation.fromJson(Map<String, dynamic> json) {
    return WeatherLocation(
      name: json['name'] as String,
      country: json['country'] as String,
      lat: json['lat'] as double,
      lon: json['lon'] as double,
    );
  }
}

class WeatherCurrent {
  final double tempC;
  final double tempF;
  final Condition condition;

  WeatherCurrent({
    required this.tempC,
    required this.tempF,
    required this.condition,
  });

  factory WeatherCurrent.fromJson(Map<String, dynamic> json) {
    return WeatherCurrent(
      tempC: json['temp_c'] as double,
      tempF: json['temp_f'] as double,
      condition:Condition.fromjson(json['condition']as Map<String,dynamic>) ,
    );
  }
}
class Condition{
  final String text;
  final String icon;
  Condition({required this.icon,required this.text});
  factory Condition.fromjson(Map<String,dynamic>json){
    return Condition(icon: json['icon']as String,
        text: json['text']as String);
  }
}
class Forecast{
  final List forecastday;
  Forecast({required this.forecastday});
  factory Forecast.fromjson(Map<String,dynamic>json){
    return Forecast(
    forecastday: json['forecastday']as List,);
  }
}