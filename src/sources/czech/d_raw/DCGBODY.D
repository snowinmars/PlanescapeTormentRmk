// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~Jakmile ses přiblížil, hnijící hlavy na bráně k tobě promluvily. Každá z nich vysloví vždy jedno slovo a spolu tak tvoří souvislé věty. "Pryč, pryč. Ztraceno zradou, ztraceno světlu."~ */
  IF ~~ THEN REPLY #47033 /* ~"Co se městu stalo?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~"Co se vám stalo?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~"Díky za nové informace. Sbohem."~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~"Větrem odváté, smeteno do proudu zla. Skrze bránu, pryč, pryč. Město, pryč, ztracené pro vlastní nenávist. Skrze bránu, do Rudého žaláře, do žalářní sféry... do Carceri."~ */
  IF ~~ THEN REPLY #47037 /* ~"Carceri? Povězte mi o Carceri."~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~"Nemůžete mluvit normálně?"~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~"Co se vám stalo?"~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~"Máte tušení, jak se tam dostat, nebo jak to vrátit zpět?"~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~"Na tohle nemám čas. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~"Zrazeni, zavrženi, spoutáni... potrestáni, popraveni, pro výstrahu. Pověšeni nepřáteli. Ztraceni, ztraceni, ztraceni."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~"Zdá se mi to, nebo je dnes tady v okolí příliš mnoho mluvících hlav bez těla?"~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~"Zdá se mi to, nebo je dnes tady v okolí příliš mnoho mluvících hlav bez těla?"~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~"Kde jsou všichni?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~Hlavy ztichly. Chvíli se dívají jedna na druhou a pak zpátky na tebe. Visí splihle na bráně.~ */
  IF ~~ THEN REPLY #47047 /* ~"Dobře. Co se stalo s Curstem?"~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~"Dobře. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~"Branou, do žaláře... z žaláře není návratu, není návratu. Projdi branou, projdi branou... čeká tam tvůj osud."~ */
  IF ~~ THEN REPLY #47050 /* ~"Co víte o mém osudu?"~ */ JOURNAL #39483 /* ~Hlavy na bráně do Carceri mi řekly, že město propadlo zlu a bylo branou vtaženo do Carceri. Řekly mi, že můj osud mě čeká na druhé straně brány.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~"Díky. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~"Deva tě očekává." Hlavy upadly do mlčení a nijak nereagují na další otázky.~ */
  IF ~~ THEN REPLY #47053 /* ~"Tak sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~"Za závojem je vše... temné, zářivé. Žádná vysvětlení. Žádný klid. Ne."~ */
  IF ~~ THEN REPLY #47055 /* ~"Dobře, tak, co se vám stalo?"~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~"Máte tušení, jak se dostat zpět do města, nebo je sem vrátit?"~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~"Tak v pořádku. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~Zpočátku jsou hlavy potichu, ale postupně skládají s neznatelného šepotu srozumitelnou řeč.~ */
  IF ~~ THEN REPLY #47059 /* ~"Co se stalo s Curstem?"~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~"Co se vám stalo?"~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~"Zapomeňte na to. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~Jak se přibližuješ, krvavý hrozen hnijících hlav zdobící bránu k tobě stále promlouvá. Jejich hlasy se valí jako zpěněná rozbouřená řeka. "Do Carceri... do žaláře sféry... do země zrazených a zrádců, podlých a obětí. Tato brána... je nyní... uzamčena."~ */
  IF ~~ THEN REPLY #47063 /* ~"Kdy se opět otevře?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~"Co mi můžete povědět o Carceri?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~"Co se vám stalo?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~"Díky. Tak sbohem."~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~"Brána... dosud zavřená. Není cesty."~ */
  IF ~~ THEN REPLY #47068 /* ~"Kdy bude opět otevřena?"~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~"Co mi můžete povědět o Carceri?"~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~"Co se vám stalo?"~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~"Díky. Tak sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~"Když utrpení z nemoci odchází. Když choroba zmírá. Když smrt odešla."~ */
  IF ~~ THEN REPLY #47076 /* ~"Co mi můžete povědět o Carceri?"~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~"Co se vám stalo?"~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~"Díky. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~"Žalářní sféra... chaos, zlo... světy uvnitř světů, kruhy uvnitř kruhů, vyvržené jako zlovolné perly na obloze... Rudý žalář, zkáza titánů i bohů."~ */
  IF ~~ THEN REPLY #47082 /* ~"Kdy se brána opět otevře?"~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~"Co se vám stalo?"~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~"Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~"Zrazeni, zavrženi, spoutáni... potrestáni, popraveni, pro výstrahu. Pověšeni nepřáteli. Ztraceni, ztraceni, ztraceni."~ */
  IF ~~ THEN REPLY #47086 /* ~"Kdy se brána opět otevře?"~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~"Co mi můžete povědět o Carceri?"~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~"Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~"Žalářní sféra... chaos, zlo... světy uvnitř světů, kruhy uvnitř kruhů, vyvržené jako zlovolné perly na obloze... Rudý žalář, zkáza titánů i bohů."~ */
  IF ~~ THEN REPLY #47090 /* ~"Nemůžete mluvit normálně?"~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~"Co se vám stalo?"~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~"Máte tušení, jak se tam dostat, nebo jak to vrátit zpět?"~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~"Na tohle nemám čas. Sbohem."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
