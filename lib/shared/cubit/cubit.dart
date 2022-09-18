

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectphase201/shared/cubit/cubit_state.dart';

import '../../models/weather_model.dart';
import '../network/remote/dio_helper.dart';
import '../network/remote/end_points.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  CurrentWeatherModel? currentWeatherModel;
  static AppCubit get(context) => BlocProvider.of(context);
  void getCurrentWeather() async {
    emit(GetCurrentWeatherLoading());

    Response currentWeatherResponse =
    await DioHelper.getData(url: forecast, query: {
      'key': '3abc4ac71f114deb86380405201809',
      'q': 'Cairo',
      'days': 7,
      'aqi': 'no',
      'alerts': 'no',
    });

    emit(GetCurrentWeatherSuccess());

    debugPrint('---------------------');
    currentWeatherModel = CurrentWeatherModel.fromJson(
      currentWeatherResponse.data,
    );

    debugPrint(currentWeatherModel!.location.name);
    debugPrint(currentWeatherModel!.current.tempC.toString());
    debugPrint(currentWeatherModel!.current.condition.text);
    debugPrint(currentWeatherModel!.forecast.forecastday[1].toString());
  }
}