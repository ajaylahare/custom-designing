// import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import '../auth/auth_screen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class YourAccountScreen extends StatelessWidget {
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
//   //               title: Text('your account'),
//   //             ),
//   //             body: Center(
//   //               child: Text('yours account details  '),
//   //             ),
//   //           );
//   //        // return AuthScreen();
//   //       });
//   // }
//   Widget build(BuildContext context) {
//     var wdt = MediaQuery.of(context).size.width;
//     var ps = Colors.black87;
//     var ac = Colors.grey.shade300;
//     var hgt = MediaQuery.of(context).size.height;
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("My Account"),
//           backgroundColor: ps,
//           centerTitle: true,
//         ),
//         body: Container(
//           color: Colors.black87,
//           child: ClipRRect(
//             child: Container(
//               height: hgt / 1.1,
//               margin: EdgeInsets.symmetric(
//                   vertical: hgt / 50, horizontal: hgt / 80),
//               child: Card(
//                 color: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   side: BorderSide(color: Colors.white, width: 10),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 elevation: 20,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(height: hgt / 20),
//                       Stack(
//                         // mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                             radius: wdt / 7,
//                           ),
//                           Positioned(
//                             bottom: 0,
//                             right: 0,
//                             child: IconButton(
//                                 icon: Icon(
//                                   Icons.edit,
//                                   color: Colors.white,
//                                 ),
//                                 onPressed: null),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: hgt / 35,
//                       ),
//                       Container(),
//                       Container(
//                         margin: EdgeInsets.only(top: hgt / 30),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Text(
//                               "Name ",
//                               style: TextStyle(
//                                   color: ps,
//                                   fontSize: wdt / 25,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Container(
//                               width: wdt / 1.8,
//                               height: hgt / 22,
//                               child: Container(
//                                 // color: Colors.grey.shade300,
//                                 decoration: BoxDecoration(
//                                     border: Border.all(color: ps)),
//                                 child: TextField(
//                                   decoration:
//                                       InputDecoration(border: InputBorder.none),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: hgt / 20,
//                       ),
//                       Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Text(
//                               "Phone\nNumber. ",
//                               style: TextStyle(
//                                   color: ps,
//                                   fontSize: wdt / 25,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Container(
//                               height: hgt / 22,
//                               decoration:
//                                   BoxDecoration(border: Border.all(color: ps)),
//                               width: wdt / 1.8,
//                               child: TextField(
//                                 decoration:
//                                     InputDecoration(border: InputBorder.none),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: hgt / 20,
//                       ),
//                       Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Text(
//                               "E-Mail ",
//                               style: TextStyle(
//                                   color: ps,
//                                   fontSize: wdt / 25,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Container(
//                               height: hgt / 22,
//                               decoration:
//                                   BoxDecoration(border: Border.all(color: ps)),
//                               width: wdt / 1.8,
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }
import 'package:first_app/drawerscreen/setting_screen.dart';
import 'package:flutter/material.dart';


// class SettingsUI extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Setting UI",
//       home: EditProfilePage(),
//     );
//   }
// }

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {Navigator.of(context).pop();
            
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Full Name", "Dor Alex", false),
              buildTextField("E-mail", "alexd@gmail.com", false),
              buildTextField("Password", "********", true),
              buildTextField("Location", "TLV, Israel", false),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}