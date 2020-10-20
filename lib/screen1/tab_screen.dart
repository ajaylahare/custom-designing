import 'package:flutter/material.dart';
import '../auth/auth_screen.dart';
import '../screens1/shop_list_screen.dart';
import '../screens2/services_details_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _searchitem = '';
  bool tapped = false;
  List<Map<String, Object>> pages;
  initState() {
    pages = [
      {
        'page': ShopListScreen(),
        'title': 'shops',
      },
      {
        'page': ServicesDetailScreen(),
        'title': 'services',
      },
    ];
    super.initState();
  }

  int selectedpageindex = 0;
  void selectpage(int index) {
    setState(() {
      selectedpageindex = index;
    });
  }
var _enteredsearched='';
final _controller =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         actions: [
          DropdownButton(
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryIconTheme.color,
            ),
            items: [
              DropdownMenuItem(
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 8),
                      Text('logout'),
                    ],
                  ),
                ),
                value: 'logout',
              ),
            ],
            onChanged: (itemidentifier) {
              
                if (itemidentifier == 'logout') FirebaseAuth.instance.signOut();
                Navigator.popUntil(context,ModalRoute.withName("/"));
              
              
              
            },
          )
        ],
        bottom: PreferredSize(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            height: 40,
            width: double.infinity,
            child: TextField(
             autocorrect: true,
             controller: _controller, 
              keyboardType: TextInputType.url,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                suffixIcon: _enteredsearched.length>0? IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _controller.clear();
                           _enteredsearched='';
                          });
                        },
                      ):
                          null,
                        
                      
                   
                hintText: selectedpageindex==0?'search your product Here...':'search your services Here...',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              onChanged: (value) {
              setState(() {
                 _enteredsearched=value;
               

              });
            },
            onSubmitted: (value) {
              setState(() {
                 _enteredsearched=value;
                 print(_enteredsearched);

              });
            },
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
        centerTitle: true,
        title: Text('shop_service'),
       
      ),
      body: pages[selectedpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          currentIndex: selectedpageindex,
          type: BottomNavigationBarType.shifting,
          onTap: selectpage,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.shop),
              title: Text(pages[selectedpageindex]['title']),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text(pages[selectedpageindex]['title']),
            ),
          ]),
    );
  }
}
