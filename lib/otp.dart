import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

void main() => runApp(const MaterialApp(
      home: Otp(),
      debugShowCheckedModeBanner: false,
    ));

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Confirm Your Code',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter the code sent to you gmail',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OTPTextField(
                controller: otpController,
                otpFieldStyle: OtpFieldStyle(
                    backgroundColor: const Color.fromARGB(255, 252, 251, 251),
                    borderColor: Colors.blue
                  ),
                length: 4,
                width: MediaQuery.of(context).size.width * 0.75,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.blue,
                ),
                
                onChanged: (pin) {
                  print('changed: $pin');
                
                },
                onCompleted: (pin) {
                  print('completed: $pin');
                },
                
              )
            ],
          ),
          const SizedBox(height: 50),
          Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend the code',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
          ),
          const SizedBox(height: 50),
          Center(
            child: SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.9,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 43, 156, 249)),
                onPressed: () {
                  
                },
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
// Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       height: 44,
          //       width: 67,
          //       decoration: BoxDecoration(
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.all(Radius.circular(22)),
          //       ),
          //       child: TextFormField(
          //         onChanged: ((value) => {
          //               if (value.length == 1)
          //                 {FocusScope.of(context).nextFocus()}
          //             }),
          //         style: TextStyle(
          //           fontSize: 25,
          //           color: Colors.blue,
          //         ),
          //         cursorColor: Colors.blue,
          //         decoration: InputDecoration(border: InputBorder.none),
          //         textAlign: TextAlign.center,
          //         keyboardType: TextInputType.number,
          //         inputFormatters: [
          //           LengthLimitingTextInputFormatter(1),
          //           FilteringTextInputFormatter.digitsOnly
          //         ],
          //       ),
          //     ),
          //     Container(
          //       height: 44,
          //       width: 67,
          //       decoration: BoxDecoration(
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.all(Radius.circular(22)),
          //       ),
          //       child: TextFormField(
          //         onChanged: ((value) => {
          //               if (value.length == 1)
          //                 {FocusScope.of(context).nextFocus()}
          //             }),
          //         style: TextStyle(
          //           fontSize: 25,
          //           color: Colors.blue,
          //         ),
          //         cursorColor: Colors.blue,
          //         decoration: InputDecoration(border: InputBorder.none),
          //         textAlign: TextAlign.center,
          //         keyboardType: TextInputType.number,
          //         inputFormatters: [
          //           LengthLimitingTextInputFormatter(1),
          //           FilteringTextInputFormatter.digitsOnly
          //         ],
          //       ),
          //     ),
          //     Container(
          //       height: 44,
          //       width: 67,
          //       decoration: BoxDecoration(
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.all(Radius.circular(22)),
          //       ),
          //       child: TextFormField(
          //         onChanged: ((value) => {
          //               if (value.length == 1)
          //                 {FocusScope.of(context).nextFocus()}
          //             }),
          //         style: TextStyle(
          //           fontSize: 25,
          //           color: Colors.blue,
          //         ),
          //         cursorColor: Colors.blue,
          //         decoration: InputDecoration(border: InputBorder.none),
          //         textAlign: TextAlign.center,
          //         keyboardType: TextInputType.number,
          //         inputFormatters: [
          //           LengthLimitingTextInputFormatter(1),
          //           FilteringTextInputFormatter.digitsOnly
          //         ],
          //       ),
          //     ),
          //     Container(
          //       height: 44,
          //       width: 67,
          //       decoration: BoxDecoration(
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.all(Radius.circular(22)),
          //       ),
          //       child: TextFormField(
          //         onChanged: ((value) => {
          //               if (value.length == 1)
          //                 {FocusScope.of(context).nextFocus()}
          //             }),
          //         style: TextStyle(
          //           fontSize: 25,
          //           color: Colors.blue,
          //         ),
          //         cursorColor: Colors.blue,
          //         decoration: InputDecoration(border: InputBorder.none),
          //         textAlign: TextAlign.center,
          //         keyboardType: TextInputType.number,
          //         inputFormatters: [
          //           LengthLimitingTextInputFormatter(1),
          //           FilteringTextInputFormatter.digitsOnly
          //         ],
          //       ),
          //     )
          //   ],
          // )