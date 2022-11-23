import 'package:benefactor_project/modules/charity_ads/charity_ads_screen.dart';
import 'package:benefactor_project/modules/charity_ads/cubit/cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'bloc_observer.dart';
import 'firebase_options.dart';
import 'layout/charity_app/cubit/cubit.dart';
import 'layout/charity_app/cubit/states.dart';
import 'layout/charity_app/home_layout.dart';
import 'modules/account_donations/account_donations_screen.dart';
import 'modules/account_donations/donation_screen.dart';
import 'modules/donation/Gg.dart';
import 'modules/donation/donation_screen.dart';
import 'modules/home/cubit/cubit.dart';
import 'modules/home/home_screen.dart';
import 'modules/sign_in/sign_in_screen.dart';
import 'modules/sign_up/sign_up_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  HomeScreenCubit? x;
  await x?.charityAd;
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AppCubit()),
        BlocProvider(create: (context)=>CharityAdsScreenCubit()),


      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          return Sizer(
              builder: (context, orientation, deviceType) {
                return MaterialApp(
                  theme: ThemeData(
                      appBarTheme: const AppBarTheme(
                        color: Colors.black54,

                      )
                  ),
                  debugShowCheckedModeBanner: false,
                  home: SigninScreen(),
                );
              }
          );
        },
      ),
    );
  }
}
