import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentlyCard extends StatelessWidget {
  final String name, amount, money;
  final IconData icon;
  final bool isInvert;
  final blackColor = const Color(0xFF1F2123);

  const CurrentlyCard(
      {super.key,
      required this.name,
      required this.amount,
      required this.money,
      required this.icon,
      required this.isInvert});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInvert ? Colors.white : blackColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInvert ? blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: isInvert ? blackColor : Colors.white,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      money,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: Offset(-5, 12),
                child: Icon(
                  icon,
                  color: isInvert ? blackColor : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
