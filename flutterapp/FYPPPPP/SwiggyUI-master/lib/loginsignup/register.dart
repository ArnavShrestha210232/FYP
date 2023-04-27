import 'package:swiggy_ui/loginsignup/ui_helper.dart';
import 'package:flutter/material.dart';

import '../views/mobile/swiggy/Main_Home_Page.dart';
import '../views/mobile/swiggy/swiggy_screen.dart';

class MtRegister extends StatefulWidget {
  const MtRegister({super.key});

  @override
  State<MtRegister> createState() => _MtRegisterState();
}

class _MtRegisterState extends State<MtRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 800,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              iconSize: 30,
              icon: Icon(Icons.arrow_back),
              color: Color.fromARGB(255, 244, 85, 0),
              onPressed: () => {Navigator.pushNamed(context, '/swiggy_screen')},
            );
          },
        ),
      ),
      //: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: UiHelper.displayWidth(context) * 0.06,
                  left: UiHelper.displayWidth(context) * 0.06),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'images/orangeananda.png',
                      height: 300,
                      width: 300,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 6),
                    child: const Text('Register your Account',
                        style: TextStyle(
                            color: Color.fromARGB(255, 15, 15, 14),
                            fontSize: 20,
                            fontFamily: "RobotoCondensed-Light")),
                  ),
                  const SizedBox(
                    height: 10,
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
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "First Name",
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
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Last Name",
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
                    height: 10,
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
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Contact Number",
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
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
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
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Gender",
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
                    height: 10,
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
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Age",
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
                    height: 10,
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
                        fillColor: const Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          //Before Click display
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(
                                  0.2), //borderline opacity lightcolored
                              width: 0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
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
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
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
                      obscureText: true,
                      keyboardType:
                          TextInputType.visiblePassword, //remove underline.
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Confirm Password",
                        enabledBorder: OutlineInputBorder(
                          //Before Click display
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(
                                  0.2), //borderline opacity lightcolored
                              width: 0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
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
                          borderRadius: BorderRadius.all(
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
                              builder: (context) => const SwiggyScreen()));
                      // Add your sign-in functionality here
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 115,
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('- Or Sign up with- ',
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
                ],
              )),
        ],
      ),
    );
  }
}
