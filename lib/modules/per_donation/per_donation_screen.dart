import 'package:flutter/material.dart';


class PerDonationScreen extends StatelessWidget {
  const PerDonationScreen({super.key});


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
  body: Column(
  children: [
  Center(
  child: Text('رقم تعريف التبرع', style: TextStyle(
  color: Colors.black54,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  //height: 0.02,
  ),),
  ),
  Text('التاريخ و الوقت'),
  Divider(
  color: Colors.grey[200],
  height: 25,
  thickness: 2,
  indent: 5,
  endIndent: 5,
  ),
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
  Icon(Icons.location_history,color:Colors.deepOrangeAccent,
  ),
  SizedBox(width: 5.0,),
  Text('العنوان', style: TextStyle(
  color: Colors.deepOrangeAccent,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  ),),
  VerticalDivider( color: Colors.black,
  width: 20,
  thickness: 2,
  indent:30,
  endIndent: 15,
  ),
  Text('data',style: TextStyle(
  color:Colors.black54,
  fontSize: 20.0,
  ),),
  ],
  ),
  ),
  ),
  ),
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
  Icon(Icons.type_specimen_outlined,color: Colors.deepOrangeAccent,
  ),
  SizedBox(width: 5.0,),
  Text('نوع التبرع', style: TextStyle(
  color: Colors.deepOrangeAccent,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  ),),
  VerticalDivider( color: Colors.black,
  width: 20,
  thickness: 2,
  indent:30,
  endIndent: 15,
  ),
  Text('data',style: TextStyle(
  color: Colors.black54,
  fontSize: 20.0,
  ),),
  ],
  ),
  ),
  ),
  ),
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
  Icon(Icons.confirmation_number_rounded
  ,color: Colors.deepOrangeAccent,
  ),
  SizedBox(width: 5.0,),
  Text('العدد', style: TextStyle(
  color: Colors.deepOrangeAccent,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  ),),
  VerticalDivider( color: Colors.black,
  width: 20,
  thickness: 2,
  indent:30,
  endIndent: 15,
  ),
  Text('data',style: TextStyle(
  color:Colors.black54,
  fontSize: 20.0,
  ),),
  ],
  ),
  ),
  ),
  ),

  ],

  ),
  );
  }
}


