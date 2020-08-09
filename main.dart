
import 'OfflineAudio.dart';
import 'OnlineAudio.dart';
import 'OnlineVideo.dart';
import 'OfflineVideo.dart';
import 'package:google_fonts/google_fonts.dart';




import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
             appBar: AppBar(
       title: Text("Media Player"),
       backgroundColor: Colors.indigo,
     ),
     body: Container(
       alignment: Alignment.topCenter,
       //width: MediaQuery.of(context).size.width,
       //height: MediaQuery.of(context).size.height,
       child: Stack(
         fit: StackFit.expand,
         children: <Widget>[
           Container(
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
    image: const DecorationImage(
      image: NetworkImage('https://raw.githubusercontent.com/Yashika-Khandelwal/flutter_image/master/dribbble-music-player-iconspng-by-igor-koshelev-music-player-png-1600_1199.png'),
      fit: BoxFit.cover,
    ),

             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
               

               children:<Widget>[
                 
                 Text("Media Player",
                 style: GoogleFonts.blackAndWhitePicture(
                   fontStyle: FontStyle.italic,
                   fontSize: 90,
                   shadows: [Shadow(color: Colors.pink[200],
                  blurRadius: 40)],
                  color: Colors.indigo,


                   ),
                 
                 ),

               ],


             ),
           )

       ],
       )
     ),
       
       
        drawer: Builder(builder: (context)=>
        Drawer(
          child: ListView(children: <Widget>[
            DrawerHeader(

             child: Image.asset('images/kodi.png'),
             decoration: BoxDecoration(
             color: Colors.indigo
               ),
             ),

            ListTile(
              subtitle: Text("Audio from internet"),
              leading: Icon(Icons.music_note,size: 30,color: Colors.indigo,),
              title: Row(
                children: <Widget>[
                  Text("Network Audio",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo,
                    
                    ),
                    ),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OnlineAudio()
                )
                );
              },
            ),

            ListTile(
              subtitle: Text("Audio from local disk"),
              leading: Icon(Icons.music_note,size: 30,color: Colors.indigo,),
              title: Row(
                children: <Widget>[
                  Text("Asset Audio",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo,
                    
                    ),
                    ),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OfflineAudio()
                )
                );
              },
            ),
            ListTile(
              subtitle: Text("Video from internet"),
              leading: Icon(Icons.music_video,size: 30,color: Colors.indigo,),              
              title: Row(
                children: <Widget>[
                  Text("Network Video",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo,
                    
                    ),
                    ),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OnlineVideo()
                )
                );
              },
            ),
            ListTile(
              subtitle: Text("Video from local disk"),
              leading: Icon(Icons.music_video,size: 30,color: Colors.indigo,),
              title: Row(
                children: <Widget>[
                  Text("Asset Video",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo,
                    
                    ),
                    ),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OfflineVideo()
                )
                );
              },
            ),
          ],
          ),
        ),
       
      

    ),

      )
    );
  }
}