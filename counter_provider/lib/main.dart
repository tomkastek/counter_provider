import 'package:counter_provider/counter_model.dart';
import 'package:counter_provider/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<CounterModel>(
          create: (context) => CounterModel(),
          child: CounterPage(title: 'Flutter Demo Home Page')),
    );
  }
}
