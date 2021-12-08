import 'package:flutter/foundation.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter/material.dart';

class YoutubeScreen extends StatefulWidget {
  final String? youtubeURL;
  const YoutubeScreen(this.youtubeURL);

  static const String path = "YoutubeScreen";
  @override
  YoutubeScreenState createState() => YoutubeScreenState();
}

class YoutubeScreenState extends State<YoutubeScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
        params: const YoutubePlayerParams(
          loop: true,
          color: 'transparent',
          desktopMode: true,
          strictRelatedVideos: true,
          showFullscreenButton: !kIsWeb,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("YouTube Video"),
      ),
      body: SizedBox(
        height: kIsWeb ? screenSize.height / 1.13 : screenSize.height,
        width: screenSize.width,
        child: YoutubePlayerControllerProvider(
          controller: _controller,
          child: YoutubePlayerIFrame(
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
