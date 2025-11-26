// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~This spectral figure materializes from the gloom of the passageway ahead and quickly moves to block your path. It floats before you, its once human features twisted in a mask of rage. "Defilers! Leave this place at once!"~ */
  IF ~~ THEN REPLY #32444 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~Leave quickly.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~The air around you suddenly feels icy cold as the Guardian Spirit manifests itself. Once again, it floats towards you, its spectral robes fluttering as if blown by some ethereal breeze.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~"Hold, spirit. I have some questions..."~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~"Hold, spirit. I wish to help rid you of this intruder you spoke of."~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~"Never mind. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~"Leave now!" Its booming voice echoes down the halls. "This place is forbidden to the living. Leave while you still can."~ */
  IF ~~ THEN REPLY #32449 /* ~"I have some questions first..."~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~"I go where I please... stand aside, spirit."~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~"As you wish. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~"Impudence!" The sheer volume of the spirit's roar forces you to cover your ears. "You have been warned... I cannot permit this sacred resting place to be disturbed any further."~ */
  IF ~~ THEN REPLY #32452 /* ~"Any further? Has someone else been here?"~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~"Yeah, yeah. Why don't you go find some children to frighten."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~"On second thought... I think I'll leave now. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~"Seek your answers elsewhere. This place is a sanctuary for the dead. I shall not permit their slumber to be disturbed by the intrusion of yet another insolent mortal!"~ */
  IF ~~ THEN REPLY #32455 /* ~"Another? Has someone else been here?"~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~"I go where I please... stand aside, spirit."~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~"As you wish. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~"If you must know... yes, there is another intruder who, even now, continues to violate the sanctity of these hallowed halls." The anger in the spirit's voice fades. He seems somewhat saddened by the admission. "The souls of my brothers and sisters cry out for peace."~ */
  IF ~~ THEN REPLY #32458 /* ~"Who is this other intruder?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~"Why don't you drive this intruder away?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~"On second thought... I think I'll leave now. Farewell."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~"He is an evil coward who wields great power over the dead. He seeks something within these halls... what it might be or what his purpose is in seeking it, I cannot say."~ */
  IF ~~ THEN REPLY #32461 /* ~"Why don't you drive this intruder away?"~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~"On second thought... I think I'll leave now. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~"I cannot. The coward has sealed himself within the inner chamber of the Mausoleum. He has erected powerful wards that bar my entrance into the chamber. It is from there that he calls upon his dark arts to awaken my brethren and bends them to his evil will."~ */
  IF ~~ THEN REPLY #32463 /* ~"Perhaps I may be of assistance to you..."~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~"Sounds to me like you need the help of one intruder to get rid of another."~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~"On second thought... I think I'll leave now. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~The spirit remains silent for several long moments. You can almost feel the weight of his lifeless gaze upon you. "Yes... you might prevail where I have failed. If you will pledge to rid me of this blackguard, I shall grant you passage. What say you?"~ */
  IF ~~ THEN REPLY #32466 /* ~"I'll do it."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~I have pledged to help the spirit that guards the Mausoleum. It seems an intruding Necromancer has sealed himself in an inner chamber with powerful wards that protect him from the spirit. He must be the one responsible for the "walking dead" Norochj is so concerned about.~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~"On second thought... I think I'll leave now. Farewell."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~"So be it." The spirit slowly begins to fade, until only the echoing of its disembodied voice remains. "But take heed... tread lightly in these halls, lest you join the others in eternal rest."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~As you step into the corridor, the guardian spirit materializes before you. Its ghostly countenance regards you benevolently. "I thank you. You have done me a great service. The spirits of my charges sleep quietly once again. Go in peace... friend." The apparition fades away, leaving you alone in the deserted halls of the Mausoleum.~ */
  IF ~~ THEN REPLY #32469 /* ~Leave.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~I have slain the intruding necromancer the Guardian Spirit spoke of. With his power broken, the dead no longer walk the halls of the Mausoleum. Norochj will be pleased.~ */ EXIT
END
