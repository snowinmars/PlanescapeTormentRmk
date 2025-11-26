// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~Der dünne Mann mit scharfen Gesichtszügen stürmt auf dich zu und will dich etwas fragen. "Äh, hallo, hallo! So warte doch! Kommst du zufällig gerade vom Schneider?"~ */
  IF ~~ THEN REPLY #28027 /* ~"Ich..."~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~Ignoriere ihn und geh weiter.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~Der Mann fällt dir ins Wort: "Ich frage, weil ich den Mann anscheinend, äh, beleidigt habe. Ich hatte den hitzköpfigen Narr gebeten, mir ein Kostüm zu schneidern, aber er hat mich aus dem Laden geworfen und will jetzt nicht mehr mit mir reden."~ */
  IF ~~ THEN REPLY #28029 /* ~"Nun, wa..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~Der Mann ballt plötzlich seine Fäuste und hält sie drohend gen Himmel. "Was hab' ich bloß getan, um so behandelt zu werden? Nichts, gar nichts! Ich war sein *Kunde*! Dieser griesgrämige Clown hat mich zu *bedienen*!"~ */
  IF ~~ THEN REPLY #28030 /* ~"Was wolltest du von mir?"~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~"Für so was hab' ich keine Zeit. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~"Könnte ich dich bitten, für mich in den Laden zu gehen und mein Kostüm abzuholen? Ich muß zu einem Maskenball und habe keine Zeit mehr, zu einem anderen Schneider zu gehen."~ */
  IF ~~ THEN REPLY #28032 /* ~"Ja. Ich hol's gleich."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Ich habe mich bereit erklärt, Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abzuholen.~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~"Ich mach's, aber nicht umsonst."~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~"Warum holst du es nicht selbst ab?"~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~"Nein, ich hab' für so was keine Zeit. Leb wohl."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~"Hm?" Er konzentriert sich wieder auf dich. "Oh! Ja, du..."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~"Warte! So warte! Bitte!"~ */
  IF ~~ THEN REPLY #28050 /* ~Laß ihn ausreden.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~Geh.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~"Oh, ausgezeichnet, Herr! Es ist das Gebäude da, gleich da vorn..." Er zeigt auf ein langes, niedriges Gebäude nördlich von ihm. "Ich danke Euch, Herr!"~ */
  IF ~~ THEN REPLY #28052 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~Er grinst höhnisch und rollt mit den Augen. "Dieser Schweinehund! Ich hab' ihn irgendwie 'beleidigt', den eingebildeten Fatzken! Er hat mir verboten, in seinen Laden zu kommen und weigert sich, mit mir zu sprechen. So eine Frechheit!"~ */
  IF ~~ THEN REPLY #28053 /* ~"Ich hol's sofort."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Ich habe mich bereit erklärt, Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abzuholen.~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~"Ich hol dir dein Kostüm, aber nicht umsonst."~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~"Für so was hab' ich keine Zeit. Leb wohl."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~"*Was*? Meine Güte, du holst doch bloß ein *Kostüm* ab! Das geht doch ruckzuck! Also echt, für so einen kleinen Gefallen kannst du doch nichts verlangen!"~ */
  IF ~~ THEN REPLY #28056 /* ~"Gut. Dann hol' ich's gleich."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Ich habe mich bereit erklärt, Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abzuholen.~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~"Dann ist es reine Zeitverschwendung für mich. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~"Warte..." Er seufzt laut. "Also gut, zehn Kupfermünzen! Für einen Gefallen, der eine Sache von Minuten ist! Zufrieden...?"~ */
  IF ~~ THEN REPLY #28058 /* ~"Ja. Gib mir das Geld, und ich hol dir das Kostüm."~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~"Euer Ton gefällt mir nicht, mein 'Herr'. Langsam wird mir klar, warum der Schneider dich so unsympathisch gefunden hat. Leb wohl."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~Er gibt dir die Münzen und murmelt dabei vor sich hin. "Es ist das lange Gebäude da, gleich da vorn..." Er zeigt auf ein langes, niedriges Gebäude. "...nordöstlich vom Tor zum Unteren Bezirk. Beeil dich bitte."~ */
  IF ~~ THEN REPLY #28061 /* ~"Dann geh ich's mal abholen. Bis gleich."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Ich habe mich bereit erklärt, Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abzuholen.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~"Mich beeilen? Wozu? Oh, und danke für's Trinkgeld. Lebt wohl... 'mein Herr'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~"Mich beeilen? Wozu? Oh, und danke für's Trinkgeld. Lebt wohl... 'mein Herr'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~Er ruft dir hinterher: "Du... du narbenübersätes Stück Fleisch! Du faltiger, verwahrloster Drecksack! Komm zurück, du Ratte! Niemand springt so mit Malmaner um! Komm sofort zurück, bevor ich die Wache rufe!"~ */
  IF ~~ THEN REPLY #28064 /* ~"Gut... hier hast du dein Geld zurück."~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~Wirf ihm die zehn Kupfermünzen hin.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~Ignoriere ihn und geh weg.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~Er ruft dir hinterher: "Du... du narbenübersätes Stück Fleisch! Du faltiger, verwahrloster Drecksack! Komm zurück, du Ratte! Niemand springt so mit Malmaner um! Komm sofort zurück, bevor ich die Wache rufe!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~"Hm!" Er nimmt dir die Münzen aus der Hand, steckt sie in seinen Geldbeutel und stapft davon.~ */
  IF ~~ THEN REPLY #28067 /* ~Geh.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~Der Mann starrt dich schockiert an. "Du... unverschämter..."~ */
  IF ~~ THEN REPLY #28068 /* ~"Beruhige dich, bevor sich deine Zunge überschlägt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~Ignoriere ihn und geh weg.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~"Dir zeig ich's! Wachen! Wachen!"~ */
  IF ~~ THEN REPLY #28070 /* ~Greif ihn an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~"So, so, Sigils freundlichster Bewohner..." In die Stimme des Mannes mischt sich bitterer Sarkasmus. "*Vielen* Dank für deine Hilfe. Oh... moment mal... du hast mir ja gar nicht geholfen, oder?!"~ */
  IF ~~ THEN REPLY #28073 /* ~"Ich hab's mir anders überlegt. Ich hol dir dein Kostüm."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Ich habe mich bereit erklärt, Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abzuholen.~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~"Hör mal... Ich hol dir dein Kostüm, aber nicht umsonst."~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~"Leb wohl."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~Der Mann sieht dich erwartungsvoll an. "Und? Und? Hast du das Kostüm von Gonkalves bekommen?"~ */
  IF ~~ THEN REPLY #28077 /* ~"Nein, noch nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~"Na, dann hol's, Mann! Ich muß zu einem Maskenball!"~ */
  IF ~~ THEN REPLY #28078 /* ~"Ich komm wieder, wenn ich's hab'. Leb wohl."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~Der Mann sieht dich erwartungsvoll an. "Und? Und? Hast du das Kostüm von Gonkalves bekommen?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~"Nein, noch nicht. Er sagt, daß du ihm dreißig Kupfermünzen für die Arbeit schuldest."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~Lüge: "Nein, noch nicht. Er sagt, du schuldest ihm, äh, fünfzig Kupfermünzen für die Arbeit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~"Nein, noch nicht... Aber wie wär's mit dieser Staubmenschenrobe?"~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~Lüge: "Äh... ja. Hier ist die Staubmenschenrobe. Ich meine, das Kostüm."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~"Nein, noch nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~"*WAS*?! Hm! Na gut, na gut... nimm das Geld hier und hol mir das verdammte Kostüm!" Er wirft dir dreißig Kupfermünzen hin.~ */
  IF ~~ THEN REPLY #28087 /* ~"Ich komm wieder, wenn ich's hab'. Mach's gut."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~Er ruft dir hinterher: "Du... du narbenübersätes Stück Fleisch! Du faltiger, verwahrloster Drecksack! Komm zurück, du Ratte! Niemand springt so mit Malmaner um! Komm sofort zurück, bevor ich die Wache rufe!"~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~"Gut... hier hast du dein Geld zurück."~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~Wirf ihm die dreißig Kupfermünzen hin.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~"Gut... hier hast du dein Geld zurück."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~Wirf ihm die fünfzig Kupfermünzen hin.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~"Gut... hier hast du dein Geld zurück."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~Wirf ihm die fünfzig Kupfermünzen hin.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~"Gut... hier hast du dein Geld zurück."~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~Wirf ihm die achtzig Kupfermünzen hin.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~Ignoriere ihn und geh weg.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~Er ruft dir hinterher: "Du... du narbenübersätes Stück Fleisch! Du faltiger, verwahrloster Drecksack! Komm zurück, du Ratte! Niemand springt so mit Malmaner um! Komm sofort zurück, bevor ich die Wache rufe!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~Der Mann sieht dich verblüfft an. "Unmöglich! Lächerlich! Wir hatten dreißig Kupfermünzen ausgemacht, als ich ihm den Auftrag gegeben hab'!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~Lüge: "Er war außer sich, Malmaner. Du hattest ihn beleidigt, und er hat deshalb den Preis erhöht."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~Lüge: "Nun ja, äh, er war außer sich und hat den Preis erhöht."~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~"Pardon, ich hab' mich versprochen. Es waren nur dreißig Kupfermünzen."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~Er mustert dich mißtrauisch und lenkt dann ein: "Gut! Nimm das hier! Hol mir nur dieses verdammte Kostüm!" Er wirft dir fünfzig Kupfermünzen hin.~ */
  IF ~~ THEN REPLY #28102 /* ~"Ich komm wieder, wenn ich's hab'. Mach's gut."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~Der Mann sieht dich erwartungsvoll an. "Und? Und? Hast du das Kostüm von Gonkalves bekommen?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~"Ja, da hast du's. Es hat mich dreißig Kupfermünzen gekostet.."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Ich habe Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abgeholt und es ihm zurückgebracht.~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~Lüge: "Ja, da hast du's. Es hat mich fünfzig Kupfermünzen gekostet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~"Ja, da hast du's."~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Ich habe Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abgeholt und es ihm zurückgebracht.~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~"Also schön! Nimm das hier!" Er wirft dir dreißig Kupfermünzen hin. "Jetzt muß ich aber los..."~ */
  IF ~~ THEN REPLY #28108 /* ~"Moment... Gonkalves hat gesagt, daß bereits viele Leute als Staubmenschen zum Maskenball gehen würden."~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~Er mustert dich mißtrauisch mit geschürzten Lippen.~ */
  IF ~~ THEN REPLY #28110 /* ~"Pardon, ich hab' mich versprochen. Es waren nur dreißig Kupfermünzen."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~Der Mann sieht dich verblüfft an. "Unmöglich! Lächerlich! Wir hatten dreißig Kupfermünzen ausgemacht, als ich ihm den Auftrag gegeben hab'!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~Lüge: "Er war außer sich, Malmaner. Du hattest ihn beleidigt, und er hat deshalb den Preis erhöht."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Ich habe Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abgeholt und es ihm zurückgebracht.~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~Lüge: "Nun ja, äh, er war außer sich und hat den Preis erhöht."~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~"Pardon, ich hab' mich versprochen. Es waren nur dreißig Kupfermünzen."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Ich habe Malmaners Kostüm für den Maskenball von Gonkalves, dem Schneider, abgeholt und es ihm zurückgebracht.~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~Er mustert dich mißtrauisch und lenkt dann ein. "Also schön! Nimm das hier!" Er wirft dir fünfzig Kupfermünzen hin. "Jetzt muß ich aber los..."~ */
  IF ~~ THEN REPLY #28114 /* ~"Moment... Gonkalves hat gesagt, daß bereits viele Leute als Staubmenschen zum Maskenball gehen würden."~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~Er mustert dich mißtrauisch mit geschürzten Lippen.~ */
  IF ~~ THEN REPLY #28116 /* ~"Pardon, ich hab' mich versprochen. Es waren nur dreißig Kupfermünzen."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~"Na endlich!" Er reißt dir das Kostüm aus der Hand. "Jetzt muß ich aber los..."~ */
  IF ~~ THEN REPLY #28117 /* ~"Moment... Gonkalves hat gesagt, daß bereits viele Leute als Staubmenschen zum Maskenball gehen würden."~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~Er wendet sich angewidert ab. "Pfui! Was für ein Lumpen... ekelhaft! Dreckiges, mottenzerfressenes Zeug... und so ein grober Stoff! Keine zehn Pferde bringen mich dazu, so einen Müll anzuziehen."~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~"Nun, er sagt, du schuldest ihm dreißig Kupfermünzen für das echte Kostüm."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~Lüge: "Nun ja, er sagt, du schuldest ihm, äh, fünfzig Kupfermünzen für das echte Kostüm."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~"Nun ja, ich hab' das echte Kostüm noch nicht bekommen."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~Er wendet sich angewidert ab. "Pfui! Was für ein Lumpen... ekelhaft! Dreckiges, mottenzerfressenes Zeug... und so ein grober Stoff! Keine zehn Pferde bringen mich dazu, so einen Müll anzuziehen." Er sieht dich mißtrauisch an. "Was *ist* das eigentlich?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~"Nichts, vergiß es. Er sagt, du schuldest ihm dreißig Kupfermünzen für das echte Kostüm."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~Lüge: "Nichts, vergiß es. Er sagt, daß du ihm für das echte Kostüm fünfzig Kupfermünzen schuldest."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~"Ähm, ich habe das echte Kostüm noch nicht abgeholt."~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~"So? Mist! Ich will da nicht in so 'nem *stinknormalen* Kostüm hingehen... hmmm..."~ */
  IF ~~ THEN REPLY #28125 /* ~"Ich könnte mal nachsehen, ob er ein anderes fertig hat."~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~"Ich könnte versuchen, dir ein anderes Kostüm zu besorgen... aber das kostet dich was."~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~"Dein Problem. Leb wohl."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~"Hm!" Er stampft auf und murmelt sauer vor sich hin.~ */
  IF ~~ THEN REPLY #28128 /* ~Geh.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~"Keine schlechte Idee, keine schlechte Idee! Guck doch mal schnell nach, ob der dicke Trottel nicht ein anderes Kostüm für mich hat, ja?"
