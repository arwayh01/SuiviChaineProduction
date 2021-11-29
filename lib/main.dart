import 'package:flutter/material.dart';
import 'package:hello_world/contract_linking.dart';
import 'package:hello_world/hello_ui.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    // Inserting Provider as a parent of HelloUI()
    return ChangeNotifierProvider<ContractLinking>(
      create: (_) => ContractLinking(),
      child: MaterialApp(
        title: "Hello World",
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.cyan[400],
            //colorSchemeSecondary : Colors.deepOrange[200]
            ),
        home: HelloUI(),
      ),
    );
  }
}
