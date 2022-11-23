import 'package:benefactor_project/layout/charity_app/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/account_donations/account_donations_screen_old.dart';
import '../../../modules/charities/charities_screen.dart';
import '../../../modules/home/home_screen.dart';
import '../../../modules/my_account/my_account_screen.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit():super(AppInitialState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int currentIndex=3;

  List<Widget> screens =[
    charitiesScreen(),
    HomeScreen(),
    const AccountDonationsScreen(),
    const MyAccountScreen(),


  ];

  void changeBottomNavBar(int index)
  {
    currentIndex=index;
    emit(AppChangeBottomNavBarState());

  }





}