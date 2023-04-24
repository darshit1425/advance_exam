import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/shredpraferance.dart';

class Singin_Screen extends StatefulWidget {
  const Singin_Screen({Key? key}) : super(key: key);

  @override
  State<Singin_Screen> createState() => _Singin_ScreenState();
}

class _Singin_ScreenState extends State<Singin_Screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Sing UP",
            style:
                GoogleFonts.almarai(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                    "Sing up",
                    style: GoogleFonts.arimo(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtemail,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.blueAccent,
                      ),
                      label: Text(
                        "EMAIL",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: txtpassword,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blueAccent,
                      ),
                      label: Text(
                        "PASSWORD",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Icon(Icons.title_sharp),

                  InkWell(
                    onTap: () {
                      var email = txtemail.text;
                      var password = txtpassword.text;
                      Shr shr = Shr();
                      shr.createdShr(email, password);
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      child: Text(
                        "Sing up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Don't have Account? Login in",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
