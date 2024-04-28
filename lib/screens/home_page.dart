import 'package:flutter/material.dart';
import 'package:todo_pokedex/widgets/custom_appbar.dart';
import 'package:todo_pokedex/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          Expanded(child: PokeList()),
        ],
      ),
    );
  }
}
