import 'package:flutter/material.dart';

class Noti {
  final int id;
  final String dateCreated, typeof, title, content;
  final IconData icon;
  final bool check;

  const Noti(this.id, this.dateCreated, this.typeof, this.title, this.content, this.icon, this.check);
}