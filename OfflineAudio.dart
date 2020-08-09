import 'dart:ui';


import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';


import 'package:flutter/material.dart';

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
var play;
var stop;


playAudio() {

audio.play("AUD-20190112-WA0002.mp3");
play = true;
stop = false;
}

pauseAudio() {
if (play == true) {
newPlayer.pause();
play = false;
}
}


stopAudio() {
if (play == true && stop == false) {
newPlayer.stop();
play = false;
stop = true;
}
}






class OfflineAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(
          'OFFLINE AUDIO PLAYER',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 10,
                ),
                
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x66000000),
                        offset: Offset(0, 20),
                        spreadRadius: 0,
                        blurRadius: 100,
                      ),
                      BoxShadow(
                        color: Color(0x11000000),
                        offset: Offset(0, 100),
                        spreadRadius: 0,
                        blurRadius: 100,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/Yashika-Khandelwal/flutter_image/master/sau-aasmaan-460x260.jpg'),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Text(
                'Album Title',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text('Singer Name, Label'),
              SizedBox(
                height: 5,
              ),
              Slider(
                onChanged: (v) {},
                value: 10,
                max: 100,
                min: 0,
                activeColor: Color(0xFF5E35B1),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_arrow),
                      onPressed: () =>playAudio()),
                  
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.pause_circle_filled),
                      onPressed: () =>pauseAudio()),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.stop),
                      onPressed: () =>stopAudio()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}