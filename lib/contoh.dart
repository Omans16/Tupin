import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class EditProf extends StatefulWidget {
  const EditProf({super.key});

  @override
  State<EditProf> createState() => _EditProfState();
}

class _EditProfState extends State<EditProf> {
  File? file;
  String filename = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBEAFF),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 0, bottom: 50),
              child: Text(
                'Edit Profile',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 50),
              ),
            ),
            Expanded(
              child: Container(
                height: 500,
                width: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                                child: Container(
                                  // Sesuaikan tinggi Container agar cukup besar
                                  height: 450, // Ubah tinggi sesuai kebutuhan
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,top: 20,
                                    ), // Ubah padding sesuai kebutuhan
                                    child: Column(
                                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            const Expanded(
                                                flex: 2,
                                                child: Text('Nama Depan')),
                                            const Expanded(
                                                flex: 0,
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                                )),
                                            const SizedBox(width: 10),
                                            Expanded(flex: 5,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:const EdgeInsets.symmetric(
                                                          vertical: 10,horizontal: 10),
                                                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(
                                                flex: 2,
                                                child: Text('Nama Belakang')),
                                            const Expanded(
                                                flex: 0,
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              flex: 5,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 10),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(
                                                flex: 2, child: Text('Gmail')),
                                            const Expanded(
                                                flex: 0,
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              flex: 5,
                                              child: TextField(
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 10),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(
                                                flex: 2, child: Text('Alamat')),
                                            const Expanded(
                                                flex: 0,
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              flex: 5,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 10),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(
                                                flex: 2,
                                                child: Text('Foto Pengguna')),
                                            const Expanded(
                                                flex: 0,
                                                child: Text(
                                                  ':',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              flex: 5,
                                              child: Container(
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.blue,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    // ignore: unnecessary_null_comparison
                                                    filename != null
                                                        ? Expanded(child: Padding(padding:const EdgeInsets.all(8.0),
                                                              child: Text(
                                                                filename,
                                                                style: const TextStyle(fontSize:10,overflow: TextOverflow.ellipsis),
                                                              ),
                                                            ),
                                                          )
                                                        : const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5),
                                                            child: Text(
                                                              'gambar cv',
                                                              style: TextStyle(
                                                                  fontSize: 20),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(right: 5),
                                                      child: ElevatedButton(
                                                        onPressed: () {fromGallery();
                                                        },
                                                        style: ElevatedButton
                                                          .styleFrom(
                                                          backgroundColor:const Color.fromARGB(255,155,187,252),
                                                          shape:RoundedRectangleBorder(
                                                            borderRadius:BorderRadius.circular(10),
                                                          ),
                                                        ),
                                                        child: const Text('choose file',style: TextStyle(fontSize: 20),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // const SizedBox(
                                        //   height: 50,
                                        // )
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    backgroundColor:
                                                        Color(0xff4741A6)),
                                                child:
                                                    Text('perbarui profile')),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context, 'editprofile');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    backgroundColor:
                                                        Color(0xff7A7A7A)),
                                                child: Text('batal')),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future fromGallery() async {
    // ignore: non_constant_identifier_names
    final PickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery); //mengambil gambar dari source galeri
    if (PickedFile != null) {
      setState(() {
        file = File(PickedFile.path); //mengambil gambar
        filename = file!.path.split('/').last; //mengambil nama file dari path
      });
    } else {
      setState(() {
        'tidak ada gambar dipilih';
      });
    }
  }
}
//fitur div Taekwondo