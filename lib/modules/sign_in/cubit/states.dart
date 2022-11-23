abstract class SignInStates {}

class SignInLoginInitialState extends SignInStates{}

class SignInLoadingState extends  SignInStates{}

class SignInSuccessState extends SignInStates{}

class SignInErrorState extends SignInStates{
  final String error;
  SignInErrorState(this.error);

}

class SignInChangePasswordVisibilityState extends SignInStates{}