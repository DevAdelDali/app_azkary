import 'package:app_azkar/Screens/Screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2_Home extends StatefulWidget {
  const Screen2_Home({Key? key}) : super(key: key);

  @override
  State<Screen2_Home> createState() => _Screen2_HomeState();
}

class _Screen2_HomeState extends State<Screen2_Home> {
  int count = 0;
  String textShow = " أستغفر الله ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/screen3",
                    arguments: <String, dynamic> {
                      "massage1": "This is Massage Arguments "
                    });

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Screen3_Info()
                //
                //     )
                //
                // );
              },
              icon: const Icon(Icons.info, color: Colors.black))
        ],
        title: Text(
          "أذكاري",
          style: GoogleFonts.arefRuqaa(fontSize: 20, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ++count;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.teal.shade400),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.shade500,
          Colors.teal.shade300,
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                // borderRadius: BorderRadius.circular(40)
              ),
              child: const Image(
                image: NetworkImage(
                    "https://www.pngall.com/wp-content/uploads/12/Avatar-PNG-Photos.png"),
                fit: BoxFit.cover,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(
                30,
              ),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    textShow,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arefRuqaa(
                      fontSize: 26,
                    ),
                  )),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.teal,
                    alignment: AlignmentDirectional.center,
                    child: Text("$count",
                        style: GoogleFonts.arefRuqaa(fontSize: 20, height: 1)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade600,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15)))),
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: const Text("تسبيح")),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade400,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15)))),
                        onPressed: () {
                          setState(() {
                            count = 0;
                          });
                        },
                        child: const Text("إعادة")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
