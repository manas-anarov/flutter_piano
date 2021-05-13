import 'package:flutter/material.dart';
import 'package:flutter_piano/app/constants/app_colors.dart';
import 'package:flutter_piano/app/widgets/key_widget.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class CostumPiano extends StatefulWidget {
  const CostumPiano({Key key}) : super(key: key);

  @override
  _CostumPianoState createState() => _CostumPianoState();
}

class _CostumPianoState extends State<CostumPiano> {
  String _clickedMelody = "do";

  void playMusic(String melody) {
    setState(() {
      _clickedMelody = melody;
    });

    print(_clickedMelody);
    AssetsAudioPlayer.newPlayer().open(
      Audio('assets/audios/$_clickedMelody.mp3'),
      showNotification: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  playMusic("do");
                },
                child: KeyWidget(
                  color: AppColors.red,
                ),
              ),
              InkWell(
                onTap: () {
                  playMusic("re");
                },
                child: KeyWidget(
                  color: AppColors.orange,
                ),
              ),
              InkWell(
                onTap: () {
                  playMusic("mi");
                },
                child: KeyWidget(
                  color: AppColors.yellow,
                ),
              ),
              InkWell(
                onTap: () {
                  playMusic("fa");
                },
                child: KeyWidget(
                  color: AppColors.green,
                ),
              ),
              InkWell(
                onTap: () {
                  playMusic("sol");
                },
                child: KeyWidget(
                  color: AppColors.green_salat,
                ),
              ),
              InkWell(
                onTap: () {
                  playMusic("lja");
                },
                child: KeyWidget(
                  color: AppColors.blue,
                ),
              ),
              InkWell(
                onTap: () {
                  playMusic("si");
                },
                child: KeyWidget(
                  color: AppColors.rose,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
