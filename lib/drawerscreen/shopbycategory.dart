import 'package:first_app/screen1/category%20detail.dart';
import 'package:flutter/material.dart';



class ShopByCategory extends StatefulWidget {
  @override
  _ShopByCategoryState createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'HARDWARE',
        ),
        actions: [
              CartIconWithBadge(),
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Explore all Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Mens Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetail('Mens Fashion'),
                  ),
                );
                //  Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Womens Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetail('Womens Fashion'),
                  ),
                );
                //  Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Boy Child Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetail('Boy Child Fashion'),
                  ),
                );
                //  Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Girl Child Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetail('Girl Child Fashion'),
                  ),
                );
                // Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Mug Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetail('Mug Fashion'),
                  ),
                );
                // Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Mobile Cover Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CategoryDetail('Mobile Cover Fashion'),
                  ),
                );
                // Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Laptop Cover Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CategoryDetail('Laptop Cover Fashion'),
                  ),
                );
                // Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Others Fashion'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetail('Others Fashion'),
                  ),
                );
                // Navigator.of(context).pushNamed('/your_notify_screen');
              },
            ),
          ],
        ),
      ),
                
     
          
    );
  }
}
class CartIconWithBadge extends StatelessWidget {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
          height: 50,
          width: 50,
          child: Card(
            
            shape: RoundedRectangleBorder(
              
                                  borderRadius: BorderRadius.circular(60),),
                    child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
        ),
        counter != 0
            ? Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.black,
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