// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~Ten pokryty czarną łuską gad ma około dwóch i pół metra wzrostu - jego potężny wzrost jednakże równoważy smukła, wężowata sylwetka. Długi, chwytliwy ogon ciągnie się za nim, a za plecami ma zwinięte skrzydła. Od stworzenia dochodzi silny zapach octu... a także pewna ilość ciepła. Zdaje się ciebie ignorować.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~"Witaj."~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~"Witaj."~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~"Witaj."~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~Istota powoli przekręca głowę i patrzy na ciebie z góry. Jej pokryte łuską czoło marszczy się, a usta otwierają, wydając niskie, gardłowe syknięcie. Zauważasz, że promieniujące od niej ciepło narasta.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~"Chcę chwilę z tobą porozmawiać."~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~"Chcę chwilę z tobą porozmawiać."~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~"Chcę chwilę z tobą porozmawiać."~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~Istota otwiera usta, ukazując rząd poczerniałych kłów. Ogień zaczyna tańczyć wokół jej ramion i rąk, a z ust wydobywa się długie, niskie syknięcie.~ */
  IF ~~ THEN REPLY #7725 /* ~"Uspokój się! Ja chcę tylko z tobą porozmawiać."~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~Odpowiedz syknięciem.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~Istota ryczy, po czym rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #7730 /* ~Broń się...~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~Istota przemawia gardłowym syknięciem. Jej głos brzmi, jakby pocierano o siebie dwa chropowate kamienie. Syczy przez chwilę, a jej chrypliwy głos podnosi się i opada.~ */
  IF ~~ THEN REPLY #7732 /* ~"Uch... Co?"~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~"NIC ci nie powiem." parska istota. Jej oczy zwężają się w szparki. "Jeśśśli zossstaniesz, twoja krew pokryje kamienie."~ */
  IF ~~ THEN REPLY #7735 /* ~"Chcę tylko zadać ci kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~"Spróbuj tylko, a zobaczymy, czyja krew będzie na ulicy, gdy skończymy."~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~Odstąp i zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~Istota nagle wciąga powietrze, po czym odwraca się od ciebie z dziwnym syknięciem. Zdaje się, że poczuła jakiś niemiły zapach.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~"Mówię, że chcę z tobą porozmawiać."~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~"Mówię, że chcę z tobą porozmawiać."~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~Oczy istoty skupiają się na Annie, po czym zwężają w szparki. Usta się otwierają, ukazując rząd poczerniałych kłów. Ogień zaczyna tańczyć wokół jej ramion i rąk, a z ust wydobywa się długie, niskie syknięcie. Promieniujące od niej ciepło zaczyna narastać.~ */
  IF ~~ THEN REPLY #7743 /* ~"Hej! Mówię do ciebie!"~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~Zostaw istotę w spokoju, zabierz Annę i odejdźcie.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~Oczy istoty skupiają się na Nie-Sławie, po czym zwężają w szparki. Usta się otwierają, ukazując rząd poczerniałych kłów. Ogień zaczyna tańczyć wokół jej ramion i rąk, a z ust wydobywa się długie, niskie syknięcie. Promieniujące od niej ciepło zaczyna narastać.~ */
  IF ~~ THEN REPLY #7746 /* ~"Hej! Mówię do ciebie!"~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~Wycofaj się, zabierając ze sobą Nie-Sławę i odejdźcie.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~Istota ryczy, po czym rzuca się na Annę!~ */
  IF ~~ THEN REPLY #7749 /* ~"Cholera...!"~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~Istota ryczy, po czym rzuca się na Nie-Sławę!~ */
  IF ~~ THEN REPLY #7751 /* ~"Cholera...!"~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~Ten pokryty czarną łuską gad ma około dwóch i pół metra wzrostu - jego potężny wzrost jednakże równoważy smukła, wężowata sylwetka. Długi, chwytliwy ogon ciągnie się za nim, a za plecami ma zwinięte skrzydła. Od stworzenia dochodzi silny zapach octu... a także pewna ilość ciepła. Zdaje się ciebie ignorować.~ */
  IF ~~ THEN REPLY #7753 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~Zostaw abiszai w spokoju.~ */ EXIT
END
