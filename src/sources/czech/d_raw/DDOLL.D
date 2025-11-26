// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~K malé hadrové panence nebyly roky laskavé; u švů se trhá a nitě se viditelně rozplétají. Vypadá jako divně oděná žena se svatozáří bodců kolem hlavy.  ~ */
  IF ~~ THEN REPLY #22981 /* ~"Aúúúú... ty jsi taková malá roztomilá panenka, že? Nejsi? Ale jo, jsi!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~Dát panenku pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~Panenka nereaguje na tvé chlácholení, jenom na tebe zírá knoflíkovýma očima.~ */
  IF ~~ THEN REPLY #22983 /* ~"Fajn, fajn... Jen jsem se pokoušel trochu se pobavit... sakra."~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~K malé hadrové panence nebyly roky laskavé; u švů se trhá a nitě se viditelně rozplétají. Zřejmě byla zamýšlena jako replika Paní bolesti, ale její knoflíkové oči a kouzelná jemnost příliš strachu do srdce nezasejí. ~ */
  IF ~~ THEN REPLY #22984 /* ~"Aúúúú... ty jsi taková malá roztomilá Paní bolesti, že? Že ne? Ale jo, jsi!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~Vtip: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~Vtip: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~Dát panenku pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~Jak odříkáváš slova, najednou máš vzadu na hlavě zvláštní plazivý pocit. S tím přichází i předtucha, že slova, která pronášíš tě vedou do strašlivého nebezpečí... dokonce *pocit*, že by si se tím nebezpečím mohl stát ty sám.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~Dát panenku pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~Panenka nereaguje na tvé chlácholení, jenom na tebe zírá knoflíkovýma očima.~ */
  IF ~~ THEN REPLY #22997 /* ~"Aúúúú... ty jsi taková malá roztomilá Paní bolesti, že? Že ne? Ale jo, jsi!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~Vtip: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~Vtip: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~Dát panenku pryč~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~Jak odříkáváš slova, cítíš, jak tě ovanul chlad... doprovázený pocitem strachu. Něco je špatně a najednou hadrová panenka nevypadá tak neškodně, jak se před tím zdála. Na chvíli, jenom na chvíli, máš dojem, že ostří, která obklopují panenčinu hlavu, dostala kovový lesk.~ */
  IF ~~ THEN REPLY #23007 /* ~"Aúúúú... ty jsi taková malá roztomilá Paní bolesti, že? Že ne? Ale jo, jsi!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~Pravda: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~Vtip: "Óóó, velká Paní bolesti, bohyně Sigilu, slyš mé prosby o pomoc a pomoz mi v hodině mé potřeby."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~Dát panenku pryč.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~K téhle malé hadrové loutce byly roky velice kruté. Už se na několika místech rozpadá, některé stehy už jsou téměř vypárané. Určitě to bylo zamýšleno jako model Paní Bolesti, ale knoflíkové oči a příjemná měkkost loutky tě zrovna moc nezastrašují.~ */
  IF ~~ THEN REPLY #51955 /* ~"Ouuu... ty jsi ale roztomilá malinká Paní Bolesti, že jo? No nejsi? Ano, jsi!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~Pravdivě: "Oh, mocná Paní Bolesti, bohyně Sigilu, slyš mou prosbu a pomoz mi v hodině mé největší potřeby."~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~Vtipkuj: "Oh, mocná Paní Bolesti, bohyně Sigilu, slyš mou prosbu a pomoz mi v hodině mé největší potřeby."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~Odlož loutku.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~Panenka neodpovídá, jenom na tebe zírá svýma knoflíkovýma očkama. Teď, když jsi mimo Sigil, se možná panenka zkrátka NECÍTÍ jako Paní Bolesti.~ */
  IF ~~ THEN REPLY #51961 /* ~Schovej panenku do batohu.~ */ EXIT
END
