import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_pokedex/models/pokemon_model.dart';
import 'package:todo_pokedex/services/pokedex_api.dart';
import 'package:todo_pokedex/widgets/pokelist_item.dart';

class PokeList extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  PokeList({super.key});

  @override
  State<PokeList> createState() => _PokeListState();
}

class _PokeListState extends State<PokeList> {
  late Future<List<PokemonModel>> pokeListFuture;

  @override
  void initState() {
    super.initState();
    pokeListFuture = PokeApi.getPokeList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: pokeListFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> listem = snapshot.data!;
            return GridView.builder(
                itemCount: listem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3,
                ),
                itemBuilder: (context, index) {
                  return PokeListItem(pokemon: listem[index]);
                });
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            return const Center(
              child: Text('error'),
            );
          }
        },
      ),
    );
  }
}
