import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:untitled1/Button.dart';
import 'package:untitled1/card.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0XFF181818),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Hey, Selena",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text("Welcome back",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.8))),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text("Total Balance",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8))),
                  SizedBox(
                    height: 10,
                  ),
                  Text("\$ 5 194 482",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: "Transfer",
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CurrentlyCard(
                    name: "fefdfea",
                    amount: "10000",
                    money: "|",
                    icon: Icons.euro_rounded,
                    isInvert: false,
                  ),
                  CurrentlyCard(
                    name: "fefdfea",
                    amount: "10000",
                    money: "|",
                    icon: Icons.euro_rounded,
                    isInvert: true,
                  ),
                ],
              ),
            )));
  }
}
