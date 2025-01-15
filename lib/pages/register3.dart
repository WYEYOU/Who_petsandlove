import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:who_petandlove/pages/register2.dart';
import 'package:who_petandlove/pages/register4.dart';

class Register3Page extends StatefulWidget {
  const Register3Page({super.key});

  @override
  State<Register3Page> createState() => _Register3PageState();
}

class _Register3PageState extends State<Register3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6EEE3),
      body: PopScope(
          canPop: false,
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/images/WHO_Full_LG.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "สร้างบัญชี",
                            style: GoogleFonts.kanit(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF695146)),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10,
                            width: 85,
                            decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                          ),
                          Container(
                            height: 10,
                            width: 85,
                            decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                          ),
                          Container(
                            height: 10,
                            width: 85,
                            decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                          ),
                          Container(
                            height: 10,
                            width: 85,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 153, 106, 86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 8, top: 10),
                            child: Text(
                              "รูปโปรไฟล์",
                              style: GoogleFonts.kanit(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF695146)),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFF6EEE3),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            border: Border.all(
                                width: 3, color: const Color(0xFF695146)),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/camera.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ))),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 170,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register2Page()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 112, 79, 39),
                      minimumSize: const Size(400, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                  child: Text(
                    "ย้อนกลับ",
                    style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register4Page()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 66, 39, 4),
                      minimumSize: const Size(400, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                  child: Text(
                    "ถัดไป",
                    style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
