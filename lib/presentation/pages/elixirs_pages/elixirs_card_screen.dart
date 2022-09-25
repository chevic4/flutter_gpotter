import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'elixirs_delail_info_page.dart';

class ElixirCardScreen extends StatelessWidget {
  final ElixirDto elixir;
  const ElixirCardScreen({Key? key, required this.elixir}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElixirsDetailInfoView(elixir: elixir),
          TextButton(
            onPressed: () {
              // add to favorite,
            },
            child: const Text(
              'add to favorite',
            ),
          ),
          TextButton(
            onPressed: () {
              // sending
            },
            child: const Text(
              'sending',
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'back',
            ),
          ),
        ],
      ),
    );
  }
}
