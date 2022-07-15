import 'package:flutter/cupertino.dart';
import 'package:projectprovider/CounterProvider.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context);
    return Text(
      '${count.c}',
      style: TextStyle(fontSize: 20),
    );
  }
}
