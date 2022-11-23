

import 'dart:async';

import 'package:benefactor_project/modules/account_donations/perDonation_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../shared/components/components.dart';



class AccountDonationsScreen extends StatelessWidget {
  const AccountDonationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body:StreamBuilder<Object>(
        stream:  FirebaseFirestore.instance.collection('Donation').where('benefactor_ID',isEqualTo:5/*auth user ID*/).snapshots(),

        builder: (BuildContext context,AsyncSnapshot snapshot) {

          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapshot.hasData){

         return ListView.builder(
             itemCount: snapshot.data!.docs.length,
             itemBuilder: (context,index){

               final DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
               int donationID= documentSnapshot['donation_ID'];
               return SingleChildScrollView(
                 child: Container(

                   color: Colors.black12,
                   margin: EdgeInsets.all(20.0),
                   padding: EdgeInsetsDirectional.all(40.0),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Row(
                         children: [
                           IconButton(onPressed: (){


                            if(!snapshot.hasData){
                              ProgressIndicator;
                            }
                             navigateTo(context, perDonationScreen(donation: donationID,));


                           }, icon:
                           Container(

                             child: Container(

                               child: Icon(Icons.navigate_next,
                                 textDirection: TextDirection.rtl,
                                 color: Colors.deepOrangeAccent,


                               ),
                             ),
                           )
                           ),
                           Text(
                             'عرض التفاصيل',
                             style: TextStyle(
                               fontWeight: FontWeight.normal,
                               fontStyle: FontStyle.italic,
                               color:Colors.deepOrangeAccent,

                             ),
                           ),
                           Expanded(
                             child: Column(
                               children: [
                                 Text(
                                   //sql statement
                                   documentSnapshot['donation_ID'].toString(),
                                   textDirection: TextDirection.rtl,
                                   style: TextStyle(

                                     color: Colors.black54,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0,
                                   ),
                                 ),
                                 Text(
                                   //sql statement
                                   documentSnapshot['donation_date'].toDate().toString(),
                                   textDirection: TextDirection.rtl,
                                   style: TextStyle(

                                     color:Colors.black54,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20.0,
                                   ),
                                 ),

                               ],
                             ),
                           )

                         ],
                       ),
                       Divider(
                         color: Colors.grey[200],
                         height: 25,
                         thickness: 2,
                         indent: 5,
                         endIndent: 5,
                       ),
                       StreamBuilder<Object>(

                         stream: FirebaseFirestore.instance.collection('Charity').where('charity_ID',isEqualTo: documentSnapshot['charity_ID']).snapshots(),

                         builder: (BuildContext context,AsyncSnapshot snapshot2) {
                           if(!snapshot2.hasData){
                             return Text('no data');
                           }
                           else {
                             final DocumentSnapshot documentSnapshot2= snapshot2.data.docs[0];
                             return Row(
                               mainAxisSize: MainAxisSize.max,
                               children: [
                                 Expanded(
                                   child: Column(
                                     children: [
                                       Text(
                                         documentSnapshot2['charity_name'].toString(),
                                         style: TextStyle(
                                           color: Colors.black54,

                                         ),

                                       ),
                                       Icon(
                                         Icons.location_on,
                                         color: Colors.black54,
                                       )

                                     ],
                                   ),
                                 ),

                               ],
                             );
                           }

                         }
                       ),],
                   ),
                 ),
               );
             }
         );
          }
         return Text('done');
        }
      ),
    );
  }
}
