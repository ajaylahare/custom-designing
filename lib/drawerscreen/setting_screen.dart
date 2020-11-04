// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class YourSettingScreen extends StatelessWidget {
//   @override
//   // Widget build(BuildContext context) {
//   //   return StreamBuilder(
//   //       stream: Firestore.instance
//   //           .collection('slider/')
//   //           .snapshots(),//FirebaseAuth.instance.onAuthStateChanged,
//   //       builder: (ctx, usersnapshot) {
//   //         if (usersnapshot.hasData)
//   //           return Scaffold(
//   //             appBar: AppBar(
//   //               centerTitle: true,
//   //               title: Text('your setting'),
//   //             ),
//   //             body: Center(
//   //               child: Text('setting'),
//   //             ),
//   //           );
//   //         //return AuthScreen();
//   //       });
//   // }
//    @override
//   Widget build(BuildContext context) {
//     var wdt = MediaQuery.of(context).size.width;
//     var ps = Colors.black87;
//     var ac = Colors.grey.shade300;
//     var hgt = MediaQuery.of(context).size.height;

//     Widget cardV(Function fnc, String name) {
//       return GestureDetector(
//         child: Container(
//           width: wdt,
//           decoration: BoxDecoration(
//               color: ac,
//               border: Border.symmetric(
//                   vertical: BorderSide(color: Colors.grey.shade500))),
//           alignment: Alignment.centerLeft,
//           padding: EdgeInsets.only(left: wdt / 20),
//           height: hgt / 9,
//           child: Text(
//             name,
//             style: TextStyle(
//                 color: ps, fontSize: wdt / 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         onTap: null,
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Settings"),
//         backgroundColor: ps,
//         centerTitle: true,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             border: Border(
//                 left: BorderSide(
//                   color: ps,
//                   width: wdt / 80,
//                 ),
//                 right: BorderSide(
//                   color: ps,
//                   width: wdt / 80,
//                 ),
//                 bottom: BorderSide(
//                   color: ps,
//                   width: wdt / 80,
//                 ))),
//         child: Container(
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.black87, width: wdt / 100)),
//           // margin: EdgeInsets.only(top: hgt / 25, bottom: hgt / 8),
//           child: Column(
//             children: [
//               cardV(null, "Notifications"),
//               cardV(null, "Language"),
//               cardV(null, "Sign Out"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Change password"),
            buildAccountOptionRow(context, "Content settings"),
            buildAccountOptionRow(context, "Social"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy and security"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.cast,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("New for you", true),
            buildNotificationOptionRow("Account activity", true),
            buildNotificationOptionRow("Opportunity", false),
            SizedBox(
              height: 50,
            ),
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}