import 'package:flutter/material.dart';
class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _selectedIndex = -1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 50,
              color: _selectedIndex == index ? Colors.blue : Colors.transparent,
              child: ListTile(
                title: Text('This is some title'),
                onTap: () => setState(() {
                  _selectedIndex = index;
                  print(_selectedIndex.toString());
                }),
              ),
            );
          }),
    );
  }
}
