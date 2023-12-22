
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
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
      
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Selamat Datang di",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              const Text(
                "TuPin",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/icon.png',
                width: 500,
                height: 250,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Masukkan No HandPhone yang sudah terdaftar untuk medapatkan kode verifikasi",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
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
                          context,'problem',(route) => false,
                        );
                      },
                      child: const Text(
                        "ada masalah? lupa nomor?",
                        style: TextStyle(color: Colors.black,
                        fontSize: 16,),
                      ),
                    )
                  ],
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                    Navigator.pushNamed(context, 'verify');
                  },
                  child: const Text("Send Code",
                    style: TextStyle(fontSize: 18)
                  )
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 const Text("Belum punya akun?",
                        style: TextStyle(color: Colors.black,
                        fontSize: 16,)),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke rute lain di sini
                      Navigator.pushNamed(context, 'signup');
                    },
                    
                    child: const Text(
                      " Buat akun",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 180),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 40,
                    height: 40,
                      ),
                    //const SizedBox(width: 20),
                    // Image.asset(
                    // 'assets/images/GO.png',
                    // width: 40,
                    // height: 40,
                    //)
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}