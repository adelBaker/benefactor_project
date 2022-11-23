import 'package:benefactor_project/models/charity_ad_model.dart';
import 'package:benefactor_project/models/donation_model.dart';
import 'package:flutter/material.dart';

import '../../models/charity_model.dart';
import '../../shared/components/components.dart';


class DonationScreen extends StatelessWidget {


  /// DonationScreen(int charityID,String type,String description);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(

            textDirection: TextDirection.rtl,
            children: [

              defaultTFF(
                hint: 'العدد',
                preIcon:Icons.confirmation_number_rounded,
                type:TextInputType.number ,
                validate:(value){} ,
              ),

              defaultTFF(
                  preIcon: Icons.type_specimen_outlined,
                  hint: "النوع",
                  type: TextInputType.text,
                  validate: (value){},

              ),

              defaultTFF(
                  preIcon: Icons.closed_caption,
                  hint: "الوصف",
                  type: TextInputType.text,
                  validate: (value){},
              ),

              defaultTFF(
                  preIcon: Icons.notes,
                  hint: "ملاحظات",
                  type: TextInputType.text,
                  validate: (value){},
              ),

              defaultTFF(
                  preIcon: Icons.date_range,
                  hint: "تاريخ الصلاحية",
                  type: TextInputType.datetime,
                  validate: (value){},
              ),


              defaultTFF(
                  preIcon: Icons.location_history,
                  hint: "العنوان",
                  type: TextInputType.text,
                  validate: (value){},
              ),

              myDefaultButton(
                  text: "التبرع ",
                  function: (){},
              ),


            ],
          ),
        ),
      ),
    );
  }
}