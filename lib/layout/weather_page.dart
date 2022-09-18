import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectphase201/shared/cubit/cubit.dart';
import 'package:projectphase201/shared/cubit/cubit_state.dart';

import 'weather_body.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            drawer: Padding(
              padding: EdgeInsets.only(),
            ),
            body: const WeatherWidget(),
          );
        },
      ),
    );
  }
}