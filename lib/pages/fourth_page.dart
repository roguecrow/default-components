import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> with SingleTickerProviderStateMixin {
  final _textController = TextEditingController();

  //string to store the user input

  String userPost = '';
  List <String> allWords = [];

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 500),
    );
  }

  @override
  void dispose() {
    // Dispose all created animations when the widget is disposed
    _textController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EDIT TEXT'),
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Display text
            Expanded(
              child: Container(
                color: Colors.white54,
                child: Center(
                  child: Text(
                    userPost,
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),

            //Text field input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'what\'s on your on your mind?',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear))),
            ),

            //POST the text:
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 8.0),
                     child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            userPost = _textController.text;
                          });
                        },
                        color: Colors.red,
                       splashColor: Colors.amber,
                       minWidth:50,
                       height: 50,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8.0),
                       ),
                        child: const Text(
                          'POST',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
            ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: MaterialButton(
                       onPressed: () {
                         showModalBottomSheet(
                           context: context,
                           builder: (BuildContext context) {
                             return SizedBox(
                               height: 200.0,
                               child: ListView.builder(
                                 itemCount: allWords.length,
                                 itemBuilder: (BuildContext context, int index) {
                                   return ListTile(
                                     title: Text(allWords[index]),
                                   );
                                 },
                               ),
                             );
                           },
                         );
                       },
                       color: Colors.indigo,
                       splashColor: Colors.deepPurple,
                       minWidth:50,
                       height: 50,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8.0),
                       ),
                       child: const Text('Show All Data',
                         style: TextStyle(
                           color:Colors.white,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Button Clicked !'),
              duration: const Duration(seconds: 2),
              animation: CurvedAnimation(
                curve: Curves.easeInOut,
                parent: _animationController,
              ),
            ),
          );
          allWords.add(userPost);
        },
        backgroundColor: Colors.orangeAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
