// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotstarclone/assets/colors.dart';
import 'package:hotstarclone/data/ndata.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);
    return ListView(
      children: [
        const Slider(),

        //first Row
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Latest & Trending',
                style: TextStyle(color: white),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Movie(image: movielist[0]),
                    Movie(image: movielist[1]),
                    Movie(image: movielist[2]),
                    Movie(image: movielist[3]),
                    Movie(image: movielist[4]),
                    Movie(image: movielist[5]),
                    Movie(image: movielist[6]),
                    Movie(image: movielist[7]),
                  ],
                ),
              )
            ],
          ),
        ),
        //first Row
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Popular Shows',
                style: TextStyle(color: white),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Movie(image: showlist[0]),
                    Movie(image: showlist[1]),
                    Movie(image: showlist[2]),
                    Movie(image: showlist[3]),
                    Movie(image: showlist[4]),
                    Movie(image: showlist[5]),
                    Movie(image: showlist[6]),
                    Movie(image: showlist[7]),
                  ],
                ),
              )
            ],
          ),
        ),
        //first Row
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Movies Recommended For You',
                style: TextStyle(color: white),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Movie(image: removielist[0]),
                    Movie(image: removielist[1]),
                    Movie(image: removielist[2]),
                    Movie(image: removielist[3]),
                    Movie(image: removielist[4]),
                    Movie(image: removielist[5]),
                    Movie(image: removielist[6]),
                    Movie(image: removielist[7]),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
      ),
      items: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/8406/1068406-h-fd5152ee1be5',
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/8773/1028773-h-48170a73363e',
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/9260/889260-h'
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Image.network(i, fit: BoxFit.cover));
          },
        );
      }).toList(),
    );
  }
}

class Movie extends StatelessWidget {
  const Movie({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Container(
        height: 200,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
