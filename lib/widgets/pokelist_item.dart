import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_pokedex/constants/constants.dart';
import 'package:todo_pokedex/constants/ui_helper.dart';
import 'package:todo_pokedex/models/pokemon_model.dart';
import 'package:todo_pokedex/pages/detail_page.dart';
import 'package:todo_pokedex/widgets/poke_image_and_ball.dart';

class PokeListItem extends StatelessWidget {
  const PokeListItem({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(pokemon: pokemon),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: UIHelper.pokelistItemBorderRadius),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.iconPadding(),
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
      ),
    );
  }
}
