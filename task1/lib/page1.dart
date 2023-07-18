import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  
  TextEditingController _nameController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page1',
        ),
        backgroundColor: Colors.pink[800],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    fontFamily: 'MontserratBold',
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String name = _nameController.text;
                      Navigator.pushNamed(
                        context,
                        '/page2',
                        arguments: name,
                      );
                    }
                  },
                  child: Text(
                    'Go to page 2',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[800],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
