import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:narcmsstudent/loginotp.dart';

void main() {
  runApp(const StudentLogin());
}

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: StudentLoginPage(),
    );
  }
}

class StudentLoginPage extends StatelessWidget {
  const StudentLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    label: Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Öğrenci TCKN',
                            ),
                          ),
                        ],
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
                              builder: (context) => const LoginOtp(),
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
