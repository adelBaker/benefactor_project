
import 'package:benefactor_project/layout/charity_app/cubit/cubit.dart';
import 'package:benefactor_project/modules/home/cubit/cubit.dart';
import 'package:benefactor_project/modules/home/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/components.dart';


class HomeScreen extends StatelessWidget {

  var searchController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>HomeScreenCubit(),
      child: BlocConsumer<HomeScreenCubit,HomeScreenStates>(
          listener: (context,state){
            print(state);
          },
          builder:(context,state){

            var cubit=HomeScreenCubit.get(context);
            if(state is HomeScreenInitialState) {
              cubit.getAds();
            }

            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: const Text("الرئيسية",
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                backgroundColor: Colors.white,
                actions: [
                  IconButton(

                    onPressed: (){
                      //AppCubit.get(context).changeAppMode();
                    },
                    icon: const Icon(Icons.brightness_4_outlined,color: Colors.black,),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:  [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: defaultFormField(
                        controller: searchController,
                        type: TextInputType.text,
                        label: "البحث",
                        prefix: Icons.search,
                        onSubmit: (value){},
                        validate: (value){},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "اعلانات الجمعيات الخيرية",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    buildCharityAdItem(cubit.charityAd,context),



                    buildSeparator(),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "قائمة التبرع",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    buildCategoryItem(),


                  ],
                ),
              ),

            );


          } ,
      ),
    );
  }
}
