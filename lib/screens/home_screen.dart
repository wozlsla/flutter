import 'package:flutter/material.dart';
import 'package:flutter_toon/models/webtoon_models.dart';
import 'package:flutter_toon/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff6E6E81),
      backgroundColor: Color(0xff202123),
      appBar: AppBar(
        elevation: 2,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        backgroundColor: Color(0xff000000),
        foregroundColor: Colors.green,
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
            return Text(
              'Data is here',
              style: TextStyle(color: Colors.white),
            );
          }
          return Text(
            'Loading...',
            style: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }
}
