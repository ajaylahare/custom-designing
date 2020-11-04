// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class YourOrderScreen extends StatelessWidget {
//   @override
//   // Widget build(BuildContext context) {
//   //   return StreamBuilder(
//   //       stream:Firestore.instance
//   //           .collection('slider/')
//   //           .snapshots(),// FirebaseAuth.instance.onAuthStateChanged,
//   //       builder: (ctx, usersnapshot) {
//   //         if (usersnapshot.hasData)
//   //           return Scaffold(
//   //             appBar: AppBar(
//   //               centerTitle: true,
//   //               title: Text('your orders'),
//   //             ),
//   //             body: Center(
//   //               child: Text('No orders Yet ,pls do some orders'),
//   //             ),
//   //           );
//   //      //   return AuthScreen();
//   //       });
//   // }
//   Widget build(BuildContext context) {
//     var wdt = MediaQuery.of(context).size.width;
//     var ps = Colors.black87;
//     var ac = Colors.grey.shade300;
//     var hgt = MediaQuery.of(context).size.height;

//     Widget orderBuilder(String name, int quantity) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             name,
//             style: TextStyle(fontSize: wdt / 20),
//           ),
//           Text(
//             "x" + quantity.toString(),
//             style: TextStyle(fontSize: wdt / 20),
//           ),
//         ],
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Orders"),
//         backgroundColor: ps,
//         centerTitle: true,
//       ),
//       body: Container(
//         height: hgt / 1.2,
//         padding: EdgeInsets.symmetric(horizontal: wdt / 20, vertical: hgt / 50),
//         decoration: BoxDecoration(
//             border: Border.all(width: wdt / 250), color: Colors.grey.shade200),
//         margin: EdgeInsets.only(top: hgt / 35, left: wdt / 35, right: wdt / 35),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [orderBuilder("name", 5)],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FoodOrderPage extends StatefulWidget {
  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Center(
            child: Text(
              "Item Carts",
              style: TextStyle(
                  color: Color(0xFF3a3737),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            CartIconWithBadge(),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Your Food Cart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CartItem(
                    productName: "Grilled Salmon",
                    productPrice: "\$96.00",
                    productImage: "ic_popular_food_1",
                    productCartQuantity: "2"),
                SizedBox(
                  height: 10,
                ),
                CartItem(
                    productName: "Meat vegetable",
                    productPrice: "\$65.08",
                    productImage: "ic_popular_food_4",
                    productCartQuantity: "5"),
                SizedBox(
                  height: 10,
                ),
                PromoCodeWidget(),
                SizedBox(
                  height: 10,
                ),
                TotalCalculationWidget(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PaymentMethodWidget(),
              ],
            ),
          ),
        ));
  }
}

class PaymentMethodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                  width: 50,
                  height: 50,
                ),
              ),
              Text(
                "Credit/Debit Card",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TotalCalculationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 25, right: 30, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Grilled Salmon",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$192",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Meat vegetable",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$102",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$292",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ]),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
                  borderRadius: BorderRadius.circular(7)),
              fillColor: Colors.white,
              hintText: 'Add Your Promo Code',
              filled: true,
              suffixIcon: IconButton(
                  icon: Icon(
                    Icons.local_offer,
                    color: Color(0xFFfd2c2c),
                  ),
                  onPressed: () {
                    debugPrint('222');
                  })),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  String productName;
  String productPrice;
  String productImage;
  String productCartQuantity;

  CartItem({
    Key key,
    @required this.productName,
    @required this.productPrice,
    @required this.productImage,
    @required this.productCartQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                        child: Image.network(
                      "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                      width: 100,
                      height: 100,
                    )),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "$productName",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF3a3a3b),
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(
                                "$productPrice",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF3a3a3b),
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                            width: 25,
                            height: 25,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerRight,
                      child: AddToCartMenu(2),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class CartIconWithBadge extends StatelessWidget {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.business_center,
              color: Color(0xFF3a3737),
            ),
            onPressed: () {}),
        counter != 0
            ? Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}

class AddToCartMenu extends StatelessWidget {
  int productCounter;

  AddToCartMenu(this.productCounter);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 18,
          ),
          InkWell(
            onTap: () => print('hello'),
            child: Container(
              width: 100.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Color(0xFFfd2c2c),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  'Add To $productCounter',
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 18,
          ),
        ],
      ),
    );
  }
}