import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideoDetiels extends StatefulWidget {
  const VideoDetiels({Key? key,required String title}) : super(key: key);

  @override
  _VideoDetielsState createState() => _VideoDetielsState();
}

class _VideoDetielsState extends State<VideoDetiels> {
  late YoutubePlayerController controller;
  initState(){
    super.initState();
    const url="https://youtu.be/iKRCWpsGiRM";
    controller =YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: true,
        autoPlay: true,
      )
    );
  }
  @override
  Widget build(BuildContext context) {

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context,player)=>
       Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              player,

              Image(
                image: AssetImage(
                  'assets/img/ScrollGroup8.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


