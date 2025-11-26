// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BGRACE~

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31487 /* ~"Morte, ciekawi mnie... co się stało z twoim ciałem?"~ [FFG326] */
  IF ~~ THEN EXTERN ~DMORTE~ 603
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61473 /* ~"Twoje umiejętności werbalne są dość znaczne. Po powrocie postaram się, abyś spędził trochę czasu w Przybytku."~ [FFG309] */
  IF ~~ THEN EXTERN ~DMORTE~ 604
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #61474 /* ~"Morte, muszę wyznać, że ciekawi mnie jak stałeś się latającą czaszką."~ [FFG323] */
  IF ~~ THEN EXTERN ~DMORTE~ 605
END

IF ~~ THEN BEGIN 3 // from:
  SAY #61475 /* ~"To byłeś ty?"~ [FFG323A] */
  IF ~~ THEN EXTERN ~DMORTE~ 606
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #61476 /* ~"Morte, kim więc jesteś? Nie pamiętam, żebyś o tym wspominał."~ [FFG324] */
  IF ~~ THEN EXTERN ~DMORTE~ 607
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #61477 /* ~"Morte, ale tak na poważnie - powiedz coś o sobie."~ [FFG325] */
  IF ~~ THEN EXTERN ~DMORTE~ 608
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61478 /* ~"Twoje słowne pojedynki robią wrażenie. Powinnam chyba zmierzyć zakres twych umiejętności."~ [FFG310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 609
END

IF ~~ THEN BEGIN 7 // from:
  SAY #61479 /* ~"Co mówiłeś?"~ [FFG310AA] */
  IF ~~ THEN EXTERN ~DMORTE~ 610
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 8 // from:
  SAY #61480 /* ~"Okazujesz się być bardzo przydatny, Morte. Tylko tak dalej, a nie ominie cię nagroda."~ [FFG308] */
  IF ~~ THEN EXTERN ~DMORTE~ 611
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #61646 /* ~"Anno... czy wychowałaś się w Ulu?"~ [FFG328] */
  IF ~~ THEN EXTERN ~DANNAH~ 287
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61647 /* ~"A więc dobrze."~ [FFG328A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #61649 /* ~"Anno... może powinnyśmy porozmawiać."~ [FFG327] */
  IF ~~ THEN EXTERN ~DANNAH~ 288
END

IF ~~ THEN BEGIN 12 // from:
  SAY #61650 /* ~"A więc dobrze."~ [FFG327A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #61652 /* ~"Twoje umiejętności walki są imponujące, Dak'konie."~ [FFG307] */
  IF ~~ THEN EXTERN ~DDAKKON~ 358
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY #61653 /* ~"Siła twego zdyscyplinowania robi wielkie wrażenie, Dak'konie."~ [FFG306] */
  IF ~~ THEN EXTERN ~DDAKKON~ 359
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61654 /* ~"Czy aby nie jesteś w stosunku do siebie zbytnio surowy?"~ [FFG306A] */
  IF ~~ THEN EXTERN ~DDAKKON~ 360
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61655 /* ~"Nordomie, jak się czujesz oddzielony od Źródła, od innych modronów?"~ [FFG330] */
  IF ~~ THEN EXTERN ~DNORDOM~ 132
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61656 /* ~"Wydaje się, że ty i Morte macie więcej wspólnego niż myślałam."~ [FFG330A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #61657 /* ~"Nordomie... czy rozmawiasz ze swoimi kuszami?"~ [FFG331] */
  IF ~~ THEN EXTERN ~DNORDOM~ 133
END

IF ~~ THEN BEGIN 19 // from:
  SAY #61658 /* ~"O, to dla mnie ulga. Myślałam..."~ [FFG331A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 134
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61659 /* ~"Och."~ [FFG331B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #61660 /* ~"Nordomie, jesteś czterodronnym modronem, prawda? Gdzie się podziały twoje skrzydła?"~ [FFG329] */
  IF ~~ THEN EXTERN ~DNORDOM~ 135
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61661 /* ~"To tak jakbyś był małym upadłym aniołem, popadłym w niesławę."~ [FFG329A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 136
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 23 // from:
  SAY #61662 /* ~"Wiesz co Nordomie, jesteś chyba najmilszym zbuntowanym modronem jakiego spotkałam."~ [FFG305] */
  IF ~~ THEN EXTERN ~DNORDOM~ 137
END

IF ~~ THEN BEGIN 24 // from:
  SAY #61663 /* ~"No właśnie! Dlatego jesteś taki milutki!"~ [FFG305A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Nordom","GLOBAL",0)
~ EXIT
END
