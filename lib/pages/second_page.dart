import 'package:flutter/material.dart';
import 'package:tutorial2/Tabs/first_tab.dart';
import 'package:tutorial2/Tabs/second_tab.dart';

import '../Tabs/third_tab.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        title:Padding(padding: EdgeInsets.all(80),
          child:Text('THE TAB BAR'),
        ),
        backgroundColor: Colors.pink,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new)
        ),
      ),
      body: Column(
        children: [
          TabBar(
              tabs:[
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black45,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black45,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black45,
                  ),
                ),
              ],
          ),
          Expanded(child: TabBarView(children: [
            FirstTab(),
            SecondTab(),
            ThirdTab(),
          ])
          )
        ],
      )
    )
    );
  }
}
