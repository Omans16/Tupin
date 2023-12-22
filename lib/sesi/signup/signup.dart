import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //backgroundColor: const Color.fromRGBO(17, 207, 197, 100),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              'phone',
              (route) => false,
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
       
        child: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Column(
                        children: <Widget>[
                          Text(
                            "Daftar dan\njadilah\nkeluarga\nkami!",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Image widget placed to the right of the text
                      Image.asset(
                        'assets/images/icon.png',
                        height: 200, // Adjust the height as needed
                        width: 285, // Adjust the width as needed
                        // Add other properties if necessary
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        20), // Sesuaikan padding sesuai kebutuhanmu
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors
                              .black), // Atur warna border sesuai keinginan
                    ),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Column(
                          children: <Widget>[
                            inputFile(label: "Nama"),
                            inputFile(label:"No Hp"), // Tambahkan obscureText: true jika perlu
                            inputFile(label: "Email"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 250,
                          height: 45,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green.shade600,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                Navigator.pushNamed(context, 'phone');
                              },
                              child: const Text("Buat akun",
                              style: TextStyle(fontSize: 18),)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Sudah punya akun?",
                      style: TextStyle(fontSize: 20)),
                      GestureDetector(
                        onTap: () {
                          // Navigasi ke rute lain di sini
                          Navigator.pushNamed(context, 'phone');
                        },
                        child: Text(
                          " Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// we will be creating a widget for text field
  Widget inputFile({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                  Radius.circular(10)), // Add border radius here
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                  Radius.circular(10)), // Add border radius here
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
