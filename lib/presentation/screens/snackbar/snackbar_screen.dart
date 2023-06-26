import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text(
            'Laborum adipisicing fugiat consectetur cillum excepteur tempor consequat ex. Et dolore tempor pariatur in irure eu non ex esse nulla sunt laborum reprehenderit aliquip. Duis amet mollit aliqua commodo eiusmod.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Magna magna eu laborum laborum aute aliqua et. Est elit do non consectetur in fugiat consequat proident qui in. Ex elit officia nostrud nulla minim sint consectetur ea id ad ipsum amet veniam velit. Eu ullamco ut eu anim incididunt culpa velit officia nulla nostrud ea. Sit magna esse ullamco nostrud officia.')
                  ]);
                },
                child: const Text('licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('mostrar dialogos')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
