import 'package:swiggy_ui/loginsignup/register.dart';
import 'package:swiggy_ui/loginsignup/ui_helper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Container  of a screen
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  right: UiHelper.displayWidth(context) * 0.06,
                  left: UiHelper.displayWidth(context) * 0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      'images/orangeananda.png',
                      height: 200,
                      width: 300,
                    ),
                  ),
                  UiHelper.verticalSpace(
                      vspace: Spacing.xxlarge), //Vertical spacing UI Helper
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 6),
                    child: const Text('Login to your Account',
                        style: TextStyle(
                            color: Color.fromARGB(255, 19, 19, 19),
                            fontSize: 20,
                            fontFamily: "RobotoCondensed-Light")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 1), //Opacity ko diraction
                            blurRadius: 10.0, // Opacityko radius
                            spreadRadius: 0 //Opacity spread
                            ), //BoxShadow
                        //BoxShadow
                      ],
                    ),
                    child: TextFormField(
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          //Before Click display
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(
                                  0.2), //borderline opacity lightcolored
                              width: 0,
                              style: BorderStyle.solid),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          //After Click Display
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 234, 228, 228)
                                  .withOpacity(0.2),
                              width: 0,
                              style: BorderStyle.solid),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset(0, 1), //Opacity ko diraction
                            blurRadius: 10.0, // Opacityko radius
                            spreadRadius: 0 //Opacity spread
                            ), //BoxShadow
                        //BoxShadow
                      ],
                    ),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          //Before Click display
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(
                                  0.2), //borderline opacity lightcolored
                              width: 0,
                              style: BorderStyle.solid),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          //After Click Display
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 234, 228, 228)
                                  .withOpacity(0.2),
                              width: 0,
                              style: BorderStyle.solid),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MtRegister()));
                      // Add your sign-in functionality here
                    },
                    child: Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.5,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 254, 106,
                          0), // Set the button's background color
                      onPrimary: Colors.white, // Set the text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: UiHelper.displayWidth(context) *
                              0.34), // Set the padding
                    ),
                  ),
                  UiHelper.verticalSpace(vspace: Spacing.xxlarge),
                  const Text('- Or Sign in with - ',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "RobotoCondensed-Bold",
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: UiHelper.displayWidth(context) * 0.21,
                        height: UiHelper.displayHeight(context) * 0.09,
                        margin: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(13)),
                            //background color of button
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/google.png",
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      UiHelper.horizontaSpace(hspace: Spacing.medium),
                      Container(
                        width: UiHelper.displayWidth(context) * 0.21,
                        height: UiHelper.displayHeight(context) * 0.09,
                        margin: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(13)),
                            //background color of button
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/facebook.png",
                                width: UiHelper.displayWidth(context) * 0.095,
                                height: UiHelper.displayHeight(context) * 0.072,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      UiHelper.horizontaSpace(hspace: Spacing.medium),
                      Container(
                        width: UiHelper.displayWidth(context) * 0.21,
                        height: UiHelper.displayHeight(context) * 0.09,
                        margin: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(13)),
                            //background color of button
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/twitter.png",
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Don't have an Account?",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "RobotoCondensed-Light",
                              color: Colors.grey,
                            )),
                        Text(" Sign up",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "RobotoCondensed-Bold",
                              color: Color.fromARGB(255, 68, 25, 223),
                            )),
                      ]),
                ],
              )),
        ],
      ),
    );
  }
}
