import 'package:flutter/material.dart';
import 'package:flutter_toon/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String id, title, thumb;

  const Webtoon({
    super.key,
    required this.id,
    required this.title,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              id: id,
              title: title,
              thumb: thumb,
            ),
            fullscreenDialog: true, // from bottom
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 230,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(8, 6),
                  color: Colors.grey.withValues(alpha: 0.12),
                  // color: Colors.black.withValues(alpha: 0.5),
                )
              ],
            ),
            child: Image.network(
              thumb,
              headers: const {
                'Referer': 'https://comic.naver.com',
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 19,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
