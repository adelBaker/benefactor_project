

import 'package:benefactor_project/modules/sign_up/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates>
{

  SignUpCubit():super(SignUpInitialState());

  static SignUpCubit get(context)=>BlocProvider.of(context);

  IconData suffix=Icons.visibility_outlined;
  bool isPassword=true;

  void changePasswordVisibility()
  {
    isPassword=!isPassword;
    suffix=isPassword?Icons.visibility_outlined:Icons.visibility_off_outlined;
    emit(SignUpChangePasswordVisibilityState());
  }

  void signUp(nameController,phoneController,emailController,passwordController)async
  {
    emit(SignUpLoadingState());
    var auth=FirebaseAuth.instance;
    await auth.createUserWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    ).then((value)async{

      DocumentReference documentReference=FirebaseFirestore.instance
          .collection("User").doc(value.user?.uid);

      Map<String,dynamic> user = {
        'email':emailController.toString(),
        'password':passwordController.toString(),
        'user_ID':value.user?.uid.toString(),
        'user_type':'Person',
        'username':nameController.toString(),
      };
      documentReference.set(user);
      emit(SignUpSuccessState());

    }).catchError((error){
      emit(SignUpErrorState(error.toString()));
    });
  }

}