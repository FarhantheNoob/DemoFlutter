import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white10),
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset('assets/airplane.png'),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Enjoy the Trip\nwith me',
                    style: GoogleFonts.poppins(
                        fontSize: 32, color: Colors.black54),
                  ),
                  SizedBox(height: 300),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){},
                      child: Ink(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){},
                      child: Ink(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white60
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
