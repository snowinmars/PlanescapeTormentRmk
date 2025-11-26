// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10124 /* ~You see an aging woman in cheap clothes. She seems to have gone to great lengths to look younger and more attractive than she really is. As you near her you detect the smell of cheap wine in the air.~ */
  IF ~~ THEN REPLY #10125 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #10126 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10127 /* ~She turns to face you, her face flushed from too much drink. "Why, hellooooo there. Ya looking for some... company?" She smiles at you and then actually seems to see you for the first time. "Ooooh, a bit of a mess ya are. Wha... what happened t'ya?"~ */
  IF ~~ THEN REPLY #10128 /* ~"I was hoping to ask you a few questions?"~ */ GOTO 2
  IF ~~ THEN REPLY #10129 /* ~"None of your business."~ */ GOTO 6
  IF ~~ THEN REPLY #10130 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10131 /* ~She leans in close to you and places her palms on your chest. "No... need fer questions. If'n you got the jink... then I got the talent. Me kip's right o'er there. Les go."~ */
  IF ~~ THEN REPLY #10132 /* ~"That's not what I'm interested in. I need some information from you."~ */ GOTO 3
  IF ~~ THEN REPLY #10133 /* ~"How much?"~ */ GOTO 4
  IF ~~ THEN REPLY #10134 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10135 /* ~She puts her hands on her hips. "Lo... Look 'ere, berk. I gots ta make a livin' see? Now, ya may be a bit confused but... do I look like a sage to ya? The only answers I got fer ya are right 'ere." She opens her arms to you.~ */
  IF ~~ THEN REPLY #10136 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #10137 /* ~"How much?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #10138 /* ~She smiles and giggles. "Ooooh, now ye're talkin'... five coins and I may yell but I won't tell..." She looks at you expectantly.~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10140 /* ~"Let's go..."~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 5
  IF ~  PartyGoldLT(5)
~ THEN REPLY #10139 /* ~"Sorry, I just don't have the money."~ */ EXIT
  IF ~~ THEN REPLY #10141 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10142 /* ~She leads you to her kip. After an hour's time she returns you to the street. "Come again... I aims to please." She smiles and waves good day.~ */
  IF ~~ THEN REPLY #10143 /* ~"Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #10144 /* ~She frowns at you. "Hey now... no need ta be rude. If'n ya can't be friendly, I can't be spendin' the time wit' ya. Git!" She turns and walks away.~ */
  IF ~~ THEN REPLY #10145 /* ~Leave her in peace.~ */ EXIT
END
