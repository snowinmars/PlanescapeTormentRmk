// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17409 /* ~This attractive young woman is smiling and beckoning to all passersby as she calls out the virtues of her goods. "Plates! Jugs! Cups! Tankards! Drink from the goblets of the finest lords!" Upon seeing you, she waves you over as if you were an acquaintance.~ */
  IF ~~ THEN REPLY #17433 /* ~"May I see what you're selling here?"~ */ GOTO 2
  IF ~~ THEN REPLY #17434 /* ~"I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #17435 /* ~Pretend not to see her waving, walk away.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17410 /* ~The woman smiles warmly at your approach. "Hello again, sir. And what would you like to purchase this day, mmm?"~ */
  IF ~~ THEN REPLY #17436 /* ~"What are you selling right now?"~ */ GOTO 2
  IF ~~ THEN REPLY #17437 /* ~"Nothing, but I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #17438 /* ~"Nothing; I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17412 /* ~"I sell plates, cups, jugs, tankards, cutlery and the like, sir. All of quality, sir, the finest." She steps back and lifts the lid of the crate on the wagon behind her. "Please, look over my goods... should you have any questions, feel free to ask."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22233 /* ~"I need something to hold ink in... do you have a tankard or a goblet for sale?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17439 /* ~Step closer, examine the contents of the crate.~ */ GOTO 3
  IF ~~ THEN REPLY #17440 /* ~"Not right now. I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #17441 /* ~"Maybe another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 10.0
  SAY #17414 /* ~You peer into the crate; it's full of... plates, cups, jugs, tankards, cutlery and the like. They look to be of varying degrees of quality, but some of it appears quite nice. As you're looking them over, she presses up against you: "See anything you like, sir? Mmm?" Her long, waving hair, brushing against your shoulder, smells faintly sweet, like vanilla.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22234 /* ~"I need something to hold ink in... do you have a tankard or a goblet for sale?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17442 /* ~"Where does this all come from?"~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17444 /* ~"No, there's nothing I need there. But I had some questions..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17445 /* ~"No, none of it's any use to me. Farewell."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17446 /* ~"No, there's nothing I need there. But I had some questions..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17448 /* ~"No, none of it's any use to me. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17415 /* ~She flashes a wicked grin. "My lovers are all burglars, sir - these goods are pilfered from the homes of Sigil's nobles." Upon seeing your expression, she laughs sweetly. "A jest, sir, merely! My father and brothers are tinkers; these are wares which are discarded from the nobles' manors and made good by them once more."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22235 /* ~"I need something to hold ink in... do you have a tankard or a goblet for sale?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17449 /* ~"I see. I had some questions..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17450 /* ~"That's all I wished to know. Farewell."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17451 /* ~"I see. I had some questions..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17453 /* ~"That's all I wished to know. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.3 4.1 4.2
  SAY #17416 /* ~"Oh, sir, but wait!" She puts her hand on your forearm; her touch is light as a feather. "Are you *sure* there's nothing you need? Surely something for your own home, or a gift..." She bites her lip coyly, cocking her head slightly.~ */
  IF ~~ THEN REPLY #17454 /* ~"Well... that is a nice plate right there..."~ */ GOTO 7
  IF ~~ THEN REPLY #17455 /* ~"Eh... no, nothing I need. My questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #17456 /* ~"Sorry... nothing I need. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4 3.5 4.3 4.4
  SAY #17417 /* ~"Oh, sir, but wait!" She puts her hand on your forearm; her touch is light as a feather. "Are you *sure* there's nothing you need? Surely something for your own home, or a gift..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 104
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17418 /* ~"What, sir... this one, here?"~ */
  IF ~~ THEN REPLY #17459 /* ~"No, uh, that - wait. This is ridiculous; I need no plates. I had questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #17460 /* ~"Look, my apologies. I really don't need any plates. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #17419 /* ~She looks so sad you're nearly stricken with guilt. Slowly, she lowers the lid of the crate. "Sorry, sir, I have no time for questions. I must sell what I can before the day is done, for my family is large and hungry."~ */
  IF ~~ THEN REPLY #17461 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 10.1
  SAY #17420 /* ~She looks so hurt you're nearly stricken with guilt. Slowly, she lowers the lid of the crate. "Farewell then, sir. Should you need anything in the future, I beg you to return here. Nowhere else shall you find such fine goods at such wondrous prices." She waves sadly.~ */
  IF ~~ THEN REPLY #17462 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 1.1 2.2
  SAY #17421 /* ~"Sorry, sir, I have no time for questions. I must sell what I can before the day is done, for my family is large and hungry." She holds open the lid of the crate behind her. "Are you *sure* you wouldn't like to see what I have to offer? Mmm?"~ */
  IF ~~ THEN REPLY #17463 /* ~"Very well. I'll look."~ */ GOTO 3
  IF ~~ THEN REPLY #17464 /* ~"Maybe another time. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #17422 /* ~The merchant turns up her cute, button nose. "Hmph! Are you so jealous that you'd rob a poor merchant of her sale? The good sir is a customer, o Plane-Touched, not some piece of meat to be owned or fought over." With that, she nods at you.~ */
  IF ~~ THEN REPLY #17465 /* ~Wait for it...~ */ EXTERN ~DANNAH~ 105
END

IF ~~ THEN BEGIN 12 // from: 2.0 3.0 4.0
  SAY #22230 /* ~She nods. "Oh, yes... many kinds. They range in price from a few coppers to several hundred..."~ */
  IF ~~ THEN REPLY #22236 /* ~"Actually, I'm looking for the cheapest one you have." ~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22231 /* ~She raises an eyebrow. She reaches into a crate at her side, then throws a battered-looking tankard to you. It is covered in dents, and its handle looks like it is about to fall off.~ */
  IF ~~ THEN REPLY #22237 /* ~"Uh... this one looks like it was used on someone's skull."~ */ DO ~GiveItemCreate("Tankard",Protagonist,1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22232 /* ~She smiles slightly.~ */
  IF ~~ THEN REPLY #22238 /* ~"It'll do. Thanks, and farewell."~ */ JOURNAL #21909 /* ~I got a battered tankard from one of the merchants. I'm ready to take it to Meir'am and show it to her.~ */ EXIT
END
