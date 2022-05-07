import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60)),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 40, left: 40),
                                  child: Text(
                                    'Welcome back\nAlice',
                                    style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 40, right: 40),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.orange)),
                                    child: CircleAvatar(
                                      child: Image.asset(
                                        'assets/profile.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, right: 40, top: 16),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Enter Password',
                                    labelText: 'Password',
                                    labelStyle: GoogleFonts.poppins(),
                                    icon: Icon(Icons.lock)),
                                obscureText: true,
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    print('Forgot Password?');
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.poppins(
                                        color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            InkWell(
                              onTap: () {
                                print('SignedIn Successfully.');
                              },
                              child: Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.deepOrange),
                                child: Center(
                                  child: Text(
                                    'Sign In',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'or sign in with',
                                style:
                                    GoogleFonts.poppins(color: Colors.black54),
                              ),
                            ),
                            SizedBox(height: 24),
                            Container(
                              width: 140,
                              height: 32,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Image.asset('assets/google.png', fit: BoxFit.cover,),
                                  Image.asset('assets/facebook.png', fit: BoxFit.cover,),
                                  Image.asset('assets/twitter.png', fit: BoxFit.cover,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                    ])))
      ],
    );
  }
}
