import 'package:flutter/material.dart';
import 'package:video_app/movie.dart';

class MostwatchedmovieList extends StatelessWidget {
  final int index;
  MostwatchedmovieList(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      width: 100,

      child: Column(
        children: [
          Card(
            elevation: 8,
            child: Hero(
              tag: movieList[index].id,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(movieList[index].imageUrl),
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
