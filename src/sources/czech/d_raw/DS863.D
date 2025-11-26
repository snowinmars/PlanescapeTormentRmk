// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS863.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DS863~

IF ~  !HasItem("DRemind","S863")
~ THEN BEGIN 0 // from: 10.0
  SAY #35537 /* ~Tenhle kostlivec už si toho určitě hodně prožil, ať už v boji, nebo spadl z příliš mnoha schodů. Všechny čtyři končetiny byly polámány a opraveny pomocí kožených pásků a tenkých železných tyčí. Předek lebky je ozdobený číslem "863", ale zadní část lebky se někde ztratila.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35538 /* ~"Sorry, že jsem si vzal ten pergamen, ale pochybuju, že bys ho někdy v brzké době doručil."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35561 /* ~"Sorry, že jsem si vzal ten pergamen, ale pochybuju, že bys ho někdy v brzké době doručil."~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35562 /* ~"Musím se zeptat: Ty zlomené kosti máš z boje, nebo jsi spadl?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35563 /* ~"Musím se zeptat: Ty zlomené kosti máš z boje, nebo jsi spadl?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35564 /* ~Použij na kostlivce svou schopnost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #35569 /* ~Pozorně prozkoumej kostlivce.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35602 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35603 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35604 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35605 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35606 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35607 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35608 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35609 /* ~"Co tahle kostra, Morte? Bude stačit jako tělo?"~ */ EXTERN ~DMORTE~ 396
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35610 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35611 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35612 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35539 /* ~Kostlivec neodpovídá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35540 /* ~"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35559 /* ~"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35560 /* ~"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35565 /* ~Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35566 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35567 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35568 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35570 /* ~Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Kostlivec vypadá, že už si svoje odsloužil: Mnoho kostí je oštípáno a početné fraktury jsou slepeny zapáchajícím lepidlem.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35571 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 400
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35593 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35594 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35595 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35596 /* ~"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35597 /* ~"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35598 /* ~"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35599 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35600 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35601 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35576 /* ~Zaškubal jsi železnými svorkami, ale nemáš dost síly na to, abys je vyrval. Jsou pořádně upevněné.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35577 /* ~"Kdybych měl správný nástroj, dokázal bych je vytáhnout... hmmm. Vrátím se, Kostro."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35578 /* ~"Kdybych měl správný nástroj, dokázal bych je vytáhnout... hmmm. Vrátím se, Kostro."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35579 /* ~"Kdybych měl správný nástroj, dokázal bych je vytáhnout... hmmm. Vrátím se, Kostro."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35580 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 394
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35581 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35582 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35584 /* ~Zarval jsi veškerou svou silou. Po chvíli námahy jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.~ */
  IF ~~ THEN REPLY #35585 /* ~"Promiň, Kostro..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35587 /* ~Pomocí svého páčidla jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.~ */
  IF ~~ THEN REPLY #35588 /* ~"Promiň, Kostro..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35613 /* ~Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.~ */
END

IF ~  HasItem("DRemind","S863")
~ THEN BEGIN 8 // from:
  SAY #64262 /* ~Tenhle kostlivec buď prošel obrovským bojem, nebo se zřítil z hodně vysokých schodů; obě jeho paže i nohy byly zlomeny a znovu dány dohromady pomocí kožených popruhů a ocelových tyčí. Na předku lebky je vyraženo číslo "863"... ale zadek jeho lebky se propadl a vytvořil dutinu. Vidíš, že toho někdo využil a vyspároval jí kusem srolovaného pergamenu.  ~ */
  IF ~~ THEN REPLY #64263 /* ~Vyjmout kostlivci z lebky pergamen.~ */ GOTO 9
  IF ~~ THEN REPLY #64264 /* ~Nechat kostlivce na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64265 /* ~Vykrádáš pergamen z dělníkovy lebky - dokonce to vypadá, že dutina v lebce přímo *slouží* pro ukládání zpráv; pergamen je tenounkou strunou přichycen k háku uvnitř lebky, zřejmě aby nemohl nechtěně vypadnout.~ */
  IF ~~ THEN REPLY #64266 /* ~Odháknout strunu, vzít pergamen.~ */ DO ~GiveItem("DRemind",Protagonist)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64267 /* ~Odhákneš strunu a pohlédneš na pergamen -- vypadá to jako poznámky jednoho ze strážců Márnice. Soudě dle poznámek, tento kostlivec je zřejmě nějaký druh posla. Jak se na něj chvíli díváš, uvědomuješ si, že se kostlivec zastavil před kamenou deskou, zřejmě si není schopný vypočítat, jak se přes ní dostat.

POZNÁMKA: Pro "přečtení" poznámek, knih nebo svitků je vlož do svého inventáře a pak na ně klikni pravým tlačítkem myši, vyvolá se informační panel.~ */
  IF ~~ THEN REPLY #64268 /* ~Prozkoumat kostlivce znovu.~ */ GOTO 0
  IF ~~ THEN REPLY #64269 /* ~Nechat kostlivce na pokoji.~ */ EXIT
END
