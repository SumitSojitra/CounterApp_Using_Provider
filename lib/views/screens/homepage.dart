import 'package:counter_flutter_app/provider/counterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "${Provider.of<CounterProvider>(context, listen: true).counter.cnt}",
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).increseCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
