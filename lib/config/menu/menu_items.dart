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
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter',
      subTitle: 'introduccion a Riverpod',
      link: '/counter',
      icon: Icons.countertops_outlined),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Contenedro estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicator',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbar y dialogos',
      subTitle: 'Generales y controlados x2',
      link: '/snackbar',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Statetful widget animado',
      link: '/animated',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Ui Controls + Tiles',
      subTitle: 'Controles de pantalla',
      link: '/ui-controls',
      icon: Icons.ads_click_rounded),
  MenuItem(
      title: 'Introduccion a la app',
      subTitle: 'pequeño tutorial',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItem(
      title: 'Infinite Scroll y Pull',
      subTitle: 'listas infinitas y pull refresh',
      link: '/infinite',
      icon: Icons.invert_colors_off_outlined),
  MenuItem(
      title: 'Theme Changer',
      subTitle: 'cambiador de tema',
      link: '/theme-changer',
      icon: Icons.theater_comedy_outlined),
];
