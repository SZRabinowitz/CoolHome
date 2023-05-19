## CoolHome - A cool launcher built for the LG Classic Flip
![visitors](https://camo.githubusercontent.com/741549bcbd0740bff87dfd4b106797b58678208bdd8a9456e7ded7f031bf5eb8/68747470733a2f2f6170692e76697369746f7262616467652e696f2f6170692f76697369746f72733f706174683d68747470732533412532462532466769746875622e636f6d253246626964656e323032307072657a253246436f6f6c486f6d65266c6162656c3d50726f6a6563742532305669657773266c6162656c436f6c6f723d25323330303030303026636f756e74436f6c6f723d253233666666303030267374796c653d666c6174) 

This is a project I've been working on for a while. It's the launcher from the Kazuna Etalk, and I modified it to be compatible with my LG Classic. I decided to show off and post a screenshot on another thread here, and people asked me to release it (of course, I wanted that to happen :)). So here it is.

This is a pre-release of the project. Not yet stable. Still has bugs.

Version 1.10:
- 
- Changed app name to CoolHome
- Changed launcher intents from the HomeActivity to the intents for LG Classic Flip
- Changed KeyEvents of the top two softkeys and the 'send' (recent calls) button to the keycodes of the LG Classic Flip
- Ported the Keyevent Listener to the homeactivity so users can select apps using number keys
- Removed the use of GlobalSettings that were causing the app to crash (because third party apps may not store their settings there)
- Removed the voicemail notifications which could not be accessed by a third party app (and therefore the app wouldn't launch
- Changed App Icons

There are still a few missing parts which I hope to update in the future

Source Code: 
- 
As mentioned, this app is a modified version of the Kazuna Etalk Launcher, so I don't have access to the source code. However, I will upload the decompiled Smali [here](https://) in the future as a way for users to track changes as they come through. I am unsure whether or not I will upload the Java used to add features in this app (I probably will if someone requests it). 

Contributions:
- 
Contributions are welcomed!

Installation and Usage:
-
You must install this app with ADB using the -g flag (I also added -r which will be useful for future updates):
[code]adb install -g -r CoolHome-v1.10.apk[/code]
To set it as the default Home App, run:
[code]adb shell cmd package set-home-activity com.android.cts.wy.f1home/com.wy.f1home.activity.KeyguardActivity[/code]

This app relies on Apps4Flip Launcher for the Apps button. If you don't have Apps4Flip launcher the apps button wont work. 

Screenshots:
-

![](https://private-user-images.githubusercontent.com/106286969/239626814-8dcb60f9-0330-457d-87ad-6e1c28438460.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJrZXkxIiwiZXhwIjoxNjg0NTI3MTA3LCJuYmYiOjE2ODQ1MjY4MDcsInBhdGgiOiIvMTA2Mjg2OTY5LzIzOTYyNjgxNC04ZGNiNjBmOS0wMzMwLTQ1N2QtODdhZC02ZTFjMjg0Mzg0NjAucG5nP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LUNyZWRlbnRpYWw9QUtJQUlXTkpZQVg0Q1NWRUg1M0ElMkYyMDIzMDUxOSUyRnVzLWVhc3QtMSUyRnMzJTJGYXdzNF9yZXF1ZXN0JlgtQW16LURhdGU9MjAyMzA1MTlUMjAwNjQ3WiZYLUFtei1FeHBpcmVzPTMwMCZYLUFtei1TaWduYXR1cmU9MmNmMmQwNTM3ZmZlYjY1NDNkZDFmZjkyMDg0MTkzYWY3Y2NiYjljOGY4NzNmZmFhY2ZmOTc4MjY3MGNhZmUzMCZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QifQ.4l48YRgM9x9gOIOOmZ475fqzKcKRf6ucJrjbp8_YFAo) - - - - - - - - - - - - - ![](https://private-user-images.githubusercontent.com/106286969/239626817-1eb68e68-18f4-459b-81bf-82bbef92f505.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJrZXkxIiwiZXhwIjoxNjg0NTI3MTA3LCJuYmYiOjE2ODQ1MjY4MDcsInBhdGgiOiIvMTA2Mjg2OTY5LzIzOTYyNjgxNy0xZWI2OGU2OC0xOGY0LTQ1OWItODFiZi04MmJiZWY5MmY1MDUucG5nP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LUNyZWRlbnRpYWw9QUtJQUlXTkpZQVg0Q1NWRUg1M0ElMkYyMDIzMDUxOSUyRnVzLWVhc3QtMSUyRnMzJTJGYXdzNF9yZXF1ZXN0JlgtQW16LURhdGU9MjAyMzA1MTlUMjAwNjQ3WiZYLUFtei1FeHBpcmVzPTMwMCZYLUFtei1TaWduYXR1cmU9NTEzNzM2Zjg5NWNlZDRkN2I5MmRmODFkZjZiMmE5MjhhZTg1OTZlMTZkOTFmMjBmZmQ3ZjdiY2FkYWIyMGIyOCZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QifQ.F8BQUA15U1DLJhrHQPGmxWYU1toqCieoZlXymlNaXI0)


Credits:
- 
- Kazuna and Wy for the home app
- [LionScribe](https://forums.apps4flip.com/u/lionscribe) for helping me out with some smali questions I had

If your name belongs in this section please remind me!

Download:
-
https://github.com/biden2020prez/CoolHome/releases/download/1.10/CoolHome-v1.10.apk
