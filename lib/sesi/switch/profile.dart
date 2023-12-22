import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: const Text("Profile"),
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                          20), // Sesuaikan padding sesuai keinginan
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/Profile.png',
                          height: 200,
                          width: 285,
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Muhamad Nur Rohman",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'editprofile');
                    },
                    child: const Text("Edit Profile",
                        style: TextStyle(fontSize: 18)),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(":"),
                          SizedBox(width: 23),
                          Text(
                            "muhamadnurohman@gmail.com",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "Phone",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(":"),
                          SizedBox(width: 20),
                          Text(
                            "08980607761",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: <Widget>[
                      Text(
                        "Alamat",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(":"),
                      SizedBox(width: 18),
                      Text(
                        "Jalan Candi Simping no 32",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade600,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'phone');
                        },
                        child: const Text("Logout",
                            style: TextStyle(fontSize: 18)),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 4, 73, 201),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '');
                        },
                        child: const Text("About Me",
                            style: TextStyle(fontSize: 18)),
                      ),
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
}
