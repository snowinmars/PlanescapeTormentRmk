// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS1221.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DS1221~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35306 /* ~Oživený kostlivec příšerně páchne, jako by ho někdo stáhl a vypreparoval teprve před nedávnem. Jeho čelist a hlavní klouby drží pohromadě pevnými koženými pásy. Kostlivec má na sobě hrubé šaty. Do jeho čela je vytesáno číslo "1221".~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35307 /* ~"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35330 /* ~"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35331 /* ~"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35332 /* ~"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35333 /* ~Použij na kostlivce svou schopnost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #35338 /* ~Pozorně prozkoumej kostlivce.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35371 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 376
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35372 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35373 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35374 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35375 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35376 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35377 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35378 /* ~"Co tahle kostra, Morte? Bude stačit jako tělo?"~ */ EXTERN ~DMORTE~ 372
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35379 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35380 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35381 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35308 /* ~Kostlivec neodpovídá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35309 /* ~"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35328 /* ~"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35329 /* ~"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35334 /* ~Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35335 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35336 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35337 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35339 /* ~Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Kostlivec vypadá, že už si svoje odsloužil: Mnoho kostí je oštípáno a početné fraktury jsou slepeny zapáchajícím lepidlem.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35340 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 376
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35362 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35363 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35364 /* ~Zkus kostlivci vytáhnout svorky z kloubů.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35365 /* ~"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35366 /* ~"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35367 /* ~"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35368 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35369 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35370 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35345 /* ~Zaškubal jsi železnými svorkami, ale nemáš dost síly na to, abys je vyrval. Jsou pořádně upevněné.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35346 /* ~"Kdybych měl správný nástroj, dokázal bych je vytáhnout... hmmm. Vrátím se, Kostro."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35347 /* ~"Kdybych měl správný nástroj, dokázal bych je vytáhnout... hmmm. Vrátím se, Kostro."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35348 /* ~"Kdybych měl správný nástroj, dokázal bych je vytáhnout... hmmm. Vrátím se, Kostro."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35349 /* ~Nechej kostlivce být.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35350 /* ~Nechej kostlivce být.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35351 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35353 /* ~Zabral jsi veškerou svou silou. Po chvíli námahy jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.~ */
  IF ~~ THEN REPLY #35354 /* ~"Promiň, Kostro..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35356 /* ~Pomocí svého páčidla jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.~ */
  IF ~~ THEN REPLY #35357 /* ~"Promiň, Kostro..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35382 /* ~Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.~ */
END
