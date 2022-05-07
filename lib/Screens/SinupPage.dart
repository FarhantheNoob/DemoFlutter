import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/app_background.png'),
                fit: BoxFit.cover)),
      ),
      SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white10),
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset('assets/airplane.png'),
                  ),
                  SizedBox(height: 24),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Enjoy the Trip\nwith me',
                      style: GoogleFonts.poppins(
                          fontSize: 32, color: Colors.black54),
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0)),
                        color: Colors.white),
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'New\nAccount',
                                style: GoogleFonts.poppins(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.orange)),
                                  child: InkWell(
                                    onTap: () {
                                      print('Open Gallery');
                                    },
                                    child: Icon(
                                      Icons.camera,
                                      size: 32,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Upload Picture',
                                  style: GoogleFonts.poppins(),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter Email Address',
                              labelText: 'Email',
                              labelStyle: GoogleFonts.poppins(),
                              icon: Icon(Icons.email)),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter Username',
                              labelText: 'Username',
                              labelStyle: GoogleFonts.poppins(),
                              icon: Icon(Icons.person)),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Password',
                              labelStyle: GoogleFonts.poppins(),
                              icon: Icon(Icons.lock)),
                          obscureText: true,
                        ),
                        SizedBox(height: 32),
                        InkWell(
                          onTap: () {
                            print('SignedUp Successfulyy.');
                          },
                          child: Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.deepOrange),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              )))
    ]);
  }
}
