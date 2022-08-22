import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

// Bai 1:

// bool checkPhoneNum(String s) {
//   if(int.tryParse(s) != null) {
//     if(s.substring(0,3) == '024') {
//       if(s.length == 11) return true;
//       else return false;
//     }
//     else {
//       if(s.length == 10) return true;
//       else return false;
//     }
//   }
//   else return false;
// }
//
// void main() {
//   print(checkPhoneNum(''));
// }

// Bai 2:

// const pi = 3.141592653589793;
//
// num calcCubeVolume(s) {
//   return s * s * s;
// }
//
// num calcRectangularPrismVolume(l, w, h) {
//   return l * w * h;
// }
//
// num calcCylinderVolume(r, h) {
//   return pi * r * r * h;
// }
//
// num calcShpereVolume(r) {
//   return (4 * pi * r*r*r) / 3;
// }
//
// void main() {
//   print(calcCubeVolume(3));
//   print(calcRectangularPrismVolume(1, 2, 3));
//   print(calcCylinderVolume(1.2, 4));
//   print(calcShpereVolume(1.3));
// }

// Bai 3:

// String fibonacciSequence(n) {
//   String res = '';
//   int first = 0, second = 1, sum  = 0, cnt = 3;
//   sum = first + second;
//   res += 'Fibonacci Sequence: $first $second ';
//   while(cnt <= n) {
//     res += '$sum ';
//     first = second;
//     second = sum;
//     sum = first + second;
//     cnt++;
//   }
//   return res;
// }
//
// void main() {
//   print(fibonacciSequence(9));
// }

// Bai 4:

// Map dictionary(String s) {
//   final cnt = Map<String, int>();
//   for(int i = 0; i < s.length; ++i) {
//     cnt.update(s[i], (value) => ++value, ifAbsent: () => 1);
//   }
//   return cnt;
// }
//
// void main() {
//   print(dictionary('Happiness'));
// }