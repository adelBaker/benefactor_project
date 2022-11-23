import 'package:benefactor_project/modules/home/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/charity_ad_model.dart';
import '../../../models/charity_model.dart';

class HomeScreenCubit extends Cubit<HomeScreenStates>{

  HomeScreenCubit():super(HomeScreenInitialState());

  static HomeScreenCubit get(context)=>BlocProvider.of(context);


  Map<String,dynamic> map={};
  List<CharityAdModel> charityAd=[];
  List<CharityModel> charity=[];
  void getAds()async
  {

    print("Start");
    
    var db=FirebaseFirestore.instance;
    
    await db.collection('Charity_Ad').get().then((value) {
      value.docs.forEach((element) {

        print(element.data());
        charityAd.add(CharityAdModel.fromJson(element.data()));

      });
    }).then((x){
      emit(HomeScreenGetDataSuccessState());

    });


    print("________________");

   print(charityAd.length);


  }
  


}