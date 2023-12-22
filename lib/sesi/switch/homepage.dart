import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade600,
          title: const Text(
            "Halaman Home",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Column(children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(
                        20), // Sesuaikan padding sesuai keinginan
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/a.jpg',
                        height: 200,
                        width: 285,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Column(
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sementara Tampilan",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Home Beranda",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Koyok Ngene Disek",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/w.png',
                        width: 240,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/x.png',
                        width: 240,
                        height: 300,
                      ),
                    ])
              ])
            ]),
          ),
        ));
  }
}
