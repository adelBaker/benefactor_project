import 'package:flutter/material.dart';


class GGGdonationScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.rtl,


          children: [
            const SizedBox(height: 20.0,),
            const SizedBox(height: 20.0,),

            SingleChildScrollView(

              child: Container(

                margin: EdgeInsetsDirectional.all(20.0),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(

                          border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                          prefixIcon: const Icon(Icons.confirmation_number_rounded,
                            textDirection:TextDirection.rtl ,
                            color: Colors.deepOrangeAccent,),
                          labelText: 'العدد',
                          labelStyle: const TextStyle(color:Colors.deepOrangeAccent,

                            fontWeight: FontWeight.bold,

                          ),
                          /* icon: Icon(
                            Icons.location_history,
                            color: MyColors.defaultTextColor2,
                            textDirection: TextDirection.rtl,),*/

                        ),
                      ),
                    ),
                    const SizedBox(width: 5.0,),
                    Expanded(
                      child: TextFormField(

                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(

                          border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                          prefixIcon: const Icon(Icons.type_specimen_outlined,
                            textDirection:TextDirection.rtl ,
                            color: Colors.deepOrangeAccent,),
                          labelText: 'النوع',
                          labelStyle: const TextStyle(color: Colors.deepOrangeAccent,

                              fontWeight: FontWeight.bold

                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20.0,),
            Container(
              margin: const EdgeInsetsDirectional.all(20.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(

                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(

                    border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                    prefixIcon: const Icon(Icons.closed_caption,
                      textDirection:TextDirection.rtl ,
                      color: Colors.deepOrangeAccent,
                    ),
                    labelText: 'الوصف',
                    labelStyle: const TextStyle(color: Colors.deepOrangeAccent,

                      fontWeight: FontWeight.bold,

                    ),
                    /* icon: Icon(
                      Icons.location_history,
                      color: MyColors.defaultTextColor2,
                      textDirection: TextDirection.rtl,),*/

                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsetsDirectional.all(20.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(

                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(

                    border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                    prefixIcon: Icon(Icons.notes,
                      textDirection:TextDirection.rtl ,
                      color: Colors.deepOrangeAccent,),
                    labelText: 'ملاحظات',
                    labelStyle: TextStyle(color: Colors.deepOrangeAccent,

                        fontWeight: FontWeight.bold

                    ),
                    /* icon: Icon(
                      Icons.location_history,
                      color: MyColors.defaultTextColor2,
                      textDirection: TextDirection.rtl,),*/

                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsetsDirectional.all(20.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                    prefixIcon: Icon(Icons.date_range,
                      textDirection:TextDirection.rtl ,
                      color: Colors.deepOrangeAccent,),
                    labelText: 'تاريخ الصلاحية',
                    labelStyle: TextStyle(color: Colors.deepOrangeAccent,

                        fontWeight: FontWeight.bold

                    ),
                    /* icon: Icon(
                      Icons.location_history,
                      color: MyColors.defaultTextColor2,
                      textDirection: TextDirection.rtl,),*/

                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsetsDirectional.all(20.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(

                    border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                    prefixIcon: Icon(Icons.location_history,
                      textDirection:TextDirection.rtl ,
                      color: Colors.deepOrangeAccent,),
                    labelText: 'العنوان',
                    labelStyle: TextStyle(color: Colors.deepOrangeAccent,

                        fontWeight: FontWeight.bold
                    ),
                    /* icon: Icon(
                      Icons.location_history,
                      color: MyColors.defaultTextColor2,
                      textDirection: TextDirection.rtl,),*/

                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(

              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.circular(200.0)
              ),
              padding: EdgeInsetsDirectional.zero,
              child: Center(
                child: TextButton(onPressed: (){},

                  //  color: MyColors.defaultBlue,
                  //  elevation: 9.0,
                  child: Text('تأكيد', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,



                  ),),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
