import 'package:flutter/material.dart';
import 'package:projectprovider/CounterProvider.dart';
import 'package:projectprovider/CounterWidget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<CounterProvider>(
    create: (_) => CounterProvider(),
    child: MaterialApp(
      home: Counter(),
    ),
  ));
}

int n = 0;

class Counter extends StatelessWidget {
  int c = 0;
  int n = 0;

  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context,listen: false);
    print('${n++}');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count.counter(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'test1',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            CounterWidget(),
            SizedBox(height: 5),
            Text(
              'test3',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'test4',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}






























/* void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int c = 0;
  int n = 0;
  counter() {
    c++;
    setState(() {   
    });
  }

  @override
  Widget build(BuildContext context) {
    print('${n++}');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => counter(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'test1',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '$c',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'test3',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'test4',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
 */