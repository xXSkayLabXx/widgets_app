import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imagUrl;

  SlideInfo(this.title, this.caption, this.imagUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Lorem est est deserunt laboris culpa veniam incididunt fugiat elit non aliqua.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Sunt ullamco non est magna et velit duis ullamco incididunt magna excepteur Lorem sint.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Cillum aliquip tempor exercitation consectetur ut.',
      'assets/images/3.png'),
];

class AppTutorialScrren extends StatefulWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScrren({super.key});

  @override
  State<AppTutorialScrren> createState() => _AppTutorialScrrenState();
}

class _AppTutorialScrrenState extends State<AppTutorialScrren> {
  final PageController pageViewController = PageController();
  bool endReached = false;
  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imagUrl: slideData.imagUrl))
                  .toList()),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Salir'))),
          endReached
              ? Positioned(
                  bottom: 50,
                  right: 20,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Comenzar'),
                    ),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imagUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imagUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imagUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
