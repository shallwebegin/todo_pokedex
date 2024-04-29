import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_pokedex/constants/constants.dart';
import 'package:todo_pokedex/models/pokemon_model.dart';

class PokeNameType extends StatelessWidget {
  const PokeNameType({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name!,
                  style: Constants.pokemonNameTextstyle,
                ),
              ),
              Text(
                '#00${pokemon.id}',
                style: Constants.pokemonNameTextstyle,
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(
              pokemon.type?.join(',') ?? '',
              style: Constants.typeChipTextstyle,
            ),
          ),
        ],
      ),
    );
  }
}
