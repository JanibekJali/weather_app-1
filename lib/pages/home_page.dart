import 'package:flutter/material.dart';
import 'package:weather_app/constants/text_style/text_styles.dart';
import 'package:weather_app/pages/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const SearchPage()),
                ),
              );
            },
            child: const Icon(
              Icons.location_city,
              size: 50,
            ),
          ),
        ],
        leading: Image.asset(
          'assets/images/location.png',
          scale: 10,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: [
        Container(
          child: null,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bg_image.jpg'),
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 50,
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    '8\u00B0',
                    style: TextStyles.text100White,
                  ),
                  const Text(
                    '🔅',
                    style: TextStyles.text60White,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          left: 10,
          top: 400,
          child: Text(
            '''
            Жылуу кийинип чык
            Жылуу кийинип чык
            Жылуу кийинип чык
            ''',
            style: TextStyles.text25Black,
          ),
        ),
        const Positioned(
          top: 700,
          left: 150,
          child: Text(
            'Bishkek',
            style: TextStyles.text35White,
          ),
        ),
      ]),
    );
  }
}
