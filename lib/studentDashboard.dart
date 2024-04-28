import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text("Homepage"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          Container(
            // height: 100,
            decoration: BoxDecoration(color: Colors.orangeAccent),
            child: Column(
              children: [
                Column(
                  children: [
                    WelcomeRow(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeRow extends StatelessWidget {
  const WelcomeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 0.3, spreadRadius: 0.1)
                ]),
            child: Image(
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/5231/5231019.png")),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Text(
                "Hoşgeldin Gözde,",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 30,
                          color: Colors.white70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("29.04.2024"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Image(
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/2909/2909914.png")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text("100")
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
