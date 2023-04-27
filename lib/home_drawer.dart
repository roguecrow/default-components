
import 'package:flutter/material.dart';
import 'package:tutorial2/pages/fifth_page.dart';
import 'package:tutorial2/pages/first_page.dart';
import 'package:tutorial2/pages/fourth_page.dart';
import 'package:tutorial2/pages/second_page.dart';
import 'package:tutorial2/pages/third_page.dart';
import 'package:tutorial2/searchbar.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  var _Count = 0;

  void _incrementNotificationCount() {
    setState(() {
      _Count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var countString = _Count.toString();
    return Scaffold(
      appBar: AppBar(
        title:const Text('MyApp'),
        backgroundColor: Colors.black,
        actions:[
          IconButton(
              onPressed: () {showSearch(context: context, delegate: SearchBar());
                },
              icon: const Icon(Icons.search_rounded),
          ),
          PopupMenuButton(
              itemBuilder: (context)=>[
                PopupMenuItem(
                    child: Row(
                      children: const [
                        Icon(
                            Icons.offline_bolt,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text('Item01'),
                        ),
                      ],
                    ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('Item02'),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('Item03'),
                      ),
                    ],
                  ),
                ),
              ]
          ),
          IconButton(
            onPressed: () {},
            icon: const Badge(
              label: Text('' ,style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.red,
              child: Icon(Icons.notifications),
            ),
          ),
        ],

        shadowColor: Colors.black45,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          )
        ),
      ),
      drawer: Drawer(
        child: Container(
          color:Colors.black87,
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                      child:Text('LOGO',style:TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
              ),
              ListTile(
                leading: const Icon(Icons.list,
                  color: Colors.white,
                ),
                title: const Text('SILVER APP BAR',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FirstPage())
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.list,
                  color: Colors.white,
                ),
                title: const Text('TAB BAR',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                      const SecondPage(),
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return PositionedTransition(
                            rect: RelativeRectTween(
                              begin: RelativeRect.fromSize(
                                  const Rect.fromLTWH(0, 0, 0, 0),
                                const Size(0, 0),
                              ),
                              end: RelativeRect.fromSize(
                                  const Rect.fromLTWH(0, 0, 1, 1),
                                const Size(1, 1),
                              ),
                            ).animate(animation),
                            child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                title: const Text(
                  'BOTTOM NAV BAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                      const ThirdPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.list,
                  color: Colors.white,
                ),
                title: const Text('TEXT FIELD',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                      const FourthPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.list,
                  color: Colors.white,
                ),
                title: const Text('CHECKBOX LISTVIEW',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                      const FifthPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return RotationTransition(
                            turns: Tween<double>(
                              begin: 0.0,
                              end: 1.0,
                            ).animate(animation),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'hello',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementNotificationCount,
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}