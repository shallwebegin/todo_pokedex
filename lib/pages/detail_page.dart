import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_pokedex/constants/ui_helper.dart';
import 'package:todo_pokedex/models/pokemon_model.dart';
import 'package:todo_pokedex/widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.defaultPadding(),
              child: IconButton(
                iconSize: 24.w,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            PokeNameType(pokemon: pokemon)
          ],
        ),
      ),
    );
  }
}
