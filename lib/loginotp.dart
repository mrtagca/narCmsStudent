import 'package:flutter/material.dart';
import 'package:narcmsstudent/studentDashboard.dart';

class LoginOtp extends StatelessWidget {
  const LoginOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Center(
          child: Container(
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(
                              child: Text(
                                'OTP',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        style: ButtonStyle(
                            iconSize: MaterialStatePropertyAll(25),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StudentDashboard(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_right)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
