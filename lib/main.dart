import 'package:flutter/material.dart';
import 'sesi/signup/problem.dart';
import 'sesi/signup/signup.dart';
import 'sesi/signup/verifikasiemail.dart';
import 'sesi/login/phone.dart';
import 'sesi/login/verify.dart';
import 'sesi/switch/template.dart';
import 'sesi/switch/profile.dart';
import 'sesi/switch/homepage.dart';
import 'sesi/switch/editprofile.dart';
import 'contoh.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'profile',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => const MyPhone(),
      'verify': (context) => const MyVerify(),
      'problem' : (context) => const MyProblem(),
      'signup' : (context) => const SignupPage(),
      'verifikasiemail' : (context) => const Myverifikasiemail(),
      'template': (context) => const Mytemplate(),
      'profile': (context) => const Myprofile(),
      'home': (context) => const Myhomepage(),
      'editprofile': (context) => const Myeditprofile(),
      'contoh': (context) => const EditProf(),
      },
    ),
  );
}

// ignore: unnecessary_import
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'screen/login.dart';
// import 'screen/signup.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.white),
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           height: MediaQuery.of(context).size.height - 40,
//           width: double.infinity,
//           child: Column(
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       const Column(
//                         children: <Widget>[
//                           Text(
//                             "Selamat\nDatang di\nTuPin",
//                             style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       // Image widget placed to the right of the text
//                       Image.asset(
//                         'assets/images/icon.png',
//                         height: 108, // Adjust the height as needed
//                         width: 209, // Adjust the width as needed
//                         // Add other properties if necessary
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(
//                         20), // Sesuaikan padding sesuai kebutuhanmu
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                           color: Colors
//                               .black), // Atur warna border sesuai keinginan
//                     ),
//                     child: Column(
//                       children: <Widget>[
//                         const SizedBox(height: 20),
//                         Column(
//                           children: <Widget>[
//                             inputFile(label: "No Hp"), // Tambahkan obscureText:
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             // Atur border untuk tombol sesuai keinginan
//                             border: Border.all(color: Colors.black),
//                           ),
//                           child: MaterialButton(
//                             minWidth: double.infinity,
//                             height: 60,
//                             onPressed: () {},
//                             color: const Color(0xff0095FF),
//                             elevation: 0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: const Text(
//                               "Login",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 18,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Column(
//                     children: <Widget>[
//                       // creating the signup button
//                       const SizedBox(height: 20),
//                       MaterialButton(
//                         minWidth: double.infinity,
//                         height: 60,
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const SignupPage()));
//                         },
//                         color: const Color(0xff0095FF),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(50)),
//                         child: const Text(
//                           "Sign up",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 18),
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// 