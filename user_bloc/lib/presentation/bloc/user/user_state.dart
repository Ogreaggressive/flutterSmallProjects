

import '../../../domain/user.dart';

class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final User user;
  UserLoaded(this.user);
}

class UserError extends UserState{
  final String errorMessage;
  UserError(this.errorMessage);
}