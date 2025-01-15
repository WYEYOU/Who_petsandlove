import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:who_petandlove/pages/register3.dart';

class Register4Page extends StatefulWidget {
  const Register4Page({super.key});

  @override
  State<Register4Page> createState() => _Register4PageState();
}

class _Register4PageState extends State<Register4Page> {
  bool _isObscured = true;
  bool _isObscured2 = true;
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
                                color: Colors.brown,
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
                              "รหัสผ่าน",
                              style: GoogleFonts.kanit(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF695146)),
                            ),
                          )
                        ],
                      ),
                       SizedBox(
                        width: 400,
                        height: 50,
                        child: TextField(
                          style: GoogleFonts.kanit(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color:
                                const Color(0xFF695146), // สีของข้อความที่ป้อน
                          ),
                          obscureText: _isObscured,
                          decoration: InputDecoration(
                            hintText: "เช่น Who112233",
                            hintStyle: GoogleFonts.kanit(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(135, 153, 106, 86)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(
                                    255, 153, 106, 86), // สีขอบปกติ
                                width: 1.5, // ความหนาขอบปกติ
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 66, 39, 4),
                                  width: 1),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 12.0),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color(0xFF695146),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 8, top: 10),
                            child: Text(
                              "ยืนยันรหัสผ่าน",
                              style: GoogleFonts.kanit(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF695146)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 400,
                        height: 50,
                        child: TextField(
                          style: GoogleFonts.kanit(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color:
                                const Color(0xFF695146), // สีของข้อความที่ป้อน
                          ),
                          obscureText: _isObscured2,
                          decoration: InputDecoration(
                            hintText: "เช่น Who112233",
                            hintStyle: GoogleFonts.kanit(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(135, 153, 106, 86)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(
                                    255, 153, 106, 86), // สีขอบปกติ
                                width: 1.5, // ความหนาขอบปกติ
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 66, 39, 4),
                                  width: 1),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 12.0),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured2
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color(0xFF695146),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured2 = !_isObscured2;
                                });
                              },
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
                                  builder: (context) => const Register3Page()),
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 66, 39, 4),
                      minimumSize: const Size(400, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                  child: Text(
                    "ยืนยัน",
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