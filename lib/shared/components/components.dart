

import 'package:benefactor_project/layout/charity_app/cubit/cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/charity_ad_model.dart';
import '../../models/charity_model.dart';
import '../../modules/charity_ads/charity_ads_screen.dart';
import 'constants.dart';

void navigateTo(context,Widget) =>Navigator.push(context,
  MaterialPageRoute(
    builder: (context)=>  Widget,
  ),
);


Widget defaultButton ({
  double width=double.infinity,
  Color background=Colors.deepOrange,
  bool isUpperCase=true,
  double radius= 0,
  required String text,
  required Null Function() function,

}) =>  Container(
  width: width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius,),
    color: background,
  ),
  child: MaterialButton(
    onPressed: function,
    child:  Text(
      isUpperCase? text.toUpperCase():text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);


Widget myDefaultButton({
  double width = 80.0,
  double height = 30.0,
  Color background = Colors.deepOrange,
  bool isUpperCase = true,
  double radius = 0,
  required String text,
  required Null Function() function,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
    );


Widget defaultTFF({
  double radius = 10.0,
  Color iconColor = Colors.deepOrangeAccent,
  Color textColor = Colors.black,
  required IconData preIcon,
  required String hint,
  required TextInputType type,
  required String? Function(dynamic value) validate,
  dynamic Function()? onTap,
  TextEditingController? controller,
}) =>
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(

        height: 100.0,
        padding: EdgeInsets.all(20.0),
        child: TextFormField(
          validator:validate ,
          controller: controller,
          cursorColor: Colors.deepOrangeAccent,
          onTap: onTap,
          keyboardType: type,
          decoration: InputDecoration(
            prefixIcon: Icon(
              preIcon,
              color: Colors.deepOrangeAccent,
            ),
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepOrangeAccent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
      ),
    );





Widget defaultFormField(
    {
      bool isPassword = false,
      required TextEditingController controller,
      required TextInputType type,
      required String label,
      required IconData prefix,
      IconData? suffix,

      required dynamic Function(dynamic value) onSubmit,

      required String? Function(dynamic value) validate,

      dynamic Function()? suffixPressed,

      dynamic Function(String)? onChange,

      dynamic Function()? onTap,
      bool isClickable = true ,

    })=>TextFormField(
  textDirection: TextDirection.rtl,
  enabled: isClickable,
  obscureText: isPassword,
  controller:controller ,
  onChanged:onChange,
  onTap: onTap,
  keyboardType:type,
  validator: validate,
  onFieldSubmitted: onSubmit ,
  decoration:  InputDecoration(
    labelText: label,
    border: const OutlineInputBorder(),

    prefixIcon: Icon(
      prefix,
      color: Colors.deepOrange,
    ),
    suffixIcon: suffix != null? IconButton(
      onPressed: suffixPressed,
      icon: Icon(
        suffix,

      ),
    ): null,
  ),
);


Widget buildSeparator() => Container(
  height: 1.0,
  width: double.infinity,
  color: Colors.grey[300],
);





Widget buildCharityAdItem(List<CharityAdModel> ad,context)=>
    Container(
      height: 233,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: (){
            navigateTo(context,  CharityAdsScreen(ad[index]));
          },

          child: Padding(

            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Container(
                      height: 140,
                      width: 140 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image:   DecorationImage(image: AssetImage(pics[2]),
                            fit: BoxFit.cover   ),

                      ),

                    ),
                    const SizedBox(
                      height: 8,
                    ),
                     Text(
                       "${ad[index].adId}",

                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                     Text(
                      ad[index].adType,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),

                  ],
                ),



              ],
            ),
          ),
        ),
        itemCount:ad.length ,
      ),
    );


Widget buildCategoryItem()=>
    Container(
      height: 161,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: (){print("ASD");},
          child: Padding(
            padding: const EdgeInsets.all(15.0),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    GestureDetector(

                      onTap: (){
                        print(pics[index].toString());
                      },

                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(pics[index]) ,
                        height: 96,
                        width: 96,
                      ),
                    ),
                    Text(donation[index].toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    // Text(pics[index].toString().substring(14,pics[index].toString().length-4),
                    //   style: const TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold
                    //   ),
                    // )
                    const SizedBox(
                      height: 8,
                    ),


                  ],
                ),



              ],
            ),
          ),
        ),
        itemCount: pics.length,
      ),
    );

