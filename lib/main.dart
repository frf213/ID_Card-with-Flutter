import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Student ID Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            SizedBox(
                  child: Image(
                    height:150,
                    width: 100,
                    image: AssetImage('assets/Images/logo.JPG'),
                  ),
            ),

            const Text(
                  'Islamic University of Technology',
                  style: TextStyle(fontSize: 25),
                ),


            SizedBox(
              child: Image(
                height:120,
                width: 80,
                image: AssetImage('assets/Images/human.JPG'),
              ),
            ),



            SizedBox(
              height: 30,
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.bloodtype),
                  Text(
                    'Name: Farhan Fuad',
                    style: TextStyle(fontSize: 20),
                  ),
                ]),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.perm_identity),
                  Text(
                    'ID: 190041213',
                    style: TextStyle(fontSize: 20),
                  ),
                ]),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.bloodtype),
                  Text(
                    'Session: 2019-2020',
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bloodtype),
              Text(
                'Blood Group: B+',
                style: TextStyle(fontSize: 20),
              ),
            ]),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.computer),
                  Text(
                    'B.Sc in CSE',
                    style: TextStyle(fontSize: 20),
                  ),
                ]),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_sharp),
                  Text(
                    'Dhaka, Bangladesh',
                    style: TextStyle(fontSize: 20),
                  ),
                ]),

            SizedBox(
              height: 90,
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Text(
                  'A subsidiary organ of OIC',
                  style: TextStyle(fontSize: 16),
              ),

            ),


          ],
        ),
      ),
    );
  }
}
