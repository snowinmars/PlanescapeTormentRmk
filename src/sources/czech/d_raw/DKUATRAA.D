// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUATRAA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUATRAA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45430 /* ~Jak poskakuje od krabice ke krabici, se tento muž zdá zcela zabrán do jejich počítání a zapisování výsledků na kus pergamenu. Vypadá otráveně, když jsi jej přerušil. "Co tentokrát? Nevidíš, že jsem zaměstnaný inventurou? Běž si otravovat někoho jiného."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45085 /* ~"Bylo mi řečeno, že ti mám donést tuhle skříňku."~ */ GOTO 2
  IF ~~ THEN REPLY #45431 /* ~"Nechtěl jsem vyrušovat. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45432 /* ~"Zas ty! Myslel jsem, že jsem ti řekl, abys mě neotravoval."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45433 /* ~"Mám ti doručit tuto krabici."~ */ GOTO 2
  IF ~~ THEN REPLY #45434 /* ~"Nechtěl jsem vyrušovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #45435 /* ~"No, proč jsi to neřekl hned? Tak se na to podíváme. Jsem si jist, že to musí být zainventurováno."~ */
  IF ~~ THEN REPLY #45437 /* ~"Mar po mně chtěl, abych ti předal toto."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45438 /* ~Jak jsi vytáhl krabici, abys mu ji podal, změnil se Ku'atrův výraz ze zájmu do nevýslovné hrůzy. "Ne! Prosím... dej to pryč!"~ */
  IF ~~ THEN REPLY #45439 /* ~"Nerozumím... proč máš strach z téhle krabice?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45440 /* ~"Řekl jsem... pr-pryč! Smrt... zlo... muselo ošálit Mara... už to nemohl déle snést. Prosím... odnes to Braskenovi... žije na jihozápadu... Úlu... já... néééé!" Pohled na krabici je pro něj evidentně příliš, protože s řevem utekl z budovy.~ */
  IF ~~ THEN REPLY #45441 /* ~"Počkej! Co že mám... udělat... s..."~ */ DO ~SetGlobal("FedEx","Global",2)
SetGlobal("Alpha","Global",2)
SetGlobal("Beta","Global",1)
AddexperienceParty(250)
StartCutSceneMode()
StartCutSceneEx("3009cut1",FALSE)
~ JOURNAL #39488 /* ~Mám za sebou podivné setkání s Ku'atrou, jemuž jsem měl předat podivnou Marovu skřínku. Ku'atraa se bojí toho, co v ní je. Když jsem mu jí ukázal, dostal takový strach, že začal blábolit a nakonec utekl. Z jeho blábolů jsem pochopil, že chce, ať skřínku donesu někomu jménem Brasken, jehož najdu v jihozápadní části Úlu. Můžu jenom doufat, že mi ten chlápek Brasken objasní, o co tady vlastně jde a vezme si tu proklatou skřínku. Nemůžu si pomoct, ale pokaždé, když se na ni podívám, mám z ní takový nepříjemný pocit.~ */ EXIT
END
