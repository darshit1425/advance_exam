import 'package:advance_exam/utils/shredpraferance.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          backgroundColor: Colors.blueAccent,
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
                    "Login ",
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
                    decoration: InputDecoration(
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
                    height: 25,
                  ),
                  // Icon(Icons.title_sharp),

                  InkWell(
                    onTap: () async {
                      String userEmail = txtemail.text;
                      String userpassword = txtpassword.text;

                      Shr shr = Shr();
                      Map m1 = await shr.readShr();
                      if (userEmail == m1['e1'] && userpassword == m1['p1']) {
                        Navigator.pushNamed(context, "Todo");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Invalied Id or Password"),
                          ),
                        );
                      }

                      // Navigator.pushNamed(context, "Home");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 48,
                      width: 180,
                      child: Text(
                        "Login",
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
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'sing');
                    },
                    child: Text(
                      "Don't have Account? Sign Up",
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
