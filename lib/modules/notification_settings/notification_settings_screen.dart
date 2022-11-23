import 'package:flutter/material.dart';


class NotificationSettingsScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context);

          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 23.0,
          ),
        ),
        elevation: 0,
        title: const Text("اعدادات الاشعارات",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          InkWell(
            onTap: () {},
            child: Ink(
              decoration:  const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange]),
                //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
              ),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  SizedBox(width: 48),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "تفعيل/عدم التفعيل",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.0,
                    child: Switch(value: false, onChanged: (check){
                      print("object");
                    }),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          InkWell(
            onTap: () {},
            child: Ink(
              decoration:  const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange]),
                //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
              ),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(width: 48),
                  Expanded(
                    child: Center(
                      child: Text(
                        "نغمة الاشعارات",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.0,
                    // child: Icon(
                    //   Icons.arrow_forward_ios,
                    //   color: Colors.white,
                    //   size: 23.0,
                    // ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          InkWell(
            onTap: () {},
            child: Ink(
              decoration:  const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange]),
                //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
              ),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(width: 48),
                  Expanded(
                    child: Center(
                      child: Text(
                        "تخصيص الاشعارات",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.0,
                    // child: Icon(
                    //   Icons.arrow_forward_ios,
                    //   color: Colors.white,
                    //   size: 23.0,
                    // ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
