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
