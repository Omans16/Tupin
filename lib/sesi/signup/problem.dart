import 'package:flutter/material.dart';

class MyProblem extends StatefulWidget {
  const MyProblem({Key? key}) : super(key: key);

  @override
  State<MyProblem> createState() => _MyProblemState();
}

class _MyProblemState extends State<MyProblem> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+62";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "masukkan no. HP lamamu yang terdaftar di TuPin",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Nomor Handphone",
                      ),
                    ))
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        'verifikasiemail',
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "coba cara lain?",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
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
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        'verify',
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "Send the code",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
