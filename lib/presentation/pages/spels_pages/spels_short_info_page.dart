import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/colors.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';

class SpelsShortInfoView extends StatelessWidget {
  final SpellDto value;
  const SpelsShortInfoView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradiusCard)),
      elevation: elevationAll,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextHeadline1(value: value.name ?? ''),
            TextBody1(value: 'Effect - ${value.effect}'),
            TextBody1(value: value.type.toString()),
          ],
        ),
      ),
    );
  }
}