~ */
  IF ~~ THEN REPLY #28129 /* ~"Ich hol dir ein anderes Kostüm."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~Ich habe mich bereit erklärt, ein zweites Kostüm für Malmaner von Gonkalves, dem Schneider, abzuholen.~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~"Okay... aber das kostet dich was."~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~"Vergiß es. Ich hab's mir anders überlegt. Leb wohl."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~Er rollt mit den Augen und sieht dich höhnisch an. "Hätt ich mir denken können! Hier, du *Halsabschneider*. Das wird ja wohl genug sein?" Er gibt dir zwanzig Kupfermünzen.~ */
  IF ~~ THEN REPLY #28132 /* ~"Das ist genug. Ich hol dir ein anderes Kostüm."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~Ich habe mich bereit erklärt, ein zweites Kostüm für Malmaner von Gonkalves, dem Schneider, abzuholen.~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~"Ach weißt du, ich hab's mir anders überlegt. Leb wohl."~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~Der Mann sieht dich erwartungsvoll an. "Und? Und? Hast du ein ein anderes Kostüm von ihm bekommen?"~ */
  IF ~~ THEN REPLY #28134 /* ~"Nein, noch nicht."~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~Der Mann sieht dich erwartungsvoll an. "Und? Und? Hast du ein ein anderes Kostüm von ihm bekommen?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~"Nein, noch nicht. Er hat ein anderes, aber er will fünfzig Kupfermünzen dafür."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~Lüge: "Nein, noch nicht. Er hat noch ein anderes, aber dafür will er, äh, achtzig Kupfermünzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~"Nein, noch nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~Er rauft sich die Haare und schreit: "Oh, wie die Mächte es doch lieben, dem armen guten Malmaner übel mitzuspielen! Dieser verdammte Maskenball und dieser dreimalverdammte Schneider!" Er wirft dir fünfzig Kupfermünzen hin. "Geh!"~ */
  IF ~~ THEN REPLY #28138 /* ~"Ich komm wieder, wenn ich's hab'. Mach's gut."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~"Das ist.. das ist... unfaßbar! Völlig absurd! Was glaubt er, wer er ist?!" Er runzelt plötzlich die Stirn. "Wenn ich's mir recht überlege, dann klingt das doch ein bißchen *zu* krass, selbst für Gonkalves." Er beäugt dich mißtrauisch.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~Lüge: "Der Mann mag dich nicht besonders, Malmaner. Du bezahlst für die rüden Worte, die du ihm vorhin an den Kopf geworfen hast."~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~Lüge: "Naja, äh, er ist eben echt sauer auf dich."~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~"Pardon, ich hab' mich versprochen. Es waren nur fünfzig Kupfermünzen."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~Er sieht dich mißtrauisch an und lenkt dann ein: "Also gut! Nimm es! Da! Aber hol mir dieses andere Kostüm, und zwar schnell!" Er wirft dir achtzig Kupfermünzen hin.~ */
  IF ~~ THEN REPLY #28144 /* ~"Ich komm wieder, wenn ich's hab'. Mach's gut."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~"Hmmm... was für ein Kostüm? Oh, und danke für die Kupfermünzen... Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~Er mustert dich mißtrauisch mit geschürzten Lippen. Du bist sicher, daß er dir kein einziges Wort von dem glaubt, was du sagst.~ */
  IF ~~ THEN REPLY #28147 /* ~"Pardon, ich hab' mich versprochen. Es waren nur fünfzig Kupfermünzen."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~Der Mann sieht dich erwartungsvoll an. "Und? Und? Hast du das Kostüm von Gonkalves bekommen?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~"Ja, da hast du's. Es hat mich fünfzig Kupfermünzen gekostet."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Ich habe ein zweites Kostüm für Malmaner von Gonkalves, dem Schneider, abgeholt und es ihm gegeben.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~Lüge: "Ja, hier ist es. Hat mich achtzig Kupfermünzen gekostet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~"Ja, da hast du's."~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Ich habe ein zweites Kostüm für Malmaner von Gonkalves, dem Schneider, abgeholt und es ihm gegeben.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~Er gibt einen mürrischen Ton von sich, entreißt dir das Kostüm und drückt dir fünfzig Kupfermünzen in die Hand. "Jetzt muß ich aber los..."~ */
  IF ~~ THEN REPLY #28151 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~"Es wird aber auch Zeit!" Er reißt dir das Kostüm aus der Hand. "Jetzt muß ich aber los..."~ */
  IF ~~ THEN REPLY #28152 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~"Das ist.. das ist... unfaßbar! Völlig absurd! Was glaubt er, wer er ist?!" Er runzelt plötzlich die Stirn. "Wenn ich's mir recht überlege, dann klingt das doch ein bißchen *zu* krass, selbst für Gonkalves." Er beäugt dich mißtrauisch.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~Lüge: "Der Mann mag dich nicht besonders, Malmaner. Du bezahlst für die rüden Worte, die du ihm vorhin an den Kopf geworfen hast."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Ich habe ein zweites Kostüm für Malmaner von Gonkalves, dem Schneider, abgeholt und es ihm gegeben.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~Lüge: "Naja, äh, er ist eben echt sauer auf dich."~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~"Pardon, ich hab' mich versprochen. Es waren nur fünfzig Kupfermünzen."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Ich habe ein zweites Kostüm für Malmaner von Gonkalves, dem Schneider, abgeholt und es ihm gegeben.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~Er mustert dich mißtrauisch mit geschürzten Lippen.~ */
  IF ~~ THEN REPLY #28156 /* ~"Pardon, ich hab' mich versprochen. Es waren nur fünfzig Kupfermünzen."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~Er mustert dich mißtrauisch und lenkt dann ein. Er gibt einen mürrischen Ton von sich, entreißt dir das Kostüm und drückt dir achtzig Kupfermünzen in die Hand. "Jetzt muß ich aber los..."~ */
  IF ~~ THEN REPLY #28157 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END
