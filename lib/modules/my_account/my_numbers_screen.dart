import 'package:flutter/material.dart';


class MyNumbersScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(

  appBar: AppBar(

  backgroundColor: Colors.black,
  elevation: 0,
  title: const Text("",
  style: TextStyle(
  color: Colors.black,
  ),
  ),
  actions: [
  IconButton(
  onPressed: (){
  //AppCubit.get(context).changeAppMode();
  },
  icon: const Icon(Icons.brightness_4_outlined,),
  ),
  ],
  ),

  body: Directionality(
  textDirection: TextDirection.rtl,
  child: Column(
  children: [
  SizedBox(height: 20.0,),
  Container(
  margin: EdgeInsetsDirectional.all(20.0),
  padding:EdgeInsetsDirectional.all(20.0),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10.0),
  color: Colors.black12,
  ),
  child: Directionality(
  textDirection: TextDirection.rtl,
  child: Container(
  child: Row(
  children: [


  const Text('Phone Number',style: TextStyle(
  color: Colors.black54,
  fontSize: 20.0,
  ),),
   SizedBox(width: 120,),
  IconButton( color:Colors.deepOrangeAccent,
  onPressed: (){},
  icon: Icon(Icons.edit),
  ),
  ],
  ),
  ),
  ),
  ),
  ],
  ),
  ),

  );
  }
}

