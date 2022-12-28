// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmotiConFace extends StatelessWidget {
  final String emoji;
  const EmotiConFace({
    Key? key,
    required this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            emoji,
            style: TextStyle(fontSize: 28),
          ),
        ));
  }
}
