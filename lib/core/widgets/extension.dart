import 'package:flutter/material.dart';

extension Sizedbox on int {
  SizedBox sh() {
    return SizedBox(height: toDouble(),);
  }
  SizedBox sw() {
    return SizedBox(width: toDouble(),);
  }

}
