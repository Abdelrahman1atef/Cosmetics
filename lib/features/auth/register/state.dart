part of 'cubit.dart';

class RegisterState {
  final bool isInitial;
  final bool isLoading;
  final RegisterResponseModel? registerResponseModel;
  final String? errorMessage;

  RegisterState({
    required this.isLoading,
    this.errorMessage,
    required this.isInitial,
    this.registerResponseModel,
  });
}