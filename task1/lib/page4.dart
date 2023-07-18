import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page4',
        ),
        backgroundColor: Colors.pink[500],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(
                  fontFamily: 'MontserratRegular',
                ),
              ),
              SizedBox(height:10),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(
                    context, 
                    '/page1',
                    (route) => false,
                  );
                },
                  child: Text(
                  'Go back to page 1',
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}