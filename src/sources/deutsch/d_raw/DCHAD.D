// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHAD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23954 /* ~Die Leiche dieses sandblonden Sammlers ist mit üblen Bißwunden übersät. Der Hals des toten Mannes windet sich immer noch, als ob er versucht, sich aus dem Rumpf herauszudrehen.~ */
  IF ~~ THEN REPLY #23967 /* ~"Das ist... interessant."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",3)
~ THEN BEGIN 1 // from:
  SAY #23968 /* ~Chads Leiche spricht mit heiserer Stimme: "Was willst du, Kumpel?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23969 /* ~"Wo, hast du gesagt, befindet sich diese Karaffe noch gleich?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23970 /* ~"Ich würd gern wissen, wo sich der Gegenstand befindet, von dem du gesprochen hast."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #23971 /* ~"Erzähl mir was über dich."~ */ GOTO 5
  IF ~~ THEN REPLY #23972 /* ~"Erzähl mir was über die anderen Sammler."~ */ GOTO 6
  IF ~~ THEN REPLY #23973 /* ~"Was kannst du mir über die Katakomben erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #23974 /* ~"Im Augenblick nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0 4.1 5.0 6.1 7.0 8.0 14.1
  SAY #23975 /* ~"Ach, komm schon, Kumpel." Er hält inne. "Was willst du?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23976 /* ~"Wo, hast du gesagt, befindet sich diese Karaffe noch gleich?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23977 /* ~"Ich würd gern wissen, wo sich der Gegenstand befindet, von dem du gesprochen hast."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #23978 /* ~"Erzähl mir was über dich."~ */ GOTO 5
  IF ~~ THEN REPLY #23979 /* ~"Erzähl mir was über die anderen Sammler."~ */ GOTO 6
  IF ~~ THEN REPLY #23980 /* ~"Was kannst du mir über die Katakomben erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #23981 /* ~"Im Augenblick nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0
  SAY #23982 /* ~"Du schleichst dich an den Totenbüchlern oder den Ratten vorbei zu den Untergegangenen Nationen. Wenn du da angekommen bist, gehst du den Hauptweg entlang. Du kommst an drei Türen auf der linken Seite vorbei. Du gehst unter einem Bogen hindurch und nimmst dann die erste Tür auf der linken Seite. Sie befindet sich im Bogen ganz nah an der Hintermauer. Ich kenn das Losungswort nicht... aber es wird dabei schon was für dich rausspringen. Hast du alles kapiert, Kumpel?"~ */
  IF ~~ THEN REPLY #23983 /* ~"Ich glaub schon. Ich hätte allerdings noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #23984 /* ~"Ich glaub schon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 14.0
  SAY #23985 /* ~"In Ordnung, Kumpel, ich sag's dir: Es gibt einen Grund dafür, warum die Untergegangenen Nationen so heißen. Es gibt eine magische Flasche, die immer gefüllt ist, eine Karaffe, die in den Katakomben der Untergegangenen Nationen versteckt ist. Wenn du die hast, hast du für alle Zeiten frisches Wasser."~ */
  IF ~~ THEN REPLY #23986 /* ~"In Ordnung. Wo ist sie?"~ */ GOTO 3
  IF ~~ THEN REPLY #23987 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #23988 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2
  SAY #23989 /* ~"Ich? Ich bin Chad. Ich war mal 'n Künstler, Kumpel. Geld, Ruhm, Ansehen, Frauen... und plötzlich war alles aus. Hab mich Pharod und seiner Truppe angeschlossen und bin zu einem der besten Katakomben-Spitzbuben in der Bande geworden. Ich konnte sogar etwas vor den Augen der Ghul-Königin klauen. Dann... dann bin ich anmaßend geworden, und ich hatte es auch auf eine der Steinhöhlen abgesehen - die für mich die *echten* Katakomben hier unten sind - und ich bin zu Vargouillenfutter geworden. Bin fast selbst zu einer Vargouille geworden. Nur dank meiner Willenskraft hab ich meinen Kopf nicht verloren. Gut, daß du vorbeigekommen bist."~ */
  IF ~~ THEN REPLY #23990 /* ~"Aha. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #23991 /* ~"Das war wirklich Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #23992 /* ~"Heh... wir sind ganz schön viele. Gris war der beste, nach mir natürlich."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #23993 /* ~"Gris ist auch tot."~ */ GOTO 7
  IF ~~ THEN REPLY #23994 /* ~"Dann hätte ich da noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #23995 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23996 /* ~"So?" Seine Stimme klingt erheblich heller. "Dann posaunt er wenigstens nicht überall rum, wieviel besser er war als ich."~ */
  IF ~~ THEN REPLY #23997 /* ~"Nein, wahrscheinlich nicht Beantworte mir doch noch ein paar Fragen, ja?"~ */ GOTO 2
  IF ~~ THEN REPLY #23998 /* ~"Da wär ich mir nicht so sicher. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.4
  SAY #23999 /* ~"Was kann ich dir über die Katakomben erzählen, Kumpel? Jede Menge Monster, und wenn du clever bist, verschwendest du hier unten nicht deine Zeit. Hol dir, was du brauchst, und dann geh wieder raus. An zu vielen von diesen Orten gibt es Fallen, und an zu vielen von ihnen gibt es Dinge, die du besser nicht siehst. Ich geb dir den Rat, abzuhauen, solange du es noch kannst."~ */
  IF ~~ THEN REPLY #24000 /* ~"Beantworte mir doch noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #24001 /* ~"Ich denk drüber nach."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #24002 /* ~Als du näherkommst, windet sich der Hals der Leiche immer noch. "Du hast immer noch nicht denjenigen gefunden, der mich kalt gemacht hat, oder Kumpel?" fragt die Leiche.~ */
  IF ~~ THEN REPLY #24003 /* ~"Noch nicht. Ich arbeite dran. Ich bräuchte erst noch ein paar Antworten."~ */ GOTO 10
  IF ~~ THEN REPLY #24004 /* ~"Noch nicht. Ich arbeite dran."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #24005 /* ~"Mach's kurz, Dussel! Ich weiß nicht, wie lange mein Hals dieser Anspannung noch standhalten kann..."~ */
  IF ~~ THEN REPLY #24006 /* ~"Was gibst du mir denn, wenn ich das tue."~ */ GOTO 11
  IF ~~ THEN REPLY #24007 /* ~"Erzähl mir was von dir."~ */ GOTO 12
  IF ~~ THEN REPLY #24008 /* ~"Erzähl mir was über diese Katakomben."~ */ GOTO 12
  IF ~~ THEN REPLY #24009 /* ~"Was sollte ich doch gleich für dich tun?"~ */ GOTO 13
  IF ~~ THEN REPLY #24010 /* ~"Schon gut, schon gut. Kein Grund, gleich in die Luft zu gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24011 /* ~"Ich hab' versprochen, dir zu sagen... wie du... pff... einen magischen Gegenstand finden kannst, der nützlich sein könnte..."~ */
  IF ~~ THEN REPLY #24012 /* ~"Gut, gut. Noch ein paar Antworten, bitte..."~ */ GOTO 10
  IF ~~ THEN REPLY #24013 /* ~"Ich bin dabei. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",1)
