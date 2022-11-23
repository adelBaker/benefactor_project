import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../shared/components/components.dart';
import '../home/home_screen.dart';

class donationScreen extends StatelessWidget {
 donationScreen({Key? key}) : super(key: key);
   var number = TextEditingController();
   var address= TextEditingController();
   var description = TextEditingController();
   var notes= TextEditingController();
   var expiration_date =TextEditingController();
   var type2=TextEditingController();
 var TextReg = RegExp(r'^[a-z A-Zأ-ي]+$');
 final formKey = GlobalKey<FormState>();
 String dropDownValue= '1';

  var items=['1','2','3'];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(),
        body: SingleChildScrollView(

          child: Form(
            key: formKey,
            child: Column(

              children: [
                SizedBox(height: 20.0,),

                SizedBox(height: 20.0,),

                SingleChildScrollView(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      margin: EdgeInsetsDirectional.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                            initialValue: "A",
                              readOnly: true,
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(

                                border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                                prefixIcon: Icon(Icons.type_specimen_outlined,
                                  textDirection:TextDirection.rtl ,
                                  color: Colors.deepOrangeAccent,),
                                labelText: 'النوع',
                                labelStyle: TextStyle(color: Colors.deepOrangeAccent,

                                    fontWeight: FontWeight.bold

                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.0,),

                          Expanded(
                            child: TextFormField(
                              validator: (value){
                                if (value == null || value.isEmpty) {
                                  return "لا يمكن أن يكون الحقل فارغ";
                                }
                                if (double.tryParse(value) == null) {
                                  return "لا يمكن أن يحوي إلا على أرقام ";
                                }

                              },
                              controller: number,
                              keyboardType: TextInputType.number,
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(

                                border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                                prefixIcon: Icon(Icons.confirmation_number_rounded,
                                  textDirection:TextDirection.rtl ,
                                  color: Colors.deepOrangeAccent,),
                                labelText: 'العدد',
                                labelStyle: TextStyle(color:Colors.deepOrangeAccent,

                                  fontWeight: FontWeight.bold,

                                ),

                              ),
                            ),
                          ),
                        ],
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
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return "لا يمكن أن يكون الحقل فارغ";
                        }
                        if (!TextReg.hasMatch(value)) {
                          return "لا يمكن أن يحوي هذا الحقل إلا على أحرف ";
                        }
                        if (value.length > 60) {
                          return "لا يمكن أن يتكون هذا الحقل من أكثر من ستون محارف ";
                        }
                      },
                      controller: description,

                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(

                        border:OutlineInputBorder( borderRadius: BorderRadius.circular(30.0)) ,
                        prefixIcon: Icon(Icons.closed_caption,
                          textDirection:TextDirection.rtl ,
                          color: Colors.deepOrangeAccent,
                        ),
                        labelText: 'الوصف',
                        labelStyle: TextStyle(color: Colors.deepOrangeAccent,

                          fontWeight: FontWeight.bold,

                        ),
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
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return "لا يمكن أن يكون الحقل فارغ";
                        }
                        if (!TextReg.hasMatch(value)) {
                          return "لا يمكن أن يحوي هذا الحقل إلا على أحرف ";
                        }
                        if (value.length > 30) {
                          return "لا يمكن أن يتكون هذا الحقل من أكثر من ثلاثون محارف ";
                        }
                      },
                       controller: notes,
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
                      controller: expiration_date,
                      onTap: () async {
                        var date = await showDatePicker(
                          builder: (context,child){
                            return Theme(
                                data: Theme.of(context).copyWith(
                                    colorScheme:
                                    ColorScheme.light(
                                      primary: Colors.deepOrangeAccent,
                                      onPrimary: Colors.green.shade100,
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(primary: Colors.deepOrangeAccent),
                                    )

                                ),
                                child: child!);
                          },
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1920),
                          lastDate: DateTime(
                              DateTime.now().year,
                              DateTime.now().month + 6,
                              DateTime.now().day),
                        );
                        expiration_date.text =
                            date.toString().substring(0, 10);
                      },
                     // keyboardType: TextInputType.datetime,
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
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return "لا يمكن أن يكون الحقل فارغ";
                        }
                        if (!TextReg.hasMatch(value)) {
                          return "لا يمكن أن يحوي هذا الحقل إلا على أحرف ";
                        }
                        if (value.length > 30) {
                          return "لا يمكن أن يتكون هذا الحقل من أكثر من ثلاثون محارف ";
                        }
                      },
                      controller: address,
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
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  padding: EdgeInsetsDirectional.zero,
                  child: Center(
                    child: MaterialButton(
                      onPressed: (){
                        if (formKey.currentState!.validate()) {
                          DocumentReference documentReference =
                              FirebaseFirestore.instance
                                  .collection("Donation")
                                  .doc();
                          Map<String, dynamic> don = {
                            "donation_ID": 7,
                            "benefactor_ID": 5,
                            "type_ID": 1,
                            "number": number.text,
                            "address": address.text,
                            "description": description.text,
                            "notes": notes.text,
                            "expiration_date": expiration_date.text,
                            "donation_date": DateTime.now(),
                          };
                          documentReference.set(don).whenComplete(() {
                            navigateTo(context, HomeScreen());
                          });
                        }
                      },

                      //  color: MyColors.defaultBlue,
                      elevation: 9.0,
                      child: Text(
                        'تأكيد',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
