import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = true;
  bool isChecked = false;

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "เข้าสู่ระบบ",
                            style: GoogleFonts.kanit(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF695146)),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 8, top: 10),
                            child: Text(
                              "อีเมล",
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
                          decoration: InputDecoration(
                            hintText: "เช่น whopetsandlove@gmail.com",
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
                                  width: 2),
                            ),
                          ),
                        ),
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
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              Text(
                                "จำรหัสผ่าน",
                                style: GoogleFonts.kanit(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color:
                                        const Color.fromARGB(255, 66, 39, 4)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "ลืมรหัสผ่าน",
                                style: GoogleFonts.kanit(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: const Color.fromARGB(255, 66, 39, 4),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 66, 39, 4),
                              minimumSize: const Size(400, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19),
                              )),
                          child: Text(
                            "เข้าสู่ระบบ",
                            style: GoogleFonts.kanit(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 112, 79, 39),
                              minimumSize: const Size(400, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19),
                              )),
                          child: Text(
                            "สมัครสมาชิก",
                            style: GoogleFonts.kanit(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
