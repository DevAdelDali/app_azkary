import 'package:flutter/material.dart';

class Screen3_Info extends StatelessWidget {
 // final String massege ;
    const Screen3_Info({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    String mass = "Massage";
    ModalRoute? modelRoute = ModalRoute.of(context);

    if (modelRoute != null) {
      if (modelRoute.settings.arguments != null &&
          modelRoute.settings.arguments is Map<String, dynamic>) {
        Map<String, dynamic> map =
            modelRoute.settings.arguments as Map<String, dynamic>;
        if (map.containsKey("massage1")) {
          mass = map["massage1"];
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)
       ,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(mass),
          ),
        ],
      ),
    );
  }
}
