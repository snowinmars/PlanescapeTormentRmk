// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURT~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2881 /* ~Burtova mrtvola se zavrtěla, když jsi na ni promluvil. "Co... co chceš, he?"~ */
  IF ~~ THEN REPLY #2882 /* ~"Chci se zeptat ještě na pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #20787 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1 3.1 4.0 5.0 6.1 7.0 8.0
  SAY #20788 /* ~"Co... co chceš vě... vědět?"~ */
  IF ~  Global("Know_Burt","GLOBAL",0)
~ THEN REPLY #20789 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Burt","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20790 /* ~"Ještě mi o sobě pověz."~ */ GOTO 2
  IF ~  Global("Know_BLG_Grouped","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20791 /* ~"Co se stalo Grisovi?"~ */ GOTO 5
  IF ~~ THEN REPLY #20792 /* ~"Jak zemřel?"~ */ GOTO 6
  IF ~~ THEN REPLY #20793 /* ~"Pověz mi o katakombách."~ */ GOTO 7
  IF ~~ THEN REPLY #20794 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20795 /* ~"Já... Já byl Burt. Já a Lowden, já a nejlepší kámoš, sme teď mrtví."~ */
  IF ~~ THEN REPLY #20796 /* ~"Kde je teď Lowden?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20797 /* ~"Ještě mi na něco odpověz..."~ */ GOTO 1
  IF ~~ THEN REPLY #20798 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0
  SAY #20799 /* ~"Chycen v nějaký hrozný kryptě s pastma. Zdrhli jsme od Grise a té *věci* která ho dostala. Lowden zamířil do... krypty, vo který sme věděli, že dost smrdí průšvihem, ale von byl tak podesranej, že mu to vůbec nevadilo. Slyšel sem ho umřít." Jeho hlas na chvilku zní zklamaně. "Měl u sebe veškerej lup..."~ */
  IF ~~ THEN REPLY #20800 /* ~"Krypta s pastmi?"~ */ GOTO 4
  IF ~~ THEN REPLY #20801 /* ~"Zajisté. Ještě bych měl nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #20802 /* ~"Opravdu? Tak zatim."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20803 /* ~"No jó. Bodáky, čepele, krev, mříže v zemi. Jestli ještě neni na kousíčky, tak tam pořád někde leží. Jestli tam pudeš, koukej... kam šlapeš..."~ */
  IF ~~ THEN REPLY #20804 /* ~"Jistě. Ještě jsem se chtěl na něco zeptat..."~ */ GOTO 1
  IF ~~ THEN REPLY #20805 /* ~"Budu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #20806 /* ~"Něco úplně strašlivýho... votevřeli jsme kryptu a *ona* tam byla. Lowden a já jsme tam strčili Grise a zdrhli. Slyšeli jsme ho.. ho křičet."~ */
  IF ~~ THEN REPLY #20807 /* ~"Já... rozumím. Ještě bych měl nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #20808 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY #20809 /* ~"Jsem... Jsem mrtvý? Asi to tak je.. zdrhal jsem před královnou a běžel skrz katakomby. Lowden běžel špatným směrem... já... já, běžel jsem a běžel. Rovnou do zdi... prásk! Chvilku jsem krvácel.. vzbudily mě krysy, když mě vohryzávaly... ukousaly mě k smrti..."~ */
  IF ~~ THEN REPLY #20810 /* ~"Kde je Lowden?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20811 /* ~"Ještě bych měl nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #20812 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY #20813 /* ~"Udusaná hlína... pořádná vrstva... aspoň holou kůži... Příliš nebezpečné... Grisi? Grisi?" Mrtvola ztichla.~ */
  IF ~~ THEN REPLY #20814 /* ~"Odpověz mi na něco."~ */ GOTO 1
  IF ~~ THEN REPLY #20815 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #20816 /* ~Mrtvola je docela čerstvá - asi jeden dva týdny, nebo tak nějak. Ať tak či tak, tělo je pěkně ohlodané krysami. Někdo toho chudáka pořádně zřídil. Na tvůj dotaz se mrtvola pohnula. "Kd... kdo mě to ruší?"~ */
  IF ~~ THEN REPLY #20817 /* ~"Mám nějaké otázky, zemřelý..."~ */ GOTO 1
  IF ~~ THEN REPLY #20818 /* ~"Nikdo. Sbohem."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #20819 /* ~Mrtvola je docela čerstvá - asi jeden dva týdny, nebo tak nějak. Ať tak či tak, tělo je pěkně ohlodané krysami. Někdo toho chudáka pořádně zřídil. Šťoucháš do něj nohou, ale tělo se jen bezvládně převalilo.~ */
  IF ~~ THEN REPLY #20820 /* ~"Tak tady nic moc..."~ */ EXIT
END
