# README - Escape Room Generator App

## Description
This application is a customizable escape room generator. It allows users to create and configure unique escape room experiences with various challenges, images, and background music.

## Application Configuration
To configure the application, certain files must be modified with the desired constants and challenges. Make sure you copy the image and sound files to asseets.

### Initial Setup
Edit the file `app/constants/app_constants.dart` to define images, fonts, music, and other visual and auditory elements. An example of initial configuration is:

```dart
final CONFIG_APP = Config(
  imgFail: "${ASSET_IMAGES_APP}cris/failcm.png",
  imgLife: "${ASSET_IMAGES_APP}cris/lifecm.png",
  loadingScreen: "${ASSET_IMAGES_APP}cris/jessicaCrospsd.png",
  font: "mistery",
  splashWallpaper: "${ASSET_IMAGES_APP}cris/open_mistery.png",
  birthdayTarget: "Cristina",
  whereIsPresent: "In progress",
  loopMusic: "${ASSET_SOUNDS}mistery.mp3",
  assertMusic: "good_mistery.mp3",
  failMusic: "fail.wav",
  gameOverMusic: "game_over.wav",
  winMusic: "${ASSET_SOUNDS}win_mistery.mp3",
  wallpaperList: const [
    "assets/img_app/cris/bk1.png",
    "assets/img_app/cris/bk2.png",
    "assets/img_app/cris/bk3.png",
    "assets/img_app/cris/bk4.png",
    "assets/img_app/cris/bk5.png",
    "assets/img_app/cris/bk6.png",
    "assets/img_app/cris/bk7.png"
  ],
  challengeList: GET_CHALLENGUES_CONFIG(BirthdayConfig.CRIS)
);
```

### Challenge Configuration
In the file app/constants/challengues_selector.dart, define the specific challenges for your escape room. Each challenge should be configured with a descriptive text, a solution, a hint, and if necessary, a path to a related PDF or image.

For example, a challenge can be configured as follows:
```dart
Challenge(
  solve: "challenge solution",
  text: "Description and context of the challenge",
  imgPath: "path/to/related/image.png",
  help: "Hint to solve the challenge",
  contains: true, // or false, depending on whether the challenge contains more elements
  pdf: true, // or false, if a PDF is included
  pdfPath: "path/to/the/file.pdf" // if pdf is true
);
```
### Application Usage
Once configured, the application is ready to generate escape rooms with the established challenges. Users can interact with the challenges, solve puzzles, and enjoy an immersive escape room experience.

### Customization
The application allows for extensive customization, making each generated escape room unique. Take advantage of the multiple configuration options to create personalized experiences.

# MIT License

Copyright (c) [2023]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
