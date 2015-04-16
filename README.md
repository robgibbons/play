# play
A simple command-line media player for the Raspberry Pi.

#### Requires
Play requires the following packages: ```omxplayer```, ```fbset```, ```youtube-dl```, and ```youParse```.

#### Installation
After installing all requirements and downloading Play, move ```play.sh``` to ```/usr/local/bin``` or your preferred directory, and give it executable permissions. Optionally, you can change its name to just ```play```. Now you can call play directly from anywhere.

#### Usage
Play a local file:
```play somevideo.mp4```

Play a remote file:
```play http://www.example.com/somevideo.mp4```

Skip to a specific time:
```play http://www.example.com/somevideo.mp4 00:25:36```

Play YouTube video:
```play https://www.youtube.com/watch?v=XSGBVzeBUbk```

Play all videos in YouTube playlist:
```play https://www.youtube.com/playlist?list=PL7B7FA4E693D8E790```

Play all videos in YouTube playlist, skipping each to a specific time:
```play https://www.youtube.com/playlist?list=PL7B7FA4E693D8E790 00:25:36```

#### Options
Takes up to three (positional) arguments: ```play <filepath> <starttime> <omxplayer options>```
