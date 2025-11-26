// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~Czas nie oszczędził tej małej szmacianej laleczki; rozchodzi się na szwach, a nitki się prują. Wygląda jak jakaś dziwnie odziana kobieta z aureolą kolców na głowie.~ */
  IF ~~ THEN REPLY #22981 /* ~"Heeeej... jesteś tylko milutką laleczką, prawda? Prawda? Tak, prawda!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~Odłóż lalkę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~Lalka nie odpowiada na twoje przymilanie, patrzy się tylko na ciebie swoimi oczami z guzików.~ */
  IF ~~ THEN REPLY #22983 /* ~"W porządku, w porządku... chciałem się tylko trochę zabawić..."~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~Czas nie oszczędził tej małej szmacianej laleczki; rozchodzi się na szwach, a nitki się prują. Bez wątpienia jest to zamierzona replika Pani Bólu, ale guzikowe oczy i miękki plusz nie wywołują w twoim sercu strachu.~ */
  IF ~~ THEN REPLY #22984 /* ~"Heeeej... jesteś tylko milutką laleczką, prawda? Prawda? Tak, prawda!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~Żart: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~Żart: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~Odłóż lalkę.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~Już masz coś powiedzieć, kiedy nagle czujesz dziwne mrowienie z tyłu twojej głowy. Masz przeczucie, że gdy powiesz te słowa, znajdziesz się w poważnym niebezpieczeństwie... nawet samo to *jak się teraz czujesz* może okazać się niebezpieczne.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~Odłóż lalkę.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~Lalka nie odpowiada na twoje przymilanie, patrzy się tylko na ciebie swoimi oczami z guzików.~ */
  IF ~~ THEN REPLY #22997 /* ~"Heeeej... jesteś tylko milutką laleczką, prawda? Prawda? Tak, prawda!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~Żart: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~Żart: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~Odłóż lalkę.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~Kiedy mówisz te słowa, czujesz nagle jak przechodzi cię lodowaty dreszcz... któremu towarzyszy uczucie strachu. Coś jest nie tak, a lalka nie wydaje się być już taka niewinna. Przez chwilę, tylko przez chwilę, wydaje ci się, że ostrza, które otaczają jej głowę, nabierają metalowego połysku.~ */
  IF ~~ THEN REPLY #23007 /* ~"Heeeej... jesteś tylko milutką laleczką, prawda? Prawda? Tak, prawda!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~Żart: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~Odłóż lalkę.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~Czas nie oszczędził tej małej szmacianej laleczki; rozchodzi się na szwach, a nitki się prują. Bez wątpienia jest to zamierzona replika Pani Bólu, ale guzikowe oczy i miękki plusz nie wywołują w twym sercu strachu.~ */
  IF ~~ THEN REPLY #51955 /* ~"Heeeej... jesteś tylko milutką laleczką, prawda? Prawda? Tak, prawda!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~Prawda: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~Żart: "O, wielka Pani Bólu, bogini Sigil, usłysz me błaganie o wsparcie i pomoc, bo nadeszła chwila, kiedy cię potrzebuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~Odłóż lalkę.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~Lalka nie odpowiada na twoje przymilanie, patrzy się tylko na ciebie swoimi oczami z guzików. Teraz, gdy jesteś już poza Sigil, może lalka po prostu nie CZUJE się Panią Bólu.~ */
  IF ~~ THEN REPLY #51961 /* ~Przytul szybko lalkę do siebie i odłóż ją do torby.~ */ EXIT
END
