import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/assets_vectors.dart';

class SighupOrSignin extends StatelessWidget {
  const SighupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 40),
              BackButton(),
              SizedBox(height: 20),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.authBG),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 175, left: 40, right: 40),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    SizedBox(height: 55),
                    Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 21),
                    Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider ',
                      style: TextStyle(fontSize: 17, color: Color(0xff797979)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: BasicAppButton(
                            onPressed: () {},
                            title: 'Login',
                          ),
                        ),
                        SizedBox(width: 50),
                        TextButton(onPressed: () {}, child: Text('Sign up')),
                        SizedBox(width: 30),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
