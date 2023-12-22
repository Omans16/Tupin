import 'package:flutter/material.dart';
import 'package:tupin_app_coba/sesi/switch/template.dart';

class Myeditprofile extends StatefulWidget {
  const Myeditprofile({Key? key}) : super(key: key);

  @override
  State<Myeditprofile> createState() => _MyeditprofileState();
}

class _MyeditprofileState extends State<Myeditprofile> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //backgroundColor: const Color.fromRGBO(17, 207, 197, 100),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Mytemplate())));
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
                  const Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("Edit Our Profile",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ]
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20), // Sesuaikan padding sesuai kebutuhanmu
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.black), // Atur warna border sesuai keinginan
                    ),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Column(
                          children: <Widget>[
                            inputFile(label: "Nama"),
                            inputFile(label: "Email"),
                            inputFile(label: "No Hp"), // Tambahkan obscureText: true jika perlu
                            inputFile(label: "Alamat"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(width: 250,height: 45,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade600,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                Navigator.pushNamed(context, 'profile');
                              },
                              child: const Text("Simpan")),
                        ),
                       ],),),
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
        Text(label,style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
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
              borderRadius: BorderRadius.all(Radius.circular(10)), // Add border radius here
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10)), // Add border radius here
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
