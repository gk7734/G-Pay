import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final Color blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInverted ? Colors.white : blackColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), // 왼쪽 위 모서리
            topRight: Radius.circular(10), // 오른쪽 위 모서리
            bottomLeft: Radius.circular(25), // 왼쪽 아래 모서리
            bottomRight: Radius.circular(25), // 오른쪽 아래 모서리
          )),
      child: Padding(
        padding: EdgeInsets.all(Platform.isAndroid ? 25 : 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? blackColor : Colors.white,
                      fontSize: Platform.isAndroid ? 28 : 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted
                            ? blackColor
                            : Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 10),
                child: Icon(
                  icon,
                  color: isInverted ? blackColor : Colors.white,
                  size: Platform.isAndroid ? 80 : 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
