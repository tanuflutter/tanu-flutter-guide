import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Of Program"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RowAndColumn()));
            },
            title: const Text("Use of Row and Column"),
            leading: const CircleAvatar(
              backgroundColor: Colors.blueAccent,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddTwoNumber()));
            },
            title: const Text("Add Two Number"),
            leading: const CircleAvatar(
              backgroundColor: Colors.blueAccent,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TableProgram()));
            },
            title: const Text("Table Program"),
            leading: const CircleAvatar(
              backgroundColor: Colors.blueAccent,
            ),
          )
        ],
      ),
    );
  }
}

class AddTwoNumber extends StatefulWidget {
  AddTwoNumber({super.key});

  @override
  State<AddTwoNumber> createState() => _AddTwoNumberState();
}

class _AddTwoNumberState extends State<AddTwoNumber> {
  var num1=TextEditingController();

  var num2=TextEditingController();

  String sum="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text("Add Two Number"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const Text("Enter Two Number"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: num1,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter First Number")
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: num2,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Second Number")
              ),
            ),
          ),
          Container(
            height: 48,
            width: double.infinity,
            margin: EdgeInsets.all(16),
            child: ElevatedButton(onPressed: () {

              int result=int.parse(num1.text) + int.parse(num2.text);


              setState(() {
                sum=result.toString();
              });

            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent
            ), child: const Text("RESULT",style: TextStyle(
              color: Colors.white
            ),)),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("$sum",style: const TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
          )

        ],
      ),
    );
  }
}

class TableProgram extends StatelessWidget {
  const TableProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Program"),
      ),
      body: const Column(
        children: [Text(" Hello World")],
      ),
    );
  }
}

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Use Of Row And Column"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.greenAccent,
                        child: const Text("Box1",style: TextStyle(color: Colors.white,fontSize: 35),),
                      )),
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.blueAccent,
                        child: const Text("Box2",style: TextStyle(color: Colors.white,fontSize: 35),),
                      )),
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.orangeAccent,
                        child: const Text("Box3",style: TextStyle(color: Colors.white,fontSize: 35),),
                      )),
                ],
              )),
          Expanded(
              child: Container(
            color: Colors.cyan,
          ))
        ],
      ),
    );
  }
}
