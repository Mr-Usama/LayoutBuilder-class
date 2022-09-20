import 'package:flutter/material.dart';
import 'package:layout_builder_class/responsive_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CodeX'),
      ),
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Column(
            children: [
              buildBannerSlider(),
              buildIntroText(),
            ],
          ),
          tab: Row(
            children: [
              buildBannerSlider(),
              SizedBox(
                width: 24,
              ),
              Expanded(child: buildIntroText()),
            ],
          ),
        ),
        /*LayoutBuilder(
          builder: (context, constraints) {
            // this maybe a mobile app
            // portrait mode mean in vertical
            print(constraints.maxWidth);
            if (constraints.maxWidth < 700) {
              return Column(
                children: [
                  buildBannerSlider(),
                  buildIntroText(),
                ],
              );
            }
            // landscape mode mean in horizontal
            else {
              return Row(
                children: [
                  buildBannerSlider(),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(child: buildIntroText()),
                ],
              );
            }
          },
        ),*/
      ),
    );
  }
}

class buildIntroText extends StatelessWidget {
  const buildIntroText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hey there, \n\nCodeX is an ecosystem of practical resources for developers who want\nto build high-quality mobile apps.',
      style: TextStyle(fontSize: 22),
    );
  }
}

class buildBannerSlider extends StatelessWidget {
  const buildBannerSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.red, Colors.pink],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
