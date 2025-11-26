// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17155 /* ~This seedy-looking fellow is quick to spot you looking at him. "'Ey, basha, get over 'ere! Come see wot I gots for ya!" He winks and waves you over.~ */
  IF ~~ THEN REPLY #17158 /* ~"What do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17159 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17160 /* ~"I was just passing by. Farewell."~ */ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17156 /* ~The man's beady little eyes gleam like tiny black gems when he spots you. "'Ey, dere; back for more? C'mon over, see wot I gots for ya dis time!"~ */
  IF ~~ THEN REPLY #17192 /* ~"What do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17203 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17204 /* ~"I was just passing by. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17157 /* ~The man breaks in even before you can finish your sentence. "Ya won't believe da deals I gots for ya today! Ye're a smart basha ta come ta me, ya are; I won't cheat ya like dese pikin' bobbers." He motions to where the other merchants stand.~ */
  IF ~~ THEN REPLY #17208 /* ~"All right, what do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17209 /* ~"Actually, I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #17211 /* ~"I'm leaving. Farewell."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #17168 /* ~He nods, but it's clear he's not listening. "Yessir, dis is some damn good stuff I gots here! Just look at it all! An' can ya believe dese prices? Ye'd be practically *stealin'* from me, ya would!"~ */
  IF ~~ THEN REPLY #17212 /* ~"All right, what do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17214 /* ~"Listen to me: I - HAVE - QUESTIONS."~ */ GOTO 4
  IF ~~ THEN REPLY #17219 /* ~Turn and walk away.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17169 /* ~"Sure ya do! Like, 'Ow's 'e offer such stonkin' barmy deals?' Or, 'Ow's 'e get such a corkin' spread a' goods?' Well, don't ya worry about it, basha! All ya gotta know is dat I gots a little a' everyting! Well, except dose Lim-Lim tings... but who da Baator needs one a' dose? Ha! Eh? Ha ha ha!"~ */
  IF ~~ THEN REPLY #17224 /* ~"Fine, fine... what do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17225 /* ~Turn and walk away.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 7.1
  SAY #17175 /* ~He calls to your back: "Wait, basha, where ya goin'? Don't ya wanna see all da great deals? Get back here! Ya don't know what ye're missin', ya don't!"~ */
  IF ~~ THEN REPLY #17226 /* ~"Very well. What do you have to offer?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17227 /* ~Just keep on walking.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2 1.2
  SAY #17473 /* ~The man breaks in even before you can finish your sentence. "Ya won't believe da deals I gots for ya today! Ye're a smart basha ta come ta me, ya are; I won't cheat ya like dese pikin' bobbers." He motions to where the other merchants stand.~ */
  IF ~~ THEN REPLY #17475 /* ~"All right, what do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17476 /* ~"I'm leaving. Farewell."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.2 6.1
  SAY #17474 /* ~He nods, but it's clear he's not listening. "Yessir, dis is some damn good stuff I gots here! Just look at it all! An' can ya believe dese prices? Ye'd be practically *stealin'* from me, ya would!"~ */
  IF ~~ THEN REPLY #17477 /* ~"All right, what do you have to offer me?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17478 /* ~Turn and walk away.~ */ GOTO 5
END
