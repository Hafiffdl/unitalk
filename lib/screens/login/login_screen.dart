// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:tryapp/constants/color_collection.dart';
import 'package:tryapp/constants/decoration_collection.dart';
import 'package:tryapp/constants/textcollection.dart';
import 'package:tryapp/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCont = TextEditingController();
  bool isPasswordVisible = false;
  TextEditingController passwordcCont = TextEditingController();

  @override
  void dispose() {
    emailCont.dispose();
    passwordcCont.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    isPasswordVisible = true;
  }

  void showpassword() {
    setState(() {
        isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: ColorCollection.primary,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorCollection.primary),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.17,
                  child: SvgPicture.asset("assets/svg/logo_unitalk.svg"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Masuk',
                        style: TextCollection.heading1,
                      ),
                      Text(
                        'Silahkan masuk untuk melanjutkan!',
                        style: TextCollection.bodylogin,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: emailCont,
                decoration: DecorationCollection().emailField,
              ),
              const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          passwordcCont.text = value;
                        });
                      },
                      controller: passwordcCont,
                      obscureText: isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Kata Sandi',
                        hintText: 'Masukan Kata Sandi Anda',
                        suffixIcon: IconButton(
                          onPressed: showpassword,
                          icon: Icon(isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility, color: ColorCollection.sideColor),
                        ),
                        filled: true,
                        fillColor: ColorCollection.fillColor,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: ColorCollection.sideColor,
                            width: 1.50,
                          )
                        ),
                        prefixIcon: const Icon(Icons.lock, color: ColorCollection.sideColor),
                        contentPadding: const EdgeInsets.all(13),
                                        ),
                                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                      
                            },
                            child: const Text('Lupa kata sandi?', style: TextCollection.loginbuttontext),
                          )
                        ]
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10, horizontal: 24)),
                            backgroundColor: MaterialStateProperty.all(ColorCollection.primary),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                            )
                          ),
                          onPressed: () {
                            Get.to(const HomeScreen());
                          }, 
                          child: const Text(
                            'Masuk', style: TextCollection.buttontext,
                            ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            '  Masuk dengan  ',
                            style: TextCollection.bodytext,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          print('masuk google');
                        },
                        child: Container(
                          width: 75,
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              width: 1, color: ColorCollection.sideColor
                            ),
                        ),
                        child: FractionallySizedBox(
                          widthFactor: 0.6,
                          heightFactor: 0.6,
                          child: SvgPicture.asset(
                            "assets/svg/google_logo.svg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
