// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROYALGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DROYALGD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51341 /* ~This massive skeleton - far larger than an ordinary human - wears ornate bronze armor engraved with elaborate symbols. As you approach it, it looks down at you briefly, then away again.~ */
  IF ~~ THEN REPLY #51342 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #51409 /* ~Leave the giant skeleton alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51410 /* ~"Greetings, Living," the thing's voice booms. "I stand here as a Royal Guard of his lord and majesty, the Silent King. I must ask that you do not distract me from my task with questions."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51412 /* ~"Why does he need guards? He's dead, after all..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51411 /* ~"Why does he need guards? He's dead, after all..."~ */ GOTO 2
  IF ~~ THEN REPLY #51414 /* ~"Could you at least tell me who you are... or were?"~ */ GOTO 4
  IF ~~ THEN REPLY #51415 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1
  SAY #51413 /* ~The giant skeleton flinches, looks around itself, then snarls down at you, hissing through clenched teeth: "Quiet yourself, fool! Speak of it again and you'll be numbered among the Living no longer!"~ */
  IF ~~ THEN REPLY #51416 /* ~"Fine. Could you at least tell me who you are... or were?"~ */ GOTO 4
  IF ~~ THEN REPLY #51417 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #51418 /* ~"The Silent King is more than just a wizened corpse, Living. Even in those long past days when he spoke to us, the Silent King was *more* than just that fine man. The Silent King is an *institution.* One which I now, as I have for the last two hundred years, devoutly defend. His great will lives on through the voices of Hargrimm and Stale Mary and, until my bones are dust beneath the heel of a greater foe, so shall it always."~ */
  IF ~~ THEN REPLY #51419 /* ~"I see. Who are... or were you?"~ */ GOTO 4
  IF ~~ THEN REPLY #51420 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0
  SAY #51421 /* ~"I am in death, as I was in life, one of the Ninety-Nine Sons of the Western Mountains, fathered when the member of Amahar was severed and cast down upon the face of Ith'hyr. Honor-bound to defend our queen, we were lost to this world when ours - and our lady with it - was destroyed by an angry godling, a brother to Amahar. Many of our number roam the plains, but some - like myself - chose to remain in Sigil. When I passed away, I was interred here, and later awoke in the state you find me in, now. I then chose a new master - the Silent King - to defend."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51422 /* ~"Why defend him? He's dead, after all..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51423 /* ~"Why defend him? He's dead, after all..."~ */ GOTO 2
  IF ~~ THEN REPLY #51424 /* ~"I see. Farewell."~ */ EXIT
END
