import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ErrorWidgetNews extends StatelessWidget {
  String? message;
  ErrorWidgetNews({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? 'Smth get wrong',
      ),
    );
    
  }
}
