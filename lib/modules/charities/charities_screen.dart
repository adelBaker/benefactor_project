import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../per_charity/per_charity_screen.dart';


class charitiesScreen extends StatefulWidget {


  @override
  State<charitiesScreen> createState() => _charitiesScreenState();
}


class _charitiesScreenState extends State<charitiesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text("BENETY",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //AppCubit.get(context).changeAppMode();

            },
            icon: const Icon(Icons.brightness_4_outlined,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          color: Colors.black12,
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsetsDirectional.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {
                    readData();
                   // navigateTo(context, const perCharityScreen());
                  }, icon:
                  const Icon(Icons.navigate_next,
                    textDirection: TextDirection.rtl,
                    color: Colors.deepOrangeAccent,

                  )
                  ),
                  const Text(
                    'عرض التفاصيل',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepOrangeAccent,

                    ),
                  ),
                   const Expanded(
                    child: Text(
                      //sql statement

                      "Hello",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  )

                ],
              ),
              const Divider(
                color: Colors.black54,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text('مفتوح',
                          style: TextStyle(
                            color: Colors.green,

                          ),

                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.black54,
                        )

                      ],
                    ),
                  ),
                  Expanded(child: Image.asset('name')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  var x;

  readData() {
    print("Read");

    DocumentReference documentReference = FirebaseFirestore
        .instance
        .collection("Charity_Ad")
        .doc();

    (documentReference.snapshots().forEach((element) {
      x = (element["charity_ID"]);
    }
    )
    );
  }
}
