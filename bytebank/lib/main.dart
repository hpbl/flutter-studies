import 'package:bytebank/screens/transfer/feed.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TransferFeed(),
        theme: ThemeData(
            primaryColor: Colors.purple[900],
            accentColor: Colors.purple[900],
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.purple[900],
              textTheme: ButtonTextTheme.primary,
            )));
  }
}
