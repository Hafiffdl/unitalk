import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:tryapp/constants/color_collection.dart';
import 'package:tryapp/constants/textcollection.dart';
import 'package:tryapp/screens/login/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: OnBoardingSlider(
        background: [
          Center(
            child: SvgPicture.asset(
              'assets/svg/travels.svg',
              height: 400,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/svg/upgrading.svg',
              height: 400,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/svg/mothernature.svg',
              height: 400,
            ),
          ),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 370,
                ),
                Text(
                  'Melacak Langkah Ramah \nLingkungan',
                  textAlign: TextAlign.center,
                  style: TextCollection.heading1.copyWith(
                    color: ColorCollection.primary,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Ada fitur keren nih! Kamu bisa cek jejak karbon yang kamu tinggalkan. Jadi, kamu bisa tahu jumlah emisi karbon yang dihasilkan dari aktivitasmu.',
                  textAlign: TextAlign.center,
                  style: TextCollection.bodytext.copyWith(
                    color: ColorCollection.primary,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 370,
                ),
                Text(
                  'Berita Terkini dan Solusi Lingkungan',
                  textAlign: TextAlign.center,
                  style: TextCollection.heading1.copyWith(
                    color: ColorCollection.primary,
                  ),
                  ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Ngasih update terbaru tentang bahaya dan pengaruh emisi karbon, guys! Biar kalian pada tahu risikonya dan gimana cara ngehadapinnya',
                  textAlign: TextAlign.center,
                  style: TextCollection.bodytext.copyWith(
                    color: ColorCollection.primary,
                  ),
                  ),
                  const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 370,
                  ),
                  Text(
                    'Keberlanjutan Di Ujung Jari',
                    textAlign: TextAlign.center,
                    style: TextCollection.heading1.copyWith(
                      color: ColorCollection.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Memberikan informasi apakah udara di sekitar kamu berkualitas baik atau buruk nih?',
                    textAlign: TextAlign.center,
                    style: TextCollection.bodytext.copyWith(
                      color: ColorCollection.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                        Get.to(const LoginScreen());
                      }, 
                      child: const Text(
                        'Masuk', style: TextCollection.buttontext,
                        ),
                      ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  // SizedBox(
                  //     width: double.infinity,
                  //     child: ElevatedButton(
                  //       style: ButtonStyle(
                  //         padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10, horizontal: 24)),
                  //         backgroundColor: MaterialStateProperty.all(Colors.white),
                  //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //           RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(10.0),
                  //             side: const BorderSide(
                  //               color: ColorCollection.primary
                  //             )
                  //           )
                  //         )
                  //       ),
                  //       onPressed: () {
                  //         Get.to(const RegisterScreen());
                  //       }, 
                  //       child: const Text(
                  //         'Daftar Akun', style: TextCollection.buttontext1,
                  //         ),
                  //       ),
                  //   ),
                ],
              ),
            ),
          ),
        ],
        addButton: false,
        controllerColor: ColorCollection.primary,
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
      ),
    );
  }
}