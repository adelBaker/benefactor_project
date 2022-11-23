import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../per_donation/per_donation_screen.dart';

class AccountDonationsScreen extends StatelessWidget {
  const AccountDonationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Container(

          color: Colors.black12,
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsetsDirectional.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    navigateTo(context, PerDonationScreen());
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
                          'رقم تعريف التبرع',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(

                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          //sql statement
                          'تاريخ التبرع',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('اسم الجمعية',
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
                  Expanded(child: Image.asset('name')),
                ],
              ),],
          ),
        ),
      ),
    );
  }
}
