import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _weight = 50; 
  double _height = 170; 
  String _major = 'Comsci'; 
  String _language = 'Thai'; 
  bool _agreedToTerms = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 50), 
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/123.png',), 
              ),
            ),
            SizedBox(height: 20), 
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 15), 
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                    ),
                    SizedBox(height: 5), 
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 15), 
                    Text(
                      'Username',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5), 
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                    ),
                    SizedBox(height: 5), 
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 15), 
                    Text(
                      'Weight',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                    ),
                    SizedBox(height: 5), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${_weight.toInt()} kg',
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(
                          child: Slider(
                            value: _weight,
                            min: 1,
                            max: 200,
                            divisions: 199,
                            label: _weight.toInt().toString(),
                            onChanged: (value) {
                              setState(() {
                                _weight = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15), 
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                    ),
                    SizedBox(height: 5), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${_height.toInt()} cm',
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(
                          child: Slider(
                            value: _height,
                            min: 1,
                            max: 250,
                            divisions: 249,
                            label: _height.toInt().toString(),
                            onChanged: (value) {
                              setState(() {
                                _height = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15), 
                    Text(
                      'Major',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                    ),
                    SizedBox(height: 5), 
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _major = 'Comsci';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _major == 'Comsci' ? Colors.blue : Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'Comsci',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _major = 'IT';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _major == 'IT' ? Colors.orange : Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'IT',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15), 
                    Text(
                      'Language',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                    ),
                    SizedBox(height: 5), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RadioListTile<String>(
                          title: Text('Thai'),
                          value: 'Thai',
                          groupValue: _language,
                          onChanged: (value) {
                            setState(() {
                              _language = value!;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('English'),
                          value: 'English',
                          groupValue: _language,
                          onChanged: (value) {
                            setState(() {
                              _language = value!;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('Chinese'),
                          value: 'Chinese',
                          groupValue: _language,
                          onChanged: (value) {
                            setState(() {
                              _language = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 15), 
                    Row(
                      children: [
                        Checkbox(
                          value: _agreedToTerms,
                          onChanged: (value) {
                            setState(() {
                              _agreedToTerms = value!;
                            });
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _agreedToTerms = !_agreedToTerms;
                            });
                          },
                          child: Text(
                            'Agree Condition Terms',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), 
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: Text('REGISTER', style: TextStyle(fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, 
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
