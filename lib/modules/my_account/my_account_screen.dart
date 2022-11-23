import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import '../account_donations/account_donations_screen_old.dart';
import '../notification_settings/notification_settings_screen.dart';
import 'my_addresses_screen.dart';
import 'my_numbers_screen.dart';


class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column (

              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                const Text('أهلاً "اسم المستخدم"', style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                  textDirection: TextDirection.rtl,
                ),
                const Text('ايميل المستخدم',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10.0,
                  ),
                ),
                Divider(
                  color: Colors.grey[200],
                  height: 25,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
                Row(
                  children: [
                    Expanded(

                      child: Container(

                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,

                          ),
                          margin: const EdgeInsetsDirectional.all(20.0),
                          child:Column(
                            children:  [
                              IconButton(
                                onPressed: (){
                                  navigateTo(context, MyNumbersScreen());
                                },
                                icon: const Icon(
                                  Icons.phone_in_talk_outlined,
                                  color: Colors.deepOrangeAccent,
                                  size: 50.0,
                                ),
                              ),
                              Text('أرقامي',
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0

                                ),
                              )
                            ],
                          )
                        /*ElevatedButton(onPressed: (){},
                            child: Text('أرقامي',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,

                            ),),
                          style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                          shape: CircleBorder(),
                           primary: Colors.deepOrangeAccent,
                          ),
                          ),*/
                      ),
                    ),
                    Expanded(

                      child: Container(

                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,

                          ),
                          margin: const EdgeInsetsDirectional.all(20.0),
                          child:Column(
                            children:  [
                              IconButton(
                                onPressed: (){
                                  navigateTo(context, MyAddressesScreen());
                                },
                                icon: Icon(
                                  Icons.home_work_outlined,
                                  color: Colors.deepOrangeAccent,
                                  size: 50.0,
                                ),
                              ),
                              Text('عناوين',
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0

                                ),
                              )
                            ],
                          )
                        /*ElevatedButton(onPressed: (){},
                            child: Text('أرقامي',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,

                            ),),
                          style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                          shape: CircleBorder(),
                           primary: Colors.deepOrangeAccent,
                          ),
                          ),*/
                      ),
                    ),
                    Expanded(

                      child: Container(

                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,

                          ),
                          margin: const EdgeInsetsDirectional.all(20.0),
                          child:Column(
                            children:  [
                              IconButton(
                                onPressed: (){
                                  navigateTo(context, AccountDonationsScreen());
                                },
                                icon: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: Colors.deepOrangeAccent,
                                  size: 50.0,
                                ),
                              ),
                              Text('تبرعاتي',
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0

                                ),
                              )
                            ],
                          )
                        /*ElevatedButton(onPressed: (){},
                            child: Text('أرقامي',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,

                            ),),
                          style: ElevatedButton.styleFrom(fixedSize: Size(75, 75),
                          shape: CircleBorder(),
                           primary: Colors.deepOrangeAccent,
                          ),
                          ),*/
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey[200],
                  height: 25,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.settings_outlined, color: Colors.black54.withOpacity(0.2),
                      size: 20.0,
                    ),
                    Text('الإعدادات', style: TextStyle(
                      color:Colors.black54.withOpacity(0.2),
                      fontSize: 15.0,

                    ),
                    ),

                  ],
                ),
                /*Divider(
                  color: MyColors.defaultGrey,
                  height: 25,
                  thickness: 2,
                  indent: 40,
                  endIndent: 40,
                ),*/
                InkWell(
                  onTap: () {},
                  child: Ink(
                    decoration:   BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange.shade200]),
                      //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    ),
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        SizedBox(width: 48),
                        Expanded(
                          child: Center(
                            child: Text(
                              "الملف الشخصي",
                              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 48.0,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 23.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40,),

                InkWell(
                  onTap: () {
                    navigateTo(context, NotificationSettingsScreen());
                  },
                  child: Ink(
                    decoration:   BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange.shade200]),
                      //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    ),
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        SizedBox(width: 48),
                        Expanded(
                          child: Center(
                            child: Text(
                              "الإشعارات",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 48.0,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 23.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                InkWell(
                  onTap: () {},
                  child: Ink(
                    decoration:   BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange.shade200]),
                      //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    ),
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        SizedBox(width: 48),
                        Expanded(
                          child: Center(
                            child: Text(
                              "اللغة",
                              style:TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ) ,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 48.0,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 23.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20.0,),
                TextButton(onPressed: (){}, child:
                const Text('تسجيل الخروج' ,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
