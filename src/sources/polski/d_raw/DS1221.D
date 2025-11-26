// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS1221.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DS1221~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35306 /* ~Ten ożywiony szkielet cuchnie tak bardzo, jak gdyby dopiero przed chwilą odarto go z ciała. Szczęka i główne stawy zostały silnie związane skórzanymi paskami, a na wierzch ktoś narzucił mu kubrak. Na czole wyryto mu liczbę "1221".~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35307 /* ~"Przepraszam, widziałeś może jakieś przechodzące szkielety?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35330 /* ~"Przepraszam, widziałeś może jakieś przechodzące szkielety?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35331 /* ~"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35332 /* ~"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35333 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #35338 /* ~Przyjrzyj się temu szkieletowi uważnie.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35371 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 376
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35372 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35373 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35374 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35375 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35376 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35377 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35378 /* ~"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"~ */ EXTERN ~DMORTE~ 372
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35379 /* ~Zostaw ten szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35380 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35381 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35308 /* ~Szkielet nie odpowiada.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35309 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35328 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35329 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35334 /* ~Szkielet nic nie odpowiada. Wygląda na to, że jest już nieżywy zbyt długo, żeby odpowiadać na twoje pytania.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35335 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35336 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35337 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35339 /* ~Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35340 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 376
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35362 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35363 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35364 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35365 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35366 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35367 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35368 /* ~Zostaw ten szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35369 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35370 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35345 /* ~Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35346 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35347 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35348 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35349 /* ~Zostaw ten szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35350 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35351 /* ~Zostaw ten szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35353 /* ~Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.~ */
  IF ~~ THEN REPLY #35354 /* ~"Przykro mi, Kostuszku..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35356 /* ~Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.~ */
  IF ~~ THEN REPLY #35357 /* ~"Przykro mi, Kostuszku..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35382 /* ~Szkielet nic nie odpowiada. Wygląda na to, że jest już nieżywy zbyt długo, żeby odpowiadać na twoje pytania.~ */
END
