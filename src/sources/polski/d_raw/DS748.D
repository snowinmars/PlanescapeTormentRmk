// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS748.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DS748~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35383 /* ~Szkielet ten - numer "748", wedle numeru wyrytego na jego czole - jest dziwaczny o tyle, że niektóre jego zęby wyglądają na sztuczne, wykonane z czerwonawo-brązowego kamienia. Oczywiście nie są cenne, w przeciwnym bowiem razie dozorcy by je usunęli.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35384 /* ~"Przepraszam, widziałeś może jakieś przechodzące szkielety?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35407 /* ~"Przepraszam, widziałeś może jakieś przechodzące szkielety?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35408 /* ~"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35409 /* ~"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35410 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #35415 /* ~Dokładnie obejrzyj szkielet.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35448 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 384
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35449 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35450 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35451 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35452 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35453 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35454 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35455 /* ~"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"~ */ EXTERN ~DMORTE~ 380
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35456 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 378
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35457 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35458 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35385 /* ~Szkielet nie odpowiada.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35386 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 378
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35405 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35406 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35411 /* ~Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35412 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 378
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35413 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35414 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35416 /* ~Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35417 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 384
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35439 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35440 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35441 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35442 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35443 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35444 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35445 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 378
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35446 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35447 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35422 /* ~Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35423 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 378
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35424 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35425 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35426 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 378
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35427 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35428 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35430 /* ~Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.~ */
  IF ~~ THEN REPLY #35431 /* ~"Przykro mi, Kostuszku..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35433 /* ~Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.~ */
  IF ~~ THEN REPLY #35434 /* ~"Przykro mi, Kostuszku..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35459 /* ~Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END
