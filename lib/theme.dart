import 'package:flutter/material.dart';
// 1
import 'package:google_fonts/google_fonts.dart';

// // 2
// TextTheme textTheme() {
//   return TextTheme(
//     displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
//     displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
//     bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
//     bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
//     titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
//   );
// }
//
// // 3
// IconThemeData iconTheme() {
//   return const IconThemeData(
//     color: Colors.black,
//   );
// }
//
// // 4
// AppBarTheme appBarTheme() {
//   return AppBarTheme(
//     centerTitle: false,
//     color: Colors.white,
//     elevation: 0.0,
//     iconTheme: iconTheme(),
//     titleTextStyle: GoogleFonts.nanumGothic(
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//     ),
//   );
// }
//
// 5
BottomNavigationBarThemeData bottomNavigatorTheme() {
  return const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    // false면 label 자리 없어짐
    showUnselectedLabels: false,
    showSelectedLabels: false,
    type: BottomNavigationBarType.fixed,
  );
}

// 6
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // textTheme: textTheme(),
    // appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigatorTheme(),
    primarySwatch: Colors.orange,
  );
}