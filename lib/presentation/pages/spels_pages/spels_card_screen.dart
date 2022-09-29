import 'package:flutter/material.dart';

import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_details_info_page.dart';
import 'package:flutter_gpotter/presentation/pages/windgets/potter_button.dart';

class SplelsCardScreen extends StatelessWidget {
  final SpellDto spels;
  const SplelsCardScreen({Key? key, required this.spels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(child: SplesDetailInfoView(spels: spels)),
        const BottonPotter(value: 'add to favorite'),
        const BottonPotter(value: 'send info'),
        GestureDetector(
          child: const BottonPotter(value: 'back'),
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
