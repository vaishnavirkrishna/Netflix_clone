import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContainerRe extends StatefulWidget {
  const ContainerRe({super.key, required this.indexMovie});
  final int indexMovie;

  @override
  State<ContainerRe> createState() => _ContainerReState();
}

class _ContainerReState extends State<ContainerRe> {
  @override
  Widget build(BuildContext context) {
    List<String> videoList = ["y0uZABib60g", "AB2ACJ22fhY", "nYEoxne_20Y"];
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoList[widget.indexMovie],
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            color: Colors.black,
            height: 200,
            child: YoutubePlayer(controller: _controller),
          ),
          Divider(
            color: Colors.black,
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }
}
