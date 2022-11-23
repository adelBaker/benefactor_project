


import 'package:benefactor_project/modules/charity_ads/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/charity_model.dart';
import '../../home/cubit/states.dart';

class CharityAdsScreenCubit extends Cubit<CharityAdsScreenStates>
{

  CharityAdsScreenCubit():super(CharityAdsScreenInitialState());
  
  static CharityAdsScreenCubit get(context)=> BlocProvider.of(context);


  List<CharityModel> charity=[];
  void getCharity(id)async
  {
    charity=[];
    print("Start");
    
    var db=FirebaseFirestore.instance;
    
    await db.collection("Charity").where("charity_ID",isEqualTo: id).get().then((value) {
      value.docs.forEach((element) { 
        print(element.data());
        charity.add(CharityModel.fromJson(element.data()));
        
      });

    }).then((value) {
      emit(CharityAdsScreenGetDataSuccessState());
    });
    print("------------");

    print(charity.length);

  }
  
  
}