import 'package:benefactor_project/models/charity_ad_model.dart';
import 'package:benefactor_project/models/donation_model.dart';
import 'package:benefactor_project/modules/charity_ads/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/charity_model.dart';
import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';
import '../donation/donation_screen.dart';
import 'cubit/states.dart';

class CharityAdsScreen extends StatelessWidget {
  CharityAdModel x;
  CharityAdsScreen( this.x,{super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contex)=>CharityAdsScreenCubit(),
      child: BlocConsumer<CharityAdsScreenCubit,CharityAdsScreenStates>(
        listener: (context,state){
          print(state);
        },

        builder: (context,state){

          var cubit=CharityAdsScreenCubit.get(context);
          var list=CharityAdsScreenCubit.get(context).charity;
          if(state is CharityAdsScreenInitialState)
            {
            cubit.getCharity(x.charityId);
            print("object");
            print(list.length);
            }
          if(list.isNotEmpty)
            {
              return Scaffold(
                appBar: AppBar(),
                body:  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                          "تفاصيل الاعلان",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Image(
                          fit: BoxFit.cover,
                          image: AssetImage(pics[0]) ,
                          height: 200,
                          width: 200,
                        ),
                        Text(
                          "${list.first.charityName}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8,),

                        Text(
                          " التفاصيل: ${x.description}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),
                        ),

                        const SizedBox(height: 8,),

                        Text(
                          "العدد:${x.number} ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),
                        ),

                        const SizedBox(height: 8,),


                        Text("العنوان:${list.first.address}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const SizedBox(height: 8,),


                        Text("الرقم:${list.first.phone}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const SizedBox(height: 8,),



                        Text('ساعات العمل:${list.first.workingHours}',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const SizedBox(height: 8,),


                        Text('ايام الافتتاح:${list.first.workingDays}',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const SizedBox(height: 55,),

                        defaultButton(text: 'التبرع', function: () {
                          navigateTo(context, DonationScreen(

                          ));
                        }

                        ),

                      ],
                    ),
                  ),
                ),
              );
            }
          else
            return Center(child:
              CircularProgressIndicator());


        },


      ),
    );
  }
}
