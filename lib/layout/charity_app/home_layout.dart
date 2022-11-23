import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/charity_ads/charity_ads_screen.dart';
import '../../shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {

  HomeLayout({Key? key}) : super(key: key);


    var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (BuildContext context, state) {

            var cubit=AppCubit.get(context);
        return Scaffold(

          body: cubit.screens[cubit.currentIndex],

          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.deepOrange,

            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavBar(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business_outlined,
                ),
                label: "الجمعيات الخيرية",

              ),

              BottomNavigationBarItem(

                icon: Icon(
                  Icons.home,
                ),
                label: "الرئيسية",

              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                ),
                label: "تبرعاتي",

              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "حسابي",

              ),

            ],

          ),

        );
      },
    );
  }
}