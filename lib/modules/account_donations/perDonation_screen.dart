import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class perDonationScreen extends StatelessWidget {
  int donation;

   perDonationScreen({Key? key , required this.donation}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

      appBar: AppBar(),

        body: StreamBuilder<Object> (

          stream: FirebaseFirestore.instance.collection('Donation').where('donation_ID',isEqualTo: donation).snapshots(),

          builder: (BuildContext context,AsyncSnapshot snapshot) {

            if(snapshot.connectionState==ConnectionState.waiting || !snapshot.hasData) {
                  ProgressIndicator;
              return Center(child: CircularProgressIndicator(),);

            }


          final DocumentSnapshot documentSnapshot =snapshot.data!.docs[0] ;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                        donation.toString(),
                      style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      
                    ),),
                  ),
                  Text(
                     documentSnapshot['donation_date'].toDate().toString(),
                          ),
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
                            StreamBuilder<Object>(
                              stream: FirebaseFirestore.instance.collection('Benefactor').where('benefactor_ID',isEqualTo: documentSnapshot['benefactor_ID']).snapshots(),
                              builder: (BuildContext context,AsyncSnapshot snapshot3) {
                                if(snapshot3.connectionState==ConnectionState.waiting || !snapshot3.hasData) {
                                  ProgressIndicator;
                                  return Center(child: CircularProgressIndicator(),);

                                }
                                final DocumentSnapshot addressSnapshot= snapshot3.data.docs[0];

                                return Text(
                                  addressSnapshot['address'],
                                  style: TextStyle(
                                  color:Colors.black54,
                                  fontSize: 20.0,
                                ),);
                              }
                            ),
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
                            StreamBuilder<Object>(
                              stream: FirebaseFirestore.instance.collection('Donation_type').where('type_ID',isEqualTo: documentSnapshot['type_ID']).snapshots(),
                              builder: (BuildContext context,AsyncSnapshot snapshot2) {
                                if(snapshot2.connectionState==ConnectionState.waiting || !snapshot2.hasData ){
                                  return Center(child: CircularProgressIndicator(),);
                                }
                                final DocumentSnapshot typeSnapshot= snapshot2.data.docs[0] ;

                                return Text(
                                  typeSnapshot['donation']
                                ,style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20.0,
                                ),);
                              }
                            ),
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
                            Text(
                              documentSnapshot['number'].toString(),
                              style: TextStyle(
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
        ),
      ),
    );
  }
}
