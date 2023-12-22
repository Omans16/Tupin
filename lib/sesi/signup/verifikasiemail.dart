import 'package:flutter/material.dart';

class Myverifikasiemail extends StatefulWidget {
  const Myverifikasiemail({Key? key}) : super(key: key);

  @override
  State<Myverifikasiemail> createState() => _MyProblemState();
}

class _MyProblemState extends State<Myverifikasiemail> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
            context,'problem',(route) => false,
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Aktifkan akunmu kembali",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "masukkan alamat email yang terdaftar di TuPin",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Alamat email",
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 250,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pushNamed(context, 'problem');
                    },
                    child: const Text("Next",
                    style: TextStyle(fontSize: 18) ,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
