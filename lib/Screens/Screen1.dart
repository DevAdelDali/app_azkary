import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1_Launcher extends StatefulWidget {
  const Screen1_Launcher({Key? key}) : super(key: key);

  @override
  State<Screen1_Launcher> createState() => _Screen1_LauncherState();
}

class _Screen1_LauncherState extends State<Screen1_Launcher> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushNamed(context, "/screen2");
    });
  }
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(


      body:Container(
        child: Text(" مسبحة أذكاري ", style: GoogleFonts.arefRuqaa(fontSize: 30)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(

              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [


            Colors.teal.shade400,
                Colors.blue.shade400,
          ])
        ),
      ) ,
    );
  }
}
