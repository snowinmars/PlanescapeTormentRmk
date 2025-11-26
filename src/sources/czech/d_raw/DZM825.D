// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM825.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM825~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24564 /* ~Mrtvola narovnává svou hlavu... vychylující se z krku. Vypadá to, že tento člověk byl zřejmě oběšen. Na straně hlavy má namalované číslo "825".~ */
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
NearbyDialog("DMorte1")
~ THEN REPLY #24565 /* ~"Hledám klíč... je možné jeden dostat?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
!NearbyDialog("DMorte1")
~ THEN REPLY #24568 /* ~"Hledám klíč... je možné, abys ho měl ty?"~ */ GOTO 1
  IF ~  GlobalGT("Mortuary_Walkthrough","GLOBAL",0)
~ THEN REPLY #24569 /* ~"Tak... viděl jsi něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24570 /* ~"Vím, že nejsi zombie, víš. Nikoho neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24573 /* ~Použij na mrtvole Kosti vyprávějte.~ */ GOTO 2
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
~ THEN REPLY #24574 /* ~Prohledej mrtvolu, koukni jestli nemá klíč.~ */ GOTO 3
  IF ~~ THEN REPLY #42308 /* ~"Bylo skvělý si s tebou poklábosit. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #42309 /* ~Nechej mrtvolu odpočívat v pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.3 3.1
  SAY #24566 /* ~Mrtvola zírá na podlahu a neodpovídá.~ */
  IF ~~ THEN REPLY #24567 /* ~"No, nevadí. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #42310 /* ~Nechej mrtvolu odpočívat v pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #24571 /* ~Mrtvola se nehýbe. Vypadá to, že je natolik hotová, že nemůže odpovědět na jakoukoliv tvou otázku.~ */
  IF ~~ THEN REPLY #24572 /* ~Nech mrtvolu na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #42311 /* ~Tahle mrtvola u sebe nic nemá... ale všiml sis, že její ruce jsou silně ovázané. Obvazy by se daly použít, ale to by se jich nejprve mrtvola musela být ochotná vzdát.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #42312 /* ~"Tuším, že ty klíč nemáš... nevíš náhodou, kterej z tvých kámošů mrtváků by mohl mít od tohoto místa klíč?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #42313 /* ~"Tuším, že ty klíč nemáš... nevíš náhodou, kterej z tvých kámošů mrtváků by mohl mít od tohoto místa klíč?"~ */ GOTO 1
  IF ~~ THEN REPLY #42314 /* ~"Bylo skvělý si s tebou poklábosit. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #42315 /* ~Nechej mrtvolu odpočívat v pokoji.~ */ EXIT
END
