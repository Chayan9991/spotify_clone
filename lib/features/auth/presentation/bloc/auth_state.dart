part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState{}

final class AuthSuccess extends AuthState{
  final UserEntity user ;
  AuthSuccess(this.user);
}

final class AuthFailure extends AuthState{
  final Failure failure ;
  AuthFailure(this.failure);
}