~ THEN BEGIN 12 // from: 10.1 10.2 17.1 17.2 17.3
  SAY #24014 /* ~"Schau... mein Kopf bricht gleich ab... Ich hab jetzt wirklich keine *Zeit*, mit dir zu reden... Frag mich... später."~ */
  IF ~  Global("Revenge_V","GLOBAL",1)
~ THEN REPLY #24015 /* ~"Was sollte ich doch gleich für dich tun?"~ */ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24016 /* ~"Was brauchst du von mir?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24017 /* ~"Was willst du denn überhaupt?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.3 12.0 12.1 12.2 17.0 17.4
  SAY #24018 /* ~"Hast du... diesen... Hals gesehn?" Der dehnt und zieht sich wie ein Gummiband. "Die verdammte Vargouille hat mich gebissen. Ich bin tot, und... ich muß meinen Kopf aufbehalten, wenn ich nicht... zu einem dieser verdammten... Dinger werden will." Er spricht mit großer Mühe. "Du mußt die Vargouillen auf diesem Weg töten... und zwar alle... wenn du mich davor bewahren willst."~ */
  IF ~~ THEN REPLY #24019 /* ~"Was gibst du mir dafür?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Chad_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #24020 /* ~"In Ordnung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Chad_1","GLOBALGood",1)
~ GOTO 15
END

IF WEIGHT #2 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #24021 /* ~Du stellst fest, daß Chads Genick jetzt besser aussieht... es tritt nicht mehr so hervor, als ob es sich vom Rumpf lösen will. "Danke, Kumpel... Jetzt weiß ich wenigstens, daß ich nicht bis in alle Ewigkeit eine Vargouille sein werde... Willst du jetzt deine Belohnung haben?"~ */
  IF ~~ THEN REPLY #24022 /* ~"Erzähl mir davon."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #24023 /* ~"Nein. Beantworte mir zuerst ein paar Fragen."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.0 13.1
  SAY #24024 /* ~"Dafür... geb ich dir... die Wegbeschreibung zu... einem mächtigen magischen Gegenstand... Der Anblick des Todes verrät mir... du könntest ihn gebrauchen..."~ */
  IF ~~ THEN REPLY #24025 /* ~"Was ist es?"~ */ GOTO 16
  IF ~~ THEN REPLY #24026 /* ~"Ich bin schon unterwegs."~ */ EXIT
  IF ~~ THEN REPLY #24027 /* ~"Ich werd mal drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #24028 /* ~"Find es und... dann sag ich's dir. Vorher nicht."~ */
  IF ~~ THEN REPLY #24029 /* ~"Gut. Ich bin schon unterwegs."~ */ EXIT
  IF ~~ THEN REPLY #24030 /* ~"Ich werd mal drüber nachdenken. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #24031 /* ~Die Leiche des sandblonden Sammlers ist mit üblen Bißwunden übersät. Der Hals des toten Mannes windet sich immer noch, als ob er versucht, sich aus dem Rumpf herauszudrehen. Er spricht unter Anstrengung: "Hey, Kumpel... Ich bin Chad... Brauch deine Hilfe..."~ */
  IF ~~ THEN REPLY #24032 /* ~"Was ist los mit dir?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #24033 /* ~"Was kannst du mir über diese Katakomben erzählen?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24034 /* ~"Erzähl mir was von dir."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24035 /* ~"Wo sind wir?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24036 /* ~"Nein. Leb wohl."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END
