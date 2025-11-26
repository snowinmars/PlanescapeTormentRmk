// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
GlobalLT("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #1981 /* ~Du siehst ein auffallendes Mädchen mit roten Haaren, das eine Lederrüstung trägt. Ihr rechter Arm ist mit ineinandergreifenden Platten bedeckt, die aussehen, als stammten sie vom Schuppenpanzer eines Tieres; ein mit einem Horn versehenes Schulterstück schützt ihren linken Arm. Seltsamerweise hat sie einen Schweif... der hin und her schlägt, als du sie beobachtest. "Zieh Leine."~ [ANA377A] */
  IF ~~ THEN REPLY #1982 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Know_Annah","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #1983 /* ~Geh vorbei.~ */ DO ~SetGlobal("Know_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1984 /* ~Das Mädchen ignoriert dich.~ */
  IF ~~ THEN REPLY #1985 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #1986 /* ~"Kannst du mir sagen, wo ich hier bin?".~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1987 /* ~"Ich suche jemanden namens Pharod. Weißt du, wo er zu finden ist?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1988 /* ~"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"~ */ GOTO 29
  IF ~~ THEN REPLY #1989 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1990 /* ~Das Mädchen dreht sich um, grinst dich höhnisch an und macht eine obszöne Geste mit ihrem Schwanz. "Zieh Leine, planloser Schlucker."~ */
  IF ~~ THEN REPLY #2119 /* ~"Hey, langsam, ich hätte da bloß ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2120 /* ~"Nimm dich in acht, Mädchen. Ich bin heute nicht grade guter Laune. Und nun antworte endlich auf meine Frage. Wer bist du?"~ */ GOTO 16
  IF ~~ THEN REPLY #2121 /* ~"Ähh..." Na dann leb wohl."~ */ GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2 10.3 11.3
  SAY #1991 /* ~"Ich würde dir gerne mehr sagen, wenn du deine Frage etwas freundlicher formulieren würdest." Sie schnalzt mit der Zunge und reibt zwei Finger aneinander. "Klimper-Klimper. Na, fällt der Groschen?"~ */
  IF ~  Global("Know_Jink","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #1992 /* ~"Klimper-Klimper?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Know_Jink","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #1993 /* ~"Klimper-Klimper?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ EXTERN ~DMORTE~ 39
  IF ~  Global("Know_Jink","GLOBAL",1)
~ THEN REPLY #1994 /* ~"Also gut... wieviel?"~ */ GOTO 6
  IF ~~ THEN REPLY #1995 /* ~"Vergiß es. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 4 // from: 3.0 197.1 198.1
  SAY #1996 /* ~Das Mädchen schaut dich ungläubig an und hält kurz ihren Schwanz still. "Verstehst du nicht? Klimper... Münzen... Kupfer, Silber, Gold... Geld?" Sie zieht eine Augenbraue hoch. "Ich könnte dir was erzählen, das dich vielleicht interessiert."~ */
  IF ~~ THEN REPLY #1997 /* ~"Also gut. Wieviel?"~ */ GOTO 6
  IF ~~ THEN REPLY #1998 /* ~"Ich bezweifle, daß ich auch nur *irgendwas* von dir hören will, aber versuchen kannst du's ja. Und dann sage ich dir, ob es das wert ist oder nicht."~ */ GOTO 16
  IF ~~ THEN REPLY #1999 /* ~"Macht nichts. Auf bald."~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2002 /* ~"Jawohl..." Sie schaut zu Morte und zuckt dann mit den Achseln. "Wie der Totenschädel sagte. Klingende Münze."~ */
  IF ~~ THEN REPLY #2003 /* ~"Also gut. Wieviel?"~ */ GOTO 6
  IF ~~ THEN REPLY #2004 /* ~"Ich bezweifle, daß ich auch nur *irgendwas* von dir hören will, aber versuchen kannst du's ja. Und dann sage ich dir, ob es was wert ist oder nicht."~ */ GOTO 16
  IF ~~ THEN REPLY #2005 /* ~"Na dann.... Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0
  SAY #2006 /* ~"Wieviel willst du wissen?" Sie sieht dich prüfend an, bevor sie ihre Arme verschränkt. "Na los, ich hab' wirklich nicht den ganzen Tag Zeit."
~ */
  IF ~  PartyGoldGT(9)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #2008 /* ~"Wie wär's mit zehn? Ist das genug?"~ */ GOTO 7
  IF ~  PartyGoldGT(9)
CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #2007 /* ~Laß deinen Charm spielen: "Wie wär's mit zehn? Und wenn deine Informationen gut sind, könnte auch mehr dabei herausspringen."~ */ DO ~TakePartyGold(10)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2009 /* ~"Wie wär's mit zwanzig?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(10)
~ THEN REPLY #2010 /* ~"Ich fürchte, ich hab' nicht genug, um dein Interesse zu wecken."~ */ GOTO 14
  IF ~~ THEN REPLY #2011 /* ~"Schon gut. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #2012 /* ~"Dieses Kupferstück macht doch keinem Prädestinaten den Mund wäßrig. Etwas mehr mußt du schon hinlegen, wenn du hier was erreichen willst, Dummkopf."~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2013 /* ~"Wie wär's dann mit zwanzig?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(20)
~ THEN REPLY #2014 /* ~"Ich fürchte, ich hab' nicht genug, um dein Interesse zu wecken."~ */ GOTO 19
  IF ~~ THEN REPLY #2015 /* ~"Nun, nichts für ungut. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 7.0
  SAY #2016 /* ~"In Ordnung..." Sie steckt das Geld ein. Es verschwindet, ehe du dir's versiehst. "Such ihn in der Gasse, die von der Leichenhalle aus auf den Mittelpunkt des Rings zuläuft... also im Südwesten der Leichenhalle. Klar?"~ */
  IF ~~ THEN REPLY #2017 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 10
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2018 /* ~"Komischerweise... ist südwestlich der Leichenhalle eine Gasse voll von schwerbewaffnetem Gesindel. Weißt du irgendwas darüber?"~ */ GOTO 30
  IF ~~ THEN REPLY #2040 /* ~"Südwestlich der Leichenhalle? Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 10.2 11.2
  SAY #2019 /* ~"Du hast dich verirrt, aber du handelst dir gleich Ärger ein. Verirr dich gefälligst woanders, Fusler."~ */
  IF ~~ THEN REPLY #2020 /* ~"Ich hätte da noch ein paar Fragen, die ich dir erst stellen wollte..."~ */ GOTO 10
  IF ~~ THEN REPLY #2021 /* ~"Dann leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 2.0 8.0 9.0 12.4 18.1 21.0 22.1 23.0 26.1 29.0 30.2 31.0
  SAY #2022 /* ~"Ja? Und was willst du?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2023 /* ~"Weißt du eigentlich, daß du'n Schwanz hast?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2024 /* ~"Kann mir nicht helfen, aber mir geht nicht aus dem Kopf, daß du 'nen Schwanz hast."~ */ GOTO 12
  IF ~~ THEN REPLY #2025 /* ~"Kannst du mir sagen, wo ich hier bin?".~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2026 /* ~"Ich suche jemanden namens Pharod. Weißt du, wo er zu finden ist?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2027 /* ~"Du sagtest, Pharod sei südwestlich der Leichenhalle, stimmt's?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2028 /* ~"Komischerweise... ist südwestlich der Leichenhalle eine Gasse voll von schwerbewaffnetem Gesindel. Weißt du irgendwas darüber?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2029 /* ~"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"~ */ GOTO 29
  IF ~~ THEN REPLY #2030 /* ~"Nichts. Leb wohl."~ */ GOTO 19
END

IF WEIGHT #3 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
Global("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #2031 /* ~Das rothaarige Mädchen schaut dich mürrisch an, als du näherkommst, und peitscht wild mit ihrem Schweif. "Ja? Was willst du?"~ [ANA238D] */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2032 /* ~"Weißt du eigentlich, daß du'n Schwanz hast?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2033 /* ~"Kann mir nicht helfen, aber mir geht nicht aus dem Kopf, daß du 'nen Schwanz hast."~ */ GOTO 12
  IF ~~ THEN REPLY #2034 /* ~"Kannst du mir sagen, wo ich hier bin?".~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2035 /* ~"Ich suche jemanden namens Pharod. Weißt du, wo er zu finden ist?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2036 /* ~"Du sagtest, Pharod sei südwestlich der Leichenhalle, stimmt's?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2037 /* ~"Komischerweise... ist südwestlich der Leichenhalle eine Gasse voll von schwerbewaffnetem Gesindel. Weißt du irgendwas darüber?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2038 /* ~"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"~ */ GOTO 29
  IF ~~ THEN REPLY #2039 /* ~"Nichts. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 11.0 11.1
  SAY #2041 /* ~"*Was* du nicht sagst?" Das Mädchen blickt an sich herunter. "Tatsächlich! Hab' ich noch gar nicht gemerkt. Du bist ja vielleicht ein Schlaumeier!" Sie fletscht die Zähne. "Warum verziehst du dich nicht zurück in das Loch, aus dem du gekrochen kamst, und läßt mich in Ruhe?! Weder ich noch mein Schwanz sind zu haben. Klar?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2042 /* ~"Schon gut... Ich war nur einfach neu..."~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2043 /* ~"Ähh, okay... Ich hätte eh noch eine andere Fra..."~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2044 /* ~"Dann vergiß es. Leb w..."~ */ EXTERN ~DMORTE~ 40
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2045 /* ~"Ja, aber *warum* hast du einen Schwanz?"~ */ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2046 /* ~"Ähh, okay... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 10
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2047 /* ~"Schon gut... Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2050 /* ~"Was meinst du, Mistkerl?! Sag das nochmal!"~ */
  IF ~~ THEN REPLY #2051 /* ~"Er hat doch gar nichts gesagt... aber ich bin immer noch neugierig... also *warum* hast du einen Schwanz?"~ */ GOTO 15
  IF ~~ THEN REPLY #2052 /* ~"Nimm ihn nicht ernst... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #2053 /* ~"Er sagte bloß, du könntest keinen guten Lebensunterhalt damit verdienen, dich selbst zu verkaufen."~ */ GOTO 22
  IF ~~ THEN REPLY #2054 /* ~"Er sagte bloß, und ich muß ihm da widersprechen, du könntest keinen guten Lebensunterhalt damit verdienen, dich selbst zu verkaufen."~ */ GOTO 23
  IF ~~ THEN REPLY #2055 /* ~"Er sagte bloß, und ich muß ihm da zustimmen, du könntest keinen guten Lebensunterhalt damit verdienen, dich selbst zu verkaufen."~ */ GOTO 24
  IF ~~ THEN REPLY #2056 /* ~"Nichts. Wir gehen jetzt. Leb wohl."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 2.2 6.3 13.5 15.2 24.2
  SAY #2057 /* ~"Ja, dann verpiß dich."~ */
  IF ~~ THEN REPLY #2065 /* ~"Ich hab' genug von deinem losen Mundwerk, Mädchen... Zeit für dich zu sterben."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #2066 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3 13.0
  SAY #2058 /* ~Die Augen des Mädchens verengen sich zu Schlitzen. "Bist du denn *doof*? Entweder du bist stocktaub oder die Macht der Unwissenheit höchstpersönlich. Die Dabus sollten dich einpflastern und eine Straße aus dir machen!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2059 /* ~"Hör mal..."~ */ EXTERN ~DMORTE~ 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2060 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2061 /* ~"Auf bald, dann."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 2.1 4.1 5.1 13.1 15.1 24.1 27.0 28.0 30.0 30.1
  SAY #2062 /* ~"Schließ ab! Ich hab' dir nichts mehr zu sagen, Dussel! Hau ab!"~ */
  IF ~~ THEN REPLY #2063 /* ~"Hüte deine Zunge, sonst wirst du sie noch irgendwann vermissen. Merk dir das für's nächste Mal."~ */ GOTO 19
  IF ~~ THEN REPLY #2064 /* ~Geh weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2070 /* ~"Halt' lieber deine Knochenschüssel, du übelriechender Mimir, bevor ich dir den Kiefer spalte. Klar?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 42
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2078 /* ~"Hey. Halt' lieber deinen Mimir im Zaum, Dummkopf, oder er verschwindet ungespitzt im Erdboden. Klar?"~ */
  IF ~~ THEN REPLY #2086 /* ~"Mimir? Wovon sprichst du?"~ */ GOTO 20
  IF ~~ THEN REPLY #2087 /* ~"Schön. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2088 /* ~"Auf bald."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 3.3 4.2 5.2 6.4 7.1 7.2 9.1 10.7 11.7 12.5 16.0 18.2 21.1 22.2 24.3 25.2 25.3 26.2 27.1 28.1 29.1 30.3 31.2
  SAY #2081 /* ~"Ja, pack ein und verzieh dich dahin zurück, wo du herkommst."~ */
  IF ~~ THEN REPLY #2082 /* ~"Na dann ebenfalls leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #2083 /* ~Geh weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #2084 /* ~"Jawohl, Mimir! Ist der Hohlraum zwischen deinen Ohren so groß, daß meine Worte darin hallen? Heee!"~ */
  IF ~~ THEN REPLY #2085 /* ~"Du hast meine Frage immer noch nicht beantwortet. Was ist ein Mimir?"~ */ EXTERN ~DMORTE~ 43
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2089 /* ~Sie schaut zuerst Morte, dann dich an. Dann grinst sie höhnisch. "Ich glaub' ich weiß, wer von euch beiden mehr Grips hat, was?"~ */
  IF ~~ THEN REPLY #2090 /* ~"Blabla. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2091 /* ~"Auf bald."~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY #2092 /* ~"Ach? Dann trifft es sich ja gut, daß ich Leichen verkaufe, oder? Du siehst aus, als könntest du einen kleinen Aufenthalt im Staubmenschen-Ofen vertragen, Totenschädel."~ */
  IF ~~ THEN REPLY #2095 /* ~"Leichen verkaufen?"~ */ GOTO 25
  IF ~~ THEN REPLY #2096 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2097 /* ~"Auf bald."~ */ GOTO 19
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY #2093 /* ~"Was soll das? Du willst mich wohl einwickeln, was?" Sie grinst höhnisch. "Pack ein, du lüsterner Dreckskerl."~ */
  IF ~~ THEN REPLY #2098 /* ~"Noch nicht... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2099 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY #2094 /* ~"Ach? Dann trifft es sich ja gut, daß ich Leichen verkaufe, oder? Ihr seht beide aus, als könntet ihr einen kleinen Aufenthalt im Ofen der Staubmenschen vertragen." Ihr Schwanz schlägt hin und her. "Treibt's nicht so weit, daß ich euch ins Totenbuch stecken muß."~ */
  IF ~~ THEN REPLY #2101 /* ~"Leichen verkaufen?"~ */ GOTO 25
  IF ~~ THEN REPLY #2102 /* ~"Ganz ruhig, Mädchen. "Ich hätte da noch ein paar Fragen, und dann lassen wir dich auch schon in Ruhe..."~ */ GOTO 16
  IF ~~ THEN REPLY #2103 /* ~"Das hat doch eh keinen Zweck. Leb wohl."~ */ GOTO 14
  IF ~~ THEN REPLY #2104 /* ~Verschwinde.~ */ GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 22.0 24.0
  SAY #2100 /* ~"Ja, von den Staubmenschen kriegt jeder etwas Klimper, der gewillt ist, Totenbüchler von der Straße aufzulesen und sie in die Leichenhalle zu bringen. Aber dies hier ist mein Gebiet; schlag dir am besten gleich aus dem Kopf, hier Totenbüchler zu sammeln, klar?"~ */
  IF ~~ THEN REPLY #2105 /* ~"Und was machen die Staubmenschen mit den Toten?"~ */ GOTO 26
  IF ~~ THEN REPLY #2106 /* ~"Dein Gebiet?"
~ */ GOTO 28
  IF ~~ THEN REPLY #2107 /* ~"Schön."~ */ GOTO 19
  IF ~~ THEN REPLY #2108 /* ~"Auf bald."~ */ GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #2109 /* ~"Sie bestatten sie beispielsweise richtig, schicken sie zur entsprechenden Ebene und passen auf, daß im Multiversum alles schön sauber ist."~ */
  IF ~~ THEN REPLY #2111 /* ~"'Ebene'?"~ */ GOTO 27
  IF ~~ THEN REPLY #2112 /* ~"Ich verstehe. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2113 /* ~"Auf bald."~ */ GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2110 /* ~"Jawohl, *Ebene*! Ist der Hohlraum zwischen deinen Ohren so groß, daß meine Worte darin hallen? Bah! Du fragst zuviel, du Pestbeule. Pack ein und such dir einen anderen Dummen für deine Fragen."~ */
  IF ~~ THEN REPLY #2114 /* ~"Ich hätte da bloß noch eine Frage..."
~ */ GOTO 16
  IF ~~ THEN REPLY #2115 /* ~"Also gut. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #2116 /* ~"Jawohl, *mein* Gebiet! Ist der Hohlraum zwischen deinen Ohren etwa so groß, daß meine Worte darin hallen? Bah! Du fragst zuviel, Pestbeule. Pack ein und such dir einen anderen Dummen für deine Fragen."~ */
  IF ~~ THEN REPLY #2117 /* ~"Ich hätte da bloß noch eine Frage..."~ */ GOTO 16
  IF ~~ THEN REPLY #2118 /* ~"Also gut. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 29 // from: 1.3 10.6 11.6
  SAY #2122 /* ~Sie sieht dich seltsam an. "Nein... ich habe nichts dergleichen gesehen."~ */
  IF ~~ THEN REPLY #2123 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2124 /* ~"Trotzdem vielen Dank. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.5 11.5 31.1
  SAY #2125 /* ~"Ach, ja? Dann fragst du am besten die, wo die Stotterkrücke steckt."~ */
  IF ~~ THEN REPLY #2126 /* ~Wahrheit: "Jetzt reicht's mit deinen Lügen. Sag mir, wo Pharod ist, Mädchen, oder du zählst bald zu den vielen Toten in der Stadt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Annah_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2127 /* ~Täuschung: "Jetzt reicht's mit deinen Lügen. Sag mir, wo Pharod ist, Mädchen, oder du zählst bald zu den vielen Toten in der Stadt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2128 /* ~"Vielleicht werde ich das tun. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2071 /* ~"Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 10.4 11.4
  SAY #2129 /* ~"Ja..." Sie schaut dich prüfend an. "Das hab' ich. Hast du das schon vergessen?"~ */
  IF ~~ THEN REPLY #2130 /* ~"Nein, aber ich hatte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2131 /* ~"Nein, aber ich frage mich, ob du vielleicht... weißt du, südlichwestlich der Leichenhalle ist eine Gasse, voll von schwerbewaffnetem Gesindel. Weißt du irgendwas darüber?"~ */ GOTO 30
  IF ~~ THEN REPLY #2132 /* ~"Diesmal nicht. Leb wohl."~ */ GOTO 19
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2359 /* ~"Spar dir die Worte, Schleifer. Hat doch keinen Zweck, mit einem Gith zu diskutieren, der nicht mit der Sprache rausrücken will, oder? Laß uns gehen."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9023 /* ~"Gith?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Know_Gith","GLOBAL",0)
~ THEN REPLY #9024 /* ~"Gith?"~ */ GOTO 74
  IF ~~ THEN REPLY #9025 /* ~"Ich kann jetzt noch nicht gehen. Ich werde ihm erst ein paar Fragen stellen..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9026 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2365 /* ~"Keine Ursache... aber jetzt laß uns verschwinden, ja?"~ */
  IF ~~ THEN EXTERN ~DGITH~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #6807 /* ~"Äh..." Annah schaut dich verwundert an. "Er ist ein Dabus."~ */
  IF ~~ THEN REPLY #6961 /* ~"Was ist ein 'Dabus'?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #6811 /* ~Annahs Stimme wird leise. "Dabus ist einer *IHRER* Leute - sie kümmern sich um die Stadt, bauen sie auf, reißen sie ein und bauen sie dann wieder auf. Sie reden in Bilderrätseln, die in der Luft auftauchen - man muß sie lösen, um herauszufinden, was sie sagen." Annah sieht gereizt aus. "Das bereitet einem ganz schön Kopfzerbrechen."~ */
  IF ~~ THEN REPLY #6962 /* ~"'Ihrer' Leute? Wessen?"~ */ GOTO 36
  IF ~~ THEN REPLY #6963 /* ~"Aha."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #6813 /* ~"Die Dame der Schmerzen." Annah formt vor sich einen Halbkreis in der Luft. "Sie arbeiten für sie, und sie beschützt sie. Du treibst besser keine Scherze mit ihnen, oder du könntest ihren Blick auf dich ziehen."~ */
  IF ~~ THEN REPLY #6964 /* ~"Was kannst du mir über die Dame der Schmerzen erzählen?"~ */ GOTO 37
  IF ~~ THEN REPLY #6965 /* ~"Aha."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #6814 /* ~"Psssst!" Annah fährt mit dem Finger über ihre Kehle. "Rassel nicht deine Knochenschüssel über sie. Sie hat ihre Ohren *überall,* soviel steht fest, und deshalb solltest du ihren Namen nicht so herumposaunen, klar?"~ */
  IF ~~ THEN REPLY #6966 /* ~"Oh."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6967 /* ~"Schon gut, schon gut."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6815 /* ~Sie hält einen Augenblick inne. "Ja... kann ich."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6968 /* ~"Wirst du?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6970 /* ~"Machst du es?"~ */ GOTO 39
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6971 /* ~"Dann tu es."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6972 /* ~"Dann tu es."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 39
  IF ~~ THEN REPLY #6973 /* ~"Macht nichts. Dann gehen wir eben."~ */ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.3
  SAY #6818 /* ~Annah schüttelt den Kopf. "Nein, ich werde auf keinen Fall mit dir in den Schatten der Dame laufen, das steht fest. Laß uns nicht länger hierbleiben, ja? Wir ziehen höchstens noch den Blick der Dame auf uns, wenn wir mit ihren Leuten reden."~ */
  IF ~~ THEN REPLY #6975 /* ~"Verstehe."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6974 /* ~"Macht nichts. Dann gehen wir eben."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.2 41.0 44.0 45.1 46.1 48.1
  SAY #6822 /* ~Annah nickt. Der Dabus verbirgt seine Hände in den Ärmelaufschlägen und starrt euch beide noch immer an.
~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6976 /* ~"Frag ihn, wer er ist."
~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6977 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6978 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6979 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6980 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6981 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #6982 /* ~"Bitte ihn, uns etwas über die Dame der Schmerzen zu erzählen."~ */ GOTO 45
  IF ~~ THEN REPLY #6983 /* ~"Bitte ihn, uns etwas über Fell zu erzählen."~ */ GOTO 48
  IF ~~ THEN REPLY #6984 /* ~"Macht nichts. Dann gehen wir eben."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 41 // from:
  SAY #6825 /* ~"Er hat nur gesagt, daß er einer von den Dabus ist." Sie zuckt mit den Achseln. "Sie haben keine Namen."~ */
  IF ~~ THEN REPLY #6985 /* ~"Kannst du ihm noch eine Frage stellen?"~ */ GOTO 40
  IF ~~ THEN REPLY #6986 /* ~"Das ist alles, was ich wissen wollte. Laß uns zusehen, daß wir hier rauskommen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 42 // from:
  SAY #6826 /* ~"Er hat nur gesagt, daß er einer von den Dabus ist." Sie zuckt mit den Achseln. "Sie haben keine Namen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 115
END

IF ~~ THEN BEGIN 43 // from:
  SAY #6828 /* ~"Na, dieser hier hat sich nicht vorgestellt, oder, Totenschädel?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 116
END

IF ~~ THEN BEGIN 44 // from:
  SAY #6835 /* ~Sie zuckt mit den Achseln. "Er sagt, daß er seine Arbeit macht. Du weißt schon - sich um die Stadt kümmern und so."~ */
  IF ~~ THEN REPLY #6987 /* ~"Kannst du ihm noch eine Frage stellen?"~ */ GOTO 40
  IF ~~ THEN REPLY #6988 /* ~"Das ist alles, was ich wissen wollte. Laß uns zusehen, daß wir hier rauskommen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 45 // from: 40.6
  SAY #6840 /* ~Annah schüttelt den Kopf. "Nein, ich werde auf keinen Fall mit dir in den Schatten der Dame laufen, das steht fest. Du wirst nur den Blick der Dame auf dich ziehen, wenn du bei ihren Leuten über sie herziehst."~ */
  IF ~~ THEN REPLY #6989 /* ~"Sieh mal, frag es einfach nach der Dame, klar?"~ */ GOTO 46
  IF ~~ THEN REPLY #6990 /* ~"Also gut. Könntest du ihnen wohl noch eine andere Frage stellen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6991 /* ~"Dann vergiß es einfach. Laß uns gehen."
~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0
  SAY #6845 /* ~Annah schüttelt den Kopf. "Nein, das mach ich nicht."~ */
  IF ~~ THEN REPLY #6992 /* ~"Paß auf, *tu's* lieber. Ich warne dich."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 47
  IF ~~ THEN REPLY #6993 /* ~"Also gut. Könntest du ihnen wohl noch eine andere Frage stellen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6994 /* ~"Dann vergiß es einfach. Laß uns gehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #6848 /* ~Annah verschränkt die Arme und ihr Schwanz wedelt hin und her.~ */
  IF ~~ THEN REPLY #6995 /* ~"Dann laß mich mal versuchen..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6996 /* ~"Dann vergiß es einfach. Laß uns gehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 48 // from: 40.7
  SAY #6851 /* ~"Nein, ich werde Fells alte Kumpels nicht über ihn ausfragen, auf keinen Fall. Das bringt nur böses Blut, und es nützt keinem, solche Sachen zur Sprache zu bringen."~ */
  IF ~~ THEN REPLY #6997 /* ~"Verdammt, stell einfach die Frage, klar?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 46
  IF ~~ THEN REPLY #6998 /* ~"Kannst du ihm noch eine Frage stellen?"~ */ GOTO 40
  IF ~~ THEN REPLY #6999 /* ~"Dann vergiß es einfach. Laß uns gehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1855 /* ~Annah wird zornig, als du Anstalten machst, mit der Frau wegzugehen. "Bist du *blöd*... oder einfach nur blind?!" Ihr Schwanz schlägt hin und her, dann wirbelt sie zu der Frau herum. "Hsst!" Sie droht der erschrockenen Frau mit ihren Dolchen. "Verschwinde, du Sigil-Schlampe!"~ */
  IF ~~ THEN REPLY #7469 /* ~"Hey! Ganz ruhig, Annah!"~ */ GOTO 50
  IF ~~ THEN REPLY #7470 /* ~"Steck deine verfluchten Klingen ein!"~ */ GOTO 50
  IF ~~ THEN REPLY #7471 /* ~Warte ab was passiert.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 53.0 53.1
  SAY #1856 /* ~Sie wirbelt zu dir herum. "Und du, du jämmerlicher Penner - du hörst besser auf, dich mit jeder einzulassen, oder ich werd dir dein Prachtstück stutzen, kapiert?"~ */
  IF ~~ THEN REPLY #7472 /* ~"Mein 'Prachtstück stutzen'? Muß ich dafür zahlen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7473 /* ~"Hör auf damit, der Frau zu drohen, oder ich stutz dir *deinen* Schwanz, verstanden?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7474 /* ~"Ich wollte deine Meinung hierzu gar nicht wissen, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7475 /* ~"Schon gut, schon gut... beruhige dich."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3
  SAY #7183 /* ~Annah beruhigt sich ein wenig, aber ihr Schwanz schlägt noch immer hin und her. "Reiß dich zusammen, wenn ich dir nicht das Fell über die Ohren ziehen soll."~ */
  IF ~~ THEN REPLY #7476 /* ~Du sollst mir nicht drohen, Annah. Du bist hier die mit nur einem Leben, kapiert?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7477 /* ~"Ich wollte deine Meinung hierzu gar nicht wissen, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7478 /* ~"Schon gut, schon gut... beruhige dich erstmal. Dein Scheusalblut kocht sonst gleich über."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 50.0 51.0 51.1 51.2
  SAY #7184 /* ~Annah macht mit ihrem Schwanz eine Bewegung... ganz offensichtlich eine obszöne Geste.~ */
  IF ~~ THEN EXTERN ~DHARLOTN~ 35
END

IF ~~ THEN BEGIN 53 // from: 49.2
  SAY #7185 /* ~Annah ritzt die Haut der Frau mit der Spitze der Klinge und zeichnet eine dünne, blutige Linie. "Du bist gezeichnet", faucht sie. Die Frau ist vor Furcht wie gelähmt und unfähig, sich zu rühren.~ */
  IF ~~ THEN REPLY #7480 /* ~"Hey. Gute Arbeit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Harlot_2","GLOBALLaw",-1)
~ GOTO 50
  IF ~~ THEN REPLY #7481 /* ~"Ganz ruhig, Annah..."~ */ GOTO 50
END

IF ~~ THEN BEGIN 54 // from:
  SAY #1884 /* ~Annah faucht plötzlich, als du dich abwendest, und du siehst, wie die betrunkene Frau ängstlich einen Schritt zurück geht.~ */
  IF ~~ THEN REPLY #7598 /* ~"Was ist los?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1885 /* ~Annah nickt der Frau zu, dann schnellen Dolche aus ihrer Hand. "Diese Hexe hat dich beklaut." Eine von Annahs Klingen sitzt an der Kehle der Frau. "Du bist wahrscheinlich knapp bei Kasse, nachdem sich diese Sigil-Schlampe an dich rangemacht hat."~ */
  IF ~~ THEN REPLY #7599 /* ~"Wie willst du --?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #1886 /* ~Die betrunkene Frau schaut Annah an, dann dich, und schüttelt dann verängstigt den Kopf. "Ich habe überhaupt nichts gestohlen, Schleifer! Sie irrt sich!"~ */
  IF ~~ THEN REPLY #7600 /* ~"Äh... bist du sicher, Annah?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 57
  IF ~~ THEN REPLY #7601 /* ~"Steck endlich diese verfluchten Klingen ein, bevor *ich* hier meine Geduld verliere, klar?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7602 /* ~"Tut mir leid, Frau, aber ich schenke dem Tiefling doch viel eher Glauben als dir. Gib das Geld zurück."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #7603 /* ~"Laß sie los, Annah. Sie ist es nicht wert."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #1887 /* ~"Hä?" knurrt Annah, und ihr Schwanz beginnt zu schlagen. "Ob ich *sicher* bin?!" Die Klinge drückt sich weiter in die Kehle der Frau. "Ja... ich bin sicher." Ihre Augen werden zu Schlitzen, als sie dich anschaut. "Du glaubst mir nicht?" stößt sie hervor. "Egal. Ich werde sie ausnehmen und mir ihren Klimper selbst unter den Nagel reißen."~ */
  IF ~~ THEN REPLY #7604 /* ~"Steck endlich diese verfluchten Klingen ein, bevor *ich* hier meine Geduld verliere, klar?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7605 /* ~"Laß sie los, Annah. Sie ist es nicht wert."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.1 56.3 57.0 57.1
  SAY #1888 /* ~"Hä?" Annah faucht wie eine Katze. "Bist du *bekloppt?!* Sie hat dich beklaut."~ */
  IF ~~ THEN REPLY #7606 /* ~"Ich werde nicht zulassen, daß du ihr was tust, es sei denn, du kannst beweisen, daß sie was angestellt hat."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_Harlot_1","GLOBALLaw",1)
~ GOTO 61
  IF ~~ THEN REPLY #7607 /* ~"Zum letzten Mal: Steck deine Klingen ein, laß sie gehen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
  IF ~~ THEN REPLY #7608 /* ~"Und wenn schon. Sie ist es nicht wert."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #1889 /* ~Die Frau ist einen Moment still, nickt, hebt die Arme und schiebt ihren Ärmelaufschlag nach hinten, wodurch eine kleine Tasche sichtbar wird, die an ihrem Handgelenk hängt. Annah schneidet sie ab und steckt sie ein. "Du haust jetzt besser ab." Sie stößt die Frau weg. "Hssst! Hau ab!"~ */
  IF ~~ THEN REPLY #7609 /* ~"Raus hier, Frau. Wir wollen dich hier nicht mehr sehen."~ */ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 60 // from: 58.1 58.2 61.1
  SAY #1890 /* ~Annah schweigt längere Zeit, fährt die Klinge wieder ein und geht einen Schritt zurück. Dann faucht sie die Frau an und spuckt vor deren Füße. "Hssst! Verschwinde!"~ */
  IF ~~ THEN REPLY #7610 /* ~"Frau, sieh zu, daß du hier wegkommst."~ */ EXTERN ~DHARLOTD~ 27
END

IF ~~ THEN BEGIN 61 // from: 58.0
  SAY #1891 /* ~Annah knurrt und schwingt dann ihren Dolch halbkreisförmig durch die Luft... dabei schneidet sie die Ärmel der Frau auf, wodurch eine Tasche zum Vorschein kommt, die am Handgelenk der Frau hängt. Es scheint, als ob sie dort plaziert wurde, um rasch Geldstücke verschwinden zu lassen.~ */
  IF ~~ THEN REPLY #7611 /* ~"Sieht aus, als ob du recht hattest, Annah. Also gut, Frau, gib zurück, was du gestohlen hast."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #7612 /* ~"Macht nichts. Vergiß es, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1892 /* ~Die Frau nickt, greift dann langsam nach oben und bindet die Tasche von ihrem Handgelenk los. Annah reißt sie ihr weg und steckt sie ein.~ */
  IF ~~ THEN REPLY #7613 /* ~"Verschwinde, Frau. Und komm mir nicht wieder unter die Augen."~ */ DO ~GivePartyGold(100)
GiveGoldForce(38)
~ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7701 /* ~Als du dich abwendest, kommt Annah plötzlich zu dir und schmiegt sich an dich.~ */
  IF ~~ THEN REPLY #7702 /* ~"Was machst du?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #7703 /* ~Annah nickt in Richtung des Mannes, der noch immer herumsteht und die Gebäude anstarrt. "Dieser Sigil-Bastard hat dich beklaut." Annah lächelt. "Du paßt besser auf, bevor du mit deiner Knochenschüssel rasselst, oder du stehst am Ende ohne Klimper da."~ */
  IF ~~ THEN REPLY #7704 /* ~"Wovon redest du?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #7705 /* ~Sie hält dir eine Handvoll Münzen entgegen und gibt sie dir. "Dein ganzes Geld, zurück an den rechtmäßigen Besitzer, in Ordnung?" Sie blickt noch einmal nach hinten. "Er ist ein ganz armer Trottel; er kann nicht einmal einem Schlucker die Taschen leer machen, ohne daß in Sigil alle Alarmglocken läuten." Sie lächelt. "Stimmt's?"~ */
  IF ~~ THEN REPLY #7706 /* ~"Äh... bist du sicher, daß er mich bestohlen hat, Annah?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #7707 /* ~"Hey... danke."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #7708 /* ~"Hä?" Annah legt ihre Stirn in Falten und ihr Schwanz beginnt zu wedeln. "Ob ich *sicher* bin?!" Sie weicht von dir zurück. "Du glaubst mir nicht?" stößt sie hervor. "Egal."~ */
  IF ~~ THEN REPLY #7709 /* ~"Ist nicht egal. Wenn dieses Geld hier nicht uns gehört..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_3","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 67
  IF ~~ THEN REPLY #7710 /* ~"Egal."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #7711 /* ~"Hä?" Annah faucht wie eine Katze. "Bist du *blöde?!* Er hat dich beklaut. Wenn du zu blind warst, um das zu bemerken, dann hast du es nicht besser verdient!"~ */
  IF ~~ THEN REPLY #7712 /* ~"Kannst du das beweisen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_4","GLOBALLaw",1)
TakePartyGold(5)
~ GOTO 68
  IF ~~ THEN REPLY #7713 /* ~"Egal."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #7714 /* ~Annah ist einen Moment lang still, dann schnappt sie sich das Geld aus deiner Hand und wirft es weg. Du siehst, wie die Münzen über die Straße rollen; einige fallen in Pfützen, andere in den Rinnstein oder in Gullys. "Dann gib es ihm doch!" Annah spuckt dir vor die Füße. "Du hast es *sowieso* nicht verdient, deinen Klimper zu behalten!"~ */
  IF ~~ THEN REPLY #7715 /* ~"Nicht so laut. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #7716 /* ~Annah nickt und lächelt böse. "Ja, es war mir ein Vergnügen."~ */
  IF ~~ THEN REPLY #7717 /* ~"Also gut. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #7822 /* ~"Nein!" Annah sieht entsetzt aus. "Nein, red' nicht mit denen! Diese Scheusale nehmen dich bei lebendigem Leibe aus!"~ */
  IF ~~ THEN REPLY #7826 /* ~"Ich wollt ihm ein paar Fragen stellen..."~ */ GOTO 71
  IF ~~ THEN REPLY #7827 /* ~"Also gut, dann halt nicht. Laß uns weiterziehn."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #7829 /* ~Annah schüttelt den Kopf. "Es wird dich ausnehmen, ganz sicher."~ */
  IF ~~ THEN REPLY #7830 /* ~"Ich werd's wagen."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7831 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #7832 /* ~"Bist du noch zu retten?!" Annah fällt dir ins Wort, ihr Schwanz schlägt hin und her. "Hast du nicht gehört, was ich dir gesagt habe!? Hör auf, mit Scheusalen zu quatschen!"
~ */
  IF ~~ THEN REPLY #7833 /* ~"Ich werd's wagen."~ */ GOTO 73
  IF ~~ THEN REPLY #7834 /* ~"Also gut. Ich werd's in Ruhe lassen... Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #7835 /* ~"Du hältst dich wohl für ganz was Besonderes, was?!" Annah spuckt. Sie sieht wütend aus. "Dir werden noch früh genug die Leben ausgehen, und dann werd ich mich verabschieden, ganz sicher!"~ */
  IF ~~ THEN REPLY #7836 /* ~"Was Besseres könnte mir gar nicht passieren. Und nun laß mich reden."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7837 /* ~"Nur ganz kurz. Beruhige dich doch."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7838 /* ~"Also gut. Ich werd's in Ruhe lassen... Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 32.0 32.1
  SAY #2360 /* ~"Ja, ein Gith." Sie macht den Eindruck, als wolle sie darüber nicht sprechen, solange der Gith euch beide anstarrt. "Hauen wir ab von hier, ja?"~ */
  IF ~~ THEN REPLY #9027 /* ~"Ich kann jetzt noch nicht gehen. Ich werde ihm erst ein paar Fragen stellen..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9028 /* ~Laß den Gith in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9801 /* ~Sie setzt zum Sprechen an, doch du wirfst ihr einen ernsten Blick zu, bevor sie protestieren kann. Sie grinst dich mit verschränkten Armen höhnisch an und schlägt mit ihrem Schwanz hin und her.~ */
  IF ~~ THEN REPLY #9835 /* ~Schüttel ihn, damit er dich bemerkt.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9837 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #9802 /* ~Sie stellt sich einfach taub und wühlt dem herumtorkelnden Mann in seinen verlausten Klamotten herum. Nachdem sie sich vergewissert hat, daß er völlig ausgebrannt ist, versetzt sie ihm einen leichten Stoß und wendet sich ab. "Pah! Der ist sowieso total pleite, der verdammte Fusler..."~ */
  IF ~~ THEN REPLY #9840 /* ~Schüttel ihn, damit er dich bemerkt.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9842 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #9803 /* ~Annah wühlt in den verlausten Klamotten des herumtorkelnden Mannes. Nachdem sie sich vergewissert hat, daß er völlig abgebrannt ist, versetzt sie ihm einen leichten Stoß und wendet sich ab. "Pah! Total pleite, der verdammte Fusler..."~ */
  IF ~~ THEN REPLY #9844 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10078 /* ~"Ha! Mir kannst du nichts vormachen! Diese Stadt ist doch voll von Amateuren!" Sie dreht sich zu dir um. "Dein Mißtrauen ist gerechtfertigt. Er ist doch nur auf Schlucker aus, die er schälen kann."
~ */
  IF ~~ THEN REPLY #10079 /* ~"Ich glaube, du hast recht, Annah. Vielleicht sollten wir was dagegen unternehmen."~ */ EXTERN ~DCSTCROG~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #11267 /* ~Annah entgegnet scharf: "Ja, und der Abgrund ist der beste Ort für ihn. Er plagt sich dort aus freiem Willen ab. Er hat nämlich die Wahl, du kleiner Dämon, was man von einem geistigen Konstrukt wie dir nicht gerade behaupten kann!"
~ */
  IF ~~ THEN EXTERN ~DILQUIXT~ 20
END

IF ~~ THEN BEGIN 80 // from:
  SAY #11270 /* ~Alle Muskeln ihres Gesichts spannen sich an, und sie explodiert vor Wut. "Du wirst mir doch nicht allen Ernstes sagen wollen, daß du dir von diesem... diesem... Abschaum vorschreiben läßt, wie du leben sollst? Aber, wie du willst, ich bin ja schon ruhig und sehe zu, wie du deine Seele auffressen läßt, du bescheuerter Dussel!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11271 /* ~"Also dann, Ilquix, ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11272 /* ~"Also dann, Ilquix, ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY #11667 /* ~Sie lächelt schwach. "Ja, du Scheusal, wir glauben hier an die *wahre* Freiheit. Jeder hat die Freiheit zu sagen, was er wirklich denkt." Ilquix grinst höhnisch, bevor er wieder seine weltmännische Miene aufsetzt.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11668 /* ~"Also dann, Ilquix, ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11669 /* ~"Also dann, Ilquix, ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 82 // from:
  SAY #13084 /* ~"Weißt du, ich kann für mich selbst reden! Ich bin Annah, auch wenn's dich nix angeht." Annah kreuzt ihre Arme mit einem *hmph*. Eisennagel lächelt nur und wendet ihr gutes Auge wieder dir zu.~ */
  IF ~~ THEN REPLY #13231 /* ~"Paß auf, was du sagst, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 87
  IF ~~ THEN REPLY #13232 /* ~"Kümmer dich nicht um sie, Nalls. Ich hätte ein paar Fragen..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13233 /* ~"Ich hätte ein paar Fragen, Nalls..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13234 /* ~"Vergiß es. Leb wohl."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 83 // from:
  SAY #13085 /* ~"Weißt du, ich kann für mich selbst reden! Ich bin Annah, auch wenn's dich nix angeht. Und was *diesen* Rüpel angeht", und hier wirft sie dir einen bösen Blick zu, "ich bin mir nich so sicher, ob das ein Freund von mir is!" Eisennagel lächelt ein wenig, bevor sie ihr gutes Auge wieder dir zuwendet.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13235 /* ~Wahrheit: "Annah... es tut mir wirklich leid, wenn ich dir kein guter Freund gewesen bin und dich verletzt habe. Ich hoffe, du kannst mir verzeihen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13236 /* ~Wahrheit: "Annah... es tut mir wirklich leid, wenn ich dir kein guter Freund gewesen bin und dich verletzt habe. Ich hoffe, du kannst mir verzeihen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13237 /* ~Lüge: " Annah... es tut mir wirklich leid, wenn ich dir kein guter Freund gewesen bin und dich verletzt habe. Ich hoffe, du kannst mir verzeihen.."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13238 /* ~Lüge: " Annah... es tut mir wirklich leid, wenn ich dir kein guter Freund gewesen bin und dich verletzt habe. Ich hoffe, du kannst mir verzeihen.."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13239 /* ~"Kümmer dich nicht um sie, Nalls. Ich hätte ein paar Fragen..."
~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13240 /* ~"Ich hätte ein paar Fragen, Nalls..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13241 /* ~"Vergiß es. Leb wohl."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 84 // from: 83.0 87.0
  SAY #13086 /* ~Annahs Schwanz hört plötzlich auf, herumzuschlagen, und sie wendet dir ihren Kopf zu - ihre Augen sind ganz groß vor Überraschung. Sie scheint etwas sagen zu wollen... und sieht dann einfach weg und nickt bloß kurz. Die Rückseite ihres Halses sieht rot aus - du fragst dich, ob sie errötet ist.~ */
  IF ~~ THEN REPLY #13242 /* ~"Nalls... ich hätte ein paar Fragen..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13243 /* ~"Ach, beachte mich nicht, Nalls. Leb wohl."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 85 // from: 83.1 83.2 87.1 87.2
  SAY #13087 /* ~Annahs Schwanz hört auf, umherzuschlagen. Sie sagt nichts, sondern nickt nur.~ */
  IF ~~ THEN REPLY #13244 /* ~"Nalls... ich hätte ein paar Fragen."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13245 /* ~"Ach, beachte mich nicht, Nalls. Leb wohl."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 86 // from: 83.3 87.3
  SAY #13088 /* ~Annahs Augen blitzen wie grüne Flammen, aber sie sagt keinen Ton - sie macht einfach nur ein böses Gesicht.~ */
  IF ~~ THEN REPLY #13246 /* ~"Äh... Nalls, ich hätte ein paar Fragen..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13247 /* ~"Ach, beachte mich nicht, Nalls. Leb wohl."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 87 // from: 82.0
  SAY #13089 /* ~Annahs ganzer Körper spannt sich für einen Moment - sie sagt nichts, aber ihre Wut ob deiner Worte scheint die Luft um sie herum zu erfüllen. Du rechnest mit dem Schlimmsten - aber sie bleibt stumm und schaut dich nur abschätzig an.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13248 /* ~Wahrheit: "Annah... es tut mir wirklich leid, wenn ich dich verletzt habe. Ich hab's nicht so gemeint, und hoffe, du kannst mir verzeihen... nicht zuletzt um unserer Freundschaft willen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13249 /* ~Wahrheit: "Annah... es tut mir wirklich leid, wenn ich dich verletzt habe. Ich hab's nicht so gemeint, und hoffe, du kannst mir verzeihen... nicht zuletzt um unserer Freundschaft willen."~ */ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13250 /* ~Lüge: "Annah... es tut mir wirklich leid, wenn ich dich verletzt habe. Ich hab's nicht so gemeint, und hoffe, du kannst mir verzeihen... nicht zuletzt um unserer Freundschaft willen."~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13251 /* ~Lüge: "Annah... es tut mir wirklich leid, wenn ich dich verletzt habe. Ich hab's nicht so gemeint, und hoffe, du kannst mir verzeihen... nicht zuletzt um unserer Freundschaft willen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13252 /* ~"Beachte sie nicht, Nalls. Ich hätte ein paar Fragen..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13253 /* ~"Ich hätte ein paar Fragen, Nalls."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13254 /* ~"Na, egal, Nalls. Leb wohl."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 88 // from:
  SAY #13090 /* ~Annah neigt ihren Kopf zur Seite und sieht Eisennagel stirnrunzelnd an. "Warum kümmerste dich nicht um deinen eigenen Dreck und nicht darum, wer ich bin und was ich weiß, sondern beantwortest die Fragen von dem Mann hier?" Sie lächelt Eisennagel zur Unterstreichung ihrer Worte süffisant an.~ */
  IF ~~ THEN EXTERN ~DIRONNA~ 29
END

IF ~~ THEN BEGIN 89 // from:
  SAY #13751 /* ~Als du gerade etwas sagen willst, greift Annah nach dir und zischt: "Bist du denn noch zu retten?!* Kein Wort mehr zu dem! Das ist einer von den Ausgehungerten Hunden." Sie senkt ihre Stimme. "Ein Chaot, übergeschnappt, gefährlich! Dumm wie Fliegen sind die, und es sind sicher noch mehr in der Nähe."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13780 /* ~"Ausgehungerter Hund? Wovon redest du?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13781 /* ~"Ausgehungerte Hunde? Wer sind sie noch mal?"~ */ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13782 /* ~"Ich werd trotzdem noch mal mit ihm sprechen."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13783 /* ~"Vielleicht hast du recht. Komm, geh'n wir."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #13752 /* ~"Das ist ne Bande aus'm Stock, und noch dazu Chaoten!" Sie schüttelt den Kopf und piekst dir dann mit ihrem Schwanz in den Rücken. "Halt' dich von denen fern und paß auf, was hinter deinem Rücken vorgeht. Ich hab' mit denen schon zu tun gehabt - und die bellen nicht nur, die beißen auch."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13784 /* ~"Chaoten?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 91
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13785 /* ~"Wer sind die Chaoten noch mal?"~ */ GOTO 91
  IF ~~ THEN REPLY #13786 /* ~"Ich werd trotzdem noch mal mit ihm sprechen."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13787 /* ~"Dachte, ich könnte vielleicht was von ihm lernen. Na, egal, laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1
  SAY #13753 /* ~"Das is'n Bund, wie die Staubies und die Herrschner und die Sinnsaten... nur haben die keine Regeln und keinen Glauben..." Annah betont ihre Worte, indem sie ihren Schwanz in eine Spirale windet. "Die sind plemplem, durchgedreht, übergeschnappt, OK?" Sie kaut darauf einen Moment lang herum. "Manche nennen sie Xaositekten, aber das ist denen egal, ganz egal."~ */
  IF ~~ THEN REPLY #13788 /* ~"Wie rekrutieren sie neue Mitglieder?"~ */ GOTO 92
  IF ~~ THEN REPLY #13789 /* ~"Ich werd trotzdem noch mal mit ihm sprechen."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13790 /* ~"Ich verstehe. Geh'n wir."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #13754 /* ~Annah zuckt mit den Schultern. "Weiß nicht. Tun sie eben. Die fliegen ihnen nur so zu, wie ich das seh."~ */
  IF ~~ THEN REPLY #13791 /* ~"Ich denke, ich sprech trotzdem mit ihm."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13792 /* ~"Ich verstehe. Vielen Dank für die Informationen."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #13831 /* ~Als du gerade etwas sagen willst, greift Annah nach dir und zischt: "Bist du denn noch zu retten?!* Kein Wort mehr zu dem! Das ist einer von den Ausgehungerten Hunden." Sie senkt ihre Stimme. "Ein Chaot, übergeschnappt, gefährlich! Dumm wie Fliegen sind die, und es sind sicher noch mehr in der Nähe."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13992 /* ~"Ausgehungerter Hund? Wovon redest du?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13993 /* ~"Ausgehungerte Hunde? Wer sind sie noch mal?"~ */ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13994 /* ~"Ich werd trotzdem noch mal mit ihm sprechen."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13995 /* ~"Vielleicht hast du recht. Komm, geh'n wir."
~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1
  SAY #13832 /* ~"Das ist ne Bande aus'm Stock, und noch dazu Chaoten!" Sie schüttelt den Kopf und piekst dir dann mit ihrem Schwanz in den Rücken. "Halt' dich von denen fern und paß auf, was hinter deinem Rücken vorgeht. Ich hab' mit denen schon zu tun gehabt - und die bellen nicht nur, die beißen auch."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13996 /* ~"Chaoten?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 95
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13997 /* ~"Wer sind die Chaoten noch mal?"~ */ GOTO 95
  IF ~~ THEN REPLY #13998 /* ~"Ich werd trotzdem noch mal mit ihm sprechen."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13999 /* ~"Dachte, ich könnte vielleicht was von ihm lernen. Na, egal, laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 94.1
  SAY #13833 /* ~"Das is'n Bund, wie die Staubies und die Herrschner und die Sinnsaten... nur haben die keine Regeln und keinen Glauben..." Annah betont ihre Worte, indem sie ihren Schwanz in eine Spirale windet. "Die sind plemplem, durchgedreht, übergeschnappt, OK?" Sie kaut darauf einen Moment lang herum. "Manche nennen sie Xaositekten, aber das ist denen egal, ganz egal."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #14000 /* ~"Wie rekrutieren sie neue Mitglieder?"~ */ GOTO 96
  IF ~~ THEN REPLY #14001 /* ~"Ich werd trotzdem noch mal mit ihm sprechen."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14002 /* ~"Ich verstehe. Geh'n wir."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #13834 /* ~Annah zuckt mit den Schultern. "Weiß nicht. Tun sie eben. Die fliegen ihnen nur so zu, wie ich das seh."~ */
  IF ~~ THEN REPLY #14003 /* ~"Ich denke, ich sprech trotzdem mit ihm."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14004 /* ~"Ich verstehe. Vielen Dank für die Informationen."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #15337 /* ~Annah zerrt an deiner Schulter, bevor du den Mann grüßen kannst. "Hey, warte... Ich weiß, wer er ist. Er ist neu im Stock und hält sich für einen großen Schwertkämpfer. Er hat bisher jeden Schleifer erledigt, der es mit ihm aufgenommen hat. Du würdest gut daran tun, ihm aus dem Weg zu gehen."~ */
  IF ~~ THEN REPLY #15486 /* ~"Ich werde trotzdem mit ihm reden."~ */ GOTO 98
  IF ~~ THEN REPLY #15487 /* ~"Ich werd ihm dann also aus dem Weg gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #15338 /* ~"Na toll! Als ob es mir was ausmacht! Aber denk bloß nicht, daß ich auf dich warten werde!"~ */
  IF ~~ THEN REPLY #15488 /* ~Rede mit dem Mann.~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ EXTERN ~DADYZOEL~ 1
  IF ~~ THEN REPLY #15489 /* ~"Vielleicht hast du recht, Annah. Ich werd ihm aus dem Weg gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16621 /* ~"Was? Das kann doch nicht dein Ernst sein!"~ */
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16902 /* ~"Ja. Kannst du helfen?"~ */ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16903 /* ~"Doch, Annah. Ich wär dir dankbar, wenn du einfach ein bißchen an sie denken könntest... wenigstens, um mir einen Gefallen zu tun."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #16622 /* ~"Was? Nicht die Bohne! Such dir'n andern, der mit dir um die bescheuerten Bäume hier flennt. Du hast sie wohl nicht alle, wenn du glaubst, daß ich das tun würde! Du mußt wirklich komplett verrückt sein."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16904 /* ~"Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16905 /* ~"Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16906 /* ~"Grace, würdest du drüber nachdenken?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16907 /* ~"Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16908 /* ~"Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16909 /* ~"Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16910 /* ~"Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16911 /* ~"Na gut. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16912 /* ~"Ach vergiß es. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #16623 /* ~Ihr verächtliches Grinsen weicht schließlich einem Lächeln. "Ach, zu Baator damit! Warum nicht, wenn es dir so verdammt wichtig ist? Dann 'sorge' ich mich eben um deine Bäume, Schleifer. Aber die Zeit, die ich dafür verschwende, bezahlst du mir!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16913 /* ~"Danke. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16914 /* ~"Danke. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16915 /* ~"Danke. Grace, könntest du drüber nachdenken?~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16916 /* ~"Danke. Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16917 /* ~"Danke. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16918 /* ~"Danke. Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16919 /* ~"Danke. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16920 /* ~"Danke. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16921 /* ~"Danke, Annah. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #17207 /* ~Annah versetzt dir einen Rippenstoß, bevor du den Mann ansprechen kannst. "Ich würde meine Zeit nicht mit diesem alten Ghul verplempern."
~ */
  IF ~~ THEN REPLY #17348 /* ~"Nun, du bist aber nicht ich, und ich werde mit ihm reden."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17349 /* ~"Aha. Ich rede lieber trotzdem mit ihm."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17350 /* ~"Warum nicht? Wer ist er?"~ */ GOTO 103
  IF ~~ THEN REPLY #17351 /* ~"Dann werde ich mich fernhalten."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.2
  SAY #17210 /* ~Annah spricht, als würde sie eine alte Legende erzählen: "Der alte 'Markfreund' ist total übergeschnappt. Er war früher einer der schlechtesten Sammler am Platz. Mit dem Leichensammeln hat er so wenig Klimper verdient, daß es nicht mal zum Essen reichte. Und als er vor Hunger wahnsinnig wurde, fing er an, sich direkt von Leichen zu ernähren. Jetzt wird er von den anderen Sammlern geschnitten, die sich einen Spaß daraus machen, ihn bei jeder Gelegenheit mit Mist zu bewerfen. Und er starrt sie immer nur an... Und stellt sich wahrscheinlich vor, was für ein gutes Fressen sie abgeben würden."~ */
  IF ~~ THEN REPLY #17352 /* ~"Hmm. Ich werde trotzdem mit ihm reden, man kann ja nie wissen."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17354 /* ~"Dann werde ich mich fernhalten."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17426 /* ~"Ja, er ist sicher. Hast du nicht gehört, was er gesagt hat?" Annah rollt mit den Augen. "Bei der Liebe der Mächte, warum läßt du den Schlucker nicht in Ruhe? Du machst dich ja lächerlich."~ */
  IF ~~ THEN REPLY #17427 /* ~Laß den Händler auf Annahs Frage antworten.~ */ EXTERN ~D300MER4~ 11
  IF ~~ THEN REPLY #17428 /* ~"Annah... sei still."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17466 /* ~"Sie hat recht, es ist nichts dabei, was ich gebrauchen könnte. Meine Fragen..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17467 /* ~"Sie hat recht, es ist nichts dabei, was ich gebrauchen könnte. Leb wohl."
~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #17429 /* ~Annah reagiert zuerst entsetzt, dann wütend: "*Eifersüchtig*?! Schließ ab! Halt deine Zunge im Zaum, Frau, sonst reiß ich sie dir aus der Knochenschüssel und vergrab sie weit weg von deiner restlichen Leiche!" Die Händlerin weicht zurück, offensichtlich verängstigt. "Und du!" sagt sie in deine Richtung, mit einem verächtlichen Grinsen und vor Wut funkelnden Augen. "Glaub ihr kein *Wort!* Laß dir von dieser hohlköpfigen Schwester bloß nichts aufschwatzen, oder du wirst es bereuen!"~ */
  IF ~~ THEN REPLY #17468 /* ~"Annah... sei still."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17469 /* ~"Sie hat recht, es ist nichts dabei, was ich gebrauchen könnte. Meine Fragen..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17470 /* ~"Sie hat recht, es ist nichts dabei, was ich gebrauchen könnte. Leb wohl."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 106 // from: 104.1 105.0
  SAY #17430 /* ~"Ha! Das würde dir so passen! Ich mach den Mund auf, wann ich will, vergiß das *nie!*! Und glaub nicht, daß ich *das hier* je wieder vergessen werde, du zerfledderter Idiot."~ */
  IF ~~ THEN REPLY #17471 /* ~"Na gut, Annah. Sie hat recht, Händlerin, es ist nichts dabei, was ich gebrauchen könnte. Meine Fragen..."~ */ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17472 /* ~"Na gut, Annah. Sie hat recht, Händlerin, es ist nichts dabei, was ich gebrauchen könnte. Leb wohl."~ */ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #17534 /* ~"Mann!" Annah schüttelt den Kopf und rollt mit den Augen. "Du hast sie nicht alle, wenn du nur einen Gedanken daran verschwendest! Aber süß *sind* sie schon... Es ist dein Klimper, Dussel. Du mußt es wissen."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17589 /* ~"Morte? Was meinst du?"~ */ EXTERN ~DMORTE~ 187
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17590 /* ~"Ich nehm eins, Händler."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17591 /* ~"Ich gebe meine Kupfermünzen lieber nicht aus. Ich hätte da ein paar Fragen, Händler..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17592 /* ~"Ich behalte meine Kupfermünzen lieber. Leb wohl."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17593 /* ~"Ich habe nicht genug Kupfermünzen, Händler. Aber ich hätte da ein paar Fragen..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17594 /* ~"Vergiß es, Händler. Ich habe nicht genug Münzen für eins. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #18796 /* ~Annah zieht blitzartig ihr Messer. "Faß mich nicht an, oder du wirst es bitter bereuen."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18797 /* ~"Annah: Beruhige dich."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18798 /* ~Laß Annah arbeiten.~ */ EXTERN ~DCOLYLFN~ 59
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18799 /* ~"Annah: Beruhige dich."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18800 /* ~Laß Annah arbeiten.~ */ EXTERN ~DCOLYLFN~ 60
END

IF ~~ THEN BEGIN 109 // from:
  SAY #19035 /* ~Annah schaut angeekelt. "Laß uns gehen."~ */
  IF ~~ THEN REPLY #19036 /* ~"Erst will ich ihm noch ein paar Fragen stellen."~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19037 /* ~"Okay."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #19230 /* ~Annah schnauft. "Leckst dir immer noch die Wunden, was, Quint? Mach dich vom Acker."~ */
  IF ~~ THEN REPLY #19231 /* ~"Ich hätte da erst noch ein paar andere Fragen an ihn, Annah..."~ */ EXTERN ~DQUINT~ 1
  IF ~~ THEN REPLY #19232 /* ~"Leb wohl, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20625 /* ~Annah scharrt nervös mit den Füßen. "Am besten legt man sich nicht mit den Toten an. Bringt Unglück."~ */
  IF ~~ THEN REPLY #20626 /* ~"Ist schon in Ordnung. Diese Leiche sagt sowieso nichts. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #20627 /* ~Annah scharrt nervös mit den Füßen. "Am besten legt man sich nicht mit den Toten an. Bringt Unglück."~ */
  IF ~~ THEN REPLY #20628 /* ~"Vielleicht hat sie ja ein paar Antworten für uns."~ */ EXTERN ~DBODY1~ 2
END

IF ~~ THEN BEGIN 113 // from:
  SAY #20629 /* ~"Gibt hier sowieso nichts für uns. Gehen wir, ja? Bringt gar nichts, sich mit Leichen abzugeben."~ */
  IF ~~ THEN REPLY #20630 /* ~"Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #20775 /* ~"Gris, du schwachsinniger Geier, du hast den Verstand nicht benutzt, den die Mächte dir gegeben haben, und du bist tot, genau, verrottet und hinüber. Möge sich keine Macht des Todes deines fliegenbedeckten Kadavers annehmen. Ich bin heilfroh, und deine Mutter wird noch froher sein, daß du hier unten verrottest."~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN REPLY #20776 /* ~"Das ist Gris?"~ */ JOURNAL #66263 /* ~Ich habe die Leiche von Gris, dem Geier, gefunden, einem der Sammler aus dem Begrabenen Dorf. Sie steckte in einer Gruft, die von Ghulen bewohnt wurde, und war grausam verstümmelt.~ */ GOTO 115
  IF ~~ THEN REPLY #20777 /* ~"Das hast du wirklich schön gesagt, Annah. Gehen wir."~ */ JOURNAL #66263 /* ~Ich habe die Leiche von Gris, dem Geier, gefunden, einem der Sammler aus dem Begrabenen Dorf. Sie steckte in einer Gruft, die von Ghulen bewohnt wurde, und war grausam verstümmelt.~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #20778 /* ~"Ja, Gris, der Geier, mit einem Schnabel wie ein schlecht gelaunter Aasvogel. Er war ein richtiger Grapscher, und ich bedauere sehr, daß ich ihm nie die Kehle durchgeschnitten habe, wenn er zu frech wurde."~ */
  IF ~~ THEN REPLY #20779 /* ~"Gut, Annah. Danke. Verschwinden wir hier."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20780 /* ~Annah stupst die Leiche mit einem Zeh an und dreht sich zu dir um. "Du weißt, wieso er Gris, der Geier, genannt wurde, oder? Weil dieser Depp so einen großen Zinken hat. Seine Nase war ihm immer ein paar Schritte voraus."~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20781 /* ~"Quint hat nach dir gesucht, Gris. Er meint, du hättest etwas von ihm."~ */ EXTERN ~DGRIS~ 10
  IF ~~ THEN REPLY #20782 /* ~"Gris, ja? Ich werd den anderen aus dem Dorf sagen, daß er tot ist."~ */ EXTERN ~DGRIS~ 19
  IF ~~ THEN REPLY #20783 /* ~"Vielen Dank für die Information, Annah. Ich hätte noch ein paar Fragen an Gris."~ */ EXTERN ~DGRIS~ 9
  IF ~~ THEN REPLY #20784 /* ~"Danke, Annah. Gehen wir."~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.3
  SAY #20785 /* ~"Keine Ursache." Sie lächelt süß. "Und auch dir ein Lebewohl, Gris! Sag den Ratten, sie sollen nicht zu viel an deinen Knochen nagen!" Sie spuckt auf die Leiche.~ */
  IF ~~ THEN REPLY #20786 /* ~"Gehen wir, Annah."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21611 /* ~"Hssssst!" zischt Annah warnend, und als du dich zu ihr umdrehst, bemerkst du, daß sie mit großen Augen das Wesen anstarrt. Sie beschreibt einen Halbkreis über ihrem Herz.~ */
  IF ~~ THEN REPLY #24723 /* ~"Was ist los, Annah?"~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #21612 /* ~"Bist du verrückt?!" Annah dreht sich zu dir um... und du erkennst plötzlich, daß sie *Angst hat*. "Bist du so scharf drauf, im Schatten der Dame zu tanzen, daß du mit dem da quatschen mußt?! Laß uns dem Ort hier eins grinsen, bevor wir ins Totenbuch gesteckt werden!"~ */
  IF ~~ THEN REPLY #24724 /* ~"Wo liegt das Problem?"~ */ GOTO 120
  IF ~~ THEN REPLY #24725 /* ~"Wir gehen dann."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21613 /* ~"Es ist *Fell*." Annah wirft einen ängstlichen Blick auf das Wesen... vermutlich Fell. "Laß uns verschwinden, ja? Hier zu bleiben ist gefährlich, das kannst du mir glauben!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #24726 /* ~"Ich frage noch mal... wo liegt das Problem?"~ */ GOTO 121
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #24727 /* ~"Fell?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 7
  IF ~~ THEN REPLY #24728 /* ~"Wir gehen dann."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #21614 /* ~"Er ist ein Dabus, der kein Dabus ist, ja? Er geht auf dem Boden..." Annahs Stimme wird zu einem Flüstern, und sie beginnt zu zittern. "Keine Fragen mehr, laß uns diesem Ort eins grinsen, ja?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24729 /* ~"Annah, dir wird nichts geschehen, solange ich hier bin. Sag mir, was ist ein 'Dabus'?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24730 /* ~"Was ist ein 'Dabus'? "~ */ GOTO 122
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24731 /* ~"Annah, dir wird nichts geschehen, solange ich hier bin. Und jetzt sag mir, was los ist."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 123
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24732 /* ~"Ich halte es für besser, wenn wir die Sache jetzt klären."~ */ GOTO 123
  IF ~~ THEN REPLY #24733 /* ~"Wir gehen dann."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1
  SAY #21615 /* ~"Dabus sind *Ihre* Verwandten - sie kümmern sich um die Stadt, reparieren sie, reißen sie ab, bauen sie wieder auf und so weiter. Sie kommunizieren über Symbolrätsel in der Luft - man muß sie sich zusammenstückeln, um den Plausch zu kapieren."~ */
  IF ~~ THEN REPLY #24734 /* ~"Okay... aber Fell ist auch ein Dabus, nicht wahr? Was stimmt also nicht?"~ */ GOTO 123
  IF ~~ THEN REPLY #24751 /* ~"Annah, ich will Fell nur noch ein paar Fragen stellen. Wir können sofort gehen."~ */ GOTO 126
  IF ~~ THEN REPLY #24752 /* ~"Verstehe. Also gut, wir gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.2 121.3 122.0
  SAY #21616 /* ~Annah wirft einen ängstlichen Blick auf Fell. "Fell ist ein Dabus, der *Sie* verärgert hat. Man sagt, er ist ein Dabus, der kein Dabus ist, und daß bald die Zeit kommt, wenn der Blick der Dame auf ihn fallen wird, jawohl."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24753 /* ~"Sie?'" ~ */ GOTO 124
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24754 /* ~"'Sie'? Meinst du die Dame der Schmerzen?" ~ */ GOTO 125
  IF ~~ THEN REPLY #24755 /* ~"Annah, ich will Fell nur noch ein paar Fragen stellen. Wir können sofort gehen."~ */ GOTO 126
  IF ~~ THEN REPLY #24756 /* ~"Verstehe. Also gut, wir gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #21617 /* ~"Die Dame der Schmerzen." Annah beschreibt noch einen Halbkreis in der Luft vor ihr. "Die Dabus arbeiten für sie, und sie beschützt sie... nur Fell nicht." Sie schaudert. "Laß uns abhauen, ja?"~ */
  IF ~~ THEN REPLY #24757 /* ~"Ich würde zuvor gern mit Fell reden."~ */ GOTO 126
  IF ~~ THEN REPLY #24758 /* ~"Also gut, gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY #21618 /* ~"Ja... und paß auf, was du sagst." Annah beschreibt noch einen Halbkreis in der Luft vor ihr, als du den Namen der Dame erwähnst. "Die Dabus arbeiten für die Dame, und sie beschützt sie... nur Fell nicht." Sie schaudert. "Laß uns abhauen, ja?"~ */
  IF ~~ THEN REPLY #24759 /* ~"Ich würde zuvor gern mit Fell reden."~ */ GOTO 126
  IF ~~ THEN REPLY #24760 /* ~"Verstehe. Also gut, wir gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 122.1 123.2 124.0 125.0
  SAY #21619 /* ~Annah packt deinen Arm. "Bitte nicht, nicht! Das ist gefährlich - jeder, der mit Fell redet, könnte den Blick der Dame auf sich ziehen. Ich will nicht sterben, nein!" Zu deinem Erstaunen scheint Annah den Tränen nahe.~ */
  IF ~~ THEN REPLY #24761 /* ~"Sei *ruhig*... nichts wird geschehen. Ich werd jetzt mit Fell reden, und ich will, daß du ruhig bleibst."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 127
  IF ~~ THEN REPLY #24762 /* ~Versprechen: "Annah, dir wird nichts geschehen, solange ich hier bin - das versprech ich dir. Ich will doch nur einen Moment lang mit ihm sprechen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Fell_2","GLOBALLaw",1)
~ GOTO 128
  IF ~~ THEN REPLY #24763 /* ~Lüge, damit sie zu weinen aufhört: "Annah, dir wird nichts geschehen, solange ich hier bin - das versprech ich dir. Ich will doch nur einen Moment lang mit ihm sprechen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Fell_2","GLOBALLaw",-1)
~ GOTO 128
  IF ~~ THEN REPLY #24764 /* ~"Schon gut, schon gut. Wir gehen ja schon."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #21620 /* ~Annah wird rot, als ob jemand sie geschlagen hätte. Sie knurrt und peitscht mit dem Schwanz um sich; ihr altbekannter Zorn tritt wieder zutage. "Weiß nicht, warum ich mir die Mühe mach... Nur zu, red' mit ihm bis deine Zunge dir die eigene Kehle durchschneidet!"~ */
  IF ~~ THEN REPLY #24765 /* ~"Nun gut."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 128 // from: 126.1 126.2
  SAY #21621 /* ~Einen Moment lang sieht Annah dich an. Dann scheint irgendwas in deinem Blick sie zu beruhigen, denn sie reißt sich zusammen. "Weiß nicht, warum ich..." Sie schüttelt den Kopf. "Nur zu, dann red' mit ihm! Mir ist's egal!" In ihrer Stimme schwingt Angst mit.~ */
  IF ~~ THEN REPLY #24766 /* ~"Nun gut."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #21622 /* ~Annah schweigt einen Moment. Sie sieht hin- und hergerissen aus. "Ja... kann ich."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24767 /* ~"Machst du es?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24768 /* ~"Machst du es?"~ */ GOTO 130
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24769 /* ~"Dann tu es."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24770 /* ~"Dann tu es."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 130
  IF ~~ THEN REPLY #24771 /* ~"Macht nichts. Dann gehen wir eben."~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from: 129.1 129.3
  SAY #21623 /* ~Annah schüttelt den Kopf. "Nein, ich werd nicht mir dir in den Schatten der Dame treten, auf keinen Fall."~ */
  IF ~~ THEN REPLY #24772 /* ~"Ich verstehe. Ich werd mal versuchen, mit ihm selbst zu reden..."~ */ EXTERN ~DFELL~ 8
  IF ~~ THEN REPLY #24773 /* ~"Also gut. Laß uns gehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0 129.2 132.0 133.1 134.3 135.3 136.0 137.12 138.12 139.12 140.9 141.9 142.0 143.3 144.1 145.3 146.3 147.3 148.0 149.3 150.3 151.1 152.3 153.3 154.3 155.12 158.0 159.0
  SAY #21624 /* ~Annah nickt. Der Dabus verbirgt seine Hände in den Ärmelaufschlägen und starrt euch beide noch immer an.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24774 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24775 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24776 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24777 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24778 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24779 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24780 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24781 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24782 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24783 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24784 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24785 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64394 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64395 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64396 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64397 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64398 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64399 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24786 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24787 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24788 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #24789 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24790 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24791 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #24792 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24793 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24794 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24795 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24796 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24797 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24798 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24799 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24800 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24801 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #21625 /* ~Annah zuckt mit den Schultern, ihr Schwanz schlägt langsam vor und zurück. "Sagt, sein Name ist 'Fell'."~ */
  IF ~~ THEN REPLY #24802 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24803 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #21626 /* ~Annah runzelt die Stirn und studiert die Symbole. "Kenne nicht alle Symbole, die der da ausspuckt..." Sie wirft einen Blick auf die Wände des Gebäudes. "Aber... wenn mich meine Augen nicht täuschen, sieht das hier aus wie ein Tätowierladen."~ */
  IF ~~ THEN REPLY #24804 /* ~"Kann ich mal sehen, welche Tätowierungen er machen kann?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24805 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24806 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #21627 /* ~Annah schaut mit zusammengekniffenen Augen auf die Symbole. "Zuerst, sagt er... Nein, warte." Sie runzelt die Stirn. "Er sagt, es ist das *erste* Mal, daß du hier bist... aber daß es das gleichzeitig auch nicht ist." Annah zischt irritiert, und ihr Schwanz peitscht vor und zurück wie eine Schlange. "Hssst! Er ist so verrückt wie *du* - was er sagt, macht keinen Sinn."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24807 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24808 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24809 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #24810 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24811 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #21628 /* ~Annah blinzelt. "Oh, großartig. Er sagt, daß er dich kennt, jawohl... aber dann sagt er, daß er deine Geschichte nicht erzählen kann."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24812 /* ~"Warum nicht?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24813 /* ~"Warum nicht?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24814 /* ~"Warum nicht?"~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #24815 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24816 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #21629 /* ~"Er sagt, er kann es nicht. Er sagt, es tut ihm leid und alles... dann..." Annah runzelt die Stirn. "Er sagt, 'er kann das Wesen eines Menschen nicht ändern'." Sie überfliegt wieder die Symbole und zuckt dann mit den Schultern. "Weiß nicht, was er mit dem letzten Teil da sagen will."~ */
  IF ~~ THEN REPLY #24817 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24818 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #21630 /* ~Annah knabbert an ihrer Unterlippe. "Sagt, daß die Hexe kein Märchen ist. Sie ist real, jawohl."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24819 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24820 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24821 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24822 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24823 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24824 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24825 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24826 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24827 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24828 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24829 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24830 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24831 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24832 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #21631 /* ~"Er..." Annah beschreibt einen Halbkreis über ihrem Herz. "Er sagt, sie wurde in die Irrgänge geschickt, jawohl..." Ihre Stimme senkt sich zu einem Flüstern. "Sie ist in einem der Käfige der Dame."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24833 /* ~"In die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24834 /* ~"In die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24835 /* ~"In die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24836 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24837 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24838 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24839 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24840 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24841 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24842 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24843 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24844 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24845 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24846 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #21632 /* ~"Sie..." Annah schaut mit zusammengekniffenen Augen auf die Symbole. "Er sagt irgendwas davon, daß die beiden nicht miteinander klarkommen, und daß die Dame Ravel bestraft hat. In einen Irrgang geschickt wurde sie von der Dame." Annah dreht sich zu dir um. "Irrgänge sind wie eine Klapsmühle für Dussel, die meinen, sie könnten der Dame eins auswischen... Funktioniert nie. Kommen nur mehr Irrgänge dabei raus."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24847 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24848 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24849 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24850 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24851 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24852 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24853 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24854 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24855 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24856 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24857 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24858 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24859 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24860 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #21633 /* ~Annah scheint immer nervöser zu werden, je mehr sie übersetzt, und du siehst, wie sie schaudert. "Er sagt, sie hat versucht, Sigil aufzuschlagen wie ein Ei."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24861 /* ~"Weiß er, wie man Ravel finden kann?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24862 /* ~"Weiß er, wie man Ravel finden kann?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24863 /* ~"Weiß er, wie man Ravel finden kann?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24864 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24865 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24866 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24867 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24868 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24869 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24870 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24871 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 156.5
  SAY #21634 /* ~Annah runzelt die Stirn. "Er sagt, geh sie nicht suchen..." Sie kratzt sich nervös. "Er sagt, sie ist im Gewahrsam der Dame." Sie dreht sich zu dir um. "Er hat recht... man legt sich nicht mir Ihr an, halt' dich also am besten schön fern, ja?"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24872 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24873 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24874 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24875 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24876 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24877 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24878 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24879 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24880 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24881 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24882 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #21635 /* ~"Er sagt, geh sie nicht suchen, weil..." Sie schaut mit zusammengekniffenen Augen auf die Symbole. "Weil sie ein böses Herz hat." Sie macht eine Pause. "Er sagt, sie wird alles tun, um dich und die, die mit dir gehen, zu verletzen." Annah seufzt, dann wirft sie dir einen beunruhigten Blick zu. "Er hat recht, weißt du. Wenn sie lebt, bringt sie nur Kummer, Ärger der schwärzesten Sorte, jawohl."
~ */
  IF ~~ THEN REPLY #24883 /* ~"Ich wird dran denken. Ich hätte noch eine andere Frage an ihn..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24884 /* ~"Ich glaube, unsere Wege sind dazu bestimmt, sich zu kreuzen. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #21636 /* ~Annahs Schwanz peitscht vor und zurück. "Er sagt, der Arm ist deiner, aber die Tätowierungen sind von ihm." Sie runzelt die Stirn, während sie die Symbole studiert, die in der Luft schweben. "...Kann den letzten Teil nicht verstehen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24885 /* ~"Was für Tätowierungen?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24886 /* ~"Welche Tätowierungen?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24887 /* ~"Welche Tätowierungen?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #24888 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24889 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #21637 /* ~"Er sagt, daß sie von ihm sind, aber daß er sie vergessen hatte. Er sagt, er kann sie dir wieder eingravieren, wenn du willst."~ */
  IF ~~ THEN REPLY #24890 /* ~"Okay... Ich würd gern alle Tätowierungen sehen, die er anzubieten hat."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24891 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24892 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #21638 /* ~"Er sagt, daß sie nicht von ihm sind."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Kann er mir etwas über sie erzählen?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Kann er mir etwas über sie erzählen?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Kann er mir etwas über sie erzählen?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #24896 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24897 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #21639 /* ~"Er sagt... die auf deinem Rücken, das sind Anweisungen. Die anderen, auf deiner Schulter..." Plötzlich wird eins der Symbole um Fell heller, der Rest verschwindet. Das Symbol wird größer und schärfer.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24898 /* ~"Was ist das für ein Symbol auf meiner Schulter?"~ */ EXTERN ~DFELL~ 69
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24899 /* ~"Was ist das für ein Symbol auf meiner Schulter?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24900 /* ~"Was ist das für ein Symbol auf meiner Schulter?"~ */ EXTERN ~DFELL~ 70
  IF ~~ THEN REPLY #24901 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24902 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #21640 /* ~"Schatten." Annahs Schwanz beginnt vor- und zurückzupeitschen... Seltsamerweise scheint sie nervös zu sein. "Er sagt, du wurdest von Schatten getötet."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24934 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24935 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24936 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #24937 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24938 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #21641 /* ~"Er sagt..." Annahs Schwanz hört auf vor- und zurückzupeitschen und beginnt, sich langsamer zu bewegen, wie eine Schlange kurz vor dem Angriff. "Er sagt, du wurdest von vielen Schatten getötet. Er weiß nicht warum."~ */
  IF ~~ THEN REPLY #24939 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~~ THEN REPLY #24940 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #21642 /* ~"Er sagt... dies ist sein Tempel... dies ist Fells Galerie. Er sagt, ehm... daß du seine *Leinwand* bist. Er bewundert dich... und ist gleichzeitig traurig wegen dir."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24941 /* ~"Traurig wegen mir?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24942 /* ~"Traurig wegen mir?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24943 /* ~"Traurig wegen mir?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #24944 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24945 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #21643 /* ~Annah scheint Schwierigkeiten zu haben. "Er sagt... das Zeichen der Qual, nein... der *Folter* schwebt über dir. Daß Tragödie... Tragödien... und Verluste alle... ehm, in dein Fleisch gemeißelt wurden. Er sagt, du hast große Schmerzen überlebt."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24946 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24947 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24948 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #24949 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24950 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #21644 /* ~Annah runzelt die Stirn. "Versteh nicht alles, aber..." Sie schaut mit zusammengekniffenen Augen auf die Symbole. "Er... empfindet Bewunderung... *bewundert* dich, weil du dich ergeben hast... nein, nein... weil du dich *nicht* ergeben hast der Last des Verlustes... der Verluste... Ketten..." Annah knurrt, dann spuckt sie aus. "Verdammt! Verfluchte Bilderrätsel! Ergeben nicht eine Spur von Sinn!"~ */
  IF ~~ THEN REPLY #24951 /* ~"Hol tief Luft und versuch's noch mal."~ */ GOTO 152
  IF ~~ THEN REPLY #24952 /* ~"Dann vergiß es. Ich hätte da noch eine Frage, die ich ihm gern stellen würde..."~ */ GOTO 131
  IF ~~ THEN REPLY #24953 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #21645 /* ~"In Ordnung, weiter." Annah holt Luft und schaut dann wieder mit zusammengekniffenen Augen auf die Symbole. "Er sagt, er bewundert dich, weil du dich nicht der Last dieser Verluste ergeben hast... obwohl die Ketten noch über dir hängen... ehm, an dir hängen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24954 /* ~"Bitte ihn fortzufahren."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24955 /* ~"Bitte ihn fortzufahren."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24956 /* ~"Bitte ihn fortzufahren."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #24957 /* ~"Dann vergiß es. Ich hätte da noch eine Frage, die ich ihm gern stellen würde..."~ */ GOTO 131
  IF ~~ THEN REPLY #24958 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #21646 /* ~Annah runzelt die Stirn. "Er sagt... diese Verluste hüllen dieses Leben und alle davor ein. Daß du Häute abseifst... äh... Häute *abstreifst*... wie eine Schlange. Du gehst auf den Pfaden des Lebens, den vielen..." Sie macht eine Pause. "Ah, den unendlichen Pfaden des Lebens."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24959 /* ~"Sagt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24960 /* ~"Sagt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24961 /* ~"Sagt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #24962 /* ~"Dann vergiß es. Ich hätte da noch eine Frage, die ich ihm gern stellen würde..."~ */ GOTO 131
  IF ~~ THEN REPLY #24963 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #21647 /* ~"Äh... Er sagt, er warnt dich vor etwas... Jedes deiner, em, Leben, vergangenen Leben..." Sie blinzelt, dann fährt sie fort. "Nationen... *Inkarnationen* wirft einen Schatten. Und daß du reisen mußt... an einen Ort, wo verrückte Schatten sind, wo verrückte Schatten leben, und wo die Erde durch Reue verletzt ist."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24964 /* ~"Ich... verstehe. Erzählt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24965 /* ~"Ich... verstehe. Erzählt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24966 /* ~"Ich... verstehe. Erzählt er noch irgendwas anderes?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #24967 /* ~"Dann vergiß es. Ich hätte da noch eine Frage, die ich ihm gern stellen würde..."~ */ GOTO 131
  IF ~~ THEN REPLY #24968 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #21648 /* ~"Er sagt auch, du sollst nichts unterschreiben.""Er sagt auch, du sollst nichts unterschreiben."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24969 /* ~"Nun gut."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24970 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24971 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24972 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24973 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24974 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24975 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24976 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24977 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24978 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24979 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24980 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #24981 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 131
  IF ~~ THEN REPLY #24982 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #21649 /* ~"Fell sagt... ach, nein, er *fragt*, ob du dich 'un-ganz' fühlst." Annah runzelt die Stirn. "Ich *glaube*, er hat gefragt, ob du dich vollständig fühlst."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24983 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24984 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24985 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #24986 /* ~"Das geht dich nichts an."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24987 /* ~Lüge: "Ja, ich fühl mich vollständig. Warum?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24988 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 141
  IF ~~ THEN REPLY #24989 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #21650 /* ~"Fell sagt... daß du stark bist. Und du sollst Vertrauen haben. Dann wirst du dich wieder vollständig fühlen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24991 /* ~"Ich werd's versuchen."~ */ EXTERN ~DFELL~ 103
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24992 /* ~"Ich werd's versuchen."~ */ EXTERN ~DFELL~ 104
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24993 /* ~"Ich werd's versuchen."~ */ EXTERN ~DFELL~ 105
END

IF ~~ THEN BEGIN 158 // from:
  SAY #21651 /* ~Annah blinzelt. "Er... hat mir gesagt, ich soll mein Herz nicht hergeben."~ */
  IF ~~ THEN REPLY #24994 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24995 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #21652 /* ~"Er sagt, es bedeutet Qual..." Sie runzelt die Stirn. "Nein, er meint 'Folter', glaube ich. Irgendwas über die Haut und den Geist, was ich nicht verstehen kann." Sie schüttelt den Kopf. "Krieg ich Kopfschmerzen von, jawohl."~ */
  IF ~~ THEN REPLY #24996 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 131
  IF ~~ THEN REPLY #24997 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #23928 /* ~"Ah, Shad, jetzt weißt du, daß wir uns alle Sorgen um dich gemacht haben, hm? Ein Jammer, daß du hier bist." Sie sieht ihn mit einer Zärtlichkeit an, wie du sie noch nie in ihren Augen entdecken konntest. "Mach weiter, laß uns raus und dann verschwinde von hier. Der alte Griesgram wird versuchen, die Ratten zu rächen, fürchte ich."~ */
  IF ~~ THEN REPLY #23929 /* ~"Da hast du recht."~ */ EXTERN ~DSHAD~ 7
  IF ~~ THEN REPLY #23930 /* ~"Bitte, Shad."~ */ EXTERN ~DSHAD~ 7
END

IF ~~ THEN BEGIN 161 // from:
  SAY #28622 /* ~Neben dir zischt Annah. "Pssst! Was redest du da? Hast du den Verstand verloren?"~ */
  IF ~~ THEN REPLY #28623 /* ~"Sei still, Annah... ich unterhalte mich hier doch gerade, siehst du das nicht?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 162
  IF ~~ THEN REPLY #28624 /* ~"Also Annah, ich habe ihr nur ein Kompliment gemacht, damit sie mir verzeiht, daß ich so unverschämt bin!"~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 161.1
  SAY #28625 /* ~Annah spuckt. "Du spielst hier den Lackaffen, jawohl, und das Idiotische daran ist, daß du es für ein Scheusal tust! Du bist wohl reif für die Klapsmühle, was?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 53
END

IF ~~ THEN BEGIN 163 // from:
  SAY #28626 /* ~"Sie ist eins von den Scheusalen, ein Sukkubus. Erst checkt sie dich aus und dann bringt sie deine Seele runter in die Unteren Ebenen, so sieht's aus!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 164 // from:
  SAY #28627 /* ~Annah erstarrt und murrt dann leise. "Wer sagt überhaupt, daß die mitkommt? So was wie die können wir nun echt nicht gebrauchen."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 118
END

IF ~~ THEN BEGIN 165 // from:
  SAY #28628 /* ~Annah erstarrt und murrt dann leise. "Wer sagt überhaupt, daß die mitkommt? So was wie die können wir nun echt nicht gebrauchen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 277
END

IF ~~ THEN BEGIN 166 // from:
  SAY #28629 /* ~"Halt' jetzt endlich deine Knochenschüssel, Schädel, oder ich schüttle dich so sehr, daß du deine Zähne einzeln aufsammeln kannst!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 117
END

IF ~~ THEN BEGIN 167 // from:
  SAY #30829 /* ~Annah zuckt die Schultern und rollt die Augen. "Sag doch was du willst, Schleifer. Mir ist völlig wurscht, was du sagst... außer natürlich, wenn du mit deiner Knochenschüssel über *mich* klapperst."~ */
  IF ~~ THEN REPLY #30836 /* ~Versuche, seine Aufmerksamkeit auf dich zu lenken.~ */ EXTERN ~DABLE~ 7
END

IF ~~ THEN BEGIN 168 // from:
  SAY #30830 /* ~"Au, sein Anblick tut richtig weh."~ */
  IF ~~ THEN REPLY #30837 /* ~"Sehr amüsant, Annah. Ich hatte ein paar Fragen, mein Herr..."~ */ EXTERN ~DABLE~ 16
  IF ~~ THEN REPLY #30838 /* ~"Eine seltsame Bemerkung von jemandem, dem etwas aus dem Hintern wächst, das wie der Schwanz einer Riesenratte aussieht..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #30831 /* ~Annah bleckt ihre Zähne, wobei ihr Schwanz peitscht. "Ach *ja*, verdammter Lederkopf? Wenn du *willst*, können ich und mein Schwanz dir ohne Probleme für immer aus den Augen gehen! Wärst du *dann* glücklich, hä?"~ */
  IF ~~ THEN REPLY #30839 /* ~"Nein, Annah. Bitte geh nicht weg. Ich wollte dich nur necken... Auge um Auge."~ */ GOTO 170
  IF ~~ THEN REPLY #30840 /* ~"Annah, nein... bitte geh nicht weg. Tut mir leid, was ich da gerade gesagt habe. Bitte bleib hier."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 171
  IF ~~ THEN REPLY #30841 /* ~"Mach doch, was du willst."~ */ GOTO 172
END

IF ~~ THEN BEGIN 170 // from: 169.0 171.0 172.0 173.0
  SAY #30832 /* ~"Hm." Sie lächelt dich süffisant an, macht aber keine Anstalten zu gehen.~ */
  IF ~~ THEN REPLY #30842 /* ~"Danke, Annah. Ich hätte da ein paar Fragen an den Herrn."~ */ EXTERN ~DABLE~ 16
END

IF ~~ THEN BEGIN 171 // from: 169.1
  SAY #30833 /* ~Annah sagt eine Weile nichts. Sie öffnet dann den Mund, um etwas zu sagen, hält dann aber inne...
~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 172 // from: 169.2
  SAY #30834 /* ~Annah starrt dich eine Weile an und wird dann plötzlich fuchsteufelswild. "*MACH ICH*!", brüllt sie. "Die Mächte sollen mir sagen, *warum* ich soviel Zeit damit verschwendet hab', mit dir rumzulatschen!" Sie stampft davon, während sie unerläßlich auf dich, deine Vorfahren und jeden, der dir jemals über den Weg gelaufen ist, flucht.~ */
  IF ~~ THEN REPLY #30843 /* ~"Annah, warte... das habe ich nicht so gemeint. Bitte komm zurück."~ */ GOTO 170
  IF ~~ THEN REPLY #30844 /* ~Pack sie, als sie weggehen will.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 173
  IF ~~ THEN REPLY #30845 /* ~Laß sie gehen.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #30835 /* ~Als du ihren Arm packst, reißt sie ihn aus deinem Griff und zischt: "Wag es bloß nicht, mich *jemals* auch nur wieder anzuschauen, du verdammter Idiot!" Sie hebt ihre Schlagdolche. "Und jeder Teil von dir, der mich *berührt*, wird in den Gossen von Sigil landen, das schwör ich dir!"~ */
  IF ~~ THEN REPLY #30846 /* ~"Annah, warte... tut mir leid, das habe ich nicht so gemeint! Ich wollte dich nicht verärgern. Bitte geh nicht weg."~ */ GOTO 170
  IF ~~ THEN REPLY #30847 /* ~"Untersteh dich, du verkommenes Tiefling-Miststück."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30848 /* ~"Leb wohl und auf Nimmerwiedersehen, Annah."~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #32668 /* ~Als du vor der Frau niederkniest, schäumt Annah vor Wut. "Das *kann* doch nicht dein Ernst sein! Laß die zimperliche Schlampe einfach zur Ader, du Idiot! Hier... ich mach's für dich..."~ */
  IF ~~ THEN REPLY #32689 /* ~"Annah, warte!"~ */ DO ~Attack("Sarhava")
~ EXIT
  IF ~~ THEN REPLY #32690 /* ~Trete zwischen Annah und die Frau.~ */ GOTO 175
  IF ~~ THEN REPLY #32691 /* ~Hilf Annah beim Angriff auf die Frau.~ */ DO ~Attack("Sarhava")
~ EXTERN ~DSARHAVA~ 15
  IF ~~ THEN REPLY #32692 /* ~Laß Annah die Arbeit machen.~ */ DO ~Attack("Sarhava")
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY #32669 /* ~Du machst Anstalten, die Frau zu verteidigen. Annah starrt dich einfach nur schockiert an. "Was... bist... bist du *bescheuert*?"~ */
  IF ~~ THEN REPLY #32693 /* ~"Das ist nicht der Stock, Annah... wir können nicht einfach kämpfen, wie wir lustig sind. Wenn wir nicht aufpassen, kommt noch die Wache."~ */ GOTO 176
  IF ~~ THEN REPLY #32694 /* ~"Los, Annah, laß uns einfach gehen."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #32670 /* ~Annah verzieht das Gesicht und spuckt der Frau vor die Füße. Überraschenderweise macht die Frau keine Anstalten, ihn anzugreifen. "Abstoßend ist das... abstoßend." Sie murmelt weiter vor sich hin. Du schnappst die Wörter "verwelkt" und "Stengel" auf.~ */
  IF ~~ THEN REPLY #32695 /* ~"Meine liebe Frau... wir wollen keinen Ärger. Hören wir doch einfach auf, bevor ich selber die Wachen rufe."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32696 /* ~"Los, Annah, laß uns einfach gehen."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 177 // from:
  SAY #32671 /* ~Annah funkelt Grace und Sarhava wütend an.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 178 // from:
  SAY #32672 /* ~Annah wird rot und knurrt. Aus ihren Fäusten sprießen Klingen.
~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DSARHAVA~ 30
END

IF ~~ THEN BEGIN 179 // from:
  SAY #32673 /* ~"Du hast eine scharfe Zunge, Mädel." Annah spuckt aus und schärft ihre Klingen aneinander. "Ich frage mich, wie gut dir deine kitschigen Klunker und Hurenklamotten stehen, wenn du tot auf der Straße liegst!"~ */
  IF ~~ THEN REPLY #32674 /* ~"Annah, warte!"~ */ EXTERN ~DSARHAVA~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #33296 /* ~"Halt' die Klappe, du widerwärtiger Dummkopf! Hab' ich dir nicht schon das letzte Mal verboten, jemals wieder das Wort an mich zu richten? Weiß der Geier, woher du überhaupt meinen Namen hast!"
~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 53
END

IF ~~ THEN BEGIN 181 // from:
  SAY #33297 /* ~"Und erzähl mir nicht, daß ich dich nicht gewarnt habe, Totenbüchler!" Annahs Klingen schlagen nach den ausgestreckten Händen des Mannes...~ */
  IF ~~ THEN REPLY #33298 /* ~Greif den Mann an.~ */ EXIT
  IF ~~ THEN REPLY #33299 /* ~Laß Annah arbeiten.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #33435 /* ~"Halt' die Klappe, du widerwärtiger Dummkopf! Hab' ich dir nicht schon das letzte Mal verboten, jemals wieder das Wort an mich zu richten? Weiß der Geier, woher du überhaupt meinen Namen hast!"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 51
END

IF ~~ THEN BEGIN 183 // from:
  SAY #33437 /* ~"Und erzähl mir nicht, daß ich dich nicht gewarnt habe, Totenbüchler!" Annahs Klingen schlagen nach den ausgestreckten Händen des Mannes...~ */
  IF ~~ THEN REPLY #33438 /* ~Greif den Mann an.~ */ EXIT
  IF ~~ THEN REPLY #33439 /* ~Laß Annah arbeiten.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 218 227 even though they appear after this state */
~  GlobalGT("Annah","GLOBAL",0)
!Global("Annah_Talked_Grace","GLOBAL",5)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 184 // from:
  SAY #33981 /* ~Annah starrt dich an, als du dich näherst. Ihr Schweif peitscht vor und zurück. "Also, ähm... Brauchst du meine Hilfe?"~ [ANA454A] */
  IF ~~ THEN REPLY #33982 /* ~"Ich will, daß wir wieder zusammen losziehen."~ */ GOTO 185
  IF ~~ THEN REPLY #33983 /* ~"Nichts, entschuldige die Störung."~ */ EXIT
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY #33984 /* ~"Ach ja, bist du dir jetzt SICHER? Du hast mich schon mal fallengelassen, aber das war mir eigentlich auch egal. Entscheide dich jetzt ein für allemal oder verzieh dich."~ */
  IF ~~ THEN REPLY #33985 /* ~"Ich bin mir sicher. Ich brauche deine Hilfe, Annah."~ */ GOTO 186
  IF ~~ THEN REPLY #33986 /* ~"Dann geh ich wohl besser. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #33987 /* ~"Das macht zwar keinen Sinn, aber ich komme trotzdem mit. Du wirst jede Hilfe brauchen, die du kriegen kannst."~ */
  IF ~~ THEN REPLY #33988 /* ~"Na dann, laß uns gehen."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 451 460 218 227 even though they appear after this state */
~  InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #33989 /* ~"Ja? Was willst du?"~ [ANA579B] */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67680 /* ~"Wo ist denn nun der Ort, wo du mich damals gefunden hast?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67681 /* ~"Wo ist denn nun der Ort, wo du mich damals gefunden hast?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67682 /* ~"Wo ist denn nun der Ort, wo du mich damals gefunden hast?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67683 /* ~"Ich wollte dich fragen, wie du mich damals gefunden hast..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67684 /* ~"Annah,... habe ich dich nicht im Stock getroffen, bevor ich Pharod fand?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67685 /* ~"Annah, hast du bei meiner Leiche irgend etwas gefunden, bevor du sie in die Leichenhalle gebracht hast?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67693 /* ~"Annah, ich habe Pharods Leiche im Hof der Kranken Winde gefunden."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67694 /* ~"Annah, weißt du, wie Pharod gestorben ist?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67686 /* ~"Erzähl mir etwas über Pharod."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67687 /* ~"Annah, als Pharod den Tribut zurückgeben wollte, den er meiner Leiche abgenommen hatte, verschwand er für eine Weile - doch er hat den Hof der Kranken Winde nie verlassen. Weißt du, wohin er verschwand?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67690 /* ~"Annah, kannst du mich Diebesfähigkeiten lehren?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68261 /* ~"Annah, kannst du mich Diebesfähigkeiten lehren?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67688 /* ~"Ich möchte, daß du etwas weißt: Als ich Ravel im Irrgang küßte, da..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67689 /* ~"Ich möchte, daß du etwas weißt: Als ich Ravel im Irrgang küßte, da..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67695 /* ~"Im Irrgang sagte Ravel, daß dich etwas quält... was meinte sie damit?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67051 /* ~"Hast du schon mal was von einer Nachthexe namens Ravel Rätselschön gehört?"~ */ GOTO 316
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67052 /* ~"Weißt du, wo ich ein 'Stück' von Ravel finden könnte?"~ */ GOTO 319
  IF ~~ THEN REPLY #33990 /* ~"Nichts, Annah. Ich wollte nur mal gucken, ob du noch da bist."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #39003 /* ~"Ach, das ist ne Sammlung von Klugschädlingen! Wir hauen lieber so schnell wie möglich ab - sonst zermalmen die dein Hirn! Ich hab schon gesehen, wie zehn bis zwanzig von denen Betrunkenen aufgelauert und Gebäude sabotiert haben, und ich hab sogar Gerüchte gehört, daß die Zauber anwenden können, wenn ne Menge von denen auf einem Haufen sind. Ich will mir gar nicht vorstellen, was hundert oder mehr von den Viechern vielleicht zusammen anstellen könnten... "~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 189 // from:
  SAY #39004 /* ~"Verdammt, ne Ansammlung von Klugschädlingen! Wir hauen lieber so schnell wie möglich ab - sonst zermalmen die dein Hirn! Ich hab schon gesehen, wie zehn bis zwanzig von denen Betrunkenen aufgelauert und Gebäude sabotiert haben, und ich hab sogar Gerüchte gehört, daß die Zauber anwenden können, wenn ne Menge von denen auf einem Haufen sind. Ich will mir gar nicht vorstellen, was hundert oder mehr von den Viechern vielleicht zusammen anstellen könnten... "~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 190 // from:
  SAY #39005 /* ~Annah flüstert dir ins Ohr: "Na, jetzt hastes ja geschafft, diese Klugschädlinge gegen dich aufzubringen, was? Ich muß dich warnen, wir hauen hier lieber so schnell wie möglich ab, bevor die uns noch alle zermalmen. Die sind in Gruppen klüger, das sind sie - Ich hab schon gesehen, wie zehn bis zwanzig von denen Betrunkenen aufgelauert und Gebäude sabotiert haben, und ich hab sogar Gerüchte gehört, daß die Zauber anwenden können, wenn ne Menge von denen auf einem Haufen sind. Ich will mir gar nicht vorstellen, wie mächtig diese Ansammlung hier ist - und du hast es geschafft, sie anzunerven. Sei hier bloß vorsichtig, hörste?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 191 // from:
  SAY #39006 /* ~Annah flüstert dir ins Ohr: "Na, jetzt hastes ja geschafft, diese Klugschädlinge gegen dich aufzubringen, was? Ich muß dich warnen, wir hauen hier lieber so schnell wie möglich ab, bevor die uns noch alle zermalmen. Die sind in Gruppen klüger, das sind sie - Ich hab schon gesehen, wie zehn bis zwanzig von denen Betrunkenen aufgelauert und Gebäude sabotiert haben, und ich hab sogar Gerüchte gehört, daß die Zauber anwenden können, wenn ne Menge von denen auf einem Haufen sind. Ich will mir gar nicht vorstellen, wie mächtig diese Ansammlung hier ist - und du hast es geschafft, sie anzunerven. Sei hier bloß vorsichtig, hörste?"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 192 // from:
  SAY #39007 /* ~"Ich weiß ja nicht, was für ein Spiel diese Klugschädlinge hier mit dir spielen, aber die bieten dir Frieden an, und du wärst gut beraten, wenn du annimmst. Die werden in Gruppen klüger, das tun sie, und auch, wenn du ihnen wehgetan hast, kann ne Bande von dieser Größe dich locker ins Totenbuch schicken."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 193 // from:
  SAY #39008 /* ~"Ich weiß ja nicht, was für ein Spiel diese Klugschädlinge hier mit dir spielen, aber die bieten dir Frieden an, und du wärst gut beraten, wenn du annimmst. Die werden in Gruppen klüger, das tun sie, und auch, wenn du ihnen wehgetan hast, kann ne Bande von dieser Größe dich locker ins Totenbuch schicken."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 194 // from:
  SAY #39200 /* ~Annah murmelt wütend etwas. Du kannst die Wörter "nervender" und "Vollidiot" ausmachen.~ */
  IF ~~ THEN EXTERN ~DVIVIAN~ 12
END

IF ~~ THEN BEGIN 195 // from:
  SAY #39585 /* ~"Also, ich bin nicht so gut im Geschichtenerzählen, verstanden." Sie runzelt die Stirn und wedelt mit den Händen, als ob wolle sie die Idee verscheuchen. "Fragt mich bloß nicht nach so 'nem Unsinn, klar?"~ */
  IF ~~ THEN EXTERN ~DYVES~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #39586 /* ~Annah sieht unbehaglich aus, und ihr Schweif schlägt langsam vor und zurück. "Tja, ich kenne eine Geschichte..." Sie wird plötzlich wütend und funkelt Yves zornig an. "...Aber die magste vielleicht nicht, sicher nicht, also mach *mir* nachher keine Vorwürfe dafür, daß du sie aus mir rausgeschüttelt hast!"~ */
  IF ~~ THEN REPLY #39764 /* ~"Nun mach schon, Annah..."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 197
  IF ~~ THEN REPLY #39765 /* ~"Warte... Ich habe eine Geschichte, die ich mit dir teilen möchte, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39766 /* ~"Vergiß es, Annah. Ich hätte da eine Frage, Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39767 /* ~"Mach dir deshalb keine Sorgen, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #39587 /* ~Annah macht ein böses Gesicht, dann schließlich gibt sie mit einem entnervten Seufzer nach. "Ich hab mal ne Geschichte gehört, als ich noch ganz klein war."

"Da geht also dieser Dussel nach Haus, wirklich spät, fast bei Tiefstand, und da kommt er in ner dunklen und sonst ganz leeren Straße an einer alten zahnlosen Vettel vorbei. 'Wo gehst'n hin?' fragt sie ihn." 
~ */
  IF ~~ THEN REPLY #39768 /* ~"Erzähl weiter, Annah..."~ */ GOTO 198
  IF ~~ THEN REPLY #39769 /* ~"Warte ...Ich hätte da eine Frage an Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39770 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #39588 /* ~"'Nach Hause, zu meiner Frau und meiner Absteige', sagt er."

"'Ist das bei den Schlacken in der Nähe?' fragt sie ihn."

"'Klar', sagt er."
~ */
  IF ~~ THEN REPLY #39771 /* ~"Erzähl weiter, Annah..."~ */ GOTO 199
  IF ~~ THEN REPLY #39772 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39773 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #39589 /* ~"Also bittet sie ihn um einen Gefallen... Er soll 'n Kästchen, das sie hat, zur Totenbüchlergrube mitnehmen und da ner Frau geben. Also dieser Dussel is 'n richtiges Weichei, zu nett, um nein zu sagen, obwohl er sich sicher is, daß da irgendwas nicht ganz in *Ordnung* ist mit dieser alten Vettel, und deshalb stimmt er zu. 'Aber wie lautet der Name der Frau?' fragt er. 'Wo lebt sie? Wo soll ich'n nach ihr gucken, wenn sie nicht bei der Totenbüchlergrube ist?'"~ */
  IF ~~ THEN REPLY #39774 /* ~"Erzähl weiter, Annah..."~ */ GOTO 200
  IF ~~ THEN REPLY #39775 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39776 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #39590 /* ~"Die Frau gibt ihm das Kästchen - so'n Ding aus Holz, in farbiges Tuch gewickelt - und sagt ihm, daß er einfach gehen soll, sie würde schon da sein. Schließlich warnt sie ihn: Und was auch immer du machst, mach *NICHT* das Kästchen auf!'"~ */
  IF ~~ THEN REPLY #39777 /* ~"Erzähl weiter, Annah..."~ */ GOTO 201
  IF ~~ THEN REPLY #39778 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39779 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #39591 /* ~"Also nimmt er's mit nach Hause und versteckt es in den Dachbalken und denkt sich, daß er's zur Totenbüchlergrube bringen wird, wenn's wieder hell draußen is. Aber seine Frau sieht, wie er das Kästchen versteckt, und wird tierisch eifersüchtig, weil sie denkt, das wär 'n Geschenk für ne Geliebte oder sowas, und sie macht's auf, sobald er mal nicht aufpaßt."~ */
  IF ~~ THEN REPLY #39780 /* ~"Erzähl weiter, Annah..."~ */ GOTO 202
  IF ~~ THEN REPLY #39781 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39782 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #39592 /* ~"Tja, und das Kästchen war voller ausgedrückter Augen und männlicher Glieder, noch mit Haaren dran. Sie schreit so laut, daß der Dussel gerannt kommt... Und da erinnert er sich daran, was die Alte gesagt hat, und wickelt das Kästchen wieder ein."~ */
  IF ~~ THEN REPLY #39783 /* ~"Erzähl weiter, Annah..."~ */ GOTO 203
  IF ~~ THEN REPLY #39784 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39785 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #39593 /* ~"Er marschiert direkt zur Totenbüchlergrube, und da sitzt tatsächlich noch ne alte Hexe und wartet auf ihn. Er gibt ihr das Kästchen, und sie sagt zu ihm: 'Dieses Kästchen ist geöffnet worden, und es hat jemand reingeguckt.'"~ */
  IF ~~ THEN REPLY #39786 /* ~"Erzähl weiter, Annah..."~ */ GOTO 204
  IF ~~ THEN REPLY #39787 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39788 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #39594 /* ~"Der arme Dussel versucht, es abzustreiten, aber sie bekommt diesen schrecklichen Gesichtsausdruck. 'Du hast was Schreckliches gemacht!' sagt sie ihm und verschwindet dann. Danach rennt er wieder zurück zu seiner Absteige."~ */
  IF ~~ THEN REPLY #39789 /* ~"Erzähl weiter, Annah..."~ */ GOTO 205
  IF ~~ THEN REPLY #39790 /* ~"Warte... Ich hätte da eine Frage an Yves..."~ */ EXIT
  IF ~~ THEN REPLY #39791 /* ~"Wir hören sie uns ein anderes Mal an, Annah. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #39595 /* ~"Als er zurückkommt, fühlt er sich krank und legt sich ins Bett. Seine Frau hat bitter bereut, daß sie das Kästchen geöffnet hat und all das, aber es war zu spät... Am nächsten Tag starb er an einer Verfaulungskrankheit, und das Erste, was ihm abfiel, waren seine Augen und sein bestes Stück."

Annah nickt grimmig, als ihre Geschichte zu Ende ist.
~ */
  IF ~~ THEN EXTERN ~DYVES~ 64
END

IF ~~ THEN BEGIN 206 // from:
  SAY #41137 /* ~"Tss." Annah schnaubt verächtlich und verdreht ihre Augen. "Idiot."~ */
  IF ~~ THEN REPLY #41138 /* ~Ignoriere Annahs Kommentar.~ */ EXTERN ~DKESAI~ 35
  IF ~~ THEN REPLY #41139 /* ~"Ignoriere sie einfach, Kesai."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 207
  IF ~~ THEN REPLY #41140 /* ~"Annah, bitte... das ist doch nur ein Kompliment."~ */ GOTO 207
  IF ~~ THEN REPLY #41141 /* ~"Ärger dich nicht, Annah... du bist genauso schön."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 208
END

IF ~~ THEN BEGIN 207 // from: 206.1 206.2
  SAY #41142 /* ~Annah starrt dich kalt an, sagt aber nichts.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 208 // from: 206.3
  SAY #41143 /* ~"Und was soll *das* jetzt wieder heißen, du nervender Dummkopf?! Haste etwa geglaubt, ich sei *eifersüchtig* auf diese Plaudertasche? Du bist doch wirklich saudumm!" Annah spuckt und sieht weg.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 209 // from:
  SAY #43906 /* ~"Pah!" Annah grinst Morte höhnisch an. "Halt endlich deinen geilen, geifernden Schädel still."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 469
END

IF ~~ THEN BEGIN 210 // from:
  SAY #43907 /* ~"Wenn du mir noch ein Stück näherkommst, Schädel, dann verstreu ich deine klappernden Zähne im Umkreis von ein paar hundert Schritten!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 470
END

IF ~~ THEN BEGIN 211 // from:
  SAY #44246 /* ~"Bei den süß leidenden..." Annah fängt an zu fauchen. "He du! Noch länger warten wir hier nicht. Du solltest lieber..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 18
END

IF ~~ THEN BEGIN 212 // from:
  SAY #44250 /* ~Annah ist überrascht. "Häh?" Doch ihr Erstaunen schlägt schnell in Mißtrauen um. "Was willst du damit *sagen*?"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 19
END

IF ~~ THEN BEGIN 213 // from:
  SAY #44252 /* ~Annah macht einen verwirrten Eindruck. "Nein, nein. Ich gehöre nicht zu den Sinnsaten..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 21
END

IF ~~ THEN BEGIN 214 // from:
  SAY #44253 /* ~"Nein, mir gefallen meine Kleider. Ich muß mir auch keine Sorgen machen, ob es kalt oder warm ist. Liegt wohl an meinem Blut. Und paß auf, wie du über die Tieflinge redest. Klar?"~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 22
END

IF ~~ THEN BEGIN 215 // from:
  SAY #45721 /* ~"Ich würde dich ausnehmen, Schädel, wenn es bei dir was auszunehmen gäbe."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 486
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46094 /* ~"'Kassieren'?! Was zu den neun Ebenen von Baator faselst du da, du Vollidiot? Kassieren ist, wenn einen die Dickschädel schnappen, du planloser, hohlköpfiger Dussel."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 1
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46095 /* ~Annah kichert boshaft und schüttelt den Kopf. "Klappern, Schlucker. Es heißt 'mit deiner Knochenschüssel klappern'. Ich würd ja gern sehen, was du im Stock für eine Show abziehst..." Annah wendet sich dir zu. "Komm, gehn wir. Verschwenden wir unsere Zeit nicht mit diesem mickrigen Möchtegern-Schläger."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 3
END

IF WEIGHT #1 /* Triggers after states #: 227 even though they appear after this state */
~  Global("0110_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #47311 /* ~"Und was jetzt?" Du drehst dich um und siehst ein auffallendes rothaariges Mädchen in Lederrüstung... Du hast sie nicht einmal in die Kammer kommen hören. Ihr rechter Arm ist mit einer Reihe von zusammenhängenden Platten bedeckt, die aussehen, als stammten sie vom Schuppenpanzer irgendeiner Kreatur. Ihr linker Arm wird von einem gehörnten Schulterstück geschützt. Seltsamerweise hat sie einen Schweif... der vor- und zurückzuckt, während du ihn beobachtest.~ [ANA229B] */
  IF ~  Global("Know_Annah","GLOBAL",0)
~ THEN REPLY #47320 /* ~"Also du zeigst mir, wo du mich gefunden hast?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #47321 /* ~"Du bist Annah? Ich hab' dich im Stock getroffen - vor der Leichenhalle, stimmt's?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0 218.1
  SAY #47312 /* ~Das Mädchen ignoriert dich und wendet sich Pharod zu. "Was soll das Ganze? Ich spiel doch nicht den Hundeführer für diesen narbenübersäten Hund, ganz bestimmt nicht. Such dir dafür ein anderes Opfer."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 81
END

IF ~~ THEN BEGIN 220 // from:
  SAY #47313 /* ~"Was? Worauf willst du hinaus?" Sie blinzelt dich an. "Er ist kein Totenbüchler."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 82
END

IF ~~ THEN BEGIN 221 // from:
  SAY #47314 /* ~"Ach ja?" Annah sieht dich an und zuckt dann mit den Achseln. "Er sollte im Stock nicht den Totenbüchler spielen, wenn ich in der Nähe bin, sonst wacht er nämlich in den Armen eines Staubies auf."~ */
  IF ~~ THEN REPLY #47322 /* ~"Du hättest ruhig mal PRÜFEN können, ob ich am Leben gewesen bin, bevor du mich da abgeladen hast."~ */ GOTO 222
  IF ~~ THEN REPLY #47323 /* ~"Genug jetzt! Wo hast du mich damals gefunden?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #47315 /* ~"Oh, ja, und vielleicht hättest DU vorsichtiger sein sollen, und vielleicht hättest du nicht wie ein Totenbüchler mit dem Gesicht nach unten und mucksmäuschenstill auf dem Kopfsteinpflaster der Gasse liegen sollen, ja?!"~ */
  IF ~~ THEN REPLY #47324 /* ~"Vielleicht sollte ich dir schmutziger Leichenräuberin mal zeigen, wie es ist, halbtot in einer Gasse zu liegen." ~ */ GOTO 223
  IF ~~ THEN REPLY #47325 /* ~"Genug jetzt! Wo hast du mich damals gefunden?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #47316 /* ~"Vor DIR habe ich keine Angst." Annahs Hände gleiten an ihrem Körper hinunter, und sie zieht zwei hinterhältige Schlagdolche aus ihren Scheiden. "Du bist jetzt besser mal ganz still, oder du hast die hier in deinen Augen stecken, ja!"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 224 // from:
  SAY #47317 /* ~"Tchhhh..." Annah grinst Pharod höhnisch an und wirft dann dir einen Blick zu. "Also gut! Und beeil dich 'n bißchen, klar? Ich hab nämlich keine Zeit mit solchen wie dir zu verschwenden."~ */
  IF ~~ THEN REPLY #47326 /* ~"Eigentlich hab ich das Begrabene Dorf noch nicht genügend erkundet... Geh'n wir an den Ort, wo ich gestorben bin, wenn ich hier fertig bin."~ */ GOTO 225
  IF ~~ THEN REPLY #47327 /* ~"Also gut. Geh'n wir los."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
StartCutSceneMode()
StartCutSceneEx("0110cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47318 /* ~"Oh, ja? Nun, dann kannst du dein Grab selbst aufspüren, Idiot! Ich warte nich-"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 84
END

IF ~~ THEN BEGIN 226 // from:
  SAY #47319 /* ~Annah spuckt auf den Boden. "Hol euch zwei die Pest..."~ */
  IF ~~ THEN REPLY #47328 /* ~"Das hab ich auch gerade gedacht... Geh'n wir."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Annah_AR0400_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #47329 /* ~Annah zeigt auf die Tür vor dir. "Dahinter wollen wir sein."~ */
  IF ~~ THEN REPLY #47330 /* ~"Gut, dann woll'n wir mal reingeh'n."~ */ DO ~SetGlobal("Annah_AR0400_Cut_Scene","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #47849 /* ~"Klar... Sie ist mit lauter bescheuerten Bildern der Ausgehungerten Hunde beschmiert, ja. Es ist 'ne richtige Tür, bis man sie ansieht. Dann verwandelt sie sich in ein Bild."~ */
  IF ~~ THEN REPLY #47850 /* ~"Wie haben sie das gemacht?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #47851 /* ~Annah zuckt mit den Achseln. "Es gibt seltsamere Dinge in den Ebenen." Plötzlich runzelt sie die Stirn. "Du könntest genausogut fragen, wie du aus 'm Totenbuch wieder herausgekommen bist, nachdem ich SICHER gewesen bin, daß du tot warst."~ */
  IF ~~ THEN REPLY #47852 /* ~"Also, diese Tür... Ich seh sie einfach nicht an? Und *dann* öffne ich sie?"~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #47853 /* ~Annah sieht zur Tür hinüber und nickt dann. "Das ist das Dunkel daran, wenn man dem Plausch glauben kann."~ */
  IF ~~ THEN REPLY #47854 /* ~"Also gut... Ich tu, was du sagst. Man sieht einfach nicht-"~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #47855 /* ~"Stop!" Annah hält dich auf, ehe du nach der Tür greifen kannst. "Das ist meines Wissens der einzige Weg, der an den Ort führt, wo ich deine Leiche gefunden hab, aber es ist nicht der sicherste Weg, ja? Bist du sicher, daß du bereit bist? Ich bin hier nicht dein Kindermädchen, egal was die alte Stotterkrücke Pharod dazu sagt."~ */
  IF ~~ THEN REPLY #47856 /* ~"Was ist hinter dieser Tür, das so gefährlich ist?"~ */ GOTO 232
  IF ~~ THEN REPLY #47857 /* ~"Ich glaub nicht, daß du dir Sorgen um mein Wohlergehen machen mußt - bleib einfach hinter mir. Und jetzt laß mich diese Tür öffnen."~ */ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47858 /* ~"Laß mich noch eben ein paar Waffen holen und mich ein bißchen ausruh'n, bevor wir reingeh'n."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #47859 /* ~"Chaoten", flüstert Annah. "Übergeschnappt wie sonstwas. Brüllen Tag und Nacht wie wild herum, immer bereit, dich entweder bunt anzumalen oder dir mit einem Nachttopf eins auf die Rübe zu geben. Sind schon gefährliche Vollblute."~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47860 /* ~"Kein Grund zur Sorge! Ich bin ein Mitglied ihres Bundes."~ */ GOTO 233
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47861 /* ~"Wenn sie so gefährlich sind, wie bist du dann durchgekommen?"~ */ GOTO 234
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47862 /* ~"Ich glaub nicht, daß du dir Sorgen um mein Wohlergehen machen mußt - bleib einfach hinter mir. Und jetzt laß mich diese Tür öffnen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47863 /* ~"Hmmm. Holen wir uns doch noch mehr Ausrüstung, und kommen wir später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #47864 /* ~"Oh, du glaubst also, daß alle Chaoten freundlich miteinander umgehen?" Sie grinst höhnisch. "Dann BIST du bescheuert genug, einer von ihnen zu sein."~ */
  IF ~~ THEN REPLY #47865 /* ~"Wenn sie so gefährlich sind, wie bist du dann durchgekommen?"~ */ GOTO 234
  IF ~~ THEN REPLY #47866 /* ~"Ich glaub nicht, daß du dir Sorgen um mein Wohlergehen machen mußt - bleib einfach hinter mir. Und jetzt laß mich diese Tür öffnen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47867 /* ~"Hmmm. Holen wir uns doch noch mehr Ausrüstung, und kommen wir später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.1 233.0
  SAY #47868 /* ~"Ich hab mich hübsch leise reingeschlichen. Die können einen nämlich nicht anmalen oder töten, wenn sie einen nicht SEHEN." Sie mustert dich mit einem finsteren Blick von oben bis unten. "Ich bezweifle, daß ich das nochmal so hinkriege, wenn du dabei bist. Du siehst ziemlich ungeschickt aus, echt."~ */
  IF ~~ THEN REPLY #47869 /* ~"Bleib einfach hinter mir. Und jetzt laß mich die Tür öffnen..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47870 /* ~"Hmmm. Holen wir uns doch noch mehr Ausrüstung, und kommen wir später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50111 /* ~"Äh..." Annah sieht dich merkwürdig an. "Er is'n Dabus."~ */
  IF ~~ THEN REPLY #50112 /* ~"Was ist ein 'Dabus?'"~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #50113 /* ~Annah senkt die Stimme: "Ein Dabus ist einer von *Ihren* Leuten - die kümmern sich um die Stadt, reparieren sie, reißen sie wieder ein und bauen sie wieder neu auf und so. Sie sprechen in  Symbolen und Rätseln - man muß die Fetzen zusammenbasteln, um das Ganze zu kapieren." Annah sieht verärgert aus. "Kopfschmerzen kriegste davon."~ */
  IF ~~ THEN REPLY #50114 /* ~"'Ihre' Leute? Wer ist 'sie'?"~ */ GOTO 237
  IF ~~ THEN REPLY #50302 /* ~"Ich verstehe."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #50115 /* ~"Die Dame der Schmerzen." Annah beschreibt vor sich in der Luft einen Halbkreis. "Sie arbeiten für sie, und sie beschützt sie dafür. Leg dich bloß nicht mit denen an, sonst könntest du es mit ihr zu tun kriegen."~ */
  IF ~~ THEN REPLY #50116 /* ~"Erzähl mir von der Dame der Schmerzen."~ */ GOTO 238
  IF ~~ THEN REPLY #50301 /* ~"Ich verstehe."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #50117 /* ~"Pssscht!" Annah fährt sich mit dem Zeigefinger über die Gurgel. "Hör auf, ihren Namen in deiner Knochenschüssel 'rumzuklappern. Sie hat *überall* Ohren, verstehste? Also schmeiß nicht einfach so mit ihrem Namen durch die Gegend, klar?"~ */
  IF ~~ THEN REPLY #50118 /* ~"Oh."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50300 /* ~"Schon gut, schon gut."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50153 /* ~"Er hat bloß gesagt, daß er einer von den Dabus ist." Sie zuckt die Schultern. "Sie haben keine Namen."~ */
  IF ~~ THEN REPLY #50154 /* ~"Kannst du ihm noch eine Frage stellen?"~ */ GOTO 240
  IF ~~ THEN REPLY #50235 /* ~"Das ist alles, was ich wissen wollte. Laß uns hier verschwinden."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 240 // from: 239.0 243.0 244.1 245.1 247.1 248.0 248.2
  SAY #50155 /* ~Annah nickt. Der Dabus starrt euch beide weiter mit in den Ärmeln verschränkten Armen an.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50156 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50157 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50213 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50214 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50215 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50216 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50217 /* ~"Sag ihm, er soll uns etwas über die Dame der Schmerzen erzählen."~ */ GOTO 244
  IF ~~ THEN REPLY #50229 /* ~"Sag ihm, er soll uns etwas über Fell erzählen."~ */ GOTO 247
  IF ~~ THEN REPLY #50234 /* ~"Schon gut. Laß uns abhauen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50161 /* ~"Er hat bloß gesagt, daß er einer von den Dabus ist." Sie zuckt die Schultern. "Sie haben keine Namen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 490
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50163 /* ~"Hast du etwa gehört, wie der da seinen Namen genannt hat, Schädel? *Nein*? Na also!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 491
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50185 /* ~Sie zuckt die Schultern. "Er sagt, er macht seine Arbeit. Sich um die Stadt kümmern und so, weißte."~ */
  IF ~~ THEN REPLY #50186 /* ~"Kannst du ihm noch eine Frage stellen?"~ */ GOTO 240
  IF ~~ THEN REPLY #50187 /* ~"Das ist alles, was ich wissen wollte. Laß uns hier verschwinden."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 244 // from: 240.6
  SAY #50218 /* ~Annah schüttelt den Kopf. "Nee, ich werd doch nicht mit dir in den Schatten von der Dame laufen, oder? Du kriegst nur Ärger mit der Dame, wenn de weiter deine Klappe aufreißt und mit ihren Leuten über sie plapperst." ~ */
  IF ~~ THEN REPLY #50219 /* ~"Frag ihn einfach nach der Dame, okay?"~ */ GOTO 245
  IF ~~ THEN REPLY #50227 /* ~"Ist gut. Kannst du sie für mich noch etwas anderes fragen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50228 /* ~"Dann vergiß es. Gehen wir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 245 // from: 244.0 247.0
  SAY #50220 /* ~Annah schüttelt den Kopf. "Nee, mach ich nicht."~ */
  IF ~~ THEN REPLY #50221 /* ~"Jetzt *tu* es. Ich warne dich."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 246
  IF ~~ THEN REPLY #50225 /* ~"Ist gut. Kannst du sie für mich noch etwas anderes fragen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50226 /* ~"Dann vergiß es. Gehen wir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #50222 /* ~Annah verschränkt die Arme vor der Brust, und ihr Schweif peitscht hin und her.~ */
  IF ~~ THEN REPLY #50223 /* ~"Dann versuch ich es eben..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50224 /* ~"Dann vergiß es. Gehen wir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 247 // from: 240.7
  SAY #50230 /* ~"Nee, ich frag doch nicht Fells alte Kumpels über ihn aus. Das gibt nix wie böses Blut und tut niemand was nützen, so Sachen ansprechen."~ */
  IF ~~ THEN REPLY #50231 /* ~"Hör zu, jetzt *stell* einfach die verdammte Frage, okay!?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 245
  IF ~~ THEN REPLY #50232 /* ~"Kannst du ihn für mich etwas anderes fragen?"~ */ GOTO 240
  IF ~~ THEN REPLY #50233 /* ~"Dann vergiß es. Gehen wir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50275 /* ~Sie zögert einen Moment. "Ja... kann ich."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50276 /* ~"Und wirst du?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50277 /* ~"Und wirst du?"~ */ GOTO 249
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50281 /* ~"Dann tu es."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50282 /* ~"Dann tu es."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 249
  IF ~~ THEN REPLY #50283 /* ~"Schon gut. Laß uns abhauen."~ */ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.3
  SAY #50278 /* ~Annah schüttelt den Kopf. "Nee, ich lauf doch nicht mit dir in den Schatten von der Dame. Laß uns hier nicht weiter rumhängen, okay? Tuste eh nix mit erreichen, außer, daß de Ärger mit der Dame kriegst, wenn de mit ihren Leuten quasselst."~ */
  IF ~~ THEN REPLY #50279 /* ~"Ich verstehe."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50280 /* ~"Schon gut. Laß uns abhauen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50702 /* ~"Bist du völlig *übergeschnappt*, du Schlucker? Bei den Mächten über und unter mir, ich hoffe, das war nur ein elender Scherz, sonst schwöre ich, daß ich mein Bestes tun werde, dich *richtig* fertigzumachen, jawohl!"~ */
  IF ~~ THEN REPLY #50703 /* ~"Ich mein's ernst. Kaufst du sie, Vrischika?"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
SetGlobal("Sell_Annah","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #50704 /* ~"War es, war es. Ich hätte da noch eine Frage, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50705 /* ~"Du hast recht... Es war nur ein schlechter Scherz, Annah. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #52530 /* ~Annah antwortet nicht. Ravels bloße Anwesenheit scheint sie zum Schweigen gebracht zu haben. Doch ihr Schweif hat aufgehört zu zucken, und ihr Blick hat seine Härte verloren. ~ */
  IF ~~ THEN REPLY #52531 /* ~"Es reicht, Ravel. Welche Fragen hast du noch?"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 252 // from:
  SAY #52533 /* ~Annah scheint wie gelähmt, ihre Augen weiten sich, als Ravel ihren schwarzgeäderten Blick auf sie lenkt. Du siehst, wie sie zittert und ihr Herz rast.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 39
END

IF ~~ THEN BEGIN 253 // from:
  SAY #52534 /* ~"Ach, das Leben hat ihn vielleicht verschluckt, aber an *jenem* Ende ist er nicht rausgekommen, nein..."~ */
  IF ~~ THEN REPLY #52535 /* ~"Es reicht. Hör zu, Ravel, du hast mir meine Sterblichkeit genommen, und es hat mehr geschadet als genützt. Ich möchte sie jetzt zurückhaben - du hattest sie nun lang genug, schon zu lang, wie ich finde."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 254 // from:
  SAY #52536 /* ~"Du hast ihn *geliebt*!" Annah bricht ihr Schweigen. Sie klingt erstaunt. "Du hast ihn *geliebt*, nicht wahr?!"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 129
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52537 /* ~Annah scheint wie gelähmt. Ihre Augen weiten sich, als Ravel ihren schwarzgeäderten Blick auf sie lenkt. Du siehst, wie sie zittert und ihr Herz rast.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 91
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52639 /* ~"Ich weiß nicht." Annah starrt das Gesicht ungläubig an, ihre Hände tasten nervös nach ihren Dolchen. "Aber ich bin dafür, daß wir gehen, bevor wir's rausfinden, OK?" ~ */
  IF ~~ THEN REPLY #52773 /* ~"Noch nicht. Es gibt da etwas..."~ */ EXTERN ~DPREGAL~ 1
END

IF ~~ THEN BEGIN 257 // from:
  SAY #52640 /* ~"Ich glaube, sie meint die Dabus. Die sind ständig am Sachen reparieren."~ */
  IF ~~ THEN REPLY #52772 /* ~"Verstehe."~ */ EXTERN ~DPREGAL~ 9
END

IF ~~ THEN BEGIN 258 // from:
  SAY #52641 /* ~"Uh, er muß im 'Weg' sein."~ */
  IF ~~ THEN REPLY #52768 /* ~"Wovon redest du eigentlich?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #52642 /* ~"Ich glaube, sie ist trächtig."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #52769 /* ~"Oh."~ */ EXTERN ~DPREGAL~ 10
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52770 /* ~"Oh."~ */ EXTERN ~DMORTE~ 510
END

IF ~~ THEN BEGIN 260 // from:
  SAY #52988 /* ~Annah beobachtet dich verängstigt. Sie sieht aus, als wolle sie vortreten und helfen, aber sie ist wie gelähmt. "Du... Bist du in Ordnung...?"~ */
  IF ~~ THEN REPLY #52989 /* ~"Ja... Ja... Ich brauche nur einen Moment..."~ */ GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #52990 /* ~Annah schweigt und starrt dich hypnotisiert an. Dein Blut tropft auf den Boden, jeder Tropfen formt beim Auftreffen auf die Steinplatten des Sinnsoriums zu einem purpurroten Kreis. "Was hast du gesehen... Was hast du in diesem Scheusalstein gesehen?"~ */
  IF ~~ THEN REPLY #52991 /* ~"Sehnsucht..."~ */ GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #52992 /* ~Annah runzelt verwirrt die Stirn, dann starrt sie den Sinnesstein an, als wolle sie ihn mit ihren Blicken durchbohren und ihn zerschlagen. "Ach ja? Ich sehne mich danach, diesen Stein zu *zerbrechen*, jawohl, weil er dich so aufgewühlt hat!"~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52993 /* ~"Nein... Nein, ich brauch nur einen Moment, Annah. Mir geht's gleich besser..."~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52996 /* ~"Nein... Nein, ich brauch nur einen Moment, Annah. Mir geht's gleich besser..."~ */ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 263 // from:
  SAY #53933 /* ~"He! Was machst du denn hier?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 7
END

IF ~~ THEN BEGIN 264 // from:
  SAY #53974 /* ~Annah starrt die Säule fest an, ihre Augen sind verengt, ihre Fäuste geballt und ihr Schweif starr. Eine Mischung aus Wut und Schmerz steht ihr in das zitternde Gesicht geschrieben.~ */
  IF ~~ THEN REPLY #53975 /* ~"Annah... geht's dir gut?"~ */ GOTO 265
  IF ~~ THEN REPLY #53976 /* ~Wahrheit: "Ich wünschte, wir könnten ihm helfen, Annah. Es ist tragisch, wenn das jemandem zustößt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pillar_1","GLOBALGood",1)
~ GOTO 265
  IF ~~ THEN REPLY #53977 /* ~Wahrheit: "Es ist traurig, Annah, aber er hat es nicht besser verdient. Versuche, nicht zu sehr darunter zu leiden."~ */ GOTO 265
  IF ~~ THEN REPLY #53978 /* ~Wahrheit: "Ich bin froh, daß  der Bastard da drin ist - und 'Vater' hin oder her, du solltest auch froh sein, Annah."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_1","GLOBALGood",-1)
~ GOTO 265
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53979 /* ~Sag nichts.~ */ EXTERN ~DGRACE~ 171
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #53980 /* ~Sag nichts.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1 264.2 264.3
  SAY #53982 /* ~Annah grinst, spuckt, und dreht der Säule aus verwesenden Köpfen den Rücken zu. Sie zuckt die Achseln, aber sieht dich nicht an. "Egal."~ */
  IF ~~ THEN REPLY #54056 /* ~"Hast du Pharod geliebt, Annah?"~ */ GOTO 266
  IF ~~ THEN REPLY #54057 /* ~Sag nichts.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 266 // from: 265.0 268.0
  SAY #54040 /* ~Annah dreht sich mit funkelnden Augen um. "Er war mein *Vater*." Sie entblößt ihre Zähne. "Ich habe ihn *gehaßt*. Er sah in mir nur einen Weg, noch mehr Leichen zu sammeln, mehr Klimper und mehr Plunder für sein Gewölbe. 'Liebste Annah,' 'Annah-Schatz, du bist mir das Teuerste in meinem Gewölbe,' - alles Lügen. Und was für welche! Und er hatte einen schwachen Geist und einen schwachen Körper. Und er stank nach verwesenden Leichen und hatte soviel Gefühl wie ein Geier, der eine Leiche zerfleddert."~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #54047 /* ~Annah senkt ihre Stimme, aber das Feuer in ihren Augen lodert stärker. "Und er war der einzige, der je ein bißchen freundlich zu mir war. Ist es das, was du hören *wolltest*, ja? Bist du jetzt *zufrieden* ?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 268 // from:
  SAY #54050 /* ~Annah grinst, spuckt aus und wendet sich von der Säule mit den verwesenden Köpfen ab. Sie zuckt die Schultern, aber sieht weder Grace noch dich an. "Egal."~ */
  IF ~~ THEN REPLY #54058 /* ~"Hast du Pharod geliebt, Annah?"~ */ GOTO 266
  IF ~~ THEN REPLY #54059 /* ~Sag nichts.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 269 // from:
  SAY #54051 /* ~"Du meinst *Lügen*!"zischt Annah.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 517
END

IF ~~ THEN BEGIN 270 // from:
  SAY #54052 /* ~"Was bist du denn, ein Idiot?! Das sind doch die Rüben von Schluckern, deren Lügen irgendwelche armen Kerle in den Tod getrieben haben. Das Ding kann dir fast jede Frage beantworten - aber es verlangt verflucht *viel* für seine Antwort. Also stell ihm keine solchen Fragen!"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 271 // from:
  SAY #54062 /* ~"Es *kriegt* mich doch nicht, oder?! Ich glaube nicht, du verfluchter Idiot! Was denkst du dir nur dabei, hier so rumzujammern? Plötzlich verstummt sie und sieh dich mit zusammengekniffenen Augen an. "Beim Schatten der Dame, das meinst du doch nicht ernst, oder... Denn wenn, dann werfe ich dich eigenhändig diesem Ding zum Fraß vor..."~ */
  IF ~~ THEN REPLY #54063 /* ~Wahrheit: "Ich habe es ernst gemeint. Hinein mit dir, Annah, oder ich stopf dich eigenhändig rein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_4","GLOBALGood",-1)
SetGlobal("Pillar_Question","AR1001",0)
LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #54064 /* ~"Ich hab es nicht ernst gemeint. Säule: Also gut. Was für *andere* Geschenke würdest du akzeptieren?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54065 /* ~"*Natürlich* hab ich gescherzt. Gehen wir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54066 /* ~"*Natürlich* hab ich gescherzt. Gehen wir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #54129 /* ~"Ich..." Annah fröstelt, als eine weitere Kältewelle aus dem Portal dringt. "Ja, ich folge dir. Außerdem würdest du deinen eigenen Kopf verlieren, wenn er nicht festgewachsen wäre. Du brauchst auf jeden Fall Hilfe."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54130 /* ~"Vielleicht. Dak'kon? Kommst du mit mir?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54131 /* ~"Vielleicht. Dak'kon? Kommst du mit mir?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54132 /* ~"Vielleicht. Morte? Kommst du mit mir?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54133 /* ~"Vielleicht. Morte? Kommst du mit mir?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54134 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54135 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54136 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #54137 /* ~"Ich..." Annah sieht zu Grace, der Gefallenen, hinüber, dann wendet sie sich wieder dir zu, ihre Augen funkeln. "Wenn *sie* geht, dann gehe ich auch, jawoll. Ich lass' dich doch jetzt nicht im Stich."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54138 /* ~"In Ordnung. Dak'kon? Kommst du mit mir?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54139 /* ~"In Ordnung. Dak'kon? Kommst du mit mir?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54140 /* ~"In Ordnung. Morte? Kommst du mit mir?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54141 /* ~"In Ordnung. Morte? Kommst du mit mir?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54142 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54143 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54144 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56678 /* ~Annahs Augen verengen sich. "Du starrst mich besser nicht so mit deinen blinden Augen an, Geist! Ich will mit dir nichts zu tun haben."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 94
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56679 /* ~Als Vhailors Blick auf Annah fällt, zuckt sie zusammen, als hätte sie sich verbrannt. "Nein, Geist, und du hast nicht das Recht, mich hier zu verhören."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 95
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56680 /* ~"So? Und was für eine Gerechtigkeit soll DAS sein?! Deine Gerechtigkeit ist nicht MEINE Gerechtigkeit - sie ist so hohl wie deine Rüstung! Du machst dir deine EIGENE Gerechtigkeit, aber du ignorierst sie, wenn du über dich selbst urteilen sollst!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 96
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56681 /* ~"Ach ja? Du und deine *Gnadentöter* habt viele von meinen Freunden im Namen der Gerechtigkeit kaltgemacht, als es euch überkommen hat! Mögst du in Baators Feuern schmoren, du verfluchtes halbtotes Ding, und mögen die Mächte dich naßmachen - und zwar kräftig! Ich wünsche, daß deine Rüstung in die Fässer der Gießerei geworfen und eingeschmolzen wird, bis keine einzige Platte mehr übrigbleibt!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 97
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56682 /* ~Annah sieht verzweifelt aus. "Nein, habe ich nicht. Und jetzt laß mich in Ruhe, verdammtes Ding!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 98
END

IF ~~ THEN BEGIN 279 // from:
  SAY #57162 /* ~Annah rollt die Augen und gibt ein säuerliches *Hmpf* von sich.~ */
  IF ~~ THEN REPLY #57163 /* ~"Leb wohl."~ */ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 280 // from:
  SAY #57164 /* ~Annah spöttelt: "Ts! Warum legst du dich nicht *gleich* mit ihr hin, hier auf der Straße, hä?"~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 281 // from:
  SAY #61416 /* ~Annah schnaubt zornig, als du dich anschickst, der Frau hinauszufolgen. "Was *denkst* du dir eigentlich, du Idiot?!" Sie wirbelt zu der Kurtisane und zückt ihre Schlagdolche. "Verschwinde, unverschämte Hure!"~ */
  IF ~~ THEN REPLY #61425 /* ~"He! Beruhig dich, Annah!"~ */ GOTO 282
  IF ~~ THEN REPLY #61427 /* ~"Steck diese verdammten Klingen weg!"~ */ GOTO 282
  IF ~~ THEN REPLY #61428 /* ~Beobachte, was passiert.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 285
END

IF ~~ THEN BEGIN 282 // from: 281.0 281.1
  SAY #61417 /* ~Sie wirbelt zu dir. "Und du, du verdammter Schlucker - du hörst besser mit dem Unsinn auf, sonst stutze ich dich zurecht, klar?"~ */
  IF ~~ THEN REPLY #61429 /* ~"'Mich zurechtstutzen'? Muß ich dafür bezahlen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61430 /* ~"Hör auf, die Frau zu bedrohen, oder ich stutze *deinen* Schweif zurecht, verstanden?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61431 /* ~"Ich habe dich nicht nach deiner Meinung dazu gefragt, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61432 /* ~"OK, OK... Beruhig dich."~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.1 282.2 282.3
  SAY #61418 /* ~Annah beruhigt sich etwas, aber ihr Schweif peitscht immer noch vor und zurück. "Paß besser auf, was du tust, wenn du weiter atmen und an einem Stück bleiben willst."~ */
  IF ~~ THEN REPLY #61433 /* ~"*Droh* mir nicht, Annah. Du bist die mit einem Leben, verstanden?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61434 /* ~"Ich habe dich nicht nach deiner Meinung dazu gefragt, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61435 /* ~"OK, OK... Beruhig dich bloß. Dein Scheusalblut kocht sonst noch über."~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 282.0 283.0 283.1 283.2
  SAY #61419 /* ~Annah macht eine Geste mit ihrem Schweif... die offensichtlich obszön sein soll.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 285 // from: 281.2
  SAY #61420 /* ~Annah bewegt sich auf die Frau zu, es sieht aus, als wolle sie die Prostituierte erstechen.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 6
END

IF ~~ THEN BEGIN 286 // from:
  SAY #61421 /* ~Annah zögert und murmelt vor sich hin. "Verdammte Dickschädel..." Sie steckt ihre Klingen wieder weg, verschränkt die Arme und begnügt sich damit, dir und der Kurtisane giftige Blicke zuzuwerfen.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 287 // from:
  SAY #61664 /* ~"Kümmer dich um deinen eigenen Kram, Sukkubus. Ich hab dir nichts zu sagen."~ [ANA626A] */
  IF ~~ THEN EXTERN ~BGRACE~ 10
END

IF ~~ THEN BEGIN 288 // from:
  SAY #61665 /* ~"Ich hab dir nichts zu sagen, Sukkubus."~ [ANA625A] */
  IF ~~ THEN EXTERN ~BGRACE~ 12
END

IF ~~ THEN BEGIN 289 // from:
  SAY #61762 /* ~"Ja, er könnte... dir weh tun, genauer gesagt."~ [ANA571B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #61763 /* ~"Wenn du die Klappe hälst, hör ich auf, mit dem Schweif zu wedeln."~ [ANA569A] */
  IF ~~ THEN EXTERN ~BMORTE~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #61764 /* ~"Oh ja... Rauf in deine Knochenschüssel und reißt dir das Gehirn aus."~ [ANA572C] */
  IF ~~ THEN EXTERN ~BMORTE~ 4
END

IF ~~ THEN BEGIN 292 // from:
  SAY #61765 /* ~"Akzent? Wovon redest du?"~ [ANA614B] */
  IF ~~ THEN EXTERN ~BMORTE~ 6
END

IF ~~ THEN BEGIN 293 // from:
  SAY #61766 /* ~"Oh ja. Wenn du VERSUCHST, auf meinem Schoß zu sitzen, gibt das eine lange Geschichte. Und eine kurze."~ [ANA570C] */
  IF ~~ THEN EXTERN ~BMORTE~ 8
END

IF ~~ THEN BEGIN 294 // from:
  SAY #61767 /* ~"Nein, nur zu dir."~ [ANA573A] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from:
  SAY #61768 /* ~"Mach nochmal einen auf Schlauberger bei mir, Schädel, und ich steck dir deinen Kopf sonstwo hin."~ [ANA611A] */
  IF ~~ THEN EXTERN ~BMORTE~ 11
END

IF ~~ THEN BEGIN 296 // from:
  SAY #61769 /* ~"Oh, süße, leidende Mächte, Schädel, bist du es nicht selbst irgendwann leid, dich ständig quasseln zu hören?"~ [ANA619] */
  IF ~~ THEN EXTERN ~BMORTE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #61770 /* ~"Ja, und wenn du nicht ständig du selbst wärst, wärst du auch ein netter Schädel."~ [ANA610A] */
  IF ~~ THEN EXTERN ~BMORTE~ 15
END

IF ~~ THEN BEGIN 298 // from:
  SAY #61771 /* ~"Halt deine Knochenschüssel! Mißbrauche ihren Namen nicht!"~ [ANA622B] */
  IF ~~ THEN EXTERN ~BMORTE~ 17
END

IF ~~ THEN BEGIN 299 // from:
  SAY #61772 /* ~"Versuchst du gerade, dafür zu sorgen, daß wir alle in Stücke gerissen werden?! Fordere das Schicksal nicht heraus, Schädel!"~ [ANA622CA] */
  IF ~~ THEN EXTERN ~BMORTE~ 18
END

IF ~~ THEN BEGIN 300 // from:
  SAY #61773 /* ~"Oh, an deiner Stelle würde ich lernen, wie man seine Knochenschüssel zusperrt."~ [ANA616B] */
  IF ~~ THEN EXTERN ~BMORTE~ 20
END

IF ~~ THEN BEGIN 301 // from:
  SAY #61774 /* ~"An deiner Stelle würde ich jetzt aufhören."~ [ANA617A] */
  IF ~~ THEN EXTERN ~BMORTE~ 22
END

IF ~~ THEN BEGIN 302 // from:
  SAY #61775 /* ~"Weißt du was, Schädel? Eines Tages wirst du mit deinem Grinsen eine Pfahlspitze zieren... Jawohl, und das wird noch dein kleinstes Problem sein, wenn ich mit dir fertig bin."~ [ANA607C] */
  IF ~~ THEN EXTERN ~BMORTE~ 23
END

IF ~~ THEN BEGIN 303 // from:
  SAY #61776 /* ~"Geschieht dir recht, Schädel. Du nervst den Rest von uns schon genug."~ [ANA624A] */
  IF ~~ THEN EXTERN ~BMORTE~ 25
END

IF ~~ THEN BEGIN 304 // from:
  SAY #61777 /* ~"Schon vielen Männern hat ihre Zunge die Nase gebrochen, Schädel."~ [ANA618A] */
  IF ~~ THEN EXTERN ~BMORTE~ 27
END

IF ~~ THEN BEGIN 305 // from:
  SAY #61778 /* ~"Ich werde ihm *niemals* sagen, was ich fühle. Noch wirst du ihm etwas davon verklickern. Er trägt das Zeichen des Untergangs, und ich werde nicht von seinem Pfad weichen. Hast du mich gehört, Schädel?"~ [ANA621B] */
  IF ~~ THEN EXTERN ~BMORTE~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY #61779 /* ~"Sie läßt meine Haut atmen, du Idiot."~ [ANA620B] */
  IF ~~ THEN EXTERN ~BMORTE~ 31
END

IF ~~ THEN BEGIN 307 // from:
  SAY #61780 /* ~"Warum gehst du nicht einfach und besorgst es einem Aoskischen Hund?!"~ [ANA588A] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #62891 /* ~"Sie ist eines der Scheusale, eine der Sukkuben, jawohl. Sie wird dich abschätzen, und dann nimmt sie deine Seele mit auf die Unteren Ebenen, das wird sie tun."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 309 // from:
  SAY #63485 /* ~TBD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #63693 /* ~"Nein, das ist dafür, daß du mich zurückgekratzt hast, du traurige Kistenfigur!"~ [ANA565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 23
END

IF ~~ THEN BEGIN 311 // from:
  SAY #63694 /* ~::seufz::~ [ANA565BC] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #63695 /* ~"Was für eine bescheuerte Frage ist *das* denn, du armselige Klapperkiste?!"~ [ANA566C] */
  IF ~~ THEN EXTERN ~BNORDOM~ 25
END

IF ~~ THEN BEGIN 313 // from:
  SAY #63696 /* ~"*WAS?!*"~ [ANA567E] */
  IF ~~ THEN EXTERN ~DMORTE~ 643
END

IF ~~ THEN BEGIN 314 // from:
  SAY #63859 /* ~"Laß ihn doch endlich in Ruhe, du kennst ihn nicht!"~ [ANA568C] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 3
END

IF ~~ THEN BEGIN 315 // from:
  SAY #64221 /* ~::sieht Morte finster an::~ */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 187.15 477.15
  SAY #67053 /* ~Als ihr Name fällt, spuckt Annah dreimal und beschreibt einen Halbkreis über ihrem Herzen. "Pssst! Bist du *doof?!* Erwähn bloß nicht *ihren* Namen, wenn dir dein Leben lieb ist!"~ */
  IF ~~ THEN REPLY #67055 /* ~"Warum?"~ */ GOTO 317
  IF ~~ THEN REPLY #67054 /* ~"Naja, nichts für ungut. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67056 /* ~"Dann vergiß einfach, daß ich gefragt habe. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #67057 /* ~"Sie ist die böseste der Grauen Damen, jawohl." Annahs Stimme senkt sich und wird fast zu einem Flüstern, als ob sie Angst hat, daß man sie belauschen könnte. "Hundsgemein und mit mehr Macht ausgestattet als manch andere Macht. Man sagt, daß sie durch und durch aus Dornen besteht - selbst ihr *Herz*. Man sagt, daß man sie NIEMALS töten kann, weil ihr Körper einem Baum gleicht - Wenn man ihr ein Glied abschlägt, dann wächst irgendwo *anders* in den Ebenen immer noch eins nach."~ */
  IF ~~ THEN REPLY #67058 /* ~"Wenn man dich so hört, könnte man meinen, daß sie immer noch am Leben ist."~ */ GOTO 318
  IF ~~ THEN REPLY #67059 /* ~"Na gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67060 /* ~"Dann vergiß einfach, daß ich gefragt habe. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #67061 /* ~"Natürlich ist sie das. Sie *muß* ganz einfach." Annah spricht wieder leiser. "Wie würdest du so eine wie sie *töten*? Deshalb mußte die Dame sie in den IRRGANG schicken, erzählt man sich."~ */
  IF ~~ THEN REPLY #67062 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67063 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 187.16 477.16
  SAY #67064 /* ~"Ein Stück von dieser Hexe? Nee, ich hab keine Ahnung, wo du so was finden könntest." Annah denkt einen Moment lang nach, und ihr Schweif schwenkt dabei langsam hin und her. Dann grinst sie. "Natürlich! Sie hat wahrscheinlich genügend von ihren Samen in den Ebenen verstreut, daß du vielleicht einen von ihnen fragen kannst."~ */
  IF ~~ THEN REPLY #67065 /* ~"'Samen'? Was meinst du?"~ */ JOURNAL #67068 /* ~Annah hat gesagt, Ravel habe 'Ableger' - entweder eine Tochter oder mehrere Töchter, die über die Ebenen verteilt seien. Ich frage mich, wo ich eine von ihnen finden kann... Vielleicht wüßten die, wie man zu ihrem Irrgang kommen kann. Ich weiß allerdings nicht, wo ich anfangen soll zu suchen.~ */ GOTO 320
  IF ~~ THEN REPLY #67066 /* ~"Naja, nichts für ungut. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67067 /* ~"Dann vergiß einfach, daß ich gefragt habe. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #67069 /* ~"Samen, Verwandte, Kleine - Die alte Ravel soll 'nen ganzen Haufen von Töchtern haben, sagen die Geschichtenerzähler - oder nur eine, je nachdem, welchen Geschichtenerzähler du fragst und ob er gerade Fusel hinunterstürzt, wenn du mit ihm sprichst." Annah senkt wieder ihre Stimme. "In den Geschichten heißt es, daß Ravel sie von einem *Scheusal* hat."~ */
  IF ~~ THEN REPLY #67070 /* ~"Glaubst du, daß sich eine von diesen Töchtern hier noch irgendwo aufhalten könnte? Sie wissen vielleicht, wie man zu ihr gelangt."~ */ GOTO 321
  IF ~~ THEN REPLY #67071 /* ~"Interessant. Ich hätte da noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67072 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #67073 /* ~Annah zuckt mit den Achseln. "Keine Ahnung. Ich würde ganz bestimmt keine von ihnen *finden* wollen. Wenn sie auch nur halb so gemein wie sie sind..."~ */
  IF ~~ THEN REPLY #67074 /* ~"Naja, nichts für ungut. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67075 /* ~"Dann werd ich vielleicht mal nach einer von ihnen Ausschau halten. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 187.10 477.10
  SAY #67076 /* ~"Hä?" Sie runzelt die Stirn. "Worauf willst du hinaus?"~ */
  IF ~  Class(Protagonist,FIGHTER)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67077 /* ~"Ich möchte die Waffenkunst eine Weile nicht betreiben und listigeren Beschäftigungen nachgehen."~ */ GOTO 325
  IF ~  Class(Protagonist,MAGE)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67078 /* ~"Ich möchte die Kunst eine Weile an den Nagel hängen und mich listigeren Beschäftigungen widmen."~ */ GOTO 325
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67079 /* ~"Ich möchte die Waffenkunst eine Weile nicht betreiben und mich wieder als Dieb betätigen. Kannst du mir Unterricht geben?"~ */ GOTO 323
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67080 /* ~"Ich möchte die Kunst eine Weile an den Nagel hängen und mich wieder als Dieb betätigen. Kannst du mir Unterricht geben?"~ */ GOTO 323
  IF ~  Class(Protagonist,THIEF)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67081 /* ~"Ich möchte von dir noch mehr über List und die Tätigkeit als Dieb lernen."~ */ GOTO 348
  IF ~~ THEN REPLY #67082 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67083 /* ~"Nichts für ungut, Annah. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.2 322.3
  SAY #67085 /* ~Sie schaut skeptisch und rollt dann mit den Augen. "Ja, das kann ich... Aber dazu mußt du jetzt deine Klappe halten und mir zuhören... und meinen Anweisungen folgen, klar?" Sie mustert dich von oben bis unten. "Als erstes mußt du eine andere Haltung einnehmen. Nicht so steif und mit ausgestrecktem Bauch wie du's gerne hast..."~ */
  IF ~~ THEN REPLY #67086 /* ~"Gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 344.0
  SAY #67087 /* ~Annah leitet dich bei deinen Schritten an. Kurze Zeit später, tritt sie einen Schritt zurück und nickt. Sie scheint beeindruckt. "Ja, du hast den Bogen raus. Du lernst schnell, ehrlich."~ */
  IF ~~ THEN REPLY #67088 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67089 /* ~"Danke. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 322.0 322.1
  SAY #67090 /* ~Sie mustert dich einmal von oben bis unten und sieht dich dann mit einem komischen Gesicht an. "Meinst du das *ernst*?"~ */
  IF ~~ THEN REPLY #67091 /* ~"Ja, ich möchte lernen, wie ich ein Dieb werden kann. Kann du mir Unterricht geben?"~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #67092 /* ~Sie beobachtet dich eine Weile und schüttelt dann den Kopf. "Nee, du bist zu *langsam*, ehrlich - Du bewegst dich wie ein Sack voller Steine." Sie runzelt die Stirn. "Du mußt schneller auf den Füßen sein und schneller zuschlagen, wenn ich dir *irgendwas* beibringen soll."~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #67093 /* ~Hol aus, und ergreif ihren Arm.~ */ GOTO 327
  IF ~  CheckStatGT(Protagonist,13,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67094 /* ~Hol aus, und ergreif ihren Arm.~ */ GOTO 328
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67095 /* ~Hol aus, und ergreif ihren Arm.~ */ GOTO 330
  IF ~~ THEN REPLY #67096 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67097 /* ~"Na, laß gut sein. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #67098 /* ~"Hssst!" Als du nach ihr schlägst, duckt sich Annah sofort und zischt. "Tja, *das* hab ich LÄNGST vorausgeseh'n. Du bist echt langsam, und du mußt noch VIEL schneller werden, um mich zu erwischen, ehrlich." Sie entspannt sich etwas. "Trotzdem - Du *hast* eine gewisse Schnelligkeit in deinen Bewegungen..."~ */
  IF ~~ THEN REPLY #67099 /* ~"Also unterrichtest du mich?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 328 // from: 326.1
  SAY #67100 /* ~"Psst!" Als du nach ihr schlägst, weicht Annah zurück - allerdings nicht schnell genug, und deine Hände streifen die Klinge eines ihrer Schlagdolche, so daß Blut hervortritt. ~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #67101 /* ~Annah betrachtet das Blut an deinen Händen und beobachtet, wie sich die Wunde allmählich schließt und der Riß unter euren Augen zuheilt. Nach einer Weile spuckt sie. "Geschieht dir recht, Idiot! Ich konnte an deinen Gliedmaßen ablesen, daß du dich bewegen würdest, noch bevor du es selbst gewußt hast." Sie entspannt sich etwas. "Trotzdem - Du *hast* eine gewisse Schnelligkeit in deinen Bewegungen..."~ */
  IF ~~ THEN REPLY #67737 /* ~"Also wirst du mich lehren?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 326.2
  SAY #67102 /* ~Deine Hand schnellt wie eine Peitsche hervor, und ehe Annah sich bewegen kann, umfaßt deine Hand mit festem Griff ihr Handgelenk. Sie fängt sofort zu zischen an, und versucht, sich aus deinem Griff zu befreien. "Laß los, du Idiot! Laß los, oder ich reiß dir 'ne neue Wunde, jawohl!"~ */
  IF ~~ THEN REPLY #67103 /* ~Laß sie gehen.~ */ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #67104 /* ~Annah springt zurück. Ihre Wangen sind gerötet und sie keucht. "Laß deine *Hände* von mir!" Sie atmet langsamer und runzelt dann die Stirn "Du bist wirklich schnell, das muß ich zugegeben. Noch nie hat jemand mein Handgelenk zu fassen bekommen, wie du das eben getan hast... Du mußt Schlangenblut in dir haben."~ */
  IF ~~ THEN REPLY #67105 /* ~"Also unterrichtest du mich?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 332 // from: 327.0 329.0 331.0
  SAY #67106 /* ~Sie schaut skeptisch und rollt dann mit den Augen. "Ja, das kann ich... Aber dazu mußt du jetzt deine Klappe halten und mir zuhören... und meine Anweisungen befolgen, klar?" ~ */
  IF ~~ THEN REPLY #67107 /* ~"Nun gut..."~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0
  SAY #67108 /* ~"Es gibt da ein paar Dinge, die du lernen mußt, wenn du nur schwer zu erwischen sein willst... Du mußt wissen, wie du im Verborgenen bleibst, wenn dich keiner sehen soll."~ */
  IF ~~ THEN REPLY #67109 /* ~"In Ordnung."~ */ GOTO 334
  IF ~~ THEN REPLY #67110 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #67111 /* ~"Du mußt wissen, wo du bist und wie schnell du TEIL der Umgebung werden kannst, in der du bist." Nach jedem Wort schwenkt sie wie zur Untermauerung ihren Schweif. "Wenn du das drauf hast, wirst du wie ein Schatten sein, ehrlich." ~ */
  IF ~~ THEN REPLY #67112 /* ~"Also wie mach ich das?"~ */ JOURNAL #67734 /* ~Im Rahmen meiner Ausbildung zum Dieb hat Annah mir gezeigt, wie man sich im Schatten verbergen kann. Grundsätzlich geht das immer und überall, außer ich greife jemanden an, versuche, ein Türschloß zu knacken oder das Schloß an einer Truhe aufzubekommen... oder wenn ich jemandem bestehlen will.~ */ GOTO 335
  IF ~~ THEN REPLY #67113 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #67114 /* ~"Wichtiger ist, wie du es NICHT machst. Du kannst dich weder verstecken noch jemanden angreifen oder ein Schloß aufbrechen, wenn dich jemand beobachtet. Also sei auf jeden Fall vorsichtig, WENN du dich versteckst, klar?"~ */
  IF ~~ THEN REPLY #67115 /* ~"Warum soll man sich denn im Schatten verbergen?"~ */ JOURNAL #67735 /* ~Annah hat mir gesagt, daß das Verbergen im Schatten vor allem deshalb so günstig sei, weil dann jeder meiner Angriffe VIEL mehr Schaden anrichten würde, sobald ich mein Versteck verlassen würde. Ich glaube, man nennt das 'Hinterhältigen Angriff'. Werd' das irgendwann mal ausprobieren müssen.~ */ GOTO 336
  IF ~~ THEN REPLY #67116 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #67117 /* ~"WEIL..." Annah verdreht zur Betonung ihren Schweif. "Wenn du aus dem Schatten heraustrittst und jemandem diesen EXTRASTICH in den Rücken verabreichst, dann tut das noch viel mehr WEH. Es ist eine besondere Eigenschaft, unsichtbar zu sein, wohl wahr."~ */
  IF ~~ THEN REPLY #67118 /* ~"Oh."~ */ GOTO 337
  IF ~~ THEN REPLY #67119 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #67120 /* ~"Als nächstes lernst du, wie du jemandem etwas aus der Tasche stiebitzt. Keine große Sache, aber es verhält sich damit wie mit dem Einssein mit dem Schatten - du mußt dein Opfer sorgfältig auswählen, klar? Stockbewohnern Münzen aus der Tasche zu ziehen ist leicht, aber stärkere und intelligentere Leute sind schwerer übers Ohr zu hauen. Bei wütenden Dusseln kannst du es nicht mal versuchen, ihnen was zu stiebitzen - wenn sie deine Absichten durchschauen, ziehst du wahrscheinlich ihre Blicke auf dich."~ */
  IF ~~ THEN REPLY #67121 /* ~"Das klingt mir zu gewagt, um von irgendeinem Nutzen zu sein."~ */ GOTO 338
  IF ~~ THEN REPLY #67122 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #67123 /* ~"Nun..." Annah schmunzelt. "Die Geldbörsen der vielen Stadtbürger läppern sich. Ja, das tun sie. Und manchmal halten sie was versteckt, was wertvoller als Kupfer ist, und das wär' ein Fund. Ja, das wär' einer." Sie lächelt. "Und die Händler - Du kannst in ihren Läden was stehlen, wenn du schnell genug bist."

^NHINWEIS: <PICKPOCKET> In Läden stehlen erfolgt über einen Knopf auf dem Laden-Bildschirm.^-~ */
  IF ~~ THEN REPLY #67124 /* ~"Was ist, wenn die Kaufleute ihre Waren wegschließen?"~ */ GOTO 339
  IF ~~ THEN REPLY #67125 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #67126 /* ~"Nun ja, weißte auch, wie man ein Schloss knackt, das verschlossen ist, hm? Oft ist es ganz schwer, aber alles, was zugeschlossen wurde, ist es wert, aufschnappen zu lassen..." Sie runzelt die Stirn. "Na, meistens jedenfalls."

^NHINWEIS: <PICKLOCKS>^-~ */
  IF ~~ THEN REPLY #67127 /* ~"In Ordnung."~ */ GOTO 340
  IF ~~ THEN REPLY #67128 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #67129 /* ~"Dann kommen wir jetzt zur nächsten Lektion. Wenn jemand etwas weggeschlossen hat, daß du nicht bekommen sollst, dann kannst du davon ausgehen, daß derjenige neben dem Schloß *noch* eine Überraschung für dich bereithält - für gewöhnlich eine von diesen wirbelnden und köpfenden Klingen, einen Sack toter Ameisen, einen Schuß Baatezu-Spray..." Annah zählt mit ihren Fingern. "Oder einen Zauber. Oder zwei. Oder drei." ~ */
  IF ~~ THEN REPLY #67130 /* ~"Und wie erkenne ich diese Dinge?"~ */ GOTO 341
  IF ~~ THEN REPLY #67131 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #67132 /* ~"Damit ist es ein bißchen wie mit dem 'Schattensein' - Du mußt deine Umgebung im *Auge* behalten. Wenn du an einen Ort gelangst, dann sieh dich gut um - Fällt dir was Ungewöhnliches auf? Ein Luftzug in einem luftdichten Korridor? Ein merkwürdig beschaffener Bereich des Bodens? Eine auffällige Kiste, die mitten in einem Raum steht?" Annah piekst dich mit ihrem Schweif. "Das machst du, um dich nach Fallen umzusehen."

^NHINWEIS: Zum Aufspüren von Fallen aktivierst du das Symbol 'Finden/Entschärfen' von Fallen im Kontextmenü 'Besondere Attribute'. Wenn es aktiviert ist, kannst du die Fallen entdecken. Sie werden mit dem Mauszeiger hervorgehoben.^-~ */
  IF ~~ THEN REPLY #67133 /* ~"Und wie kann ich diese Dinge umgehen?"~ */ GOTO 342
  IF ~~ THEN REPLY #67134 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #67135 /* ~"Sie umgehen? Nun, dazu musst du die Falle von der Stelle, die du öffnen willst oder an der du sein willst, *abziehen*. Das ist der Trick. Sofern du dir wirklich sicher bist, kannste etwa mit derselben Chance eine Falle entfernen, wie du sie findest - aber wenn du sie gefunden hast..." Annah zuckt mit den Achseln. "Dann müsstest du eigentlich gute Chancen haben. Meistens jedenfalls."

^NHINWEIS: <DISARMTRAP> Falls es dir misslingt, besteht die Chance, dass du die Falle auslöst.~ */
  IF ~~ THEN REPLY #67136 /* ~"Sonst noch was?"~ */ GOTO 343
  IF ~~ THEN REPLY #67137 /* ~"Ich glaub, das hab ich im großen und ganzen verstanden, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #67138 /* ~"Mehr kann ich dazu nicht sagen. Es ist alles reine Übungssache. Ich wünsch dir viel Glück..." Sie schenkt dir ein schalkhaftes Lächeln. "Aber komm mir nicht in die Quere, klar?"~ */
  IF ~~ THEN REPLY #67139 /* ~"In Ordnung." ~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 333.1 334.1 335.1 336.1 337.1 338.1 339.1 340.1 341.1 342.1 343.0
  SAY #67140 /* ~"Nun denn..." Sie mustert dich von oben bis unten. "Dann woll'n wir mal ein bißchen schwitzen und bluten bei dem, was diese Arbeit so mit sich bringt." Sie runzelt die Stirn, als sie dich mustert. "Als erstes mußt du eine andere Haltung einnehmen. Nicht so steif und mit ausgestrecktem Bauch wie du's gerne hast..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67141 /* ~"Gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 324
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #67142 /* ~"Gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 345
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67143 /* ~"Gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67144 /* ~"Gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
END

IF ~~ THEN BEGIN 345 // from: 344.1
  SAY #67145 /* ~Annah leitet dich bei deinen Schritten an und testet dabei deine Reflexe und dein Gleichgewicht. Während sie dich testet, spürst du, wie tief in dir drin Erinnerungen wachgerufen werden, und dein Körper beginnt, diese Erinnerungen umzusetzen. Annah scheint von deiner Geschicklichkeit überrascht zu sein, aber sie erhöht schnell den Druck, bis du nur noch schwer mit ihr mithalten kannst. Schließlich nickt sie beeindruckt. "Ja, du hast den Bogen raus. Du lernst schnell, ehrlich."~ */
  IF ~~ THEN REPLY #67146 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67147 /* ~"Danke. Geh'n wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 344.2 344.3
  SAY #67148 /* ~Annah leitet dich bei deinen Schritten an und testet deine Reflexe und dein Gleichgewicht. Dabei hast du das Gefühl, daß bei jedem Test bei dir ein Groschen fällt. Mit jedem Test scheinst du eine neue Tür zu öffnen - zu unscharfen Bildern von dunklen Gassen, dem Ausschauhalten von Dächern, dem Beutelschneiden auf vollen Märkten, dem Knacken von Torschlössern - all diese Erinnerungen scheinen sich wie ein Fluß in dich zu ergießen, und du erlebst, wie du jeden Test problemlos meisterst, den Annah mit dir durchführt - und wie du sie dadurch im Gegenzug weiter herausforderst.~ */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #67149 /* ~Annah fängt schnell... und eifrig... einen Wettkampf mit dir an und versucht, dich auf die eine oder andere Weise auszutricksen, während du jeden ihrer Tricks locker parierst und dann mit einem anderen Trick antwortest. Am Ende eurer Trainingseinheit weicht Annah zurück und scheint dich in einem neuen Licht sehen. "Bist du *sicher*, daß du das nicht schon mal gemacht hast? Du - du bist wirklich schnell. Ich glaub, ich habe mehr von dir gelernt als du von mir."~ */
  IF ~~ THEN REPLY #67305 /* ~"Ich dachte, ich hätte etwas getan, was du zuvor gelehrt hast. Jedenfalls wollte ich dir noch ein paar Fragen stellen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67306 /* ~"Danke für das Training. Machen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 322.4
  SAY #67308 /* ~"Ja,... das könnte ich. Was denn zum Beispiel?"~ */
  IF ~  Global("Annah_Stealth","GLOBAL",0)
~ THEN REPLY #67309 /* ~"Ich würde gern von dir lernen, listiger zu sein."~ */ GOTO 349
  IF ~  Global("Annah_Open_Locks","GLOBAL",0)
~ THEN REPLY #67310 /* ~"Alles, was du mir über das Knacken von Schlössern beibringen kannst, wäre sehr nützlich für mich."~ */ GOTO 351
  IF ~  Global("Annah_Traps","GLOBAL",0)
~ THEN REPLY #67311 /* ~"Kannst du mir beibringen, wie man Fallen entfernt oder entschärft?"~ */ GOTO 353
  IF ~  Global("Annah_Pick_Pockets","GLOBAL",0)
~ THEN REPLY #67312 /* ~"Kannst du mir irgendwelche Tips geben, wie man am besten jemanden beklaut?"~ */ GOTO 355
  IF ~~ THEN REPLY #67313 /* ~"Eigentlich hatte ich gedacht, ich könnte dir vielleicht ein paar Dinge beibringen."~ */ GOTO 363
  IF ~~ THEN REPLY #67314 /* ~"Schon gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67315 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #67316 /* ~Sie nickt. "Naja, der Trick dabei, nicht gesehen zu werden, ist, daß de weißt, wo de bist, und schnell TEIL von dem werden kannst, wo du bist. Ich hab 'n paar Tricks gelernt - einer ist, du mußt dich da verstecken, wo normal keiner nachguckt - zum Beispiel an der Zimmerdecke - oder du mußt dein Versteck *wechseln*, wenn se dich suchen..." Sie lächelt teuflisch. "Einmal hab ich mich versteckt vor so'n paar Dickschädeln... das 'Gesetz'... und weißte, was ich *gemacht* hab...?"~ */
  IF ~~ THEN REPLY #67317 /* ~"Was...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Stealth","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,STEALTH,RAISE,3)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #67318 /* ~"...da liegt also dann der Dickschädel, Gesicht nach unten, im Straßengraben, ohne Hosen, und seine drei Kumpels sitzen fest in Muttchens Zimmer, und sie brüllt wie am Spieß." Annah holt Luft. "Da siehste es. Wenn de das gleiche durchziehen kannst, hilft's dir vielleicht, dich zu verstecken, wenn's nötig is."~ */
  IF ~~ THEN REPLY #67319 /* ~"Also paß auf: Such dir Orte aus, die du gut kennst und wo's möglichst viel Ablenkung drum rum gibt. Wenn's keine gibt, sorg für welche."~ */ GOTO 362
END

IF ~~ THEN BEGIN 351 // from: 348.1
  SAY #67320 /* ~"Schlösser knacken - mal sehen... Ich kann dir sagen, was de NICHT machen solltest. Erstmal mußte immer 'n bißchen Öl oder sowas bei dir haben, um die Spitze deines Dietrichs zu befeuchten, falls das Schloß nicht aufgehen will. Und noch was hab ich gelernt, vom alten Krücken-Pharod höchstpersönlich: und zwar sind alle Schlösser in Sigil von diesem Schmied aus der Steinzeit gemacht, und alle haben ein und denselben Schnapper, weißte -"~ */
  IF ~~ THEN REPLY #67321 /* ~"Erzähl weiter..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Open_Locks","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,3)
~ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #67322 /* ~"...es wurde langsam Tiefstand, die Dämmerung streckte die ersten Finger aus, und ich wußte, daß sie mich auf dem Speicher suchen würden. Aber der Speicher hatte ein typisches Sigil-Schloß, und ich wußte, wie man den Schnapper einrastet, so daß sie die Tür nicht aufkriegen. So hab ich Zeit gewonnen, um mit dem Silber über die Dächer abzuhauen, weißte."~ */
  IF ~~ THEN REPLY #67323 /* ~"Also ist das die 'Standard'-Verriegelung für viele Schlösser... das könnte nützlich sein, falls ich jemals ein solches Schloß knacken muß."~ */ GOTO 362
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #67324 /* ~"Na, das ist echt 'n Kinderspiel, dir das beizubringen. Das wichtigste ist, daß jemand die Falle AUFSTELLEN muß und also davon WEISS, also mußte dich danach  umsehen, wenn du irgendwo bist, wo wertvoller Kram aufgehoben wird. Einmal kam ich in die Große Halle im Kuratorenviertel und..."~ */
  IF ~~ THEN REPLY #67325 /* ~"Ja...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Traps","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,TRAPS,RAISE,3)
~ GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #67326 /* ~"...und der Teppich um den Schrank rum war neu, also wußte ich, daß er erst vor kurzem verlegt worden war. Also hab ich ihn hochgehoben, und ohne Scheiß, da waren Säureflecken auf dem Steinboden da drunter. Also weiß ich, daß ich nach 'ner Säureblüte Ausschau halten muß, als ich den Schrank knacke und seine Kohle klaue."~ */
  IF ~~ THEN REPLY #67327 /* ~"Wenn du also nach Fallen suchst, um sie zu entschärfen, dann guck dich nicht nur nach Zeichen dafür um, daß sie aufgestellt wurden, sondern auch nach Zeichen dafür, was jemand hätte tun müssen, um sie zu umgehen, nachdem er sie aufgestellt hat."~ */ GOTO 362
END

IF ~~ THEN BEGIN 355 // from: 348.3
  SAY #67328 /* ~"Jemandem die Geldbörse zu klauen, ist gar nicht so schwer wie du denkst..." Annah zuckt die Achseln. "Es kommt einfach nur drauf an, daß du's schnell und geschickt machst, damit se nicht merken, daß ihre Taschen leichter werden. Wenn du Probleme damit hast, liegt's wohl daran, wie du's machst." Sie nickt dir auffordernd zu. "Laß mal sehen."~ */
  IF ~~ THEN REPLY #67329 /* ~"Ehrlich gesagt will ich nicht einfach irgend jemanden beklauen, während du zusiehst. Ein andermal vielleicht."~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #67330 /* ~"Nee, versuch mir etwas Klimper zu klauen. Ich sag dir dann, was du falsch machst."~ */
  IF ~~ THEN REPLY #67331 /* ~"Ist gut... äh, wo hast du ihn denn?"~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #67332 /* ~"Das mußt *du* schon rausfinden, wenn du ein waschechter Dieb sein willst."~ */
  IF ~~ THEN REPLY #67333 /* ~"Ist gut,... dann versuch ich also, dir das Geld aus den Taschen zu klau... äh, stehlen."~ */ DO ~SetGlobal("Annah_Pick_Pockets","GLOBAL",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #67334 /* ~Sobald du eine Bewegung in ihre Richtung machst, hebt Annah die Hand. "Halt, stop. Du hast es jetzt schon vermasselt."~ */
  IF ~~ THEN REPLY #67335 /* ~"Was?"~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #67336 /* ~"Du mußt es vorsichtig angehen, weißte. Kannst nicht einfach so den Thokola machen und auf dein Ziel lospreschen - besonders, wenn du's dir noch anmerken läßt, was du vorhast." Annah stemmt unvermittelt die Hände in die Hüften, dreht sich zur Seite und schaut scheinbar desinteressiert an dir vorbei. "Du mußt so tun, als ob dich dein Ziel gar nicht interessiert, weniger als gar nicht. Ist dir scheißegal, was er bei sich trägt."~ */
  IF ~~ THEN REPLY #67337 /* ~"Okay, ich tu also, als hätte ich kein Interesse. Was dann?"~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #67338 /* ~"Dann gehste sicher, daß de im richtigen Moment *zuschlägst* - ich mach's normalerweise, wenn ich an jemandem vorbeigeh. Du solltest es machen, *nachdem* du an jemandem vorbei bist, dann hat der andere meistens zuviel Schiß, sich nach dir umzudrehen. Und außerdem solltest du noch..."~ */
  IF ~~ THEN REPLY #67339 /* ~"Was...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,1000)
~ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY #67340 /* ~"...also sollteste was Unauffälliges anziehen; und versuch, harmlos auszusehen, dann kannste dein Ziel vielleicht aufm falschen Fuß erwischen - oder gar nicht mehr auf den Füßen, wenn er zuviel Fusel intus hat."~ */
  IF ~~ THEN REPLY #67341 /* ~"Okay. Also versuch ich, harmlos und locker zu tun, als ob mir das Ziel total egal ist, und dann schlage ich zu, sobald ich an ihm vorbei bin?"~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 350.0 352.0 354.0 361.0
  SAY #67342 /* ~Sie nickt. "Genau, das ist der ganze Trick."~ */
  IF ~~ THEN REPLY #67343 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67344 /* ~"Ist gut. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 348.4
  SAY #67345 /* ~"Was? Ist das dein *Ernst*?" Sie zieht eine Augenbraue hoch. "Du? *Mir* was beibringen?"~ */
  IF ~  Global("PC_Annah_Stealth","GLOBAL",0)
CheckStatGT(Protagonist,49,STEALTH)
~ THEN REPLY #67346 /* ~"Ich dachte, ich könnte dir ein paar Tips geben, wie man unauffälliger vorgeht."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",1)
~ GOTO 364
  IF ~  Global("PC_Annah_Open_Locks","GLOBAL",0)
CheckStatGT(Protagonist,49,LOCKPICKING)
~ THEN REPLY #67347 /* ~"Es gibt ein paar Tricks, mit denen man Schlösser knacken kann. Ich dachte, ich verrate sie dir."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",2)
~ GOTO 364
  IF ~  Global("PC_Annah_Pick_Pockets","GLOBAL",0)
CheckStatGT(Protagonist,49,PICKPOCKET)
~ THEN REPLY #67348 /* ~"Ja, es gibt ein paar Tricks für Taschendiebe, die ich dir vielleicht beibringen könnte."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",3)
~ GOTO 364
  IF ~  Global("PC_Annah_Traps","GLOBAL",0)
CheckStatGT(Protagonist,49,TRAPS)
~ THEN REPLY #67349 /* ~"Ja, ich hab ein paar Tricks aufgeschnappt, wie man Fallen aufspürt und entfernt, und die wollte ich dir beibringen."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",4)
~ GOTO 364
  IF ~~ THEN REPLY #67350 /* ~"Nichts für ungut; wahrscheinlich kann ich dir im Moment wirklich nichts beibringen. Ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67351 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0 363.1 363.2 363.3
  SAY #67352 /* ~"So?" Sie lächelt ironisch. "Was denn zum Beispiel?"~ */
  IF ~  Global("Annah_Training","GLOBAL",1)
~ THEN REPLY #67353 /* ~"Also meiner Ansicht nach verrät dich dein Schweif mehr als du glaubst. Mir ist aufgefallen, daß du damit zuckst, wenn du nervös bist oder dich beobachtet fühlst; das allein reicht schon, jemanden, der dich im Dunkeln sucht, auf dich aufmerksam zu machen. Und noch etwas..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Stealth ","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",STEALTH,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",2)
~ THEN REPLY #67354 /* ~"Du verwendest die falschen Dietriche beim Knacken der Schlösser. Deine Dietriche passen zu folgenden Schlössern: eins mit Y-Form und ein anderes mit..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Open_Locks","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",LOCKPICKING,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",3)
~ THEN REPLY #67355 /* ~"Wenn du jemandem was aus den Taschen klauen willst, solltest du deinen Körper besser einsetzen; es dürfte dir nicht allzu schwer fallen, deine Zielperson von seinen Taschen abzulenken. Und -"~ */ DO ~SetGlobal("PC_Annah_Pick_Pockets","GLOBAL",1)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 365
  IF ~  Global("Annah_Training","GLOBAL",4)
~ THEN REPLY #67356 /* ~"Du solltest nicht nur nach Anzeichen für Fallen *schauen*, denn es gibt noch andere Anzeichen, von Schwefel in der Luft über Temperaturschwankungen bis hin zu..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Traps","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",TRAPS,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
END

IF ~~ THEN BEGIN 365 // from: 364.2
  SAY #67357 /* ~"Hä?" Annah blinzelt. "Willst du damit etwa sagen, ich soll mich wie eine Hure geben?"~ */
  IF ~~ THEN REPLY #67358 /* ~"Na, warum trägst du denn sonst diesen Fummel? Ich dachte, genau das ist dein Plan."~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #67359 /* ~Annah sieht an sich hinunter, dann schaut sie auf. "Mir wird nur leicht *heiß*, damit du's weißt; ich glaub es liegt mir im Blut. Durch dieses Mieder kann meine Haut atmen."~ */
  IF ~~ THEN REPLY #67360 /* ~"Du brauchst bloß noch ein paar mehr Schlitze vorn in das Teil zu schneiden, und deinem Ziel ist es egal, ob du ihm was aus den Taschen klaust. Jetzt schau auf meine Hände: wenn du die Geldbörse losschneidest, mußt du -"~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #67361 /* ~Als du die Hand ausstreckst, um Annah zu zeigen, wie sie die Börse losschneiden soll, versteift sie sich.~ */
  IF ~~ THEN REPLY #67362 /* ~"Was ist jetzt *los*?!"~ */ GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #67363 /* ~"Ich kann nichts dafür, es ist deine Schuld!" Annah kneift die Augen zusammen. "Du hättest nichts über das Mieder sagen sollen, jetzt denk ich ständig dran, weißte."~ */
  IF ~~ THEN REPLY #67364 /* ~"Sieh mich an - und jetzt beruhige dich."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #67365 /* ~Annah hält deinen Blick, und du merkst, daß sie immer noch steif ist und sich auf die Lippen beißt.~ */
  IF ~~ THEN REPLY #67366 /* ~"Okay, ich zeig's dir schnell, damit wir es hinter uns haben."~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #67367 /* ~Als du dich zu ihr herüber beugst, schmeißt sich Annah unvermittelt an dich ran und schlingt ihre Arme um dich. Sie hält dich einen Augenblick sanft fest und preßt sich dann an dich heran, schnüffelt an deiner Halsbeuge, an deiner Wange entlang. "Mmh... du riechst so gut, weißte." Sie reibt ihre Wange an deiner - du bist erstaunt, wie weich ihre Haut sich anfühlt. "Deine Haut ist wie Leder, weißte."~ */
  IF ~~ THEN REPLY #67368 /* ~Sieh nach, ob deine Geldbörse noch da ist.~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #67369 /* ~Du greifst nach unten und packst Annahs Schweif, dann löst du ihn langsam von deiner Börse, um die er sich gewickelt hat. Annah tritt einen Schritt zurück und grinst dich an. "Meintest du das? Soll ich so mein Ziel beklauen, hä?" Ihr Gesicht ist gerötet, und du bemerkst, daß ihr Herz schnell schlägt. "Ein Kinderspiel ist das."~ */
  IF ~~ THEN REPLY #67370 /* ~"Ja,... ich denke, du hast den Bogen raus. Hör zu, ich habe noch ein paar Fragen..."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ GOTO 477
  IF ~~ THEN REPLY #67371 /* ~"Ganz genau... laß uns weiter."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 364.0 364.1 364.3
  SAY #67372 /* ~Als du mit deinen Ausführungen fertig bist, nickt Annah stumm. "Okay, an sowas hab ich gar nicht gedacht, weißte." Sie runzelt die Stirn. "Ich wär irgendwann schon von selber drauf gekommen, also glaub jetzt ja nicht, daß du 'n ganz toller Lehrmeister bist, klar?"~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN REPLY #67373 /* ~"Ich wollte nur helfen."~ */ GOTO 373
  IF ~~ THEN REPLY #67374 /* ~"So wird einem seine Freundlichkeit gedankt! Ich habe noch ein paar Fragen an dich..."~ */ GOTO 477
  IF ~~ THEN REPLY #67375 /* ~"War mir ein Vergnügen. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 372.0
  SAY #67376 /* ~"Ich glaub eher, du willst, daß ich mich hier zum *Affen* mache."~ */
  IF ~~ THEN REPLY #67377 /* ~"Wovon zum Teufel redest du überhaupt?"~ */ GOTO 374
  IF ~~ THEN REPLY #67378 /* ~"So wird einem seine Freundlichkeit gedankt! Ich habe noch ein paar Fragen an dich..."~ */ GOTO 477
  IF ~~ THEN REPLY #67379 /* ~"War mir ein Vergnügen. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #67380 /* ~"Du kommst daher, stolzierst in Pharods Hof rein, und er buckelt vor dir und leckt dir die Stiefel, und BEFIEHLT mir, mit dir zu gehen, was er NOCH NIE gemacht hat, und dann spielste dich auf wie der große Macker und tust so, als wüßtest du mehr als ich... was gibt dir das *Recht* dazu? Was glaubst du eigentlich, wer du BIST?"~ */
  IF ~~ THEN REPLY #67381 /* ~"Ich will dir doch nur HELFEN, Annah."~ */ GOTO 375
  IF ~~ THEN REPLY #67382 /* ~"So wird einem seine Freundlichkeit gedankt! Ich habe noch ein paar Fragen an dich..."~ */ GOTO 477
  IF ~~ THEN REPLY #67383 /* ~"War mir ein Vergnügen. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #67384 /* ~"Ach ja? Biste *sicher*? Oder wirste nicht jedesmal, wenn ich jemand was aus der Tasche klaue oder 'n Schloß knacke, hinter meinem Rücken mit dem Kopf schütteln, so nach dem Motto 'dummes, ungeschicktes Ding, weiß nicht, wie man's richtig macht'. Kommste dir dadurch vielleicht toll vor, hä?!"~ */
  IF ~~ THEN REPLY #67385 /* ~"Annah, ich hab dir diese Dinge nur gezeigt, um dich *besser* zu machen als du bist. Ich wollte dich nicht herumkommandieren. Ich glaube *nicht*, daß du ungeschickt bist, und ich glaube *nicht*, daß du dumm bist."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse","GLOBAL",1)
~ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #67386 /* ~Annah runzelt die Stirn, ihr Schweif schlägt hin und her. "Na, jedenfalls  sollteste etwas vorsichtig sein. Auf Mitleid bin ich nicht gut zu sprechen, weißte."~ */
  IF ~~ THEN REPLY #67387 /* ~"Schon klar. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67388 /* ~"Ist gut. Laß uns weiter gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 377 // from: 187.0 477.0
  SAY #67389 /* ~"Der Ort, wo ich deine Leiche gefunden hab, liegt hinter der Angemalten Tür im Rotlichtviertel vom Stock - die Tür ist auf der Nordstraße, nordöstlich von der Bar zur Schwelenden Leiche. Hinter der Tür is 'ne Gasse, da hab ich deine Leiche gefunden. 'n seltsamer Ort ist das, da gehen nicht viele Dussel hin."~ */
  IF ~~ THEN REPLY #67390 /* ~"Ein seltsamer Ort? Inwiefern?"~ */ GOTO 380
  IF ~~ THEN REPLY #67391 /* ~"Ach so. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67392 /* ~"Also gut, dann laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 187.1 477.1
  SAY #67393 /* ~"Es gibt 'ne seltsame Gasse hinter der Klapsmühle der Bellenden Hunde - das ist, wo wir hin müssen, weißte. Da gibt's 'ne Tür hinten im Mietshaus, da können wir durch."~ */
  IF ~~ THEN REPLY #67394 /* ~"Eine seltsame Gasse? Was meinst du damit?"~ */ GOTO 380
  IF ~~ THEN REPLY #67395 /* ~"Ach so. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67396 /* ~"Also gut, dann laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 379 // from: 187.2 477.2
  SAY #67397 /* ~"Da gibt's einen Ort südöstlich von hier, immer die seltsame Gasse lang, an 'nem alten Tor vorbei, dann 'n paar Stufen runter, und da hab ich dich gefunden."~ */
  IF ~~ THEN REPLY #67398 /* ~"Eine seltsame Gasse? Was meinst du damit?"~ */ GOTO 380
  IF ~~ THEN REPLY #67399 /* ~"Ach so. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67400 /* ~"Also gut, dann laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.0 378.0 379.0
  SAY #67401 /* ~"Es gibt 'n paar Dussel, die keinen Mumm in den Knochen haben, die sagen, es *spukt* da, weißte." Annah spuckt aus und beschreibt einen Halbkreis über ihrem Herzen. "Alles nur Gewäsch. Manchmal pfeift der Wind durch die Gasse und macht komische seufzende Geräusche, aber das heißt nicht gleich, daß es da Gespenster und Geister gibt oder so."~ */
  IF ~~ THEN REPLY #67402 /* ~"Ach so. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67403 /* ~"Also gut, dann laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 187.3 477.3
  SAY #67404 /* ~"Was gibt's?"~ */
  IF ~~ THEN REPLY #67405 /* ~"Und wie kamst du dazu, in der Trächtigen Gasse nach Leichen zu suchen? Du mußtest doch dazu durch das Mietshaus schleichen, und dann an den Dabus vorbei, um dorthin zu kommen - und dort sind noch nicht mal viele Leute unterwegs, wie im übrigen Stock. Wieso solltest du dort überhaupt nach Leichen suchen?"~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #67406 /* ~Annah zuckt die Schultern. "Der restliche Stock ist abgegrast, weißte. Da mußte dir schon neue Orte suchen, um Totenbüchler zu organisieren, weißte."~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #67407 /* ~Während Annah spricht, fühlst du ein Kribbeln in deinem Hinterkopf, und dir wird klar, daß sie dich anlügt.~ */
  IF ~~ THEN REPLY #67408 /* ~"Bist du *sicher*, Annah?"~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #67409 /* ~Etwas an deinem Ton läßt Annahs Schweif einen Augenblick lang wie in der Luft erstarren, bevor er - etwas langsamer als zuvor - weiterschlägt. "Ich... *glaube* schon." Sie runzelt die Stirn und scheint ein wenig unsicher. "Ich geh da *normalerweise* nicht hin, um Totenbüchler abzugraben, weißte - wenn ich recht drüber nachdenk, war ich vorher überhaupt noch nie da. Ich bin irgendwie zufällig drauf gestoßen, weißte."~ */
  IF ~~ THEN REPLY #67410 /* ~"Warum bist du also dorthin gegangen?"~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #67411 /* ~"Ich... ich hab keine Ahnung! Einfach so - und dein Glück, daß ich hin bin, sonst wärste wohl immer noch da!"~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #67412 /* ~Du fühlst dasselbe Kribbeln wie vorher deinen Hinterkopf hinaufkriechen, und gleichzeitig trifft dich eine weitere Erkenntnis: Annah lügt, aber merkwürdigerweise *weiß* sie selbst nicht, daß sie lügt.~ */
  IF ~~ THEN REPLY #67413 /* ~"Annah, hat dich irgend etwas gezwungen, dorthin zu gehen? Hast du mich deshalb gefunden?"~ */ DO ~AddexperienceParty(2500)
SetGlobal("Annah_Alley_Geas","GLOBAL",1)
~ JOURNAL #67414 /* ~Ich glaube, irgendwie *mußte* Annah meine Leiche damals finden. Sie sagt, meine Leiche sei wie ein Magnet gewesen, den sie suchen mußte.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #67415 /* ~Sie nickt langsam. "Ja, kann sein." Sie zuckt halbherzig mit den Achseln. "Normalerweise treib ich mich nicht da rum, aber... ich *konnte* irgendwie nicht anders an dem Tag, ich *wollte* einfach sehen, was es da so gibt - und da lagst du, mausetot." Sie hält inne. "Irgendwie warste wie ein Magnet, weißte. Ich weiß nicht, wieso ich hingezogen wurde, wo du lagst."~ */
  IF ~~ THEN REPLY #67416 /* ~"Hmmm. Merkwürdig. Ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67417 /* ~"Ich wollte es nur wissen. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 388 // from: 187.4 477.4
  SAY #67418 /* ~Sie nickt ein wenig mißtrauisch. "Ja, ja - ich hab dich nicht vergessen."~ */
  IF ~  GlobalGT("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67419 /* ~"Als ich dich nach Pharod fragte, sagtest du mir, er sei südwestlich der Leichenhalle - aber da war er *nicht*."~ */ GOTO 389
  IF ~  Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67420 /* ~"Was hast du in der Nähe der Leichenhalle gemacht?"~ */ GOTO 390
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #67421 /* ~"Na und wenn schon! Du hättest das gleiche gemacht, wenn so'n narbiger Kerl ankommt und dich fragt, wo er deinen Alten findet." Sie zuckt die Schultern. "Du hast ihn doch trotzdem gefunden, also hör endlich auf, mich damit vollzulabern, okay?!"~ */
  IF ~~ THEN REPLY #67422 /* ~"Was hast du in der Nähe der Leichenhalle gemacht?"~ */ GOTO 390
  IF ~~ THEN REPLY #67423 /* ~"Nun gut, ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67424 /* ~"Wenn du mir gleich gesagt hättest, wo er ist, wäre die Sache für uns beide um einiges einfacher gewesen. Jetzt laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 388.1 389.0
  SAY #67425 /* ~"Es ist mein Revier, ich hab da nach Totenbüchlern gesucht, klar?!" Sie mustert dich von oben bis unten und  grinst. "Hab sogar einen gefunden, der laufen kann."~ */
  IF ~~ THEN REPLY #67426 /* ~"Ach so. Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67427 /* ~"Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 187.5 477.5
  SAY #67428 /* ~Annah sieht dich mißtrauisch an, ihr Schweif hört einen Augenblick lang auf, hin und her zu schlagen, und schlägt dann etwas langsamer als vorher weiter. "Ja, *kann sein*, daß ich was gefunden hab. Aber *wenn* ich was gefunden hab, gehört's von Rechts wegen mir - die anderen Sachen hat Pharod an sich genommen."~ */
  IF ~~ THEN REPLY #67429 /* ~"Annah, ich hab keine Zeit für Spielchen... *Was* hast du bei meinem Leichnam gefunden?"~ */ GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #67430 /* ~"Also: du hattest 'n paar Fausteisen, weißte... und 'n bißchen Klimper, aber den hab ich für die Staubmenschen dagelassen, damit se denken, ich bin auch ein bißchen ehrlich. Du hattest 'nen häßlichen Ring, den hab ich behalten..." Sie taucht einen Finger in ihren Armschutz und holt einen kleinen Ring mit einem Stein hervor. "Ist dreimal soviel wert wie der Klimper und die Eisen, weißte." Sie betrachtet den Ring mit zusammengekniffenen Augen. "Schade, daß er zum Tragen zu häßlich is."~ */
  IF ~~ THEN REPLY #67431 /* ~"Ich möchte den Ring wiederhaben. Und zwar gleich."~ */ DO ~GiveItemCreate("Ring03",Protagonist,0,0,0)
~ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #67432 /* ~Sie betrachtet stirnrunzelnd den Ring, sieht dich an, dann wieder den Ring. Dann wirft sie dir mit einem höhnischen Lächeln den Ring zu. "Da, wollte das häßliche Ding sowieso nicht haben, daß du's weißt."~ */
  IF ~~ THEN REPLY #67433 /* ~"Gut. Dann sagtest du eben, Pharod habe einiges von dem 'an sich genommen', was ich bei mir trug. Was meintest du genau?"~ */ GOTO 394
  IF ~~ THEN REPLY #67434 /* ~"Nun gut, ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67435 /* ~"Laß uns später darüber reden. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #67436 /* ~"Ja. Pharod nimmt von allen Leichen was mit, die wir finden, weißte. Ist sein Recht als Dorfherr und so."~ */
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67437 /* ~"Von ALLEN Leichen, die ihr hier findet? Das sind 'ne *Menge* Leichen."~ */ GOTO 395
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67438 /* ~"Er muß wohl alles im Gewölbe aufbewahrt haben. Ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67439 /* ~"Dann hat er wohl alles im Gewölbe aufbewahrt. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 395 // from: 187.9 394.0 429.0 477.9
  SAY #67440 /* ~"Oh ja, man sagt, die alte Krücke hat hier irgendwo in der Nähe 'n Versteck. Das ist meiner Meinung nach der einzige Grund, wieso er überhaupt in der dreckigen, zugigen Halle abgestiegen is. Nix wie Gestank und dunkle Ecken."~ */
  IF ~~ THEN REPLY #67441 /* ~"Wirklich? Und da hortet er seinen Anteil?"~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #67442 /* ~"Ja." Sie sieht dich mit zusammengekniffenen Augen an. "Und was haste jetzt vor? Willste ihn übers Ohr hauen?"~ */
  IF ~~ THEN REPLY #67443 /* ~Wahrheit: "Nein. Dazu habe ich keinerlei Veranlassung. Pharod hat mir nichts getan."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Annah_1","GLOBALLaw",1)
~ GOTO 397
  IF ~~ THEN REPLY #67444 /* ~Lüge: " Nein. Dazu habe ich keinerlei Veranlassung."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_2","GLOBALLaw",-1)
~ GOTO 397
  IF ~~ THEN REPLY #67445 /* ~"Nachdem ich mir die Hacken abgelaufen hab, um diese Kugel für ihn zu besorgen, und dann von ihm einen feuchten Händedruck dafür bekommen habe, hätte ich gute Lust dazu."~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 396.0 396.1
  SAY #67446 /* ~"Das ist *gut* - ich warne dich auch davor. Pharod kann zwar manchmal etwas dämlich sein, aber mit ihm ist nicht gut Kirschen essen, wenn er sich über was aufregt." Sie runzelt die Stirn. "Und er *liebt* seine kleinen Andenken, weißte."~ */
  IF ~~ THEN REPLY #67447 /* ~"Aber wo versteckt er all das Zeug? Wenn er schon so lange im Dorf lebt, wie er behauptet, müßte er inzwischen eine ganz hübsche Sammlung haben."~ */ GOTO 399
END

IF ~~ THEN BEGIN 398 // from: 396.2
  SAY #67448 /* ~"Ich warne dich davor, verstehste. Pharod kann zwar manchmal etwas dämlich sein, aber mit ihm ist nicht gut Kirschen essen, wenn er sich über was aufregt." Sie runzelt die Stirn. "Und er *liebt* seine kleinen Andenken, weißte."~ */
  IF ~~ THEN REPLY #67449 /* ~"Aber wo versteckt er all das Zeug? Wenn er schon so lange im Dorf lebt, wie er behauptet, müßte er inzwischen eine ganz hübsche Sammlung haben."~ */ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 397.0 398.0
  SAY #67450 /* ~"Naja..." Annah schweigt einen Moment. "Ich weiß, daß er seine Halle nie verläßt, um seinen Anteil zu holen, wenn's nicht sein muß."~ */
  IF ~~ THEN REPLY #67451 /* ~"Er will sicher nicht weit laufen wollen mit seinem lahmen Bein, oder?"~ */ GOTO 400
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #67452 /* ~"Klar - aber nur, wenn du nicht so genau hinguckst. Er ist gar nicht lahm, obwohl er 'ne ganz gute Show abzieht mit seinem "schwachen" Bein."~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #67453 /* ~"Warum hat er dann immer diese Krücke bei sich?"~ */ GOTO 401
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #67454 /* ~"Dann könnte seine Krücke... ein Schlüssel zu einem Portal sein?"~ */ GOTO 402
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #67455 /* ~Annah zuckt die Achseln. "Keine Ahnung." Sie nickt dir zu. "Genauso gut kannste fragen, wieso du Knochen um die Taille hast, weißte."~ */
  IF ~~ THEN REPLY #67456 /* ~"Schon gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67457 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from: 400.1
  SAY #67458 /* ~Annah runzelt einen Augenblick nachdenklich die Stirn, dann nickt sie langsam. "Ja... das ist 'ne Idee. Sie zuckt die Achseln. "Aber ich weiß nicht, was du damit anfängst. Vielleicht mußte sie einfach nur *haben*."~ */
  IF ~~ THEN REPLY #67459 /* ~"Vielleicht können wir es herausfinden. Ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67460 /* ~"Wir können uns später damit befassen. Nun laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 403 // from: 187.8 477.8
  SAY #67461 /* ~"Der alte Krücken-Pharod? Er ist mein Pa... naja, nicht mein *richtiger* Pa. Er hat mich gefunden, als ich 'n kleines Mädchen war..." Annah zuckt die Achseln. "Er brauchte jemand zum Sammeln, jemand, der da reinkriechen konnte, wo seine anderen fetten Handlanger nicht hinkamen, also hat er mich unter seine Krücke genommen."~ */
  IF ~  Global("Annah_Looks","GLOBAL",0)
~ THEN REPLY #67462 /* ~"Ich hatte auch nicht den Eindruck, daß ihr euch besonders ähnlich seht."~ */ DO ~SetGlobal("Annah_Looks","GLOBAL",1)
~ GOTO 404
  IF ~~ THEN REPLY #67463 /* ~"Kannst du mir sonst noch was über ihn erzählen?"~ */ GOTO 424
  IF ~~ THEN REPLY #67464 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67465 /* ~"Ich verstehe. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #67466 /* ~Annahs Augen werden zu schmalen Schlitzen, und ihr Schweif schlägt hin und her. "Und was soll *das* wieder heißen, hä?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67467 /* ~"Ich meinte bloß, daß es schwer ist, irgendeine Ähnlichkeit festzustellen zwischen diesem häßlichen, buckligen, gierigen, stinkenden Gossentroll und dir."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 410
  IF ~~ THEN REPLY #67468 /* ~"Ich meinte damit, er sieht nicht aus wie ein Tiefling."~ */ GOTO 405
  IF ~~ THEN REPLY #67469 /* ~"Ich meinte damit, du siehst nicht gerade aus wie ein menschliches Wesen."~ */ GOTO 406
  IF ~~ THEN REPLY #67470 /* ~"Ich meinte nur, daß ihr euch nicht ähnlich seht."~ */ GOTO 407
  IF ~~ THEN REPLY #67471 /* ~"Laß gut sein. Ich habe noch ein paar Fragen."~ */ GOTO 477
  IF ~~ THEN REPLY #67472 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 405 // from: 404.1 409.1
  SAY #67473 /* ~"Ne, sieht er *nicht*... und wenn de nur irgendwas über Tieflinge wüßtest, außer das, was dir vielleicht irgendso'n dämlich grinsender Stockbewohner auf der Straße erzählt hat, wüßteste auch, daß keiner von uns Tieflingen aussieht wie der andere, verstehste?" Sie schüttelt den Kopf. "Ist  völlig hoffnungslos mit dir, das steht fest."~ */
  IF ~~ THEN REPLY #67474 /* ~"Ich habe das doch nicht als *Beleidigung* gemeint. Ihr seht so völlig verschieden aus. Ich meine, Pharod ist... so... eben *Pharod*, und du eben nicht."~ */ GOTO 407
  IF ~~ THEN REPLY #67475 /* ~"Laß gut sein. Ich habe noch ein paar Fragen."~ */ GOTO 477
  IF ~~ THEN REPLY #67476 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 406 // from: 404.2 409.2
  SAY #67477 /* ~"Also das ist ja wirklich stark, weißte! Du stolperst hier rum und siehst aus wie 'ne einzige Stichwunde auf zwei Beinen, und dann haste die Stirn, so'n Gewäsch zu reden, von wegen wie ein *menschliches Wesen* aussehen soll? Meinetwegen kannste in deiner eigenen Scheiße ertrinken!"~ */
  IF ~~ THEN REPLY #67478 /* ~"Ich habe das doch nicht als *Beleidigung* gemeint. Ihr seht so völlig verschieden aus. Ich meine, Pharod ist... so... eben *Pharod*, und du eben nicht."~ */ GOTO 407
  IF ~~ THEN REPLY #67479 /* ~"Laß gut sein. Ich habe noch ein paar Fragen."~ */ GOTO 477
  IF ~~ THEN REPLY #67480 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 407 // from: 404.3 405.0 406.0 409.3
  SAY #67481 /* ~"So, und was könnte dich wohl darauf gebracht haben, hä? Mein Haar? Meine Haut? Mir fällt sonst nichts ein..." Annah schlägt sich leicht vor die Stirn und grinst sarkastisch. "Ah, vielleicht war's der *Schweif*? Ja, das muß es gewesen sein! Du bist ja soviel cleverer als ich, weißte, eine richtige Leuchte."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67482 /* ~"Ich meinte bloß, daß es schwer ist, irgendeine Ähnlichkeit festzustellen zwischen diesem häßlichen, buckligen, gierigen, stinkenden Gossentroll und dir."~ */ GOTO 410
  IF ~~ THEN REPLY #67483 /* ~"Was zum Teufel ist dein Problem?! Ich mache  eine ganz einfache Bemerkung, und du bohrst und bohrst darin herum wie mit einem Dolch."~ */ GOTO 408
  IF ~~ THEN REPLY #67484 /* ~"Laß gut sein. Ich habe noch ein paar Fragen."~ */ GOTO 477
  IF ~~ THEN REPLY #67485 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 408 // from: 407.1
  SAY #67486 /* ~"Dolch bleibt Dolch, weißte."~ */
  IF ~~ THEN REPLY #67487 /* ~"Alles, was ich gesagt habe, ist, daß du und Pharod euch überhaupt nicht ähnlich seht. Ihr habt nicht viel gemeinsam."~ */ GOTO 410
END

IF ~~ THEN BEGIN 409 // from:
  SAY #67488 /* ~"Nee, nu komm mir nicht mit diesem Vergiß-es-und-Schwamm-drüber-Gewäsch! Was haste mit dem blöden Spruch eben gemeint, hä?!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67489 /* ~"Ich meinte bloß, daß es schwer ist, irgendeine Ähnlichkeit festzustellen zwischen diesem häßlichen, buckligen, gierigen, stinkenden Gossentroll und dir."~ */ GOTO 410
  IF ~~ THEN REPLY #67490 /* ~"Ich meinte damit, er sieht nicht aus wie ein Tiefling."~ */ GOTO 405
  IF ~~ THEN REPLY #67491 /* ~"Ich meinte damit, du siehst nicht gerade aus wie ein menschliches Wesen."~ */ GOTO 406
  IF ~~ THEN REPLY #67492 /* ~"Ich meinte nur, daß ihr euch nicht ähnlich seht."~ */ GOTO 407
END

IF ~~ THEN BEGIN 410 // from: 404.0 407.0 408.0 409.0
  SAY #67493 /* ~Annah wird dunkelrot im Gesicht. "So, ist das *so*? Und woran siehst du das?"~ */
  IF ~~ THEN REPLY #67494 /* ~Wahrheit: "Naja, hast du dich schon mal *angesehen*? Abgesehen von deiner erhabenen Haltung bist du selbstbewußt, klug und anmutig. Und noch dazu siehst du phantastisch aus: dieses dichte, feuerrote Haar, diese blitzenden grünen Augen, dieses markante Profil."~ */ GOTO 412
  IF ~~ THEN REPLY #67495 /* ~Lüge: "Naja, hast du dich schon mal *angesehen*? Abgesehen von deiner erhabenen Haltung bist du selbstbewußt, klug und anmutig. Und noch dazu siehst du phantastisch aus: dieses dichte, feuerrote Haar, diese blitzenden grünen Augen, dieses markante Profil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_3","GLOBALLaw",-1)
~ GOTO 412
  IF ~~ THEN REPLY #67496 /* ~Wahrheit: "Na, sieh dich doch mal an! Du bist ein mindestens doppelt so gieriger Leichendieb wie Pharod, und du hast so einen komischen Stock-Gestank um dich herum, der meine Augen zum Tränen bringt, und dann dieser dreckige, Rattenschwanz, der dir aus dem Hintern wächst..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.2
  SAY #67497 /* ~Annahs Gesicht verzerrt sich zu einer Grimasse, ihre Augen funkeln böse, und sie faucht: "Du solltest ein bißchen *aufpassen*, was du sagst, weißte. Beim nächsten Mal sorge ich vielleicht dafür, daß du ins Totenbuch kommst, statt dich rauszuholen."~ */
  IF ~~ THEN REPLY #67498 /* ~"Kannst du gerne versuchen, *Kleine*, aber ich werde es sein, der deine Leiche plündert, nicht umgekehrt."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #67499 /* ~"Stoß nur weiter Drohungen aus, wenn du dich dadurch stark fühlst. Inzwischen hätte ich noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67500 /* ~"Schon gut. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 412 // from: 410.0 410.1
  SAY #67501 /* ~Annah starrt dich nur an.~ */
  IF ~~ THEN REPLY #67502 /* ~"Das ist alles, was ich gemeint habe, als ich sagte, du und Pharod seht euch nicht ähnlich."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #67503 /* ~Annah nickt und starrt dich weiter an. Sie blinzelt nicht einmal.~ */
  IF ~~ THEN REPLY #67504 /* ~"Hörst du mir überhaupt zu?"~ */ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY #67505 /* ~Annah beugt sich plötzlich zu dir rüber, beißt dich heftig in den Hals und zischt dabei leise. Statt sich wieder zurückzuziehen, preßt sie sich eng an dich und flüstert dir ins Ohr. "Na, wir wär's mit uns?" Ihr Schweif fängt an, langsam hin und her zu peitschen, doch sein Rhythmus ist eher hypnotisierend als ärgerlich.~ */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #67506 /* ~Du fühlst, wie Annahs Herz schneller in ihrer Brust schlägt, und wie ihre Wangen sich röten. Dir wird auf einmal bewußt, wie weich und zart Annahs Haut ist. "Ich will dir was sagen, aber du darfst mich nicht verarschen."~ */
  IF ~~ THEN REPLY #67507 /* ~"Okay..."~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #67508 /* ~"Weißt du, wie gut du *riechst*? Oh Mann, es macht mich so verrückt, verrückter als einen von den Chaoten." Sie schnüffelt an deiner Wange entlang und haucht leidenschaftlich. "Ich sehe, wie du mich ansiehst, und es *gefällt* mir. Du hast hungrige *Augen*, weißte. Es macht mich ganz heiß."~ */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #67509 /* ~"Ich will dich beißen, ganz sanft, um den Hals..." Sie knabbert an deinem Hals, ohne die Haut zu verletzen, und bei jedem Flüstern fühlst du ihren Atem an deinem Ohr. Ihre Hand gleitet deinen Nacken hinauf, packt zu, und du fühlst, wie sich ihre Nägel in deine Haut graben. "Ich will dir mit den Nägeln über den Nacken fahren und dich zwingen, mich zu küssen."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 731
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67512 /* ~Halt sie fest und hör ihr zu...~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.1
  SAY #67511 /* ~"Weißt du, daß ich deinen Geruch auf fünfzig Schritt *rieche*, diesen Geruch von Fermaldehüt, der von dir wegströmt, wie bei einem von diesen Staubies. Wenn du dich 'n bißchen saubermachen würdest, wärste 'n echter Hit." Ihre Augen blitzen. "Ich würd es so leidenschaftlich mit dir machen, daß es dich aus den Latschen haut." Sie tritt einen Schritt zurück und schlägt leicht mit dem Schweif gegen dein Bein. Dann sieht sie dich scharf an. "Also... willste mich?"~ */
  IF ~~ THEN REPLY #67514 /* ~Greif sie dir und beiß sie wieder.~ */ GOTO 419
  IF ~~ THEN REPLY #67515 /* ~"Ja... ja, ich will dich."~ */ GOTO 422
  IF ~~ THEN REPLY #67516 /* ~"Annah, laß uns mit dem Blödsinn aufhören, okay?"~ */ GOTO 423
END

IF ~~ THEN BEGIN 419 // from: 418.0
  SAY #67513 /* ~Du greifst dir Annah, und bevor sie sich dir entwinden kann, beißt du sie leicht in den Hals. Als du mit den Zähnen ihre Haut berührst, zischt Annah laut, benutzt ihre Krallen wie eine Katze und reißt sich von dir los. "Ich hab nur *Spaß* mit dir gemacht, du pockennarbiger Vampir! L-l-laß los!" Trotz ihrer Proteste ist ihr Gesicht gerötet, und sie atmet schwer. "Und paß bloß auf, was du mit deinen Pranken tust!" Sie verschränkt die Arme. "Ich werd schon ganz rot!"~ */
  IF ~~ THEN REPLY #67517 /* ~Lüge: "Wo liegt das Problem? Beißen ist bei uns eine übliche Begrüßung."~ */ GOTO 420
  IF ~~ THEN REPLY #67518 /* ~"Wenn du *mich* beißt, dann beiß ich *dich*. Wenn's dir nicht gefällt, dann TU es nicht selbst."~ */ GOTO 421
  IF ~~ THEN REPLY #67519 /* ~"Also das reicht jetzt... Ich hab noch ein paar Fragen an dich."~ */ GOTO 477
  IF ~~ THEN REPLY #67520 /* ~"Das reicht; laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #67521 /* ~"Ja, *klar*, das glaub ich dir aufs Wort." Annahs Atem wird langsam ruhiger. "Betatsch mich nie wieder, klar?!"~ */
  IF ~~ THEN REPLY #67522 /* ~"Also das reicht jetzt... Ich hab noch ein paar Fragen an dich."~ */ GOTO 477
  IF ~~ THEN REPLY #67523 /* ~"Das reicht; laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #67524 /* ~"Ich tu, was *ich* will, OKAY?" Annah grinst höhnisch; sie sieht noch immer etwas rot aus. "Betatsch mich nie wieder, klar?!"~ */
  IF ~~ THEN REPLY #67525 /* ~"Also das reicht jetzt... Ich hab noch ein paar Fragen an dich."~ */ GOTO 477
  IF ~~ THEN REPLY #67526 /* ~"Das reicht; laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from: 418.1
  SAY #67527 /* ~"Dann stehen deine Chancen schlechter, als du denkst, weißte." Annah grinst höhnisch; sie sieht noch immer leicht errötet aus. "Ich hab doch nur *Spaß* gemacht, du pockennarbiger Vampir. *So* gut riechste gar nicht, damit du's weißt."~ */
  IF ~~ THEN REPLY #67528 /* ~"Also das reicht jetzt... Ich hab noch ein paar Fragen an dich."~ */ GOTO 477
  IF ~~ THEN REPLY #67529 /* ~"Das reicht; laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 423 // from: 418.2
  SAY #67530 /* ~"Oh, nur keine Angst." Annah grinst höhnisch; sie ist noch immer leicht rot im Gesicht. "Ich hab doch nur *Spaß* gemacht, du pockennarbiger Vampir. *So* gut riechste gar nicht, damit du's weißt."~ */
  IF ~~ THEN REPLY #67531 /* ~"Also das reicht jetzt... Ich hab noch ein paar Fragen an dich."~ */ GOTO 477
  IF ~~ THEN REPLY #67532 /* ~"Das reicht; laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 424 // from: 403.1
  SAY #67533 /* ~"Lebt schon länger im Dorf als ich. Ist vor Ewigkeiten hergekommen, vielleicht hat er den Ort sogar *entdeckt*, wie einige aus dem Dorf sagen." Annah runzelt die Stirn. "Pharod ist gerissen, weißte. Schaut mehr auf den Pfennig als die meisten, und ihm hat's nie an Klimper gefehlt."~ */
  IF ~  Global("Pharod_Annah_Story","GLOBAL",0)
~ THEN REPLY #67534 /* ~"Hat er die ganze Zeit nach dieser Bronzekugel gesucht?"~ */ GOTO 425
  IF ~  Global("Pharod_Annah_Story","GLOBAL",1)
~ THEN REPLY #67535 /* ~"Hat er die ganze Zeit nach dieser Bronzekugel gesucht?"~ */ GOTO 426
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67536 /* ~"Er ließ nicht viel von seinem Reichtum erahnen, als ich ihn besucht habe. Wahrscheinlich schaut er noch mehr auf den Pfennig, als du meinst."~ */ GOTO 429
  IF ~~ THEN REPLY #67537 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67538 /* ~"Ich verstehe. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #67539 /* ~"Kann schon sein." Annah zuckt erneut die Schultern. "Ich weiß nicht, wieso er so scharf drauf war, das Ding zu kriegen. Ich hab's sofort gerochen, als du's ihm gebracht hast." Sie rümpft die Nase. "Roch nach fauler Sahnesoße. Trotzdem... muß wohl für ihn ziemlich wertvoll gewesen sein, bei dem Drama, das er drum gemacht hat - fast ein Dutzend Sammler sind ins Totenbuch gekommen beim Versuch, es zu besorgen."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #67540 /* ~"Ich glaube, er hat danach gesucht, weil er dachte, die Kugel würde ihm das Leben retten."~ */ DO ~SetGlobal("Pharod_Annah_Story","GLOBAL",1)
AddexperienceParty(2500)
~ GOTO 427
  IF ~~ THEN REPLY #67541 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67542 /* ~"Ich verstehe. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from: 424.1
  SAY #67543 /* ~"Wenn es stimmt, was du sagst, dann muß es wohl so sein." Annah zuckt erneut mit den Achseln. "Es gibt wohl keine Erklärung für Pharods Dummheit. Ein Schmuckstück wird dich kaum vor deinem Schicksal retten. Wenn die Flecken auf deiner Seele erst richtig schwarz sind, kannste waschen, wie du willst, die gehen nicht mehr weg." Sie hält inne. "Aber wenn er glaubte, das Ding könnte ihn retten, war vielleicht *wirklich* was dran... oder zumindest war das Ding 'ne Menge Klimper wert."~ */
  IF ~~ THEN REPLY #67544 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67545 /* ~"Ich verstehe. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #67546 /* ~Sie blinzelt. "Was meinst du damit?"~ */
  IF ~~ THEN REPLY #67547 /* ~"Pharod hat kein gutes Leben geführt, soweit ich weiß. Er war mal 'Herrscher in einem der oberen Bezirke. Offenbar hat er seine Stellung ausgenutzt, um zu lügen und zu betrügen, und anderen dabei zu schaden. Er trieb es so arg, daß ihm bei seinem Tod die Hölle sicher war. Er glaubte, die Bronzekugel könne ihn irgendwie retten. Er glaubte so sehr daran, daß er Titel, Reichtum und Stellung wegwarf, bei dem Versuch, sie zu finden."~ */ JOURNAL #67548 /* ~Ich hab' Annah erzählt, was ich von Übelwind im Stock erfahren habe. Sie schien nichts über Pharods Vergangenheit gewußt zu haben und war erstaunt über das, was ich ihr erzählt habe.~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #67549 /* ~"Wirklich?" Sie schweigt einen Augenblick und schüttelt dann den Kopf. "Es gibt wohl keine Erklärung für Pharods Dummheit. Ein Schmuckstück wird dich kaum vor deinem Schicksal retten. Wenn die Flecken auf deiner Seele erst richtig schwarz sind, kannste waschen, wie du willst, die gehen nicht mehr weg." Sie hält inne. "Aber wenn er glaubte, das Ding könnte ihn retten, war vielleicht *wirklich* was dran... oder zumindest war das Ding 'ne Menge Klimper wert."~ */
  IF ~~ THEN REPLY #67550 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67551 /* ~"Ich verstehe. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from: 424.2
  SAY #67552 /* ~"Nee, er zeigt's nicht, aber er hamstert wie ein Wilder. Er mag nur nicht, wenn andere in seinen Sachen rumwühlen, darum hält er sie versteckt."~ */
  IF ~~ THEN REPLY #67553 /* ~"Er versteckt also seine Wertsachen?"~ */ GOTO 395
END

IF ~~ THEN BEGIN 430 // from: 187.14 477.14
  SAY #67554 /* ~Annah runzelt die Stirn. "Sie meinte *gar nichts*, okay? Unsinniges Weibergeschwätz, nichts weiter."~ */
  IF ~~ THEN REPLY #67555 /* ~"Bist du sicher?"~ */ GOTO 431
  IF ~~ THEN REPLY #67556 /* ~"Na, schon gut. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67557 /* ~"Dann vergiß es. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #67558 /* ~"Es hatte NICHTS zu bedeuten. Wenn du nicht weißt, was sie meinte, woher soll ich's wissen!?"~ */
  IF ~~ THEN REPLY #67559 /* ~"Wenn du drüber reden willst, ich hör dir -"~ */ GOTO 432
  IF ~~ THEN REPLY #67560 /* ~"Na, schon gut. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67561 /* ~"Dann vergiß es. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #67562 /* ~"Ich..." Annah senkt kurz den Blick. "Ich weiß wirklich nicht, wieso ich mit dir unterwegs bin! Keine Ahnung, wieso ich mit dir ging, um Ravel zu suchen!" Sie runzelt die Stirn, doch offenbar mehr aus Verwunderung als aus Ärger. "Es macht keinen *Sinn*, weißte, und das gefällt mir nicht."~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Ravel_Torment","GLOBAL",1)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #67563 /* ~"Ich..." Annah holt tief Luft. "Ich glaube, ich *empfinde* etwas für dich. Es fühlt sich komisch an, weißte... Ich glaub, ich hab noch nie *irgend jemand* gemocht. Aber bei dir..." Annah zuckt halbherzig mit den Achseln, ohne dich dabei anzusehen. "Ich weiß nicht, wieso, aber du hast irgendwie was, keine Ahnung, was es ist, ich meine - die meiste Zeit bist du ziemlich *blöd*, du läufst, als ob deine Hüfte kaputt ist, du bist ungeschickt, und du riechst wie 'n Zombie, und doch...", sie seufzt, "hab ich dich *gern*."~ */
  IF ~~ THEN REPLY #67565 /* ~"Annah, wieso hast du nie was gesagt? Wir hätten das schon vor langem klär-"~ */ GOTO 437
  IF ~~ THEN REPLY #67566 /* ~"Annah, ich hab dich wirklich gern... aber nicht auf die Art, verstehst du?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.1
  SAY #67564 /* ~Annah runzelt die Stirn und starrt zu Boden. "Ja, vielleicht ist das 'n verdammtes *Glück*. Wenn de Gefühle für andere hast, wirste bloß verwundet, wo's nicht mehr heilt."~ */
  IF ~~ THEN REPLY #67567 /* ~"Annah, wieso hast du nie was gesagt? Wir hätten das schon vor langem klär-"~ */ GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #67568 /* ~"Es ist, weil ich glaub, du bist *verdammt*." Annah sieht dir unvermittelt in die Augen. "Ich glaub du gehst in Ketten, aber du weißt es noch nicht. Deshalb hab ich... Gefühle für dich, und ich fürchte auch um dich... und das bringt mich *um*, weißte. Ich will nicht, daß dir was passiert, aber ich weiß nicht, wie ich's verhindern soll. Deshalb... zieh ich mit dir."~ */
  IF ~~ THEN REPLY #67569 /* ~"Ich weiß es zu schätzen, daß du mir beistehst, Annah."~ */ GOTO 436
  IF ~~ THEN REPLY #67570 /* ~"Ich glaube, ich bin wirklich verdammt. Aber hör zu, ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67571 /* ~"Ich verstehe. Also, jetzt ist aber Schluß damit. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 436 // from: 435.0 437.2
  SAY #67572 /* ~"Ja... also dann..." Sie ist einen Moment still und zuckt dann die Schultern. "Na, egal."~ */
  IF ~~ THEN REPLY #67573 /* ~"Hör zu, ich hätte noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67574 /* ~"Ist gut, Annah. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 437 // from: 433.0
  SAY #67575 /* ~"Es ist, weil ich denke, du bist *verdammt*." Annah sieht dir unvermittelt in die Augen. "Ich glaub, du gehst in Ketten, aber du weißt es noch nicht. Deshalb hab ich... *Gefühle* für dich, und ich fürchte auch um dich... und das bringt mich *um*, weißte. Ich will nicht, daß dir was passiert, aber ich weiß nicht, wie ich's verhindern soll!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67576 /* ~Küß sie.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67577 /* ~Küß sie.~ */ GOTO 444
  IF ~  Global("Annah_Kissing","GLOBAL",1)
~ THEN REPLY #67696 /* ~"Ich weiß es zu schätzen, daß du mir beistehst, Annah."~ */ GOTO 436
END

IF ~~ THEN BEGIN 438 // from: 187.13 477.13
  SAY #67578 /* ~Annah faucht: "He, jetzt komm mir nicht mit dem Gewäsch, okay? Wenn's dir Spaß macht, ein Scheusal zu knutschen, dann war dieser Kuß, mit der Hexe wohl der *sicherste* Weg dahin." Sie spuckt. "Und nu hör auf, mit deiner Knochenschüssel zu klappern - ich will kein Wort mehr davon hören, verstehste."~ */
  IF ~~ THEN REPLY #67579 /* ~"Na, schon gut. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67580 /* ~"Dann vergiß es. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 439 // from:
  SAY #67581 /* ~Annah runzelt die Stirn und nickt dann. "Ja. War richtig von dir, die Hexe nicht zu küssen, weißte."~ */
  IF ~~ THEN REPLY #67582 /* ~"Ich habe sie nicht geküßt, weil ich dich küssen wollte."~ */ GOTO 440
  IF ~~ THEN REPLY #67583 /* ~"Na, schon gut. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67584 /* ~"Dann vergiß es. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67585 /* ~"Hä? Was?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67586 /* ~Küß sie.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67587 /* ~Küß sie.~ */ GOTO 444
  IF ~~ THEN REPLY #67588 /* ~"Schon gut. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67589 /* ~"Vergiß es. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 441 // from: 187.12 477.12
  SAY #67590 /* ~Annah verdreht die Augen. "Ach so, du küßt die gemeinste, häßlichste Hexe aller Ebenen, aber meine Lippen willste nicht berühren? Also echt, alles was du jetzt sagst, kann es nur besser machen!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67591 /* ~Küß sie.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67592 /* ~Küß sie.~ */ GOTO 444
  IF ~~ THEN REPLY #67594 /* ~"Na, schon gut. Ich wollte dich noch etwas anderes fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67595 /* ~"Dann vergiß es. Laß uns weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 442 // from: 437.0 440.0 441.0
  SAY #67596 /* ~Du greifst mit deiner freien Hand um ihren Nacken und siehst, wie sich Annahs Mine versteinert, als du sie zu dir heranziehst und auf den Mund küßt.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #67597 /* ~Zuerst ist es, als würdest du eine Wand küssen, dann fängt sie allmählich an, deinen Kuß zu erwidern, zuerst zögernd, dann selbstbewußter. Ihre Zähne beißen leicht in deine Oberlippe. Du hörst sie schnurren, und ihr Schweif schlängelt sich um dein Bein und *preßt* es. Bei jedem ihrer Bisse spürst du gleichzeitig dieses Pressen.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 732
END

IF ~~ THEN BEGIN 444 // from: 437.1 440.1 441.1
  SAY #67598 /* ~Du greifst mit deiner freien Hand um ihren Nacken und siehst, wie sich Annahs Mine versteinert, als du sie zu dir heranziehst und auf den Mund küßt.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67599 /* ~Zuerst ist es, als würdest du eine Wand küssen, dann fängt sie allmählich an, deinen Kuß zu erwidern, zuerst zögernd, dann selbstbewußter. Ihre scharfen Zähne beißen leicht in deine Oberlippe. Du hörst sie schnurren, und ihr Schweif schlängelt sich um dein Bein und *preßt* es. Bei jedem ihrer Bisse spürst du gleichzeitig dieses Pressen.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67601 /* ~Als ihr euch küßt, spürst du auf einmal, daß Annahs Haut warm wird - sie strahlt Wärme ab, wie glühende Kohlen. Du weichst zurück, während Annahs Zähne dich ein letztes Mal beißen, und sie sieht dich erst verwirrt, dann ärgerlich an. "Was ist denn, hä? Ich bin wohl nicht besonders gut, was?"~ */
  IF ~~ THEN REPLY #67602 /* ~"Nein, es ist deine Haut. Warum wirst du auf einmal so warm?"~ */ DO ~SetGlobal("Annah_Kissing","GLOBAL",1)
PermanentStatChange("Annah",RESISTFIRE,RAISE,5)
PermanentStatChange("Annah",RESISTMAGICFIRE,RAISE,5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67603 /* ~"Was?" Annah runzelt die Stirn und sieht an sich herunter; du siehst kleine Rauchwolken unter ihrem Wams hervorkommen. "Das ist Scheusalblut..." Sie zieht eine Augenbraue hoch. "Aber *das* ist mir noch nie passiert."~ */
  IF ~~ THEN REPLY #67604 /* ~"Was? Hat dich noch nie jemand geküßt?"~ */ GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #67605 /* ~Sie zuckt die Schultern. "Hat nie einer *gewagt*. Und selbst wenn's einer gewagt hätte, wär's wahrscheinlich nicht so gewesen."~ */
  IF ~~ THEN REPLY #67606 /* ~"Das nehme ich als Kompliment."~ */ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #67607 /* ~"Also... was is?" Annah sieht sich um, und ihr Schweif peitscht planlos hin und her. "Gehen wir nun weiter oder was? Wir haben keine Zeit, hier rumzustehen und zu quatschen, weißte."~ */
  IF ~~ THEN REPLY #67608 /* ~"Also, *ich* bin noch nicht damit fertig, dich zu küssen. Komm her."~ */ GOTO 450
  IF ~~ THEN REPLY #67692 /* ~"Okay, gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #67609 /* ~Sie macht erschrocken einen Schritt zurück. "Nee, wer weiß, was als nächstes passiert - vielleicht steht mein Körper dann in *Flammen* oder so! Halt dich und deine Lippen von mir fern!"~ */
  IF ~~ THEN REPLY #67610 /* ~"Ist gut - für DIESMAL. Gehen wir weiter."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 460 even though they appear after this state */
~  InParty("Annah")
InParty("Grace")
Global("Annah_Accuse_Grace","GLOBAL",0)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 451 // from:
  SAY #67611 /* ~Annah sieht dich an, als du sie ansprichst, und runzelt die Stirn. "Und? Was willst du *jetzt*?"~ */
  IF ~~ THEN REPLY #67612 /* ~"Bist du in Ordnung?"~ */ GOTO 452
  IF ~~ THEN REPLY #67613 /* ~"Ich wollte dir ein paar Fragen stellen."~ */ GOTO 453
  IF ~~ THEN REPLY #67614 /* ~"Nichts, Annah. Ich wollte nur sehen, ob du mir noch folgst."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #67615 /* ~Annah sieht dich nur zornig an.~ */
  IF ~~ THEN REPLY #67616 /* ~"Ich wollte dir noch ein paar Fragen stellen."~ */ GOTO 453
  IF ~~ THEN REPLY #67617 /* ~"Macht nichts. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 451.1 452.0
  SAY #67618 /* ~"Warum fragst du dann nicht dieses arrogante Sukkubus-Flittchen?" Annahs Augen verengen sich zu schmalen Schlitzen. "Warum *reisen* wir überhaupt mit ihr? Wir BRAUCHEN sie nicht, kein Stück."~ */
  IF ~~ THEN REPLY #67619 /* ~"Ich habe dafür keine *Zeit*, Annah. Hör auf mit deinem Gespuke, und mach dich nützlich."~ */ GOTO 455
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67620 /* ~"Annah, ich brauche jede Hilfe, die ich kriegen kann... einschließlich deiner."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67621 /* ~"Annah, *bitte*. Du bist mir sehr wichtig, und ich brauche deine Hilfe."~ */ GOTO 458
  IF ~~ THEN REPLY #67622 /* ~"Annah, ich will dich bei mir haben - nicht sie. Wenn sie dich stört, dann schicke ich sie fort."~ */ GOTO 454
  IF ~~ THEN REPLY #67623 /* ~"Ich habe keine *Zeit*, mich darüber mit dir zu streiten, Annah. Wenn es dir nicht paßt, daß Grace dabei ist, dann geh."~ */ GOTO 455
  IF ~~ THEN REPLY #67624 /* ~"Darüber sprechen wir später. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.3
  SAY #67625 /* ~"Dann tu's doch!" Annah sieht dich böse an. "Wetten, du tust es nicht? Wenn du's doch tust, dann sind wir besser dran. Wenn nicht, dann haben wir dasselbe Gespräch noch mal, verlaß dich drauf."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67626 /* ~"Annah, ich brauche jede Hilfe, die ich kriegen kann... einschließlich deiner."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67627 /* ~"Annah, *bitte*. Du bist mir sehr wichtig, und ich brauche deine Hilfe."~ */ GOTO 458
  IF ~~ THEN REPLY #67629 /* ~"Ich habe keine *Zeit*, mich darüber mit dir zu streiten, Annah. Wenn es dir nicht paßt, daß Grace dabei ist, dann geh."~ */ GOTO 455
  IF ~~ THEN REPLY #67630 /* ~"Darüber sprechen wir später. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 453.0 453.4 454.2 457.1 457.2 460.2 461.3 462.1 463.4
  SAY #67631 /* ~"Wer *BRAUCHT* dich dann überhaupt?!" Annah nimmt ihren Rucksack, leert ihn vor dir aus und spuckt darauf. "Sprich NIE mehr mit mir, oder ich mach Hackfleisch aus dir, du dreckiges, blödes, vernarbtes, stinkendes WRACK. Ich hoffe, du VERROTTEST!" ~ */
  IF ~~ THEN REPLY #67632 /* ~"Dann geh. Ich will dich nie wieder sehen."~ */ DO ~LeaveParty()
DropInventory()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1 454.0
  SAY #67633 /* ~"Du bist ein schlappschwänziger *Lügner*, sonst nichts. Du schleifst mich doch nur mit dir rum, weil du keine Ahnung hast, was du sonst mit mir tun sollst, so sieht's doch aus! Warum hast du mich nicht einfach zum Teufel gejagt, als Pharod mich zu deinem Aufpasser ernannt hat?!" ~ */
  IF ~~ THEN REPLY #67634 /* ~"Weil..."~ */ GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #67635 /* ~"Glaubst du, mir macht es SPASS, mit dir rumzuziehen?! GLAUBST du das?! Scheinbar schon..." Annah verzerrt ihr Gesicht vor Abscheu. "Dein Leben, wenn man das überhaupt so NENNEN kann, ist ein einziger MISTHAUFEN, genau wie deine *Haut*. Alles zerfetzt und verkrustet. Du glaubst wohl, dir steht eine große Begegnung mit dem Schicksal bevor, aber da bist du schief gewickelt! Du bist nichts als ein *Mistkerl*!"~ */
  IF ~~ THEN REPLY #67636 /* ~"Annah, ich habe dich nicht gebeten zu gehen, weil ich nicht *wollte*, daß du gehst."~ */ GOTO 458
  IF ~~ THEN REPLY #67637 /* ~"Du wirst *nie mehr* in diesem Ton mit mir sprechen. Du hältst jetzt den Mund und tust, was dir gesagt wird, oder dein Leben wird genau so ein Misthaufen wie meines."~ */ GOTO 455
  IF ~~ THEN REPLY #67638 /* ~"Ich habe keine *Zeit*, mich darüber mit dir zu streiten, Annah. Wenn es dir nicht paßt, daß Grace dabei ist, dann geh."~ */ GOTO 455
END

IF ~~ THEN BEGIN 458 // from: 453.2 454.1 457.0
  SAY #67639 /* ~"Oh, natürlich, und WARUM bitte schön? Das ist ja nett. Hast Mitleid mit mir, ja? Glaubst, ich halte dich auf? Na los doch, sag's schon!"~ */
  IF ~~ THEN REPLY #67640 /* ~"Ich bemitleide dich *nicht*, und du hältst mich *nicht* auf. Du bist schnell, du bist fähig, und ich brauche wirklich jede Hilfe, die ich kriegen kann."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse_Grace","GLOBAL",1)
~ GOTO 459
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #67641 /* ~Annah runzelt die Stirn, ihr Schweif schlägt vor und zurück. "Okay... also... *glaub mir*: Ich nehm' sie aus, wenn sie uns dumm kommt, verlaß dich drauf." Sie funkelt dich an. "Und glaub' bloß nicht, ich bleibe, weil *du* es willst. Ich helf' nur aus, sonst nichts."~ */
  IF ~~ THEN REPLY #67642 /* ~"Fein. Ich hätte ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67643 /* ~"Machen wir, daß wir weiter kommen."~ */ EXIT
END

IF WEIGHT #5 ~  !InParty("Annah")
GlobalGT("Annah","GLOBAL",0)
Global("Annah_Talked_Grace","GLOBAL",5)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 460 // from:
  SAY #67644 /* ~"Was willst DU denn?!"~ */
  IF ~  InParty("Grace")
~ THEN REPLY #67645 /* ~"Annah, ich brauche deine Hilfe. Willst du mich noch einmal begleiten?"~ */ GOTO 461
  IF ~  !InParty("Grace")
~ THEN REPLY #67646 /* ~"Annah, ich brauche deine Hilfe. Willst du mich noch einmal begleiten?"~ */ GOTO 469
  IF ~~ THEN REPLY #67647 /* ~"Wenn du uns nicht mehr begleitest, dann will ich meine Sachen zurück. Sofort."~ */ GOTO 455
  IF ~~ THEN REPLY #67914 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #67648 /* ~"Nicht ums VERRECKEN! Nicht mit einer wie *ihr*, niemals! Von mir aus könnt ihr euch beide in den Abgrund werfen und dort VERROTTEN, ist mir egal!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67649 /* ~"Annah, ich möchte *dich* als Begleiterin haben. Kommst du noch mal mit mir?"~ */ GOTO 462
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67650 /* ~Wahrheit: "Annah, Grace bedeutet mir nicht so viel wie du. Kommst du bitte wieder mit uns mit?"~ */ GOTO 463
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67651 /* ~Lüge: "Annah, Grace bedeutet mir nicht so viel wie du. Kommst du bitte wieder mit uns mit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_5","GLOBALLaw",-1)
~ GOTO 463
  IF ~~ THEN REPLY #67652 /* ~"Wenn du uns nicht mehr begleitest, dann will ich meine Sachen zurück. Sofort."~ */ GOTO 455
  IF ~~ THEN REPLY #67915 /* ~"Nichts, schon gut. Leb wohl."~ */ GOTO 468
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #67653 /* ~"Nein, ich zieh' nicht mit einer seelenfressenden Schlampe wir ihr rum, vergiß es! Sie muß *verschwinden*, ist das klar?"~ */
  IF ~~ THEN REPLY #67654 /* ~"In Ordnung, ich denk drüber nach, ob ich sie wegschicke. Wir reden noch mal."~ */ EXIT
  IF ~~ THEN REPLY #67655 /* ~"Wenn du uns nicht mehr begleitest, dann will ich meine Sachen zurück. Sofort."~ */ GOTO 455
  IF ~~ THEN REPLY #67916 /* ~"Tut mir leid, daß du so denkst... schon gut. Leb wohl."~ */ GOTO 468
END

IF ~~ THEN BEGIN 463 // from: 461.1 461.2
  SAY #67656 /* ~"Wenn sie dir nicht so viel bedeutet, dann muß *sie* gefälligst gehen. Ich zieh' nicht mit einer seelenfressenden Schlampe wir ihr rum, vergiß es!"~ */
  IF ~~ THEN REPLY #67657 /* ~Wahrheit: "Annah, schau, sie *bedeutet* mir nichts. Ich *brauche* dich als Begleiterin, aber ich brauche auch kurzfristig ihre Hilfe. Danach werden es nur noch du und ich sein."~ */ GOTO 464
  IF ~~ THEN REPLY #67658 /* ~Lüge: "Annah, schau, sie *bedeutet* mir nichts. Ich *brauche* dich als Begleiterin, aber ich brauche auch kurzfristig ihre Hilfe. Danach werden es nur noch du und ich sein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_6","GLOBALLaw",-1)
~ GOTO 464
  IF ~~ THEN REPLY #67659 /* ~"Dann gehst du eben mit NIEMANDEM mit. Entweder laß ich dich hier zurück, und du kannst wieder dein erbärmliches Leben als Leichenfledderer führen, oder du kommst mit uns." ~ */ GOTO 465
  IF ~~ THEN REPLY #67660 /* ~"In Ordnung, ich denk drüber nach, ob ich sie wegschicke. Wir reden noch mal."~ */ EXIT
  IF ~~ THEN REPLY #67661 /* ~"Wenn du uns nicht mehr begleitest, dann will ich meine Sachen zurück. Sofort."~ */ GOTO 455
  IF ~~ THEN REPLY #67917 /* ~"Tut mir leid, daß du so denkst... schon gut. Leb wohl."~ */ GOTO 468
END

IF ~~ THEN BEGIN 464 // from: 463.0 463.1
  SAY #67662 /* ~Annah starrt dich kurz an und versucht, deine Gedanken zu lesen. "Du erzählst mir besser die *Wahrheit*, hörst du?"~ */
  IF ~~ THEN REPLY #67663 /* ~"Ich schon. Gehen wir."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 463.2
  SAY #67664 /* ~Annah sieht dich an. Während du sprichst, weicht ihr Zorn, und sie legt die Stirn in Falten. "Also... vielleicht... vielleicht tue ich's. Bisher ist es mir gut ergangen!"~ */
  IF ~~ THEN REPLY #67665 /* ~"Ganz toll. Geh wieder deine Totenbüchler plündern, und eines Tages endest du vielleicht wie Pharod, völlig irre, krank und *schwach*. ODER du kommst mit uns. Du hast die Wahl."~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #67666 /* ~Annah starrt dich an, ihr Schweif rührt sich nicht.~ */
  IF ~~ THEN REPLY #67667 /* ~"Entscheide dich. Jetzt gleich."~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #67668 /* ~"Ich... Ich komme mit dir, jawohl." ~ */
  IF ~~ THEN REPLY #67669 /* ~"Gut. Also los jetzt."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 461.4 462.2 463.5
  SAY #67670 /* ~"Gut, dann schmeiß dich doch wieder in die Arme dieser geflügelten Hure!" Annah spuckt. "Mit euch beiden will ich nichts mehr zu tun haben, niemals!"~ */
  IF ~~ THEN REPLY #67671 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 469 // from: 460.1
  SAY #67672 /* ~Annahs Augen werden zu schmalen Schlitzen. "Wo ist denn diese arrogante Sukkubus-Zicke? Sie wollte dir an die Gurgel gehen und dich in den Abgrund stürzen, oder?"~ */
  IF ~~ THEN REPLY #67673 /* ~"Sie reist nicht mehr mit uns, Annah. Ich möchte, daß du dich uns wieder anschließt."~ */ GOTO 470
  IF ~~ THEN REPLY #67674 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY #67675 /* ~"Woher soll ich wissen, daß es dabei BLEIBT, häh? Was ist, wenn sie wiederkommt, oder..." Annah sieht frustriert aus. "...wenn noch jemand wie SIE daher kommt, häh? Geht's dann wieder von vorne los?"~ */
  IF ~~ THEN REPLY #67676 /* ~"Annah, das wird nicht mehr vorkommen."~ */ GOTO 471
  IF ~~ THEN REPLY #67677 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY #67678 /* ~"Okay... nun... sei besser vorsichtig, ja? Ich begleite dich wieder."~ */
  IF ~~ THEN REPLY #67679 /* ~"Also gut. Laß uns weiterziehen."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 187.6 477.6
  SAY #67697 /* ~Annahs Schweif hört bei deinen Worten auf zu schlagen, dann funkelt sie dich an. "Ist das dein Ernst? Das ist nicht der Moment zum Scherzen, okay."~ */
  IF ~~ THEN REPLY #67698 /* ~"Nein, Annah. Ich fand seine Leiche im Hof der Kranken Winde. Weißt du vielleicht, wer ihn getötet haben könnte?"~ */ GOTO 476
END

IF ~~ THEN BEGIN 473 // from: 187.7 477.7
  SAY #67699 /* ~"Ich..." Sie schüttelt den Kopf. "Ich *weiß nicht*. Niemand, der halbwegs bei Verstand ist, würde das tun. Pharod hat 'nen langen Schatten, weißte. Komm ihm in die Quere, und du kriegst Prügel, verstehste."~ */
  IF ~~ THEN REPLY #67700 /* ~"Du mußt nicht weiter mit mir ziehen, Annah. Wenn du im Begrabenen Dorf bleiben mußt, dann -"~ */ GOTO 474
  IF ~~ THEN REPLY #67701 /* ~"Also gut. Ich habe noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67702 /* ~"Schon gut. Dann gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY #67704 /* ~"Nee..." Annah unterbricht dich. "Ich muß nicht im Dorf bleiben - und ich hab schon überlegt, was ich wohl mach, wenn Pharod ins Totenbuch kommt, weißte." Sie schnaubt verächtlich. "Naja, wahrscheinlich steigt er gerade bei irgend jemand in der Hölle ein."~ */
  IF ~~ THEN REPLY #67705 /* ~"Aber... er ist doch dein Vater. Bist du n-"~ */ DO ~SetGlobal("Annah_Discovers_Pharod","GLOBAL",3)
~ GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.0
  SAY #67706 /* ~"Er war nicht mein *richtiger* Pa, verstehste." Ihre Augen werden hart. "Er war geizig und er war dumm und selbstsüchtig und ein Schwächling." Sie runzelt die Stirn. "Und jetzt isser tot. Und das ist alles."~ */
  IF ~~ THEN REPLY #67707 /* ~"Also gut. Ich wollte dich noch etwas fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67708 /* ~"Dann laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from: 472.0
  SAY #67709 /* ~"Nee, das nicht, aber ich *muß* seine Leiche sehen. Pharod ist gerissen. Vielleicht spielt er dir nur 'nen Streich..."~ */
  IF ~~ THEN REPLY #67710 /* ~"Ich werde dich gleich hinführen. Aber zuerst habe ich noch ein paar Fragen..."~ */ GOTO 477
  IF ~~ THEN REPLY #67711 /* ~"Dann zeig ich ihn dir jetzt."~ */ EXIT
END

IF ~~ THEN BEGIN 477 // from: 316.1 317.1 318.0 319.1 320.1 321.0 322.5 324.0 326.3 345.0 347.0 348.5 362.0 363.4 371.0 372.1 373.1 374.1 376.0 377.1 378.1 379.1 380.0 387.0 389.1 390.0 393.1 394.1 401.0 402.0 403.2 404.4 405.1 406.1 407.2 411.1 419.2 420.0 421.0 422.0 423.0 424.3 425.1 426.0 428.0 430.1 431.1 435.1 436.0 438.0 439.1 440.2 441.2 459.0 473.1 475.0 476.0
  SAY #67712 /* ~"Was?"~ */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67714 /* ~"Wo ist denn nun der Ort, wo du mich damals gefunden hast?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67716 /* ~"Wo ist denn nun der Ort, wo du mich damals gefunden hast?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67717 /* ~"Wo ist denn nun der Ort, wo du mich damals gefunden hast?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67719 /* ~"Ich wollte dich fragen, wie du mich damals gefunden hast..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67720 /* ~"Annah,... habe ich dich nicht im Stock getroffen, bevor ich Pharod fand?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67721 /* ~"Annah, hast du bei meiner Leiche irgend etwas gefunden, bevor du sie in die Leichenhalle gebracht hast?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67722 /* ~"Annah, ich habe Pharods Leiche im Hof der Kranken Winde gefunden."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67723 /* ~"Annah, weißt du, wie Pharod gestorben ist?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67724 /* ~"Erzähl mir etwas über Pharod."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67725 /* ~"Annah, als Pharod den Tribut zurückgeben wollte, den er meiner Leiche abgenommen hatte, verschwand er für eine Weile - doch er hat den Hof der Kranken Winde nie verlassen. Weißt du, wohin er verschwand?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67726 /* ~"Annah, kannst du mich Diebesfähigkeiten lehren?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68260 /* ~"Annah, kannst du mich Diebesfähigkeiten lehren?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67727 /* ~"Ich möchte, daß du etwas weißt: Als ich Ravel im Irrgang küßte, da..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67728 /* ~"Ich möchte, daß du etwas weißt: Als ich Ravel im Irrgang küßte, da..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67729 /* ~"Im Irrgang sagte Ravel, daß dich etwas quält... was meinte sie damit?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67730 /* ~"Hast du schon mal von einer Nachthexe namens 'Ravel Rätselschön' gehört?"~ */ GOTO 316
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67731 /* ~"Weißt du, wo ich ein 'Stück' von Ravel finde?"~ */ GOTO 319
  IF ~~ THEN REPLY #67732 /* ~"Nichts, Annah. Ich wollte nur sehen, ob du mir noch folgst."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Fortress_Annah","GLOBAL",3)
~ THEN BEGIN 478 // from:
  SAY #68184 /* ~Du wendest deine Macht an, ein Luftstrom setzt ein, und Annah rührt sich. Sie hebt langsam den Kopf und schüttelt ihn verwirrt.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68185 /* ~"Ich habe meine Sterblichkeit gefunden, Annah. Leider mag sie mich nicht besonders. Ich brauche deine Hilfe."~ */ DO ~SetGlobal("Fortress_Annah","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 479
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68326 /* ~ANNAH. BIST DU IN ORDNUNG?~ */ GOTO 481
END

IF ~~ THEN BEGIN 479 // from: 478.0
  SAY #68186 /* ~Annahs Augen glitzern stählern, dann nickt sie. "Ich werde zu dir halten."~ [ANA205A] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68187 /* ~"Dann tun wir's..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68205 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68206 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68207 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68208 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68241 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68431 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68432 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68443 /* ~"Dann tun wir's..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 480 // from: 187.11 477.11
  SAY #68258 /* ~Annah runzelt die Stirn und schüttelt den Kopf. "Nein, nicht jetzt. Es sind Feinde in der Nähe!"~ */
  IF ~~ THEN REPLY #68259 /* ~"Schon gut..."~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.1
  SAY #68327 /* ~Annahs Augen werden größer, als sie deine Stimme hört. "W.. was ist mit dir *passiert*? Deine Stimme... Sie klingt wie ein Echo."~ */
  IF ~~ THEN REPLY #68328 /* ~ICH HABE MICH VERÄNDERT. ICH BIN NUN ETWAS ANDERES, UND ICH KANN NICHT MEHR LANGE HIERBLEIBEN. ICH BRINGE DICH ZURÜCK NACH SIGIL, WENN DU MÖCHTEST.~ */ GOTO 482
END

IF ~~ THEN BEGIN 482 // from: 481.0
  SAY #68329 /* ~"W.." Annah öffnet den Mund, dann hält sie inne. "W... wo gehst *du* hin?"~ */
  IF ~~ THEN REPLY #68330 /* ~VIELE VERBRECHEN WURDEN BEGANGEN, ALS ICH UND MEINE STERBLICHKEIT GETRENNT WURDEN. DIESE VERBRECHEN HABEN IHREN... PREIS. ES GIBT EINEN ORT AUF DEN UNTEREN EBENEN, DER MEINESGLEICHEN VORBEHALTEN IST. ES IST... EINE ART BESTRAFUNG.~ */ GOTO 483
END

IF ~~ THEN BEGIN 483 // from: 482.0
  SAY #68331 /* ~"Aber ich... ich *will* nicht, daß du gehst."~ */
  IF ~~ THEN REPLY #68332 /* ~ICH WERDE NIE VERGESSEN, WIE VIEL DU FÜR MICH ZU OPFERN BEREIT WARST, ANNAH. ~ */ GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY #68333 /* ~Annah nickt. Sie sieht aus, als wolle sie etwas sagen, aber dann verstummt sie. Doch der unausgesprochene Gedanke bleibt in ihrem Kopf. ~ */
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68334 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68335 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68336 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68337 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68338 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68339 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68493 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68494 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68495 /* ~ICH BRAUCHE DEINE WORTE NICHT, UM DEIN HERZ ZU KENNEN, ANNAH. LEB WOHL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #9 ~  Global("Fortress_Annah","GLOBAL",4)
~ THEN BEGIN 485 // from:
  SAY #68410 /* ~Annahs Augen glitzern stählern, dann nickt sie. "Ich werde zu dir stehen."~ */
  IF ~~ THEN REPLY #68411 /* ~"Dann tun wir's..."~ */ EXIT
END
