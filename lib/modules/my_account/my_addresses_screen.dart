import 'package:flutter/material.dart';

class MyAddressesScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              //AppCubit.get(context).changeAppMode();
            },
            icon: const Icon(Icons.brightness_4_outlined,),
          ),
        ],
      ),
      body: Container(

        margin: EdgeInsetsDirectional.all(20.0),

        color: Colors.grey[200],
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(width: 10.0,),
                  Icon(Icons.location_history,
                    color: Colors.deepOrangeAccent,),
                  SizedBox(width: 250,),
                  IconButton(onPressed: (){}, icon:
                  Icon(Icons.edit,color: Colors.deepOrangeAccent,)
                  )
                ],
              ),
              Divider(
                color: Colors.grey[100],
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              TextFormField(initialValue: ('data'),)

            ],
          ),
        ),
      ),
    );
  }
}