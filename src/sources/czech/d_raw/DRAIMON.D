// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~Tento znuděně vypadající krysodlak vypadá, že bude vděčný za každé vytržení z nudy. "Co chceš maso?"~ */
  IF ~~ THEN REPLY #23860 /* ~"Rád bych vypadnul."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~"Chci si s tebou jen popovídat."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~"Nic. Zapomeň na to."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~"Rád bys, eh? Co má tak velkou cenu, že by nám stálo za to neuposlechnout Mantuoka a riskovat hněv krys, hm?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~"Vaše životy. Pokud mě teď odsud necháte odejít, nechám vás žít."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~"Vaše životy. Pokud mě teď odsud necháte odejít, nechám vás žít."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~"Slib, že se nikdo nikdy nedoví, co jsem udělal... a později příslib nějakých peněz."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~"Jak by to mohli vědět?"~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~"Co nějaký prachy?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~"Přemýšlej o tom: Jsem pro tebe jednoznačně nebezpečný a stejně s tebou jednám, jako rovný s rovným. Opravdu si myslíš, že mě tyto zdi zadrží, pokud si to nebudu přát? Navrhuji, bez toho, aniž bych tě chtěl urazit, že je v tvém nejlepším zájmu nechat mě jít."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~"Protože se odsud chystám někdy vypadnout a až tak učiním, bude z toho bordel."~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~"Zkus o tom popřemýšlet, já nemůžu přemýšlet o ničem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~Raimon si tě pozorně prohlédl od hlavy k patě. Vidíc ve tvých očích násilí a velikost tvých svalů, velmi pozorně pro tebe odemknul a otevřel dveře. Ustoupil stranou a uhnul před tvýma očima.~ */
  IF ~~ THEN REPLY #23873 /* ~"Díky kámo."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~"Sbohem."~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~Díval se stranou. "Prosím, neubližuj mi krváku... Dělal jsem jen svou práci."~ */
  IF ~~ THEN REPLY #23876 /* ~"Rozmyslím si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~Přelétl tě očima a pohrdavě zasyčel. "Sis myslel, že bys mi mohl ublížit, co? Nejdřív budeš muset najít nějakou cestu ven!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~"Slib, že se nikdo nikdy nedoví, co jsem udělal... a později příslib nějakých peněz."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~"Proč mě prostě nenecháš odejít?"~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~"Co kdybych ti dal nějaký prachy?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~"Přemýšlej o tom: Jsem pro tebe jednoznačně nebezpečný a stejně s tebou jednám, jako rovný s rovným. Opravdu si myslíš, že mě tyto zdi zadrží, pokud si to nebudu přát? Navrhuji, bez toho, aniž bych tě chtěl urazit, že je v tvém nejlepším zájmu nechat mě jít."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~"Protože se odsud chystám někdy vypadnout a až tak učiním, bude z toho bordel."~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~"Budu se snažit o jedné popřemýšlet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~"To zní, jako dobrej způsob, jak to udělat. Kromě toho mě Mantuok, jako vůdce, nikdy moc nezajímal." Odemknul dveře, otevřel je a ustoupil stranou. "Teď odsud vypadni, než přestanu předstírat, že jsem tě nikdy neviděl."~ */
  IF ~~ THEN REPLY #23885 /* ~"Ať je po tvém. Sbohem."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~"Řeknu ti jak... ve tvý šrajtofli pěkně cinkalo, když jsi přišel. Dej mi z ní sto měďáků - a jsem si jistý že je můžeš oželet - a můžeš odejít."~ */
  IF ~~ THEN REPLY #23887 /* ~"Platí."~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~"Hoď to skrz okýnko, pak tě pustím. A ještě, než se zeptáš, budeš mi muset věřit, že tě pustím, co Shaddeusi?" Zašklebil se na svého parťáka.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~"Dobrá. Tumáš."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~"Tolik nemám..."~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~Pozorně spočítal mince. Když se konečně přesvědčil, že žádná nechybí, odemkl ti dveře. "Teď odsud zmiz!"~ */
  IF ~~ THEN REPLY #23894 /* ~"Dobrá, dobrá."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~"Pak se odsud nedostaneš, jasný?" Jeho smích připomíná cvrlikání. Odvrátil se.~ */
  IF ~~ THEN REPLY #23896 /* ~"Sakra..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~"Chceš si promluvit, eh? Dobře, starej Raimon se s tebou bavit nebude, to je na beton!" Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #23898 /* ~"Rád bych probral, jak se odsud dostat."~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~"Tak dobrá."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~Jízlivě se na tebe směje. "Jak bych ti mohl věřit?" Vousy mu zacukaly. "Zkus to znovu."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~"Když mě odsud necháš hned odejít, nechám tě naživu."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~"Když mě odsud necháš hned odejít, nechám tě naživu."~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~"Co nějaký prachy?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~"Přemýšlej o tom: Jsem pro tebe jednoznačně nebezpečný a stejně s tebou jednám, jako rovný s rovným. Opravdu si myslíš, že mě tyto zdi zadrží, pokud si to nebudu přát? Navrhuji, bez toho, aniž bych tě chtěl urazit, že je v tvém nejlepším zájmu nechat mě jít."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~"Protože se odsud chystám někdy vypadnout a až tak učiním, bude z toho bordel."~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~"Zapomeň na to."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~"Co zase chceš vylízaná hlavo?"~ */
  IF ~~ THEN REPLY #23908 /* ~"Chci si s tebou promluvit."~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~"Chci si promluvit o možnostech mého odchodu."~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~"Ty tupče, co tu eště děláš? Pokračuj!" Uhnul hlavou a vyhýbá se pohledu na tebe.~ */
  IF ~~ THEN REPLY #23912 /* ~"Dobře."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~"Co... SHADDEUSI! NA NĚJ!" Oba krysodlaci na tebe útočí.~ */
  IF ~~ THEN REPLY #23914 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
