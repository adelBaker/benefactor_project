import 'package:benefactor_project/modules/sign_in/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInStates>
{
  SignInCubit(): super(SignInLoginInitialState());

  static SignInCubit get(context)=>BlocProvider.of(context);

  var db=FirebaseFirestore.instance;

  IconData suffix=Icons.visibility_outlined;

  bool isPassword=true;

  void changePasswordVisibility()
  {
    isPassword=!isPassword;

    suffix=isPassword? Icons.visibility_outlined :Icons.visibility_off_outlined;

    emit(SignInChangePasswordVisibilityState());
  }


  void signIn(emailController,passwordController)async
  {
    emit(SignInLoadingState());
    var auth=FirebaseAuth.instance;
    await auth.signInWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    ).then((value){
      emit(SignInSuccessState());
    }).catchError((error){
      emit(SignInErrorState(error.toString()));
    });
  }
}