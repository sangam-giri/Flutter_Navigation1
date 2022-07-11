import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



//Creating a StatelessWidget inside the main.dart page

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Setting the FirstPage as the home of the MaterialApp 
      home: FirstPage(),
    );
  }
}


// The FirstPage Statless widget this is the first page of the application 
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Page",style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){

            // We are navigating to the SecondPage and pushing the data "Hello Second Page" - This method is basic and is unsafe for applications where safety is a concern

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
              SecondPage(data: "Hello Second Page"), 
              ),
            );
          }, child: Text("Go to second"),),

          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  // initialize the data 
    final String data;

//Initialize the data in SecondPage
  const SecondPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Page",style: TextStyle(fontSize: 50),),
            // This text widget will contain the data that has been passed from the FirstPage 
            Text(data,style: TextStyle(fontSize: 20),),
          ],
        ),
      ),

    );
  }
}