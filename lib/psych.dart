import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Psych extends StatefulWidget {
  const Psych({super.key});

  @override
  State<Psych> createState() => _AllVideosState();
}

class _AllVideosState extends State<Psych> {
  bool _playarea = false;
  bool _isPlaying = false;
  bool _disposed = false;
  int _isPlayingIndex = -1;
  VideoPlayerController? _controller;
  List video_list = [
    "videos/psycho.mp4",
    "videos/psycho2.mp4",
    "videos/psycho3.mp4",
  ];
  List video_length = [
    "01:05",
    "00:57",
    "00:43",
  ];
  List video_name = [
    "أول فيديو",
    "ثاني فيديو",
    "الفيديو الثالث",
  ];

  @override
  void dispose() {
    _disposed = true;
    _controller?.pause();
    _controller?.dispose();
    _controller = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "الدعم النفسي",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                size: 28,
                color: Color(0xFFf4896f),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              _playarea == false
                  ? Container()
                  : Container(
                      child: Column(
                        children: [
                          _playView(context),
                          _controlView(context),
                        ],
                      ),
                    ),
              Expanded(child: _listView())
            ],
          ),
        ));
  }

  String convertTwo(int value) {
    return value < 10 ? "0$value" : "$value";
  }

  Widget _controlView(BuildContext context) {
    final _noMute = (_controller?.value?.volume ?? 0) > 0;
    final duration = _duration?.inSeconds ?? 0;
    final head = _position?.inSeconds ?? 0;
    final remained = max(0, duration - head);
    final mins = convertTwo(remained ~/ 60.0);
    final secs = convertTwo(remained % 60);

    return Container(
        height: 75,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFf4896f),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 4.0,
                        color: Color.fromARGB(50, 0, 0, 0),
                      ),
                    ],
                  ),
                  child: Icon(_noMute ? Icons.volume_up : Icons.volume_off,
                      color: Colors.white),
                ),
              ),
              onTap: () {
                if (_noMute) {
                  _controller?.setVolume(0);
                } else {
                  _controller?.setVolume(1.0);
                }
                setState(() {});
              },
            ),
            TextButton(
                onPressed: () async {
                  final index = _isPlayingIndex - 1;
                  if (index >= 0 && video_list.length > 0) {
                    _onTapVideo(index);
                  }
                },
                child: Icon(
                  Icons.fast_rewind,
                  size: 36,
                  color: Colors.white,
                )),
            TextButton(
                onPressed: () async {
                  if (_isPlaying == true) {
                    setState(() {
                      _isPlaying = false;
                    });
                    _controller?.pause();
                  } else {
                    setState(() {
                      _isPlaying = true;
                    });
                    _controller?.play();
                  }
                },
                child: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 36,
                  color: Colors.white,
                )),
            TextButton(
                onPressed: () async {
                  final index = _isPlayingIndex + 1;
                  if (index < video_list.length) {
                    _onTapVideo(index);
                  }
                },
                child: Icon(
                  Icons.fast_forward,
                  size: 36,
                  color: Colors.white,
                )),
            Text(
              "$mins:$secs",
              style: TextStyle(color: Colors.white, shadows: <Shadow>[
                Shadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 4.0,
                    color: Color.fromARGB(150, 0, 0, 0))
              ]),
            ),
          ],
        ));
  }

  Widget _playView(BuildContext context) {
    final controller = _controller;
    if (controller != null && controller.value.isInitialized) {
      return Container(
        height: 500,
        width: 300,
        child: VideoPlayer(controller),
      );
    } else {
      return Text("Preparing your video ... ");
    }
  }

  var _onUpdateControllerTime;
  Duration? _duration;
  Duration? _position;
  var _progress = 0.0;
  void _onControllerUpdate() async {
    if (_disposed) {
      return;
    }
    _onUpdateControllerTime = 0;

    final now = DateTime.now().millisecondsSinceEpoch;
    if (_onUpdateControllerTime > now) {
      return;
    }
    _onUpdateControllerTime = now + 500;

    final controller = _controller;
    if (controller == null) {
      debugPrint("Controller is null");
      return;
    }
    if (!controller.value.isInitialized) {
      debugPrint("Controller cannot be initialized");
      return;
    }
    final playing = controller.value.isPlaying;

    if (_duration == null) {
      _duration = _controller?.value.duration;
    }
    var duration = _duration;
    if (duration == null) {
      return;
    }
    var position = await controller.position;
    _position = position;

    if (playing) {
      if (_disposed) return;
      setState(() {
        _progress = position!.inMilliseconds.ceilToDouble() /
            duration.inMilliseconds.ceilToDouble();
      });
    }

    _isPlaying = playing;
  }

  _onTapVideo(int index) async {
    final controller = VideoPlayerController.asset(video_list[index]);
    final old = _controller;
    _controller = controller;
    if (old != null) {
      old.removeListener(_onControllerUpdate);
      old.pause();
    }

    setState(() {});
    controller
      ..initialize().then((_) {
        old?.dispose();
        _isPlayingIndex = index;
        controller.addListener(_onControllerUpdate);
        controller.play();
        setState(() {});
      });
  }

  _listView() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                itemCount: video_list.length,
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    onTap: () {
                      _onTapVideo(index);
                      debugPrint(index.toString());
                      setState(() {
                        if (_playarea == false) {
                          _playarea = true;
                        }
                      });
                    },
                    child: _buildCard(index),
                  );
                }))
      ],
    );
  }

  _buildCard(int index) {
    return Container(
      height: 135,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/psycho_icon.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(video_name[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      video_length[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xFFf4896f),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < 70; i++)
                    i.isEven
                        ? Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                                color: Color(0xFFf4896f),
                                borderRadius: BorderRadius.circular(2)),
                          )
                        : Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2)),
                          )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
