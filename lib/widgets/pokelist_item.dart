import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_pokedex/constants/constants.dart';
import 'package:todo_pokedex/constants/ui_helper.dart';
import 'package:todo_pokedex/models/pokemon_model.dart';
import 'package:todo_pokedex/widgets/poke_image_and_ball.dart';

class PokeListItem extends StatelessWidget {
  const PokeListItem({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: UIHelper.pokelistItemBorderRadius),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Padding(
        padding: UIHelper.defaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon.name ?? 'N/A',
              style: Constants.pokemonNameTextstyle,
            ),
            Chip(
              label: Text(
                pokemon.type![0],
                style: Constants.typeChipTextstyle,
              ),
            ),
            Expanded(
              child: PokeImageAndBall(pokemon: pokemon),
            ),
          ],
        ),
      ),
    );
  }
}
