import 'package:flutter/material.dart';
import 'package:flutter_toon/models/webtoon_models.dart';
import 'package:flutter_toon/services/api_service.dart';
import 'package:flutter_toon/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff6E6E81),
      backgroundColor: Color(0xff202123),
      appBar: AppBar(
        elevation: 2.5,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        backgroundColor: Color(0xff000000),
        foregroundColor: Color(0xff0CA37F),
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons, // await
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      itemBuilder: (context, index) {
        // print(index);
        var webtoon = snapshot.data![index];
        return Webtoon(
          id: webtoon.id,
          title: webtoon.title,
          thumb: webtoon.thumb,
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        width: 20,
      ),
    );
  }
}
