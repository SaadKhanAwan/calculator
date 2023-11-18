import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String val;
  final Color? col;
  final VoidCallback? call;
  Mybutton({required this.val, this.col, this.call});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: InkWell(
          onTap: call,
          child: Container(
            height: 75,
            decoration: BoxDecoration(shape: BoxShape.circle, color: col),
            child: Center(
              child: Text(
                val,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
