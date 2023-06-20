import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});

  static const appMenuItems = <MenuItem>[
    MenuItem(
        title: 'Botonoes',
        subTitle: 'Varios botones en flutter',
        link: '/buttons',
        icon: Icons.smart_button_outlined),
    MenuItem(
        title: 'Tarjetas',
        subTitle: 'Contenedro estilizado',
        link: '/card',
        icon: Icons.credit_card),
  ];
}
