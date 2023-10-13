import 'package:flutter/material.dart';

class GameListEmpty extends StatelessWidget {
  const GameListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sem games para exibir!'),
    );
  }
}
