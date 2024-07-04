import 'package:flutter/material.dart';

class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String success;

  LoginSuccess({required this.success});
  Navigator.of(_context).pushReplacement(
  MaterialPageRoute(
  builder: (context) => PopularMovies(),
  ),
  );
}

class LoginError extends LoginState {
  final String error;

  LoginError({required this.error});
}

