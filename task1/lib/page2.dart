import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page2',
        ),
        backgroundColor: Colors.pink[700],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Hello, $name!'),
              SizedBox(height:10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(
                  fontFamily: 'MontserratItalic',
                ),
              ),
              SizedBox(height:10),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/page3');
                },
                  child: Text(
                  'Go to page 3',
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[700],
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}