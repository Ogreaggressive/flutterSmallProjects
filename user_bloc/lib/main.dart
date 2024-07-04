import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_bloc/presentation/bloc/user/user_bloc.dart';
import 'package:user_bloc/presentation/bloc/user/user_page.dart';
import 'package:user_bloc/repository/repository.dart';

import 'data/data_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
        BlocProvider(
          // create: (context) => UserBloc(userRepository: UserRepository(dataProvider: DataProvider())),
          create: (context) => UserBloc(userRepository: UserRepository(dataProvider: DataProvider())),
          child:
          const UserPage(),
        )
    );
  }
}


