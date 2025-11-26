// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS863.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DS863~

IF ~  !HasItem("DRemind","S863")
~ THEN BEGIN 0 // from: 10.0
  SAY #35537 /* ~Ten szkielet wygląda tak, jakby wiele przeszedł, albo wskutek udziału w walkach, albo też wskutek spadnięcia ze zbyt dużej liczby schodów; i ręce, i nogi miał złamane, ale teraz zostało to naprawione przy pomocy skórzanych pasków i cieniutkich żelaznych prętów. Z przodu czaszki ma numer '863'... ale tył czaszki się zapadł, tworząc wydrążoną dziurę.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35538 /* ~"Przepraszam, że zabrałem ci ten pergamin, ale wątpię, czy dostarczyłbyś go w terminie."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35561 /* ~"Przepraszam, że zabrałem ci ten pergamin, ale wątpię, czy dostarczyłbyś go w terminie."~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35562 /* ~"Muszę ci zadać to pytanie: czy twoje połamane kości to efekt walk czy spadnięcia ze schodów?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35563 /* ~"Muszę ci zadać to pytanie: czy twoje połamane kości to efekt walk czy spadnięcia ze schodów?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35564 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #35569 /* ~Dokładnie obejrzyj szkielet.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35602 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35603 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35604 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35605 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35606 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35607 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35608 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35609 /* ~"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"~ */ EXTERN ~DMORTE~ 396
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35610 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35611 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35612 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35539 /* ~Szkielet nie odpowiada.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35540 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35559 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35560 /* ~"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35565 /* ~Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35566 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35567 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35568 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35570 /* ~Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35571 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35593 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35594 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35595 /* ~Spróbuj wyciągnąć nity ze stawów szkieletu.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35596 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35597 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35598 /* ~"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35599 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35600 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35601 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35576 /* ~Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35577 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35578 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35579 /* ~"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie... hmm. Może tu jeszcze wrócę, Kostuszku."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35580 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35581 /* ~Zostaw szkielet w spokoju.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35582 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35584 /* ~Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.~ */
  IF ~~ THEN REPLY #35585 /* ~"Przykro mi, Kostuszku..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35587 /* ~Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.~ */
  IF ~~ THEN REPLY #35588 /* ~"Przykro mi, Kostuszku..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35613 /* ~Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END

IF ~  HasItem("DRemind","S863")
~ THEN BEGIN 8 // from:
  SAY #64262 /* ~Ten szkielet uczestniczył w wielu walkach albo też zbyt często spadał ze schodów; ręce i nogi miał złamane, a teraz funkcjonują dobrze tylko dzięki rzemieniom i cienkim żelaznym prętom. Na przedniej części czaszki widnieje numer "863"... lecz jej tylna część jest rozbita, tworząc pustą czeluść. Widzisz, że ktoś to wykorzystał i wcisnął do środka kawałek pergaminu.~ */
  IF ~~ THEN REPLY #64263 /* ~Wyjmij pergamin z czaszki szkieletu.~ */ GOTO 9
  IF ~~ THEN REPLY #64264 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64265 /* ~Wyjmujesz pergamin z czaszki robotnika - co dziwniejsze, wygląda ona tak, aby *celowo* przechowywała wiadomości; maleńki sznurek jest przytwierdzony do pergaminu przy pomocy haczyka wbitego do czaszki od środka, chyba po to, aby zapobiegać przypadkowemu wypadnięciu pergaminu.~ */
  IF ~~ THEN REPLY #64266 /* ~Odczep sznurek, weź pergamin.~ */ DO ~GiveItem("DRemind",Protagonist)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64267 /* ~Rozwiązujesz sznurek i rzucasz okiem na pergamin – wygląda na notatkę jednego z pracowników kostnicy. Mając to na uwadze, dochodzisz do wniosku, że ten szkielet jest czymś w rodzaju posłańca. Kiedy się mu przyglądasz, zauważasz, że zatrzymał się przy katafalku, nie mogąc zdecydować, w jaki sposób go ominąć.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #64268 /* ~Zbadaj szkielet raz jeszcze.~ */ GOTO 0
  IF ~~ THEN REPLY #64269 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END
