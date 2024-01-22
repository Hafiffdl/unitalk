
import 'package:flutter/material.dart';
import 'package:tryapp/constants/color_collection.dart';

class DecorationCollection {
  InputDecoration emailField = const InputDecoration(
    hintText: 'JaneDoe@gmail.com',
    labelText: 'Alamat Email',
    filled: true,
    fillColor: ColorCollection.fillColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: ColorCollection.sideColor,
        width: 1.50,
      )
    ),
    prefixIcon: Icon(Icons.email, color: ColorCollection.sideColor),
    contentPadding: EdgeInsets.all(13),
  );

  InputDecoration userNameField = const InputDecoration(
    hintText: 'Jane Doe',
    labelText: 'Nama',
    filled: true,
    fillColor: ColorCollection.fillColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: ColorCollection.sideColor,
        width: 1.50,
      ) 
    ),
    prefixIcon: Icon(Icons.person, color: ColorCollection.sideColor),
    contentPadding: EdgeInsets.all(13),
  );

  InputDecoration nikField = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: ColorCollection.sideColor)));

  InputDecoration otpField = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1, color: Color(0xFF5C5C5C))));

}

//   //Dropdown btn styles

//   ButtonStyle dropdownGender = ElevatedButton.styleFrom(
//     backgroundColor: Colors.white,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//       side: const BorderSide(width: 1, color: Color(0xFFC7C9D9)),
//     ),
//   );
// }
