import 'package:flutter/material.dart';

class perCharityScreen extends StatefulWidget {
  const perCharityScreen({Key? key}) : super(key: key);

  @override
  State<perCharityScreen> createState() => _perCharityScreenState();
}

class _perCharityScreenState extends State<perCharityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('اسم الجمعية', style: TextStyle(
                color: Colors.black54,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                //height: 0.02,
              ),),
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
                      Icon(Icons.location_history,color: Colors.deepOrangeAccent,
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
                        color: Colors.black54
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
                      Icon(Icons.phone_in_talk,color: Colors.deepOrangeAccent,
                      ),
                      SizedBox(width: 5.0,),
                      Text('رقم الهاتف', style: TextStyle(
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
                      Icon(Icons.event_available,color: Colors.deepOrangeAccent,
                      ),
                      SizedBox(width: 5.0,),
                      Text('أيام الدوام', style: TextStyle(
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
                      Icon(Icons.access_time,color: Colors.deepOrangeAccent,
                      ),
                      SizedBox(width: 5.0,),
                      Text('ساعات الدوام', style: TextStyle(
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

          ],
        ),
      ),

    );

  }
}
