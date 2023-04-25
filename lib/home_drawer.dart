import 'package:flutter/material.dart';
import 'package:tutorial2/pages/first_page.dart';
import 'package:tutorial2/pages/second_page.dart';
import 'package:tutorial2/pages/third_page.dart';
import 'package:tutorial2/searchbar.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('MyApp'),
        backgroundColor: Colors.black,
        actions:[
          IconButton(
              onPressed: () {showSearch(context: context, delegate: SearchBar());
                },
              icon: const Icon(Icons.search_rounded)
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications)
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert)
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
                title: const Text('page 1',style:TextStyle(
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
                title: const Text('page 2',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SecondPage())
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.list,
                  color: Colors.white,
                ),
                title: const Text('page 3',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ThirdPage())
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
    );
  }
}