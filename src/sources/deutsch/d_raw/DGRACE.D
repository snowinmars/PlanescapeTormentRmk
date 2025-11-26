// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~"Sei gegrüßt. Ich bin der puritanische Sukkubus vom Ort. Ich bin auch ein potentielles Mitglied deiner Gruppe... FALLS du mich willst."~ */
  IF ~~ THEN REPLY #2851 /* ~"Oh, klar NEHM ich dich, keine Frage. Heh-heh. Später dann zu dir, Tanar-Ri."~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~"Komm schon, Grace. Ich hab' keine Zeit für so ein Gelaber, also komm in die Gänge und steig bei uns ein."~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~Grace nickt. "Ja, natürlich."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~"Frag ihn, wer er ist."
~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~"Frag ihn, was er macht."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~"Bitte ihn, uns etwas über die Dame der Schmerzen zu erzählen."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~"Bitte ihn, uns etwas über Fell zu erzählen."~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~"Macht nichts. Dann gehen wir eben."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~"Er sagt, er sei ein 'Dabus.'" Grace hält inne. "Ich habe selten einen Dabus gesehen, der einen Namen hat... oder zumindest etwas, das an einen Namen erinnert. Scheint so, als würden sie lieber Symbole verwenden."~ */
  IF ~~ THEN REPLY #7022 /* ~"Kannst du ihm noch mehr Fragen stellen?"~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~"Er sagt, daß er sich seinen Pflichten widmet." Sie wendet sich an dich. "Sie verbringen die meiste Zeit damit, Teile der Stadt instand zu setzen oder abzureißen. Sie sind in vielerlei Hinsicht die "guten Geister" der Stadt."~ */
  IF ~~ THEN REPLY #7024 /* ~"Kannst du ihm noch mehr Fragen stellen?"~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~"Ich nehme an, eine eindeutige Antwort wäre zuviel verlangt gewesen."~ */
  IF ~~ THEN REPLY #7026 /* ~"Kannst du ihm noch mehr Fragen stellen?"~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~Grace runzelt die Stirn. "Ich bin nicht sicher, ob es ratsam ist, diese Frage zu stellen. Sie könnte den Dabus beleidigen, weil Fell kein Mitglied ihrer Gemeinschaft mehr ist..."~ */
  IF ~~ THEN REPLY #7028 /* ~"Kannst du es trotzdem fragen?"~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~"Genug der Vorrede, frag ihn einfach."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~"Kannst du ihm noch mehr Fragen stellen?"~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~"Dann vergiß es. Laß uns verschwinden."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~Grace nickt, als wolle sie dir ihre Verschwiegenheit bekunden. "Ich komme bald wieder zurück." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #7482 /* ~Folg der Hure...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~"Sie kann darüber nicht in Anwesenheit von Scheusalen sprechen. Ich würde schätzen, daß sie durch einen Vertrag gebunden wurde, was bedeutet, daß es sich um ein Projekt des Gesetzes handelt. Und da sie durch Magie daran gebunden wurde, ist der Ursprung wahrscheinlich bei den Baatezu zu suchen."~ */
  IF ~~ THEN REPLY #8000 /* ~"Das hört sich aber sehr fadenscheinig an. Hat sie recht, Kel'lera?"~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~"Interessant. Ich werd's mir merken. In der Zwischenzeit, Kel'lera, könntest du mir noch ein paar Fragen beantworten."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~"Sie kann darüber nicht in Anwesenheit von Scheusalen sprechen. Ich würde schätzen, daß sie durch einen Vertrag gebunden wurde, was bedeutet, daß es sich um ein Projekt des Gesetzes handelt. Und da sie durch Magie daran gebunden wurde, ist der Ursprung wahrscheinlich bei den Baatezu zu suchen."~ */
  IF ~~ THEN REPLY #8002 /* ~"Das hört sich aber sehr fadenscheinig an. Hat sie recht, Kel'lera?"~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~"Interessant. Ich werd's mir merken. In der Zwischenzeit, Kel'lera, könntest du mir noch ein paar Fragen beantworten."~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~"Ich verstehe."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~"Ich verstehe."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~Grace, die Gefallene, spricht gelassen. "Ilquix, ich stimme dir zu, daß meine Mutter nur zu gern hören würde, daß ich nach wie vor bei guter Gesundheit bin, daß meine Taten noch immer auf dem Pfad bleiben, den ich gewählt habe, und daß ich Reisebegleiter meiner eigenen Wahl habe. Wenn du wieder in den Abgrund zurückkehrst, wärst du vielleicht so nett, diese Nachricht für mich auszurichten? Ich bin sicher, sie würde jeden belohnen, der ihr solch ausgezeichnete Nachrichten von mir brächte." Sie lächelt sanft.~ */
  IF ~~ THEN REPLY #11274 /* ~"Das ist alles überaus faszinierend, aber ich hätte da noch ein paar andere Fragen..."~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~"Das reicht. Gehab dich wohl, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~Grace antwortet mit einem angedeuteten Knicks. "Deine liebenswürdigen Worte würden jedem das Herz erwärmen, da bin ich sicher, Ilquix. Und doch müssen wir daran denken, daß so viele Leute sowohl mehr als auch weniger sind, als sie erscheinen. Wär doch ne Schande, wirklich, wenn wir alle so schnell erkannt werden könnten - regelrecht enttäuschend."~ */
  IF ~~ THEN REPLY #11405 /* ~"Was genau meinst du, Grace?"~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~"Genug. Ich brauche Antworten auf ein paar Fragen, Ilquix."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~"Dieses Gespräch ist beendet. Gehab dich wohl, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~"Ich will nur sagen, daß überstürzte Worte später oft bereut werden - und daß viele Menschen Eigenschaften und sogar Tugenden besitzen, die man auf den ersten Blick nicht bei ihnen vermuten würde. Viele bilden sich zu schnell ein Urteil, und viele merken auch nicht, wenn sie sich getäuscht haben. Deshalb sollten wir gut über unsere Worte nachdenken, bevor sie mehr über uns enthüllen, als uns lieb ist."~ */
  IF ~~ THEN REPLY #11408 /* ~"Ich ... verstehe, Ilquix. Ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~"Gut gesprochen, Grace. Auf bald, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~Grace nickt. "Klar. Ich glaube, das ist eine großartige Idee."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~"Danke. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~"Danke. Annah? Könntest du's?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~"Danke. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~"Danke. Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~"Danke. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~"Danke. Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~"Danke. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~"Danke. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~"Danke, Grace. Leb wohl, Der um die Bäume trauert."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~Grace nickt. "Ja, natürlich."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~"Frag ihn, wer er ist."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~"Frag ihn, was das hier für ein Ort ist."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~"Er hat erwähnt, daß er mir schon mal begegnet ist... Weiß er, wie ich gestorben bin?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~"Frag ihn, ob er schon mal was von Ravel gehört hat."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~"Frag ihn, ob die Tätowierungen auf dem abgetrennten Arm von ihm sind."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~"Kann er mir was über die Tätowierungen auf meinem Körper erzählen?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~"Kann ich mal sehen, welche Tätowierungen verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~"Sein Name ist Fell." Grace schaut sich das Symbol kaum an, bevor sie zu dir spricht. "Das Symbol... das vom schwarzen Blitzstrahl zweigeteilte weiße Oval... es wird auch noch an anderen Orten eingraviert. Ich glaub, das weiße Oval symbolisiert Sigil, und der schwarze Blitzstrahl..." Grace verstummt. "Ich bin mir nicht sicher."~ */
  IF ~~ THEN REPLY #25284 /* ~"Hmmmm. Ich hätte noch eine andere Frage an ihn..."~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~Grace wartet geduldig darauf, daß die Symbole klar zu erkennen sind. "Das ist sein Studio. Hier graviert er anderen Leuten Tätowierungen in die Haut ein." Grace wendet sich dir zu und lächelt. Sie scheint sich in Fells Gegenwart wohl zu fühlen. "Fell ist ein in ganz Sigil bekannter Künstler. Die Haut anderer Leute dient ihm als Leinwand für seine Werke."~ */
  IF ~~ THEN REPLY #25286 /* ~"Kann ich mal sehen, welche Tätowierungen er machen kann?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~"Hmmm. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~"Nun, ich werd's mir merken. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~Grace betrachtet eingehend die Symbole, dann wirft sie dir einen skeptischen Blick zu. "Fell meint, daß du zum ersten Mal zu ihm kommst, aber auch nicht zum ersten Mal hier bist." Grace mustert dich mit ihren Blicken. "Vielleicht hat er dich schon mal gesehen, als du noch nicht du warst..." Ihr wird plötzlich klar, was sie da gesagt hat, und sie lacht auf. "Ich bitte um Entschuldigung... Ich hätte nie gedacht, daß ich jemanden mal mit so vielen "dus" anreden würde."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~"Weiß er, wer ich bin?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~Grace runzelt die Stirn, und sie reibt sich nachdenklich das Kinn. "Fell sagt, er kennt dich... und dann sagt er etwas Seltsames: Er *darf* deine Geschichte nicht erzählen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~"Er 'darf' es nicht? Wieso nicht?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~"'Darf' nicht? Warum nicht?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~"'Darf' nicht? Warum nicht?"~ */ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~"Es tut ihm leid, aber er darf nichts sagen." Grace streift deinen Blick. "Was er danach sagt, ist seltsam: Er sagt, er *'kann das Wesen eines Menschen nicht ändern*." Als Grace diese Worte wiederholt, spürst du einen schmerzhaften Druck in deinem Kopf... Es hämmert und hämmert bis du glaubst, daß dein Schädel platzt... Dann, als sie das letzte Wort ausspricht, verhallen die Hammerschläge.~ */
  IF ~~ THEN REPLY #25299 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~"Fell sagt, sie ist kein Mythos."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~"Weiß er, wo sie ist?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~Grace spricht mit ernsterer Stimme, als sie die Symbole entziffert. "Fell sagt, Ravel ist in einem der Irrgänge der Dame gefangengesetzt."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~"Irrgänge?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~"Irrgänge?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~"Irrgänge?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~"Kann er uns was über sie erzählen?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~Grace spricht mit ernsterer Stimme, als sie die Symbole entziffert. "Fell sagt, Ravels Wille war nicht der Wille der Dame, und deshalb wurde sie bestraft. Ravel wurde in einen der Irrgänge der Dame geschickt." Grace wendet sich dir zu. "Kennst du dich mit Irrgängen aus?"~ */
  IF ~~ THEN REPLY #25329 /* ~"Nicht wirklich. Wenn du's vielleicht erklären könntest..."~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~"Ja. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~"Ja. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~"Ja. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~"Ich kenn mich mit ihnen aus. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~"Ich kenn mich mit ihnen aus. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~"Ich kenn mich mit ihnen aus. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~"Ja. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~"Ja. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~"Ja. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~"Ja. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~"Ja. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~"Ja. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~"Ja. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~"Ja. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~Grace führt ihre beiden Hände zusammen, so daß sich die Daumen und anderen Finger berühren und einen groben Kreis bilden. "Die Dame soll die Macht haben, Teile von Sigil zu nehmen..." Du schaust überrascht zu, wie ein Abbild des kleinen Fingers von Grace sich von ihrer Hand löst, durch die Luft schwebt und dabei einen kleinen Kreis bildet. "...und einen Irrgang entstehen zu lassen."~ */
  IF ~~ THEN REPLY #25344 /* ~"Erzähl weiter..."~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~"Ich glaub, ich verstehe. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~"Ich glaub, ich verstehe. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~"Ich glaub, ich verstehe. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~"Ich hab' genug gehört. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~"Ich hab' genug gehört. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~"Ich hab' genug gehört. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~Der kleine geisterhafte Kreis schwebt durch die Luft und beginnt dann, sich langsam zu drehen. "In dem Teil von Sigil, den sie nimmt, ist man gefangen. Aus dem Irrgang kommt niemand mehr heraus. Es kann einem jederzeit passieren. Wenn man die Straße hinuntergeht, durch eine Tür geht..." Sie klatscht in die Hände. "...und dann bist du woanders." Innerhalb des geisterhaften Kreises kannst du plötzlich erkennen, wie sich etwas hin und her bewegt, so als ob jemand auf und ab geht.~ */
  IF ~~ THEN REPLY #25359 /* ~"Erzähl weiter..."~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~"Ich glaub, ich verstehe. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~"Ich glaub, ich verstehe. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~"Ich glaub, ich verstehe. Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~"Ich hab' genug gehört. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~"Ich hab' genug gehört. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~"Ich hab' genug gehört. Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~"Ich verstehe. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~Grace erzählt weiter, während sich dabei der winzige geisterhafte Irrgang in ihren Augen spiegelt. "Es heißt, daß es Tore gibt, die aus den Irrgängen herausführen, doch sie sind schwer zu finden. Vielleicht hat man sie dort gelassen, um dem Gefangenen ein wenig Hoffnung zu geben. Vielleicht bleiben sie aber auch drin, um den Gefangenen zu quälen." Der geisterhafte Irrgang löst sich auf. "Vielleicht ist beides richtig."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~"Warum wurde Ravel in einen Irrgang geschickt?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~"Warum wurde Ravel in die Irrgänge geschickt?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~"Weiß er, wie man zu Ravels Irrgang gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~Grace studiert sorgfältig die Symbole. "Fell sagt, daß Ravel versucht hat, 'den Käfig zu öffnen'." Sie wendet sich dir zu. "Der 'Käfig' ist ein anderer Name für Sigil." Grace runzelt gedankenverloren die Stirn. "Ich habe keine Ahnung, warum sie so was versucht hat... Es könnte sein, daß Ravel versucht hat, eine Bresche in die Mauern von Sigil zu schlagen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~"Weiß er, wie man zu ihr gelangt?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~"Weiß er, wie man zu ihr gelangt?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~"Weiß er, wie man zu ihr gelangt?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~"Fell weiß nicht, wie sie gefunden werden kann. Er warnt uns davor, sie zu suchen, weil..." Grace entziffert den letzten Abschnitt von Symbolen. "Fell sagt, Ravel befindet sich im Gewahrsam der 'Dame'. "~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~"Was weiß er sonst noch über Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~Grace studiert die Symbole mit etwas besorgter Miene. "Fell warnt uns davor, Ravel zu suchen. Er sagt, daß sie ein kaltes Herz hat und daß sie, wenn sie am Leben ist, versuchen wird, dir etwas anzutun... und uns."~ */
  IF ~~ THEN REPLY #25410 /* ~"Ich wird dran denken. Ich hätte noch eine andere Frage an ihn..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~"Ich glaube, unsere Wege sind dazu bestimmt, sich zu kreuzen. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~Grace liest die Symbole, die langsam Gestalt annehmen. "Fell sagt, daß der Arm ganz sicher dir gehört. Die Tätowierungen stammen von ihm." Als sie den letzten Symbolabschnitt betrachtet, hält sie kurz inne. "Er sagt, das eine Tätowierung von einer Zeit erzählt, als dich vier andere auf deinem Weg begleitet haben."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~"Vier andere?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~"Vier andere?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~"Vier andere?"~ */ JOURNAL #24274 /* ~Fell hat die Rune auf meinem alten Arm für mich übersetzt... Er sagt, sie spricht von Vieren, die einst meinen Weg mit mir gingen. Die Vier seien "ein Ungeliebter, der jemanden liebt, der nicht liebt"; "einer, der nicht sieht, was andere sehen, sondern sieht, was andere nicht sehen"; "ein Vertrauter, der an die Pflicht gebunden ist"; und "einer, der ein Sklave ist, und seine Ketten sind Worte". Er sagte, sie seien alle so gefoltert wie ich, und daß ich in meinem Leiden andere mitziehe, die auch leiden.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~Grace liest die durcheinanderwirbelnden Symbole und macht ein ernstes Gesicht. "Die Tätowierung enthält Beschreibungen der Vier... jemand, der sein Herz an die unerwiderte Liebe verloren hat, jemand, der blind ist und trotzdem sieht, ein... ein Vertrauter, glaub' ich, und schließlich... ein Sklave, dessen Ketten seine Worte sind..." Grace verstummt, als sich die vier Symbole verbinden und dann eine Kette bilden...~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~"Was ist das für ein Symbol..."~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~"Was ist das für ein Symbol..."~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~"Was ist das für ein Symbol..."~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~Grace sagt leise: "Folter." Sie betrachtet das Symbol und wendet sich dann ab, so als ob ihr der Anblick Schmerzen bereitet. "Fell sagt..." Sie holt Luft. "Daß das Fleisch weiß, daß es leidet, auch wenn der Geist es vergißt." Sie streift deinen Blick. Ihre Augen sind zu einem azurblauen Schatten geworden, aus dem Traurigkeit und Tränen sprechen. "Fell sagt, daß die Rune wie ein Magnet wirkt und dich andere gefolterte Seelen anziehen läßt."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~"Auf dem Arm sind noch ältere Tätowierungen, die Fell vergessen hat. Er sagt, daß er sie dir wieder eintätowieren kann, wenn du willst."~ */
  IF ~~ THEN REPLY #25424 /* ~"Okay... Ich würd gern alle Tätowierungen sehen, die er anzubieten hat."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~"Fell sagt, daß er diese Tätowierungen nicht eingraviert hat." Grace überlegt einen Augenblick. "Wenn du willst, kann er dir vielleicht über einige von ihnen etwas erzählen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~"Also gut. Was kann er mir über sie sagen?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~"Also gut. Was kann er mir über sie sagen?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~"Also gut. Was kann er mir über sie sagen?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~"Fell sagt, daß die Tätowierungen auf deinem Rücken Anweisungen für einen Geist darstellen, der sich selbst vergißt, und daß sie von sorgfältiger Hand eingraviert wurden. Das Symbol auf deiner Schulter ist..." Plötzlich verschwinden alle Symbole um Fell herum bis auf eins..~ */
  IF ~~ THEN REPLY #25432 /* ~"Was für ein Symbol ist das?"~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~"Vergiß es. Ich hätte da noch eine Frage an ihn..."~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~"Egal. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~Grace schaut düster. "Fell sagt 'Schatten'."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~"Schatten?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~Grace schaut düster. "Fell sagt, daß dich viele Schatten gejagt und überfallen haben, und bei deiner Leiche die Totenwache gehalten haben." Sie wirft noch einmal einen Blick auf die Symbole. "Er weiß nicht, warum sie dich angegriffen haben."~ */
  IF ~~ THEN REPLY #25440 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~Grace scheint von den Spannvorrichtungen um dich herum fasziniert zu sein, aber es gelingt ihr, sich wieder auf die Entzifferung der Symbole zu konzentrieren. "Das ist seine Galerie." Sie spricht mit ehrfurchtsvoller Stimme. "Er sagt, daß deine Haut seine Leinwand ist, und daß er gleichzeitig traurig wegen dir ist."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~"Traurig wegen mir?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~"Traurig wegen mir?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~"Traurig wegen mir?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~"Er sagt, daß dein Fleisch von Folter gezeichnet ist." Grace senkt ihre Stimme. "Und daß Schicksalsschläge und Verlust sich darauf auftürmen wie Steine auf einem Fundament. Er sagt, du hast viel Leid ertragen müssen."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~"Was soll das bedeuten?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~Grace nickt, fast ohne es zu bemerken, leicht mit dem Kopf, als sie weiter für dich übersetzt. "Fell sagt, er bewundert dich, weil du vor dem Verlust nicht kapituliert hast, obwohl du die Ketten des Verlustes immer noch mit dir herumschleppst." Grace wendet sich dir zu. "Er bewundert deine Stärke."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~"Bitte ihn, weiterzuerzählen."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~"Bitte ihn, weiterzuerzählen."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~"Bitte ihn, weiterzuerzählen."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~"Fell sagt, daß die von dir ertragenen Verluste sich über dein jetziges und alle deine vorherigen Leben erstrecken." Grace senkt ihre Stimme, und ihre Augen glühen vor Faszination. "Er sagt, daß du Leben abstreifst wie eine Schlange ihre Haut, und daß du alle Leben lebst, die ein Mensch nur leben kann."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~"Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~"Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~"Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~"Fell möchte dich davor warnen, daß..." Grace entziffert die nächste Reihe von Symbolen. "Er möchte dich davor warnen, daß jedes deiner Leben einen Schatten auf das Dasein wirft.'" Sie scheint kurz darüber nachzudenken und fährt dann fort. "Er sagt, du wirst an einen Ort reisen, an dem diese Schatten wild geworden sind und die Erde von Reue gezeichnet ist."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~"Ich... verstehe. Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~"Ich... verstehe. Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~"Ich... verstehe. Sagt er sonst noch was?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~"Fell sagt, daß du 'nichts unterschreiben' sollst." Grace hebt eine Augenbraue. "Er sagt nicht warum."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~"Wie du meinst."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~"Fell fragt, ob du dich vollständig oder irgendwie... unvollkommen fühlst."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~"Das geht dich nichts an."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~Lüge: "Ja, ich fühl mich vollständig. Warum?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~"Fell sagt, daß du ein starker Mann sein mußt, wenn du so viel ertragen hast." Grace wendet sich dir zu. "Seine nächsten Worte sind auch meine Worte: Bleib dir treu! Wenn du das tust, wirst du wieder vollkommen sein."~ */
  IF ~~ THEN REPLY #25488 /* ~"Ich werd's versuchen. Ich würde ihm gerne noch eine andere Frage stellen ..."~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~Grace sagt leise: "Folter." Sie betrachtet das Symbol und wendet sich dann ab, als ob ihr der Anblick Schmerzen bereitet. "Fell sagt..." Sie holt Luft. "Daß das Fleisch weiß, daß es leidet, auch wenn der Geist es vergißt." Sie streift deinen Blick, und ihre Augen sind zu einem azurblauen Schatten geworden, aus dem Traurigkeit und Tränen sprechen. "Fell sagt, daß die Rune wie ein Magnet wirkt und dich andere gefolterte Seelen anziehen läßt."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~"Ich hätte noch eine andere Frage, die ich ihm stellen wollte..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~"Ich wollte ihm noch eine andere Frage stellen..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~Vor dir steht eine äußerst gutaussehende Frau mit goldenem Haar, die ein azurblaues und purpurfarbenes Kleid mit zwei langen eleganten Flügeln trägt, die über die Schultern gelegt sind. Sie überblickt den Raum mit einem sanften Lächeln... sie ist ohne Zweifel die schönste Frau, die du je gesehen hast.~ */
  IF ~~ THEN REPLY #28230 /* ~"Sei gegrüßt..."~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~Ignoriere die Frau mit den Flügeln und erkunde das Gebäude.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~Grace, die Gefallene, wendet sich dir zu, als du dich näherst, und lächelt. "Wie kann ich dir helfen?"~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~"Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~"Ja?"~ */
  IF ~~ THEN REPLY #28237 /* ~"Wer bist du noch mal?"~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~"Diese Flügel auf deinem Rücken... was bist du?"~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~"Diese Flügel auf deinem Rücken... was bist du?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~"Diese Flügel auf deinem Rücken... was bist du?"~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~"Du, Grace, die Flügel da auf deinem Rücken... du bist doch kein Mensch, oder?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~"Du, Grace, die Flügel da auf deinem Rücken... du bist doch kein Mensch, oder?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~"Du, Grace, die Flügel da auf deinem Rücken... du bist doch kein Mensch, oder?"~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~"Wo bin ich hier?"~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~"Ich brauche Hilfe. Vielleicht kannst du mir ja helfen."~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~"Kannst du mir was über die Mädels hier erzählen?"~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~"Kannst du mir was über die Sinnsaten erzählen?"~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~"Hast du schon mal von einer Nachthexe mit dem Namen Ravel gehört?"~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~"Kannst du mir erzählen, was du über Ravel weißt?"~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~"Weißt du etwas über den Blutkrieg?"~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~"Ich habe mit neun Lehrlingen gesprochen, so wie du's verlangt hast... aber den zehnten konnte ich nicht finden."~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~"Möchtest du mich auf meinen Reisen begleiten?"~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~"Möchtest du mich auf meinen Reisen begleiten?"~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~"Möchtest du mich auf meinen Reisen begleiten?"~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~"Möchtest du mich auf meinen Reisen begleiten?"~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~"Heute keine Fragen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~Die Frau dreht sich um, als du sie ansprichst. Sie mustert dich und nickt dann leicht... du bemerkst, daß ihre Augen dieselbe azurblaue Farbe haben wir ihr Kleid. "Da bist du ja wieder, Reisender." Sie streicht sich eine Strähne ihres goldfarbenen Haars aus dem Gesicht. "Was kann ich für dich tun?"~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~Ich habe eine Frau namens Grace, die Gefallene, im Bezirk der Kuratoren getroffen. Sie ist wohl die schönste Frau, die ich je gesehen habe... Allerdings ist sie kein Mensch. Sie hat ein Paar Flügel auf ihrem Rücken gefaltet. ~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~"Heute eigentlich gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~"Ich bin Grace, die Gefallene." Sie mustert dich eine Weile. "Du bist neu in Sigil, nicht wahr?"~ */
  IF ~~ THEN REPLY #28260 /* ~"Ja. Sieht man das?"~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~"Nein, ich vermute eigentlich, daß ich schon 'ne ganze Weile hier bin."~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~"Grace, die Gefallene... das ist ein interessanter Name."~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~"Darüber will ich im Moment nicht reden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~"Ich bin Grace, die Gefallene." Ein flüchtiges Lächeln zeigt sich auf ihrem Gesicht. "Hast du mich etwa schon vergessen?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~"Grace, ich garantiere dir, daß ich dich nie vergessen würde. Du bist *ziemlich* unvergeßlich."~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~"Grace, ich garantiere dir, daß ich dich nie vergessen würde. Du bist *ziemlich* unvergeßlich."~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~"Ganz und gar nicht."~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~"Grace, die Gefallene... das ist ein interessanter Name."~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~"Nein, habe ich nicht. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~"Vielleicht. Vielleicht auch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~Grace, die Gefallene, wird ernst, als sie euch beide abwechselnd ansieht. "Ich wollte niemanden beleidigen. Entschuldigung."~ */
  IF ~~ THEN REPLY #28272 /* ~"Schon gut. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~"Schon gut. Aber wir müssen jetzt gehen. Leb wohl, Grace."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~Sie lacht leicht auf und ihr Lachen geht in ein Lächeln über. "Na gut, dann vergebe ich dir."~ */
  IF ~~ THEN REPLY #28275 /* ~"Grace, die Gefallene... das ist ein interessanter Name."~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~Ein flüchtiges Lächeln zeigt sich auf ihrem Gesicht. "Nicht so sehr wie du vielleicht glaubst. Du verbirgst es ganz gut."~ */
  IF ~~ THEN REPLY #28279 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~Sie nickt. "Freut mich, daß er dir gefällt. Aber du bist doch nicht so weit gereist, um mir zu schmeicheln. Wie kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #28282 /* ~"Was ist dies für ein Ort?"~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~"Heute eigentlich gar nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~"Das ist das *Bordell zum Befriedigen Intellektueller Lüste*." Sie mustert dich eine Weile. "Ich entnehme deiner Frage, daß du dann wohl nicht wegen dieses Etablissements hergekommen bist?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~"'Bordell zum Befriedigen Intellektueller Lüste?' Was für'n Bordell ist das denn?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~"'Bordell zum Befriedigen Intellektueller Lüste?' Was für'n Bordell ist das denn?"~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~"Das ist das Bordell zum Befriedigen Intellektueller Lüste."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~"'Bordell zum Befriedigen Intellektueller Lüste?' Was für'n Bordell ist das denn?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~"'Bordell zum Befriedigen Intellektueller Lüste?' Was für'n Bordell ist das denn?"~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~"Aha. Verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~"Ich war nur neugierig. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~"Ich habe dieses Bordell gegründet, um den Sinneslüsten unseres Gemüts mehr Ausdrucksmöglichkeiten zu geben als eine nur rein fleischliche. Konversation und Rhetorik können sehr amüsant sein."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~"Ich kann dir versichern, daß dem nicht so ist. Geh durchs Bordell und überzeug dich selbst."~ */
  IF ~~ THEN REPLY #28296 /* ~"Es ist also ein Bordell... in dem es keine geschlechtlichen Interaktionen gibt?"~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~"Wie bist du denn überhaupt auf die Idee gekommen, so was zu gründen?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~"Ja, vielleicht. Kann ich dich vorher noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~"Na gut. Das werden wir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~"Ich habe dieses Bordell gegründet, um den Sinneslüsten unseres Gemüts mehr Ausdrucksmöglichkeiten zu geben als eine nur rein fleischliche. Konversation und Rhetorik können sehr amüsant sein."~ */
  IF ~~ THEN REPLY #28301 /* ~"Es ist also ein Bordell... in dem es keinen Geschlechtsverkehr gibt?"~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~"Wie bist du denn überhaupt auf die Idee gekommen, so was zu gründen?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~"Danke für die Erklärung... ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~"Nur psychischer Natur. Aber das heißt nicht, daß es weniger stimulierend ist."~ */
  IF ~~ THEN REPLY #28306 /* ~"Wie bist du denn überhaupt auf die Idee gekommen, so was zu gründen?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~Grace, die Gefallene, zieht eine Augenbraue hoch. "Das ist eine komische Frage." Sie runzelt die Stirn. "Ich glaub, das hat mich noch keiner gefragt. Zumindest nicht so direkt."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~"Tut mir leid, ich wollte nicht so direkt sein. Ich war einfach nur neugierig."~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~"Also... wie bist du darauf gekommen?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~"Naja, es kommt mir eben seltsam vor, daß ein Sukkubus so ein Etablissement gründet... das Ziel, das dort verfolgt wird, müßte dir doch eigentlich völlig widerstreben."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~"Oh, alles halb so wild. Ich spreche gern mit dir über die Gründe, wenn dich das interessiert."~ */
  IF ~~ THEN REPLY #28316 /* ~"Ja, ich möchte sie gern hören."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~"Es kommt mir eben seltsam vor, daß ein Sukkubus so ein Etablissement gründet... das Ziel, das dort verfolgt wird, müßte dir doch eigentlich völlig widerstreben."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~"Nicht jetzt. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~"Vielleicht ein anderes Mal. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~"Ein Teil der Antworten auf deine Fragen setzt voraus, daß du weißt, daß ich ein Mitglied der Gesellschaft der Empfindung bin. Unser Bund glaubt, daß man so viel wie möglich im Multiversum erleben sollte."~ */
  IF ~~ THEN REPLY #28321 /* ~"Und deshalb hast du dieses Etablissement gegründet?"~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~"Aha. Das reicht mir als Erklärung. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~"Dieses Bordell hat die Aufgabe, die Lüste von selbst den hartgesottensten Intellektuellen zu befriedigen. Es soll den Geist beflügeln, das Bewußtsein der Menschen über sich selbst und andere steigern und neue Methoden entwickeln, um eine andere Person zu *erfahren*. Es ist für alle die, die mehr als nur die schnöden körperlichen Freuden suchen, von denen der Stock und der Untere Bezirk voll sind."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~"Also, ich würde das nicht gerade schnö... äh, ich meine, das verstehe ich vollkommen. Die Frauen hier müssen wirklich was Besonderes sein."~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~"Ach so. Dieses Etablissement fördert also eher das intellektuelle Duell als das, äh, sagen wir mal *andere* Duell. Die Frauen hier müssen wirklich was Besonderes sein."~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~"Die Frauen hier sind angehende Sinnsaten. Bei mir erhalten sie Unterricht, um sich auf die Aufnahme in den Bund vorzubereiten. Viele von ihnen sind zudem von Natur aus mit einer Sprache gesegnet, die auch die Schale der härtesten Person knackt."~ */
  IF ~~ THEN REPLY #28330 /* ~"Sinnsaten?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~"Ach so. Dann sind die Damen hier also sozusagen Damen in Ausbildung?"~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~Sie verneigt sich leicht. "Ja, ich bin ein Mitglied der Gesellschaft der Empfindung. Unser Bund glaubt, daß man so viel wie möglich über das Multiversum erfahren sollte."~ */
  IF ~~ THEN REPLY #28336 /* ~"Und die Mädels hier werden also mal Sinnsaten?"~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~"Aha. Das reicht mir als Erklärung. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~"Höchstwahrscheinlich werden es nicht alle von ihnen schaffen. Trotzdem ermuntere ich jeden, es zu versuchen, und ich würde keiner den Wunsch verwehren, dem Bund beizutreten. Vielleicht lernt sie dann ja nebenbei noch was."~ */
  IF ~~ THEN REPLY #28340 /* ~"Aha. Dann ist das hier so 'ne Art Vorschule?"~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~"Ja. Ich hoffe, daß die Kunden und Lehrlinge durch die Rhetorik hier etwas mehr über sich selbst lernen. Grenzen werden einem dabei nur durch das eigene Sprachvermögen gesetzt. In der Lage zu sein, die Sprache so einzusetzen, daß in anderen Gefühle geweckt werden, ist eine großartige Fähigkeit."~ */
  IF ~~ THEN REPLY #28344 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~"Naja, dann guck ich mir das Bordell vielleicht doch mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[kein Text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~"Dein Gefährte hat recht. Ich bin eine Tanar-Ri der unteren Kategorie, genauer gesagt, ein Sukkubus." Sie seufzt leise. "Ich fürchte, in den Unteren Ebenen und anderswo gelten wir als ein bißchen einfach. Die meisten meiner Rasse verbringen ihre Zeit damit, Sterbliche mit den verschiedenen Freuden des Fleisches zu verwöhnen."~ */
  IF ~~ THEN REPLY #28348 /* ~"Und du...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~"Ich bin eine Tanar-Ri der unteren Kategorie, genauer gesagt, ein Sukkubus." Sie seufzt leise. "Ich fürchte, in den Unteren Ebenen und anderswo gelten wir als ein bißchen einfach. Die meisten meiner Rasse verbringen ihre Zeit damit, Sterbliche mit den verschiedenen Freuden des Fleisches zu verwöhnen."~ */
  IF ~~ THEN REPLY #26919 /* ~"Und du...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~"Ich würde sagen, daß ich mich davon mittlerweile distanziert habe... das ist eine ganz und gar triviale und unproduktive Weise, seine Zeit hier im Multiversum zu verbringen. Das Leben hat doch noch viel mehr zu bieten, findest du nicht auch?"~ */
  IF ~~ THEN REPLY #26923 /* ~"Vielleicht. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~"Ja. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~"Die Sinnsaten sind ein Bund in Sigil, der sich der Erfahrung verschrieben hat. Ohne Erfahrung, ohne Sinneseindrücke sind wir für vieles im Multiversum blind. Die Sinnsaten versuchen deshalb, so viele Sinneserfahrungen wie möglich zu machen. Wenn alle Erfahrungen gesammelt sind, wird sich die Wahrheit des Multiversums von selbst offenbaren."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~"Interessante Philosophie. Könnte ich den Sinnsaten beitreten?"~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~"Vielleicht. Aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~Sie lächelt. "Um den Sinnsaten beizutreten, muß man nur das Leben studieren."~ */
  IF ~~ THEN REPLY #28357 /* ~"Ich habe gemeint, daß ich gerne ihrem Bund beitreten würde."~ */ JOURNAL #27464 /* ~Grace, die Gefallene, hat mir vorgeschlagen, daß ich es mal in der Städtischen Festhalle versuche, wenn ich der Gesellschaft der Empfindung beitreten möchte. Sie sagte, da sollte jemand sein, der mir helfen könnte.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~"Na gut. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~"Natürlich... entschuldige bitte meine Anspielungen." Grace nickt. "Wenn du den Sinnsaten beitreten willst, würde ich mich in der Städtischen Festhalle erkundigen. Da müßte dir jemand weiterhelfen können."~ */
  IF ~~ THEN REPLY #28361 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~"Danke. Dann geh ich da mal hin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~"Nun..." Ein flüchtiges Lächeln zeigt sich auf ihrem Gesicht. "Du bist ja ganz schön direkt."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~"Ich will ehrlich sein. Du scheinst sehr nett zu sein und dich mit den Bräuchen der Ebenen auszukennen. Ein Gefährte mit diesem Wissen wäre mir sehr willkommen."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~"Ich will ehrlich sein. Du scheinst sehr nett zu sein und dich mit den Bräuchen der Ebenen auszukennen. Ein Gefährte mit diesem Wissen wäre mir sehr willkommen."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~"Das ist eben meine Art."~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~"Na, ich meine, wie aufregend kann es an einem Ort wie hier schon sein?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~"Du bist Sinnsat. Hier kannst du sicher nicht alles lernen."~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~"Dann ziehe ich meine Bitte zurück. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~"Dann entschuldige ich mich. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~"Ich mag deine Direktheit. Ich werde mal genauso direkt antworten: Warum sollte ich mit dir kommen?"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~"Du willst also nicht mit einem unsterblichen Typen reisen, der unter Gedächtnisschwund leidet und in den Ebenen nach sich selbst sucht?"~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~"Grace, ich will zu Orten reisen, wo vielleicht noch kein anderer gewesen ist... bzw. die noch kein anderer erreichen konnte. Hättest du dazu nicht auch Lust?"~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~"Wie aufregend kann es hier schon sein?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~"Du bist Sinnsat. Hier kannst du sicher nicht alles lernen."~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~"Ich ziehe meine Bitte zurück. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~"Ich ziehe meine Bitte zurück. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~"Oh, ich *hätte* große Lust dazu." Ein flüchtiges Lächeln zeigt sich auf ihrem Gesicht. "Ein solcher Vorschlag ist verlockend, täusch dich nicht."~ */
  IF ~~ THEN REPLY #28379 /* ~"Dann *hättest* du also Lust, mit mir zu reisen?"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~"Wenn ich mitkommen soll, mußt du vorher etwas für mich tun. In diesem Etablissement sind zehn Lehrlinge. Ich möchte, daß du mit allen sprichst und mir dann mitteilst, was du denkst. Dann werden wir sehen, ob wir zusammen reisen oder nicht.~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~"Ich habe schon mit ihnen gesprochen... aber es waren nur neun Lehrlinge da. Einen zehnten konnte ich nicht finden."~ */ JOURNAL #27463 /* ~Ich habe Grace, die Gefallene, überzeugt, eine meiner Begleiter zu werden, aber unter einer Bedingung: Ich muß mit allen zehn ihrer Schülerinnen im Bordell sprechen und dann mit meinen Gedanken zu ihr zurückkommen. Mit neun von ihnen habe ich bereits gesprochen, nur die zehnte kann ich nicht finden.~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~"Na gut. Kann ich dich noch was anderes fragen, bevor ich gehe?"~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Ich habe Grace, die Gefallene, überzeugt, eine meiner Begleiter zu werden, aber unter einer Bedingung: Ich muß mit allen zehn ihrer Schülerinnen im Bordell sprechen und dann mit meinen Gedanken zu ihr zurückkommen. ~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~"Dann werde ich mal mit ihnen sprechen. Ich komme zurück, wenn ich mit allen geredet habe."~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Ich habe Grace, die Gefallene, überzeugt, eine meiner Begleiter zu werden, aber unter einer Bedingung: Ich muß mit allen zehn ihrer Schülerinnen im Bordell sprechen und dann mit meinen Gedanken zu ihr zurückkommen. ~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~"Ja, das hätte ich." Sie stützt ihr Kinn in ihre Hand und denkt eine Weile nach. "Allerdings..."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~"Du willst also nicht mit einem unsterblichen Typen reisen, der unter Gedächtnisschwund leidet und in den Ebenen nach sich selbst sucht?"~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~"Wie aufregend kann es hier schon sein?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~"Du bist Sinnsat. Hier kannst du sicher nicht alles lernen."~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~"Vergiß es. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~"Denk drüber nach. Ich komme irgendwann wieder zurück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~"Ich glaube, du würdest überrascht sein. Wenn ich dich auf deinen Reisen begleiten soll, brauche ich schon einen triftigeren Grund."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~"Du willst also nicht mit einem unsterblichen Typen reisen, der unter Gedächtnisschwund leidet und in den Ebenen nach sich selbst sucht?"~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~"Vergiß es. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~"Ich werde mal überlegen, ob mir ein triftigerer Grund einfällt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[kein Text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~"Hilfe? Was für Hilfe suchst du denn?"~ */
  IF ~~ THEN REPLY #28396 /* ~"Ich scheine meine Erinnerungen verloren zu haben... und dabei habe ich mich selbst verloren."~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~"Vergiß es. Kann ich dich was fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~"Du leidest unter Gedächtnisschwund?" Grace, die Gefallene, sieht betroffen aus. "Wie schrecklich! Hast du eine Ahnung, wie das passiert ist?"~ */
  IF ~~ THEN REPLY #28400 /* ~"Nein... zumindest nicht, soweit ich mich erinnern kann. Ich bin auf einer Totenbank in der Leichenhalle aufgewacht. Was davor passiert ist, weiß ich nicht."~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~"Vergiß es. Kann ich dich was fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~"Du bist in der Leichenhalle aufgewacht?"~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~"Vielleicht haben die Staubmenschen ja gedacht, ich wäre tot... oder ich war tot... oder so. Alles, was ich weiß, ist, daß meine Wunden schnell heilen. Vielleicht bin ich unsterblich, aber sicher weiß ich das nicht."~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~"Vielleicht haben die Staubmenschen ja gedacht, ich wäre tot... oder ich war tot... oder so. Alles, was ich weiß, ist, daß meine Wunden schnell heilen. Vielleicht bin ich unsterblich, aber sicher weiß ich das nicht."~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~"Vergiß es. Kann ich dich was fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~Das Interesse von Grace, der Gefallenen, für dich scheint neu geweckt zu sein. "Diese Narben da auf deinem Körper!" Sie streckt eine Hand aus, als ob sie dich berühren will. "Darf ich?"~ */
  IF ~~ THEN REPLY #28409 /* ~"Äh... klar."~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~"Ja."~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~"Eigentlich will ich da jetzt nicht weiter drüber reden. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~Grace, die Gefallene, fährt mit ihrem Finger leicht über deinen Brustkorb, zieht die Ränder deiner Narben nach und verfolgt sie bis zu den Stellen, wo sie in deine Tätowierungen übergehen. Sie wirkt fasziniert. "Für alle diese Narben bräuchte man mehrere Leben."~ */
  IF ~~ THEN REPLY #28414 /* ~"Ja, da hast du recht... wobei einige allerdings recht neu sind."~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~"Ich will da jetzt nicht weiter drüber reden. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~Grace, die Gefallene, weicht zurück. "Einige dieser Wunden wären tödlich gewesen... für einen normalen Menschen." Sie klopft sich leicht ans Kinn und denkt nach. "Was willst du jetzt tun?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~"Ich will meine Erinnerungen wiederfinden. Ich werde die Ebenen durchkämmen und in mir selbst suchen, bis ich alle Teile des Puzzles zusammensetzen kann und weiß, wer ich bin und wie ich hier gelandet bin."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~"Ich will meine Erinnerungen wiederfinden. Ich werde die Ebenen durchkämmen und in mir selbst suchen, bis ich alle Teile des Puzzles zusammensetzen kann und weiß, wer ich bin und wie ich hier gelandet bin."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~"Keine Ahnung. Im Moment suche ich einfach nach Anhaltspunkten, wer ich bin und was mit mir passiert ist."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~"Überhaupt nichts. Irgendwann werde ich's schon erfahren."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~"Ich will da jetzt nicht weiter drüber reden. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~Grace, die Gefallene, überlegt immer noch und tippt dabei mit dem Finger an ihr Kinn. "Ich muß sagen, ich habe noch nie jemanden getroffen, der sich im wahrsten Sinne des Wortes verloren hat." Sie zieht eine Augenbraue hoch. "Versteh mich nicht falsch, aber deine Situation ist wirklich faszinierend."~ */
  IF ~~ THEN REPLY #28425 /* ~"Wie schön, daß zumindest *du* das so siehst."~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~"Das ist sie."~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~"Faszinierend?' Ich würde sie eher mit schrecklich beschreiben. Ich find's grausam. Ich weiß nicht, wer ich bin, was ich getan habe, wer meine Feinde und wer meine Freunde sind."~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~"Ich will da jetzt nicht weiter drüber reden. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~"Ich habe dich beleidigt." Grace, die Gefallene, senkt den Kopf. "Bitte verzeih mir."
~ */
  IF ~~ THEN REPLY #28431 /* ~"Okay, Schwamm drüber."~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~"Schon gut, ich bin dir nicht böse."~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~"Ich will da jetzt nicht weiter drüber reden. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~"Darüber können wir ja vielleicht ein anderes Mal sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~Grace, die Gefallene, nickt. "Du kannst dir gern das Bordell ansehen. Einige unserer Lehrlinge sind äußerst gewandt in der Rhetorik. Vielleicht können sie dein Gedächtnis auffrischen."~ */
  IF ~~ THEN REPLY #28436 /* ~"Das mach ich vielleicht. Kann ich dich vorher noch was fragen?"~ */ JOURNAL #27461 /* ~Grace, die Gefallene, hat mir vorgeschlagen, mit den Schülerinnen im Bordell zu reden. Sie meint, die Interaktion mit einigen von ihnen könnte meiner Erinnerung daran, wer ich bin, auf die Sprünge helfen.~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~"Vielen Dank. Vielleicht spreche ich mit ihnen. Leb wohl."~ */ JOURNAL #27461 /* ~Grace, die Gefallene, hat mir vorgeschlagen, mit den Schülerinnen im Bordell zu reden. Sie meint, die Interaktion mit einigen von ihnen könnte meiner Erinnerung daran, wer ich bin, auf die Sprünge helfen.~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~"Der Blutkrieg ist der Konflikt, der auf den Unteren Ebenen zwischen den Baatezu und den Tanar-Ri wütet. Sie kämpfen darum, ob das Böse rechtschaffen oder chaotisch sein sollte." Grace, die Gefallene, hält inne. "Es ist ein Krieg, den man am besten um jeden Preis vermeiden sollte. Laß doch die Tanar-Ri und Baatezu sich gegenseitig die Köpfe einhauen - lassen sie wenigstens den Rest der Ebenen in Frieden... oder doch zumindest relativ in Frieden."~ */
  IF ~~ THEN REPLY #28439 /* ~"Relativem Frieden?"~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~"Hast du in diesem Krieg gedient?"~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~"Na ja, der Krieg ist so umfassend, daß die meisten Rassen darin gegen ihren Willen verwickelt sind. Wenn man ihn einfach ignoriert, wird das meistens genauso gefährlich wie an ihm teilzunehmen."~ */
  IF ~~ THEN REPLY #28446 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~"Hast du in diesem Krieg gedient?"~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~"Ja, gelegentlich. Es gibt eine ganze Reihe menschlicher Söldner, die am Blutkrieg teilnehmen. Sie sind entweder Soldaten, Kanonenfutter oder Nahrung für die Scheusale."~ */
  IF ~~ THEN REPLY #28452 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~"Den Chroniken zufolge wird der Blutkrieg geführt, seit die Baatezu auf die Tanar-Ri gestoßen sind... und das war vor *sehr* langer Zeit. Ich bin nicht sicher, ob es einen menschlichen Ausdruck gibt, der die Zeitspanne zwischen damals und jetzt ausdrücken kann." Grace, die Gefallene, schüttelt den Kopf. "Ich fürchte, daß weder die Baatezu noch die Tanar-Ri sich jemals gegenseitig gemocht haben."~ */
  IF ~~ THEN REPLY #28458 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~"Hast du in diesem Krieg gedient?"~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~"Nein, aber meine Mutter. Sukkuben verführen normalerweise Sterbliche dazu, ihre Seelen zum Abgrund zu bringen. Dort werden dann neue Tanar-Ri kreiert, um im Blutkrieg zu sterben."~ */
  IF ~~ THEN REPLY #28464 /* ~"Deine Mutter? Sie hat im Blutkrieg gedient?"~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~"Ja. Sie gehörte zu den Besten und hat zahlreiche sterbliche Männer verführt. Sie wohnt jetzt im Abgrund und verkauft ihre Kinder in die Sklaverei."~ */
  IF ~~ THEN REPLY #28471 /* ~"Du... wurdest von deiner Mutter in die Sklaverei verkauft?"~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~"Ja. Aber ich habe dann meine Freiheit in einem Improvisationswettbewerb wiedergewonnen. Das ist schon sehr lange her."~ */
  IF ~~ THEN REPLY #28479 /* ~"An wen hat sie dich verkauft?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Grace, die Gefallene, hat mir erzählt, daß ihre eigene Mutter sie in die Sklaverei verkauft hat ... und zwar an keine Geringeren als die verhaßten Feinde der Tanar-Ris, die Baatezu. Anscheinend hat Grace ihre Freiheit in einem Improvisationswettkampf mit ihrem Baatezu-Meister wiedergewonnen. Über die Details hat sie sich nicht ausgelassen.~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~"Sie hat mich an die Baatezu verkauft. Ich glaube, sie hatte damit gerechnet, daß sie mich töten würden. Trotz ihres Wissens in anderen Bereichen wußte sie wenig über ihre Kultur."~ */
  IF ~~ THEN REPLY #28487 /* ~"Sie hat dich an die erklärten Feinde der Tanar-Ri verkauft?"~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~"Ja." Grace, die Gefallene, richtet sich auf. "Wolltest du sonst noch was wissen?"~ */
  IF ~~ THEN REPLY #28495 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~"Oh, nein, ganz und gar nicht. Aber du solltest das hier wissen: Die meisten Ereignisse in den Ebenen hängen irgendwie mit dem Blutkrieg zusammen. Man muß wissen, was er ist und warum er stattfindet."~ */
  IF ~~ THEN REPLY #28502 /* ~"Du hast gesagt, daß den übrigen Ebenen 'relativer Frieden' vergönnt ist, solange der Krieg wütet?"~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~"Setzen sie auch menschliche Truppen ein?"~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~"Wie lange geht das jetzt schon so?"~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~"Hast du in diesem Krieg gedient?"~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~"Ich hatte da ein paar andere Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~"Der Name ist mir bekannt." Grace, die Gefallene, hält inne und denkt eine Weile nach. "Um diesen Namen ranken sich zahllose Gerüchte. Die meisten Leute tun sie jedoch als Mythos ab. Aber ich nehme an, daß es sie gegeben hat und daß sie den Käfig während ihres Aufenthalts dort ganz schön durcheinander gebracht hat." Sie macht ein verdutztes Gesicht. "Warum fragst du?"~ */
  IF ~~ THEN REPLY #28509 /* ~"Ich möchte sie aufsuchen."~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~"Was weißt du sonst noch über sie?"~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~"Schon gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~"Einfach nur so. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~Grace zieht eine Augenbraue hoch. "Wirklich? Und wieso?"~ */
  IF ~~ THEN REPLY #28514 /* ~"Ich brauche ein paar Informationen und ich weiß, daß sie sie hat."~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~"Schon gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~"Einfach nur so. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~"Kannst du sie dir denn von keinem anderen holen?"~ */
  IF ~~ THEN REPLY #28518 /* ~"Ich glaube, daß nur Ravel sie weiß."~ */ JOURNAL #27459 /* ~Grace, die Gefallene, hat mich vor Ravel gewarnt... Sie sagt, wenn nur ein paar der Geschichten wahr seien, die man sich über die Nachthexe erzähle, sei sie vielleicht eine der mächtigsten Nachthexen, die jemals über die Ebenen gewandelt seien.~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~"Schon gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~"Ich weiß nicht, aber ich hab vor, das herauszufinden. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~Grace legt ihre Hand behutsam auf deinen Arm. "Denk doch mal nach: Wenn es Ravel wirklich gibt, dann ist sie sehr mächtig und gerissen. Wenn nur ein Körnchen Wahrheit in den Geschichten über sie steckt, dann ist sie ein Wesen, das eine neue Dimension des Bösen entdeckt hat. Sie zu finden wird nicht leicht sein."~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~"Das ist mir klar."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~"Das ist mir klar. Weißt du sonst noch was über Ravel?"~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~"Aha. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~"Das weiß ich. Ich muß sie aber trotzdem  finden. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~"Nun, ich habe noch nie einen Mythos getroffen. Das könnte ein interessanter Ausflug werden." Sie lächelt. "Du bist wohl kein Freund von Langeweile, was?"~ */
  IF ~~ THEN REPLY #28527 /* ~"Ich bemühe mich... weißt du sonst noch was über Ravel?"~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~"Nein. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~"Vielleicht tu ich's ja in einem anderen Leben, aber nicht jetzt. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~"Angeblich war sie eine der Hexen der Grauen Einöde und weitaus mächtiger und gerissener als ihre Schwestern. Sie kam vor langer Zeit nach Sigil, und laut einiger Gerüchte hat sie neben den Untaten während ihres Aufenthalts sogar den Käfig selbst bedroht. Heute ist sie in erster Linie eine fiktive Gestalt, eine Figur in Kindergeschichten." Grace hält inne. "Ich nehme an, daß die Dame der Schmerzen sich entsprechend um sie gekümmert hat, so wie man sich um alle Bedrohungen in Sigil kümmert."~ */
  IF ~~ THEN REPLY #28531 /* ~"Wie jetzt?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~"Was ist die Graue Einöde?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~"Könnte irgendwer sonst noch mehr über sie wissen?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~"Kann ich dich noch was anderes fragen?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~"Ravel wurde sehr wahrscheinlich in einen Irrgang verbannt. Eines der Gefängnisse der Dame."~ */
  IF ~~ THEN REPLY #28537 /* ~"Irrgang? Was ist das?"~ */ JOURNAL #27457 /* ~Grace, die Gefallene, sagt, daß Ravel in einem der Irrgänge der Dame der Schmerzen gefangen sei.~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~"Was ist die Graue Einöde?"~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~"Könnte irgendwer sonst noch mehr über sie wissen?"~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~"Eine heruntergekommene Ebene, die praktisch 'zwischen' Baator und dem Abgrund liegt. Im Blutkrieg wird sie häufig als Schlachtfeld benutzt."
~ */
  IF ~~ THEN REPLY #28543 /* ~"Weißt du, was mit Ravel passiert ist?"~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~"Könnte irgendwer sonst noch mehr über sie wissen?"~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~"Vielleicht weiß jemand in der Festhalle noch mehr über sie."~ */
  IF ~~ THEN REPLY #28548 /* ~"Weißt du, was mit Ravel passiert ist?"~ */ JOURNAL #27456 /* ~Grace, die Gefallene, hat gesagt, daß jemand in der Städtischen Festhalle mehr über Ravel wissen könnte.~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~"Was ist die Graue Einöde?"~ */ JOURNAL #27456 /* ~Grace, die Gefallene, hat gesagt, daß jemand in der Städtischen Festhalle mehr über Ravel wissen könnte.~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~"Kann ich dich noch was anderes fragen?"~ */ JOURNAL #27456 /* ~Grace, die Gefallene, hat gesagt, daß jemand in der Städtischen Festhalle mehr über Ravel wissen könnte.~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ JOURNAL #27456 /* ~Grace, die Gefallene, hat gesagt, daß jemand in der Städtischen Festhalle mehr über Ravel wissen könnte.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~Grace, die Gefallene, zieht eine Augenbraue hoch. "So?"~ */
  IF ~~ THEN REPLY #28553 /* ~"Ja... aber das ist eine lange Geschichte und vielleicht kenne ich sie selbst auch gar nicht ganz. Ich interessiere mich mehr für diesen Ort."~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~"Ja, aber das ist eine lange Geschichte, die ich mir lieber für ein anderes Mal aufhebe. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~Sie nickt. "Ich freue mich, daß es dir gefällt. Mir gefällt's auch."~ */
  IF ~~ THEN REPLY #28556 /* ~"Was genau bedeutet der Name?"~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~"Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~"Heute eigentlich gar nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~"Die Bedeutung von Namen ist ein schwieriges Thema. Dazu läßt sich viel sagen und vieles bleibt besser ungesagt. Ich denke, diese Geschichte sparen wir uns für das nächste Mal auf."~ */
  IF ~~ THEN REPLY #28560 /* ~"Ist Grace, die Gefallene, dein richtiger Name?"~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~"Na gut. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~"Dann tut's mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~"Vielleicht." Ein flüchtiges Lächeln zeigt sich auf ihrem Gesicht. "Vielleicht auch nicht. Einige Namen werden vergeben, andere Namen verdient man sich. Wer weiß schon, welches der richtige ist? Ich nicht."~ */
  IF ~~ THEN REPLY #28564 /* ~"Na gut. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~"Dann tut's mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~"Mit euch zu reisen?" Ein flüchtiges Lächeln zeigt sich auf dem Gesicht von Grace, der Gefallenen. Sie scheint deine Gefährten zu ignorieren. "Du bist ja ganz schön direkt."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~"Ich will ehrlich sein. Du scheinst mir eine sehr angenehme Person zu sein und dich mit den Bräuchen der Ebenen auszukennen. Ein Gefährte mit diesem Wissen wäre mir sehr willkommen."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~"Das ist eben meine Art."~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~"Na, ich meine, wie aufregend kann es an einem Ort wie hier schon sein?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~"Du bist Sinnsat. Hier kannst du sicher nicht alles lernen."~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~"Dann ziehe ich meine Bitte zurück. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~"Dann entschuldige ich mich. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~"Mit euch zu reisen?" Ein flüchtiges Lächeln zeigt sich auf dem Gesicht von Grace, der Gefallenen. Sie scheint Annah zu ignorieren. "Du bist ja ganz schön direkt."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~"Ich will ehrlich sein. Du scheinst sehr nett zu sein und dich mit den Bräuchen der Ebenen auszukennen. Ein Gefährte mit diesem Wissen wäre mir sehr willkommen."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~"Ich will ehrlich sein. Du scheinst sehr nett zu sein und dich mit den Bräuchen der Ebenen auszukennen. Ein Gefährte mit diesem Wissen wäre mir sehr willkommen."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~"Das ist eben meine Art."~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~"Na, ich meine, wie aufregend kann es an einem Ort wie hier schon sein?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~"Du bist Sinnsat. Hier kannst du sicher nicht alles lernen."~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~"Dann ziehe ich meine Bitte zurück. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~"Dann entschuldige ich mich. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~"Mit euch zu reisen?" Ein flüchtiges Lächeln zeigt sich auf dem Gesicht von Grace, der Gefallenen. Sie scheint Morte zu ignorieren. "Du bist ja ganz schön direkt."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~"Ich will ehrlich sein. Du scheinst sehr nett zu sein und dich mit den Bräuchen der Ebenen auszukennen. Ein Gefährte mit diesem Wissen wäre mir sehr willkommen."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~"Das ist eben meine Art."~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~"Na, ich meine, wie aufregend kann es an einem Ort wie hier schon sein?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~"Du bist Sinnsat. Hier kannst du sicher nicht alles lernen."~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~"Dann ziehe ich meine Bitte zurück. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~"Dann entschuldige ich mich. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~"Und den zehnten Lehrling konntest du nicht finden? Ist ja merkwürdig."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~"Ich habe das Gefühl, daß ich der zehnte Lehrling bin. Was bedeuten würde, daß ich mit allen gesprochen habe."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~"Ich habe das Gefühl, daß ich der zehnte Lehrling bin. Was bedeuten würde, daß ich mit allen gesprochen habe."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"Ich habe zehn Steine unter dem Bordell gesehen, und einer war leer... Deshalb glaube ich, daß es hier nur neun Prostitutierte gibt. Also bin ich der zehnte *Lehrling*. Was bedeuten würde, daß ich mit allen gesprochen habe."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~"Ich glaube, daß Luis der zehnte Lehrling ist... auf seine ganz eigene Art."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~"Kannst du mir sagen, wo ich den zehnten Lehrling finden könnte?"~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~"Vielleicht hab' ich ja einen übersehen. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~"Ich werde nochmal richtig suchen. Irgendwo muß der zehnte Lehrling ja sein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~Sie nickt. "Also, was hast du gedacht?"~ */
  IF ~~ THEN REPLY #28597 /* ~"Du und ich, wir sollten diesen Ort verlassen und die Ebenen erkunden. Hier gibt es für keinen von uns beiden noch mehr Erfahrungen zu machen."~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~"Ich habe gelernt, was es bedeutet, danach zu streben, ein Sinnsat zu sein, und auch, daß es besser ist, nach Erfahrungen zu suchen als darauf zu warten, daß sie zu einem kommen."~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~"Luis braucht unbedingt einen Schreiner, der seine Libido zügelt."~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~"Ihr solltet euch alle Kommoden im Bordell vom Hals schaffen und als Feuerholz verwenden."~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~"Unterricht in einem so geschützten Umfeld wie diesem schadet nur dem Schüler, und die Ebenen sind oft selbst der beste Lehrer."~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~"Der Lehrling läuft hier rum... du solltest mal deine Augen aufsperren."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~"Ich habe das Gefühl, daß ich der zehnte Lehrling bin. Was bedeuten würde, daß ich mit allen gesprochen habe."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~"Ich habe das Gefühl, daß ich der zehnte Lehrling bin. Was bedeuten würde, daß ich mit allen gesprochen habe."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"Ich habe zehn Steine unter dem Bordell gesehen, und einer war leer... Deshalb glaube ich, daß es hier nur neun Prostitutierte gibt. Also bin ich der zehnte *Lehrling*. Was bedeuten würde, daß ich mit allen gesprochen habe."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~"Ich glaube, daß Luis der zehnte Lehrling ist... auf seine ganz eigene Art."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~"Vielleicht hab' ich ja einen übersehen. Kann ich dich was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~"Ich werde nochmal richtig suchen. Irgendwo muß der zehnte Lehrling ja sein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~Grace hält ihre Hände aneinander, so daß sich die Daumen und Finger berühren und fast einen Kreis bilden. "Die Dame soll die Macht haben, Teile von Sigil einzunehmen..." Du schaust überrascht, als sich ein Abbild von Graces kleinem Finger wie ein Phantom von ihrer Hand löst, in die Luft schwebt und einen kleinen Kreis beschreibt. "...und daraus einen Irrgang zu machen."~ */
  IF ~~ THEN REPLY #28606 /* ~"Erzähl weiter..."~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~"Aha. Kannst du mir mehr über diese Ebene erzählen, von der Ravel stammt... die Graue Einöde?"~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~"Ich glaube, ich verstehe. Gibt es sonst irgend jemanden, der mehr über Ravel wissen könnte?"~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~"So so. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~Der kleine phantomartige Kreis schwebt in die Luft und beginnt dann langsam, sich zu drehen. " In dem Teil von Sigil, den sie eingenommen hat, ist man gefangen. Aus dem Irrgang kommt niemand mehr heraus. Es kann einem jederzeit passieren. Wenn man die Straße entlanggeht, durch eine Tür geht..." Sie klatscht in die Hände. "...Und eh du dich's versiehst, bist du woanders." Innerhalb des geisterhaften Kreises kannst du plötzlich erkennen, wie sich etwas hin und her bewegt, so als ob jemand darin auf und ab geht.~ */
  IF ~~ THEN REPLY #28612 /* ~"Erzähl weiter..."~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~"Aha. Kannst du mir mehr über diese Ebene erzählen, von der Ravel stammt... die Graue Einöde?"~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~"Ich glaube, ich verstehe. Gibt es sonst irgend jemanden, der mehr über Ravel wissen könnte?"~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~"So so. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~Grace erzählt weiter, während sich dabei der winzige geisterhafte Irrgang in ihren Augen spiegelt. "Es heißt, daß es Tore gibt, die aus den Irrgängen herausführen, doch sie sind schwer zu finden. Vielleicht hat man sie dort gelassen, um dem Gefangenen ein wenig Hoffnung zu geben. Vielleicht bleiben sie aber auch drin, um den Gefangenen zu quälen." Der geisterhafte Irrgang löst sich auf. "Vielleicht ist beides richtig."~ */
  IF ~~ THEN REPLY #28618 /* ~"Aha. Kannst du mir mehr über diese Ebene erzählen, von der Ravel stammt... die Graue Einöde?"~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~"Ich glaube, ich verstehe. Gibt es sonst irgend jemanden, der mehr über Ravel wissen könnte?"~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~"So so. Kann ich dich noch was anderes fragen?"~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~"Verstehe. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~Grace grüßt den Mann mit einem Nicken und einem Lächeln. "Zu gütig von dir."~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~Grace meldet sich flüsternd zu Wort. "Advokaten verhandeln Fälle vor Sigils Gerichten. Sie beraten einen auf Wunsch auch bei rechtlichen Angelegenheiten."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~Sie lächelt flüchtig. "Nein, du hast mich nicht beleidigt, Fähiger Nachdenker. Ich bin sicher, daß du damit nur Tueny beleidigt hättest, und wie du weißt, haben seine Untertanen ihn schon vor über dreihundert Jahren lebendig begraben."
~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~Grace lächelt und wirft höflich ein: "Und warum glaubst du, daß du immer willkommen bist, mein lieber Fähiger Nachdenker?"~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~"Die junge Sarhava? Sarhava Vhjul, bist du das?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~Grace, die Gefallene, nickt kaum merklich. "Deine Worte sind klug gewählt, im Gegensatz zu denen, die du vorher von dir gegeben hast."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~"Ich bedaure, daß sie überhaupt gesagt wurden." Ihr Tonfall ändert sich kaum, aber die subtile Zurechtweisung scheint die junge Frau wie ein Peitschenhieb getroffen zu haben. "Es tut mir weh zu sehen, daß sich einer meiner ehemaligen Lehrlinge so benimmt..."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~"Das sind meine Gefährten, mit denen ich reise. Ich erwarte, daß du sie genauso höflich behandelst, wie du mich behandelt hast. Das ist ein Merkmal und die Pflicht derjenigen... von adeliger Herkunft."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~Weiter.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~Weiter.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~"Ich kann mir gut vorstellen, daß eine Frau den Blutkrieg beenden kann."~ */
  IF ~~ THEN REPLY #33082 /* ~"Aber Scheusale sind in Sigil doch noch erlaubt, oder?"~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~"Laß mich dich noch was anderes fragen..."~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~"Ich habe keine weiteren Fragen."~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~"Schon gut. Du hast ja recht."~ */
  IF ~~ THEN REPLY #33085 /* ~"Was für Mächte kämpfen denn noch im Blutkrieg?"~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~"Laß mich dich noch was anderes fragen..."~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~"Ich habe keine weiteren Fragen."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~Grace, die Gefallene, sieht auf, als du dich näherst. "Möchtest du, daß ich wieder mit dir reise?"~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~"Ja. Wenn du bereit bist."~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~"Nicht gerade jetzt... Ich hab nur mal vorbeigeschaut, um nach dir zu sehen."~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~Sie nickt. "Das würde ich gern tun."~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~"Laß uns gehen."~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~Sie nickt. "Danke. Das war sehr nett von dir." Sie lächelt verhalten. "Falls du in Zukunft meine Hilfe benötigst, findest du mich hier."~ */
  IF ~~ THEN REPLY #34020 /* ~"Danke, Grace. Ich werde wohl auf dein Angebot zurückkommen."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~"Ja?"~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~"Kannst du mir etwas über die Tanar-Ri erzählen?"~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~"Diese Flügel da auf deinem Rücken... Was bist du?"~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~"Diese Flügel da auf deinem Rücken... Was bist du?"~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~"Diese Flügel da auf deinem Rücken... Was bist du?"~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~"Darf ich fragen, Grace, diese Flügel da auf deinem Rücken... Du bist also kein Mensch, oder?"~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~"Darf ich fragen, Grace, diese Flügel da auf deinem Rücken... Du bist also kein Mensch, oder?"~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~"Darf ich fragen, Grace, diese Flügel da auf deinem Rücken... Du bist also kein Mensch, oder?"~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~"Wie bist du an den Namen 'Grace, die Gefallene' gekommen?"~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~"Warum heißt du 'Grace, die Gefallene'?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~"Warum heißt du 'Grace, die Gefallene'?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~"Warum heißt du 'Grace, die Gefallene'?"~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~"Wie bist du an den Namen 'Grace, die Gefallene' gekommen?"~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~"Kannst du mir sagen, was du über die Sinnsaten weißt?"~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~"Kannst du mich irgend etwas von der Kunst lehren, Grace?"~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~"Ich wollte über uns sprechen..."~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~"Ich wollte über unsere Gefährten sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~"Setzt du jemals Waffen ein?"~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~"Ich hätte ein paar Fragen über unsere Reisen..."~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~"Schon gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~Grace wendet sich an Yves. "Ich habe heute keine Geschichte, die ich mit dir teilen möchte, Geschichtenjägerin. Ich muß erst neue Geschichten finden, bevor ich dich meine Bibliothek ausschöpfen lasse."~ */
  IF ~~ THEN REPLY #39755 /* ~Frag einen anderen Begleiter.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~"Ich habe eine Geschichte, die ich mit dir teilen möchte, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~"Dann hätte ich da eine Frage an Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~"Dann gehen wir. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~"Ich glaube, sie hat sich ihre Blindheit selbst ausgesucht, sie war kein Schicksal."~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~"Sei gegrüßt, Meister Gonkalves."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~"Mein Auftrag ist nicht so furchtbar eilig, Meister Gonkalves. Deine Kunst erfordert Zeit, und das Ergebnis deiner Arbeit wird sich sehen lassen können. Doch ich bin aus einem ganz anderen Grund hier. Dieser Mann hier...", Grace neigt sich in deine Richtung, "...würde gern einen Moment mit dir sprechen..."~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~Grace, die Gefallene, sieht sich den Mann genau an. "Ich glaub, ich hab schon mal was von dieser Art Kunst gehört. Sie ist ziemlich verbreitet in einer Reihe von Materiellen Welten..." Sie senkt ihre Stimme, so daß nur du sie hören kannst. "...und ziemlich verrufen in mehr als einer von ihnen."~ */
  IF ~~ THEN REPLY #49783 /* ~Versuch, ihn zu berühren.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~"Je nachdem, um welche Art Scheusal es sich handelt, können wir mit ihm reden. Da bin ich sicher. Wenn es ein Baatezu sein sollte, geht es auf einen Handel für seine Freiheit ein. Wenn es ein Tanar-Ri sein sollte, tja, dann brauchen wir nur ein schlagkräftiges Argument vorbringen, um seine Zustimmung zu erhalten." Sie lächelt sanft. "Deine Waffen dürften deinen Argumenten dienlich sein."~ */
  IF ~~ THEN REPLY #50079 /* ~"Nun denn. Was muß ich tun, Dona Quisho?"~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~"Ich halte wirklich nicht viel davon, angebundene Scheusale zu befreien."~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~"Ich nehme an, eine präzise Antwort wäre ein bißchen zuviel erwartet gewesen."~ */
  IF ~~ THEN REPLY #50148 /* ~"Kannst du ihm noch ein paar Fragen stellen?"~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~"Das ist alles, was ich wissen wollte.  Wiedersehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~Grace, die Gefallene, nickt. "Ja, natürlich."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~"Frag ihn, wer er ist."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~"Frag ihn, was er hier macht."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~"Sag ihm, er soll uns etwas über die Dame der Schmerzen erzählen."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~"Sag ihm, er soll uns etwas über Fell erzählen."~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~"Schon gut. Laß uns abhauen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~"Es sagt, es sei ein 'Dabus.'" Grace hält inne. "Ich habe selten einen Dabus getroffen, der seinen Namen genannt hätte... oder zumindest etwas, was wir als Namen erkennen würden. Sie scheinen eher Symbole zu verwenden."~ */
  IF ~~ THEN REPLY #50180 /* ~"Kannst du ihm noch ein paar Fragen stellen?"~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~"Das ist alles, was ich wissen wollte.  Wiedersehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~"Es sagt, daß es seiner Arbeit nachgeht." Sie wendet sich dir zu. "Sie verbringen die meiste Zeit damit, Teile der Stadt zu reparieren und auseinanderzunehmen. Man könnte sagen, sie sind so etwas wie die Hausmeister der Stadt."~ */
  IF ~~ THEN REPLY #50194 /* ~"Kannst du ihm noch ein paar Fragen stellen?"~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~"Das ist alles, was ich wissen wollte.  Wiedersehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~Grace runzelt die Stirn. "Ich glaube nicht unbedingt, daß es klug wäre, ihn danach zu fragen. Das könnte den Dabus beleidigen, da Fell nicht mehr zu ihnen gehört..."~ */
  IF ~~ THEN REPLY #50247 /* ~"Kannst du ihn trotzdem fragen?"~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~"Genug gepredigt. Frag ihn einfach."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~"Kannst du ihm noch ein paar Fragen stellen?"~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~"Nun gut, dann laß uns gehen."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~"Ich weiß nicht, welchen Auftrag du meinst, Vrischika, obwohl deine Anwesenheit hier viele Fragen aufwirft. Das letzte, was ich über dich gehört habe, war, daß du als Standartenträgerin in der Kompanie des Geiers gewesen bist. Wie hat es dich nach Sigil verschlagen?"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~Grace, die Gefallene, spricht mit einer Kälte, die du nie zuvor gehört hast. Die Luft gefriert beinahe, als sie Vrischika mit ihrem Blick zerlegt. "Das reicht."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~"Es ist die Wahrheit..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~"Man kann sich aus Verträgen mit den Baatezu befreien, wenn man auf den Wortlaut achtet und weiß, daß die Baatezu ihr Wort halten müssen. Man muß sich einfach vor allen Formulierungen in acht nehmen, die zu ihrem Vorteil ausgelegt werden könnten... Und ich bin sprachlich *sehr versiert* und kenne alle Feinheiten. Trotzdem war es keine leichte Sache..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~Es gelingt Grace, der Gefallenen, ihre perfekte Haltung zu bewahren. Sie nickt nur... Aber als du ihr in die Augen siehst, wirft sie dir einen leicht verzweifelten Blick zu und lächelt dann.~ */
  IF ~~ THEN REPLY #50691 /* ~"Was hattest du da gesagt, daß sie ihre Agenten ausbildet, Vrischika?"~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~"Ich hätte noch eine Frage, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~"Ich würde gerne deine Waren sehen, Vrischika..."~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~"Das ist alles, was ich wissen wollte, Vrischika. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~"Das ist nicht Sinn und Zweck meiner Anwesenheit hier..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~"Vrischika, er weiß genau, warum ich zugestimmt habe, mit ihm zu reisen... als er mich darum gebeten hat."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~"Ravel..." Grace antwortet leise, beinahe vorsichtig. "Ich habe mich abgefunden mit m-"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~"Weil die Liebe es nicht zulassen würde... Und sie kann selbst die Stärksten ihrem Willen unterwerfen." Die Stimme von Grace, der Gefallenen, ist leise, fragend. "Ist es nicht so, Ravel?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~"Es gibt kein Wesen, das ein solches Gefühl nicht verdient hätte, Ravel." Grace spricht leise. "Doch zeichnen die Geschichten kein solch mitfühlendes Bild von dir, Ravel..."~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~"Die Dame der Schmerzen? Du hast versucht, ihr zu *helfen*?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~"Die Dame der Schmerzen? Du hast versucht, ihr zu *helfen*?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~Grace sagt nichts. Sie scheint Ravel aufmerksam zu mustern... Dich überfällt auf einmal das Gefühl, daß Grace bei Ravel nach Schwachstellen sucht.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~Grace nimmt unvermittelt Kampfhaltung ein. Ihre Hände schnellen hervor, und ihre Finger formen sich zu einer schützenden Geste. Ihr Gesichtsausdruck verändert sich jedoch nicht. Sie scheint dies sogar erwartet zu haben.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~Und plötzlich ist Grace, die Gefallene, da, und ihre Berührung ist weich wie Seide, und sie wischt die Tränen von deinen Augen, während du die Schreie in dir aufsteigen fühlst. Sie redet beruhigend auf dich ein und liebkost dein Gesicht trotz deiner blutigen Tränen.~ */
  IF ~~ THEN REPLY #52972 /* ~"Ich... Ich... halte das nicht aus... Ich... konnte sie nicht AUFHALTEN, ich WOLLTE es, aber ich konnte *nichts* tun...!"~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~Grace, die Gefallene, sieht dir in die Augen und nickt traurig, verständnisvoll. "Und das ist das Wesen der *Sehnsucht*. Das Verlangen nach dem, was du nicht ändern oder besitzen kannst." Sie mustert dich und zieht ihre Hand zurück, die jetzt mit deinem Blut bedeckt ist. "Geht es dir schon besser?"~ */
  IF ~~ THEN REPLY #52974 /* ~"Ja... Ja... Ich brauche nur einen Moment..."~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~"Gut..." Grace, die Gefallene, tritt zurück. "Wir werden fortfahren, wenn du bereit bist."~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~Hol Atem, versuch, deine Gedanken zu sammeln. ~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~Hol Atem, versuch, deine Gedanken zu sammeln. ~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~"Ich bin so weit gekommen, und es wäre unhöflich, mich vor der letzten Stunde zu empfehlen." Sie lächelt leicht. "Selbst wenn du höflich darum bitten würdest, würde ich es nicht erlauben."~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~"Dann habe ich wohl keine Wahl... Annah?"~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~"Dann habe ich wohl keine Wahl... Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~"Dann habe ich wohl keine Wahl... Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~"Dann habe ich wohl keine Wahl... Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~"Dann habe ich wohl keine Wahl... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~"Dann habe ich wohl keine Wahl... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~"Es ist wegen dem, was Ravel im Irrgang gesagt hat." Graces Stimme ist leise, so leise, daß du sie fast überhört hättest. "Stimmt's, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~"Es ist wegen dem, was Ravel im Irrgang gesagt hat. Und dem Symbol, das Fell uns beschrieben hat." Graces Stimme ist leise, so leise, daß du sie fast überhört hättest. "Stimmt's, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~"Annah, es tut mir so leid..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~"Die Schädelsäule ist eine Säule aus den lebenden Köpfen derer, deren Lügen andere in den Tod geschickt haben. Sie kann dir viele Fragen beantworten, weil sie eine ganze Menge weiß, aber sie verlangt auch eine hohe Bezahlung dafür. Man sollte ihr keine solchen Fragen stellen."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~Grace, die Gefallene, scheint sich von deiner Aussage nicht beeindrucken zu lassen, sondern sieht nur zwischen dir und der Säule hin und her. "Ich würde niemals zulassen, daß diese Säule mich kriegt, aber... aber das weißt du sicher. Du hast wohl nur gescherzt. Du solltest der Schädelsäule jedoch keine falschen Hoffnungen machen..."~ */
  IF ~~ THEN REPLY #54070 /* ~Wahrheit: "Ich habe es ernst gemeint. Hinein mit dir, Grace, oder ich stopf dich eigenhändig rein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~Also gut. Was für *andere* Geschenke würdest du akzeptieren, Säule?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~Also gut. Was für *andere* Geschenke würdest du akzeptieren, Säule?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~"*Natürlich* hab ich gescherzt. Gehen wir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~"*Natürlich* hab ich gescherzt. Gehen wir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~Grace sieht dich eine Weile durchdringend an. "Bist du sicher, daß du diese Maßnahme in Betracht ziehen würdest? Du würdest mich tatsächlich der Schädelsäule in den Rachen werfen?"~ */
  IF ~~ THEN REPLY #54076 /* ~"Ja."~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~"Nein, würde ich nicht. Säule: Was für *andere* Geschenke würdest du akzeptieren?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~"Nein, würde ich nicht. Säule: Was für *andere* Geschenke würdest du akzeptieren?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~"Nein würde ich nicht. Gehen wir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~"Nein würde ich nicht. Gehen wir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~Die Augen von Grace, der Gefallenen, werden hart und eisig, auch wenn sie ihren Gesichtsausdruck völlig unter Kontrolle behält. "Dann sage ich dir Lebewohl, Namenloser. Falls du aus Baator herauskommst, kreuzen sich unserer Pfade vielleicht noch einmal." Damit löst sie sich in einer Wolke aus grünem Nebel auf.~ */
  IF ~~ THEN REPLY #54083 /* ~"Grace..."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~Grace haucht: "Ein Deva... Doch scheinen diese Ketten ihn weniger zu binden als seine Gedanken zu erdrücken..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~Grace haucht: "Ein Deva... Doch scheinen diese Ketten ihn weniger zu binden als seine Gedanken zu erdrücken..."~ */
  IF ~~ THEN REPLY #54874 /* ~"Deva, ich hätte ein paar Fragen an dich..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~"Es war nicht meine Absicht, Euch in Versuchung zu führen, Deva. Ich fürchte, daß Eure Gefangenschaft Euch nicht bekommt."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~"Da bin ich anderer Meinung, Lord Trias. Ihr habt ihnen einfach zu viel Vertrauen entgegengebracht."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~Grace, die Gefallene, unterbricht ihn plötzlich. "Was denkt ihr über den Blutkrieg, Lord Trias?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~Grace, die Gefallene, sagt sanft: "Bist du sicher, daß du das tun willst? Dieser Deva ist vielleicht die einzige Möglichkeit, dein Gedächtnis zurückzugewinnen. Die Hexe hat uns zu ihm geschickt, und du willst ihn niederstechen, bevor er uns seine Geheimnisse enthüllen konnte?"~ */
  IF ~~ THEN REPLY #54875 /* ~Zerschlage die Ketten des Deva.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~Erschlage den Deva.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~"Glaubt Ihr, daß Ihr den Blutkrieg beenden könnt, indem Ihr ihn zu den Pforten des Paradieses tragt? Das Böse in den Unteren Ebenen ist nahezu unendlich. Die Heere des Baators und des Abgrunds zeigen das. Bevor Ihr Euch mit nichts als aufgeblasener Arroganz bewaffnet, solltet Ihr Euch die Macht des unendlichen Bösen vor Augen führen, das sich auf ein einziges Ziel konzentriert. Gebt ihnen keinen Anlaß dafür, den Blutkrieg in die Oberen Ebenen zu tragen, oder das Multiversum wird leiden."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~"Man kann von allen Dingen lernen, wenn man aufmerksam genug ist, Mylord. Man sollte stets daran denken, daß ein weiser Mann jede Gelegenheit nutzt, um zu lernen."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~"Abgesehen von Mortes Einwänden ist Mechanus eigentlich ein faszinierender Ort. Es gibt keinen Himmel, sondern nur riesige Zahnradgetriebe, die sich im Raum drehen... Je nach ihren Zyklen strahlen sie Licht aus, und die Wirkung ist ziemlich überwältigend. Die Logik und Ordnung dieses Ortes wirkt ziemlich entspannend, und es gibt mehr als genug zu tun, um der Langeweile zu entkommen, wenn man weiß, wo man suchen muß und wie man hinkommt.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~"Modronen besitzen eine gemeinsame 'Energie'. Auf irgendeine Art dient diese Energie als Bindeglied für sie alle. Wenn einer von ihnen stirbt, wird die Energie zurück in die gemeinsame Quelle absorbiert, und daraus entsteht ein neuer Modron. Wenn ein Modron... abtrünnig und zum Einzelgänger wird, dann trennt er seine Verbindung zu den Seinen und nimmt dabei einen kleinen Teil der Energie mit.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~"Du meinst also, daß Nordom ein Teil dieser Quelle ist, aber von ihr abgeschnitten ist. Und wenn ein Modron stirbt, werden sie zurückabsorbiert. Nordom auch?"~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~"Also... Nordom, dieses Mechanus ist eine Energiequelle?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~"Ach so. Nordom, ich hätte noch einige Fragen an dich..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~Grace, die Gefallene, nickt. "Morte hat recht: Modronen haben eine gemeinsame 'Energie.' Irgendwie verbindet diese Energie sie alle. Wenn einer von ihnen stirbt, wird die Energie zurück in die gemeinsame Quelle absorbiert, und daraus entsteht ein neuer Modron. Wenn ein Modron... abtrünnig und zum Einzelgänger wird, dann trennt er seine Verbindung zu den Seinesgleichen und nimmt dabei einen kleinen Teil der Energie mit.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~Grace, die Gefallene, nickt leicht. "Tut mir leid, Morte. Ich wollte dich nicht beleidigen."~ */
  IF ~~ THEN REPLY #55725 /* ~"Morte, ich brauche alle Informationen, die ich kriegen kann, also bitte kein Gezanke hier. Wenn Grace, die Gefallene, etwas dazu zu sagen hat, dann will ich es *hören* klar?"~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~"Du meinst also, daß Nordom ein Teil dieser Quelle ist, aber von ihr abgeschnitten ist. Und wenn ein Modron stirbt, werden sie zurückabsorbiert. Nordom auch?"~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~"Also... Nordom, dieses Mechanus ist eine Energiequelle?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~"In Ordnung. Nordom, ich wollte dich noch was fragen..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~"Richtig."~ */
  IF ~~ THEN REPLY #55735 /* ~"Und wenn er stirbt, wird ein neuer Nordom erschaffen." ~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~"Nordoms Energie wird zur Quelle zurückkehren, aber Nordom wird aufhören zu existieren. Es wird jedoch ein anderer Quadron-Modron geschaffen, um ihn zu ersetzen."~ */
  IF ~~ THEN REPLY #55738 /* ~"Also... dadurch, daß er abtrünnig geworden ist, ist er... sterblich geworden?"~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~Grace, die Gefallene, nickt. "Die ursprüngliche Energie kann nicht zerstört werden - wenn ich das richtig verstehe - aber Nordom als Individuum, als 'Nordom', würde aufhören zu existieren, ja."~ */
  IF ~~ THEN REPLY #55742 /* ~"In Ordnung. Nordom, ich wollte dich noch was fragen..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~"Mehr wollte ich gar nicht wissen. Gehen wir."~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~"Morte..." Grace, die Gefallene, unterbricht ihn sanft. "Ich muß gestehen, ohne deine vorhergehende Information wäre es mir sehr schwergefallen, die Lage zu erklären... Oft macht es deine Verwendung von Metaphern und Begriffen *viel* leichter für die Anderen, deine Erklärungen zu verstehen. Du bist bestimmt ein viel besserer Lehrer als ich."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~"Seid gegrüßt, Advokat Infernus Schlangenzunge." Grace nickt und verbeugt sich leicht. "Ich werde mir Euren Vorschlag überlegen."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~Grace klingt verwirrt. "Wollen Advokat Infernus Schlangenzunge etwa andeuten, daß wir Tanar-Ri ein rohes Volk sind?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~"Gewiß widerstrebt Euch lediglich die Ausführung des Bösen, und nicht sein Ausmaß. Viele Tanar-Ri würden behaupten, daß man dem Ideal treuer ist, je näher man der ursprünglichen Natur des Bösen kommt."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~"Aus der Sicht eines Baatezu mag das tatsächlich unerträglich erscheinen. Jedoch... Advokat, viele Philosophen der Tanar-Ri würden argumentieren, daß es den Baatezu ebensowenig verziehen werden darf, daß ihre Gewalt, die Essenz ihres Bösen, ohne Leidenschaft ist. Die Baatezu würden Zorn durch kalte methodische Grausamkeit ersetzen. Und so wird die alte Debatte immer weitergehen: Welches ist das größere Böse? Effizientes Böses oder leidenschaftliches Böses?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~"Ich kenne die Gerechtigkeit, Vhailor. Ich verbinde sie mit Erfahrung und Weisheit, und wenn die Gerechtigkeit mit diesen beiden Wahrheiten verbunden wird, wird sie *stärker*. Ich kenne auch die Gnade und die Vergebung, denn ohne sie wären die Ebenen ein viel grausamerer Ort."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~"Nein, Vhailor, das sind sie nicht. Es sind Werkzeuge, durch die eine andere Seele erlöst, erhöht und gestärkt wird. Dadurch wird das *Multiversum* gestärkt. Darin liegt die Vollkommenheit, von der du sprichst."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~Grace, die Gefallene, richtet sich zu voller Größe auf. "*Tatsächlich*, Vhailor? Dann *urteile* über mich mit deinem Blick, und sieh, ob mir etwas fehlt. Sieh, ob du die Schwäche findest, von der du behauptest, daß sie an mir nagt."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~"Darüber sind wir verschiedener Ansicht, Vhailor."~ */
  IF ~~ THEN REPLY #56691 /* ~"Vhailor, laß mich dich etwas über jemand anders fragen."~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~"Genug jetzt - Vhailor. Ich wollte dich etwas fragen..."~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~"Hör auf mit dem Verhör, Vhailor." Grace, die Gefallene, spricht völlig ohne die Spur einer Drohung, aber irgendwie klingt sie gefährlich. "Das hier ist kein Gericht, und du wirst sie in meiner Gegenwart nicht vor Gericht stellen. Laß sie in Ruhe."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~"Nur über meine Leiche, Vhailor. Ich lasse nicht zu, daß jemand ihr etwas tut."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~Grace nickt, als wolle sie dir Privatsphäre gönnen. "Ich bin bald zurück." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #61424 /* ~Folge der Prostituierten...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~Grace, die Gefallene, nickt. "Sehr gut. Ich werde mit dir reisen, wenn du meine Gesellschaft noch willst."~ */
  IF ~~ THEN REPLY #61642 /* ~"Ich will."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~"Ah!" Grace, die Gefallene, lacht leise, und ihre Augen funkeln. "Wirklich eine pragmatische Überlegung. Also gut... Ich werde mit dir reisen, wenn du meine Gesellschaft noch willst."~ */
  IF ~~ THEN REPLY #61643 /* ~"Ich will."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~"Ja?"~ */
  IF ~~ THEN REPLY #61974 /* ~"Warum hast du das Bordell aufgemacht?"~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~"Kann ich dein Tagebuch lesen?"~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~"Yves hat gesagt, daß du eine Geschichte kennst, die du ihr nicht erzählen willst."~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~"Ich würde gerne noch mehr über deine Vergangenheit hören."~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~"Vrischika scheint dich nicht besonders zu mögen."~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~"Kannst du mir etwas über dieses Symbol auf meinem Arm sagen?"~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~"Hast du schon einmal von einer Nachthexe namens Ravel gehört?"~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~"Kannst du mir erzählen, was du über Ravel weißt?"~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~"Was weißt du über den Blutkrieg?"~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~"Als wir in Ravels Irrgang waren, sagte Ravel, du würdest gefoltert... Hast du Schmerzen?"~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~"Ich hab's mir überlegt, ich habe statt dessen noch ein paar andere Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~"Schon gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~"Die Tanar-Ri-Scheusale - manche nennen sie 'Dämone'. Sie haben sich um des Chaos Willen dem Bösen zugewandt. Sie leben auf den vergifteten Ebenen des Abgrunds, wo sie sich von ihrem eigenen Zorn ernähren und sich über das ganze Multiversum hermachen, alles plündern, was sie anfassen. Sie versuchen ständig, andere zu leidenschaftlichen und lasterhaften Verbrechen zu verführen."~ */
  IF ~~ THEN REPLY #61986 /* ~"Und du bist ein Tanar-Ri?"~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~"Wie bist du schließlich nach Sigil gekommen?"~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~"Danke für die Erklärung... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~"Ich habe das Bordell eröffnet, um diesen lustvollen Fiebern, die die Gedanken befallen, mehr Ausdrucksmöglichkeiten zu bieten als nur die fleischliche. Viel Freude läßt sich in der Konversation finden und darin, sich mit anderen in den verbalen Künsten zu üben."~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~"Warum hast du solch eine Einrichtung aufgemacht?"~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~"Warum hast du solch eine Einrichtung aufgemacht?"~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~"Wenn du aus dem Abgrund stammst, wie bist du schließlich nach Sigil gekommen?"~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~"Danke für die Erklärung... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~Grace, die Gefallene, hebt eine Augenbraue. "Das ist eine merkwürdige Frage." Sie runzelt die Stirn. "Ich glaube nicht, daß mich das jemals jemand gefragt hat. Zumindest nicht direkt."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~"Entschuldige, Madam Grace. Ich wollte nicht so direkt sein. Ich war nur neugierig."~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~"Also... warum?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~"Nun, es ist merkwürdig, daß ein Sukkubus solch eine Einrichtung aufmacht... Ihr Zweck scheint deinem Wesen zu widersprechen."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~"Dann vergiß es. Kann ich dir noch ein paar andere Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~"Vergiß die Erklärung... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~"Oh, du mußt dich nicht entschuldigen. Ich spreche gerne mit dir über die Gründe, wenn du das möchtest."~ */
  IF ~~ THEN REPLY #62011 /* ~"Ich würde sie gerne hören, ja."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~"Es ist einfach merkwürdig, daß ein Sukkubus solch eine Einrichtung aufmacht... Ihr Zweck scheint deiner Natur zu widersprechen."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~"Im Moment nicht. Kann ich dir noch ein paar andere Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~"Vielleicht ein anderes Mal... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~"Ein Teil der Antworten auf deine Fragen setzt voraus, daß du weißt, daß ich ein Mitglied der Gesellschaft der Empfindung bin. Unser Bund glaubt, daß man so viel wie möglich im Multiversum erleben sollte."~ */
  IF ~~ THEN REPLY #62006 /* ~"Und deshalb hast du das Bordell aufgemacht?"~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~"Ich verstehe, du brauchst nichts weiter zu erklären. Kann ich dir noch ein paar andere Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~"Danke für die Erklärung... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~"Das Bordell soll die Lüste selbst des abgebrühtesten Intellektuellen befriedigen. Es ist dafür gedacht, die Gedanken zu stimulieren, das Bewußtsein gegenüber einem selbst und anderen zu stärken, neue Möglichkeiten zum *Erfahren* anderer Personen schaffen. Es ist für diejenigen da, die mehr suchen als die seichten körperlichen Freuden, die den Stock und die Unteren Bezirke füllen."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~"Nun, ich würde sie nicht als seich... Äh, ich meine, ich verstehe das. Das Bordell war also eine Art Schule?"~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~"Ich verstehe. Diese Einrichtung animiert also nur zu intelektuellen Zweikämpfen, und nicht zu, ähm, also der *anderen* Art von Zweikämpfen. Das Bordell war also eine Art Schule?"~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~"Danke für die Erklärung... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~"Ja. Ich hoffe, daß durch das Erlernen der Kunst der Sprache und ihrer Feinheiten die Gäste und die Schüler mehr über sich selbst lernen. Man ist nur so beschränkt wie die eigene Sprachgewandheit. Sprache einsetzen zu können, um in anderen Gefühle hervorzurufen, ist eine beachtenswerte Fähigkeit."~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~"Wenn du aus dem Abgrund stammst, wie bist du schließlich nach Sigil gekommen?"~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~"Danke für die Erklärung... Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~"Das ist richtig. Ich bin ein niederer Tanar-Ri, genauer gesagt ein Sukkubus." Sie seufzt leise. "Leider sind wir auf den Unteren Ebenen und anderswo zu gewöhnlich, als es für uns selbst gut ist. Die meisten Vertreter meiner Rasse beschäftigen sich damit, Sterbliche mit verschiedenen Freuden des Fleisches zu verführen."~ */
  IF ~~ THEN REPLY #62028 /* ~"Und du...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~"Ich bin ein niederer Tanar-Ri, genauer gesagt ein Sukkubus." Sie seufzt leise. "Leider sind wir auf den Unteren Ebenen und anderswo zu gewöhnlich, als es für uns selbst gut ist. Die meisten Vertreter meiner Rasse beschäftigen sich damit, Sterbliche mit verschiedenen Freuden des Fleisches zu verführen."~ */
  IF ~~ THEN REPLY #62032 /* ~"Und du...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Grace, die Gefallene, sagt, sie sei ein Sukkubus, "ein niederer Tanar-Ri", eins der Scheusale, die auf den Unteren Ebenen leben. Anscheinend sucht ihre Rasse Sterbliche auf, verführt sie, und nimmt ihre Seelen mit in den Abgrund. Sehr charmant.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~"Ich würde gerne sagen können, daß ich mich davon distanziert habe... Es ist schließlich eine triviale und unproduktive Art, seine Zeit hier im Multiversum zu verbringen. Das Leben hat so viel mehr zu bieten, findest du nicht auch?"~ */
  IF ~~ THEN REPLY #62036 /* ~"Vielleicht. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~"Die Sinnsaten sind der Bund aus Sigil, der sich der Erfahrung verschrieben hat. Ohne Erfahrung, ohne Empfindung, sind wir für vieles im Multiversum blind. Deshalb streben die Sinnsaten danach, möglichst viele Erfahrungen zu machen - wenn alles erfahren wurde, dann wird sich die Wahrheit des Multiversums offenbaren."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~"Interessante Philosophie. Könnte ich mich den Sinnsaten anschließen?"~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~Sie lächelt. "Um sich den Sinnsaten anzuschließen, muß man nur ein Schüler des Lebens sein."~ */
  IF ~~ THEN REPLY #62043 /* ~"Ich wollte sagen, ich würde gerne ihrem Bund beitreten."~ */ JOURNAL #27464 /* ~Grace, die Gefallene, hat mir vorgeschlagen, daß ich es mal in der Städtischen Festhalle versuche, wenn ich der Gesellschaft der Empfindung beitreten möchte. Sie sagte, da sollte jemand sein, der mir helfen könnte.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~"Natürlich... Verzeih mir meine Neckerei." Grace nickt. "Wenn du dich den Sinnsaten anschließen möchtest, würde ich mich bei der Öffentlichen Festhalle erkundigen. Dort sollte dir irgend jemand helfen können."~ */
  IF ~~ THEN REPLY #62047 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~"Sehr gut. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~"Der Blutkrieg ist der Konflikt, der auf den Unteren Ebenen zwischen den Baatezu und den Tanar-Ri wütet. Sie kämpfen darum, ob das Böse rechtschaffen oder chaotisch sein sollte." Grace, die Gefallene, hält inne. "Es ist ein Krieg, den man am besten um jeden Preis vermeiden sollte. Laß doch die Tanar-Ri und Baatezu sich gegenseitig die Köpfe einhauen - lassen sie wenigstens den Rest der Ebenen in Frieden... oder doch zumindest relativ in Frieden."~ */
  IF ~~ THEN REPLY #62050 /* ~"Relativ in Frieden?"~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~"Hast du in ihm gedient?"~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~"Na ja, der Krieg ist so umfassend, daß die meisten Rassen darin gegen ihren Willen verwickelt sind. Wenn man ihn einfach ignoriert, wird das meistens genauso gefährlich wie an ihm teilzunehmen."~ */
  IF ~~ THEN REPLY #62057 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~"Hast du in ihm gedient?"~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~"Gelegentlich ja. Es gibt eine Anzahl menschlicher Söldner, die am Blutkrieg teilnehmen. Sie dienen als Fußsoldaten, Kanonenfutter oder Scheusalfraß."~ */
  IF ~~ THEN REPLY #62063 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~"Hast du in ihm gedient?"~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~"Den Chroniken zufolge wird der Blutkrieg geführt, seit die Baatezu auf die Tanar-Ri gestoßen sind... und das war vor *sehr* langer Zeit. Ich bin nicht sicher, ob es einen menschlichen Ausdruck gibt, der die Zeitspanne zwischen damals und jetzt ausdrücken kann." Grace, die Gefallene, schüttelt den Kopf. "Ich fürchte, daß weder die Baatezu noch die Tanar-Ri sich jemals gegenseitig gemocht haben."~ */
  IF ~~ THEN REPLY #62069 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~"Hast du in ihm gedient?"~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~"Nein. Meine Mutter schon. Sukkuben führen Sterbliche in der Regel in die Versuchung, ihren Geist in den Abgrund zu bringen, um mehr Tanar-Ri zu erschaffen, die im Blutkrieg sterben können."~ */
  IF ~~ THEN REPLY #62075 /* ~"Deine Mutter? Sie hat im Blutkrieg gedient?"~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~"Ja. Sie gehörte zu den besten, hat zahllose sterbliche Männer verführt. Sie lebt jetzt im Abgrund und verkauft ihre Kinder in die Sklaverei."~ */
  IF ~~ THEN REPLY #62082 /* ~"Du... wurdest von deiner Mutter in die Sklaverei verkauft?"~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~"Eine Zeitlang. Ich habe meine Freiheit in einem Improvisationswettbewerb gewonnen. Das ist schon sehr lange her."~ */
  IF ~~ THEN REPLY #62090 /* ~"An wen hat sie dich verkauft?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Grace, die Gefallene, hat mir erzählt, daß ihre eigene Mutter sie in die Sklaverei verkauft hat ... und zwar an keine Geringeren als die verhaßten Feinde der Tanar-Ris, die Baatezu. Anscheinend hat Grace ihre Freiheit in einem Improvisationswettkampf mit ihrem Baatezu-Meister wiedergewonnen. Über die Details hat sie sich nicht ausgelassen.~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~"Sie hat mich an die Baatezu verkauft. Ich glaube, daß sie eher damit gerechnet hat, daß sie mich töten würden. Trotz ihres Wissens auf anderen Gebieten weiß sie wenig über deren Kultur."~ */
  IF ~~ THEN REPLY #62106 /* ~"Sie hat dich an die Erzfeinde der Tanar-Ri verkauft?"~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~"Ja." Grace, die Gefallene, richtet sich auf. "Wolltest du noch etwas wissen?"~ */
  IF ~~ THEN REPLY #62114 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~"Sind dir meine Fragen unangenehm?"~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~"Oh, nein, überhaupt nicht. Es ist am besten, wenn du dies weißt: Der Blutkrieg steht hinter den meisten Ereignissen auf den Ebenen. Es ist wichtig zu verstehen, was er ist und warum er stattfindet."~ */
  IF ~~ THEN REPLY #62121 /* ~"Du hast gesagt, daß der Rest der Ebenen 'relativ in Frieden' gelassen wird, solange der Krieg andauert?"~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~"Benutzen sie Menschentruppen?"~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~"Wie lange dauert er schon?"~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~"Hast du in ihm gedient?"~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~"Ich hätte noch ein paar Fragen, die nichts mit dem Blutkrieg zu tun haben."~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~"Ich kenne den Namen." Grace, die Gefallene, hält inne und denkt einen Moment nach. "Mit diesem Namen ist ein Gestrüpp von Gerüchten verbunden, und die meisten qualifizieren sie als Mythos ab, aber ich habe den Verdacht, daß sie wirklich existiert hat und während ihres Aufenthalts hier im Käfig einen ziemlichen Eindruck gemacht hat." Sie wirkt verwundert. "Warum fragst du?"~ */
  IF ~~ THEN REPLY #62128 /* ~"Ich habe vor, sie zu suchen."~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~"Es gibt keinen Grund... Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~Grace hebt eine Augenbraue. "Wirklich? Ich kann mir nicht verkneifen, nach dem Warum zu fragen."~ */
  IF ~~ THEN REPLY #62132 /* ~"Ich brauche Informationen, über die sie verfügt."~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~"Es gibt keinen Grund... Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~"Kann man diese Informationen von niemand anderem bekommen?"~ */
  IF ~~ THEN REPLY #62136 /* ~"Ich vermute, daß nur Ravel über das Wissen verfügt, das ich brauche."~ */ JOURNAL #27460 /* ~Grace, die Gefallene, hat mir erzählt, daß ihre eigene Mutter sie in die Sklaverei verkauft hat ... und zwar an keine Geringeren als die verhaßten Feinde der Tanar-Ris, die Baatezu. Anscheinend hat Grace ihre Freiheit in einem Improvisationswettkampf mit ihrem Baatezu-Meister wiedergewonnen. Über die Details hat sie sich nicht ausgelassen.~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~"Ich weiß es nicht, aber ich will es herausfinden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~Grace legt ihre Hand leicht auf deinen Arm. "Überleg mal: Wenn Ravel wirklich existiert, dann ist sie äußerst mächtig und schlau. Wenn nur ein Bruchteil der Geschichten über ihre Aktivitäten wahr sind, dann ist sie ein Wesen, das neue Bedeutungen des Bösen entdeckt hat. Die Suche nach ihr ist kein Vorhaben, das man auf die leichte Schulter nehmen könnte." ~ */
  IF ~~ THEN REPLY #62140 /* ~"Das ist mir klar."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~"Nun, mir ist noch nie einen Mythos begegnet. Das ist jetzt wohl ein Outing." Sie lächelt. "Versuchst du nie, etwas Langweiliges zu tun?"~ */
  IF ~~ THEN REPLY #62142 /* ~"Ich versuch's zu vermeiden... Weißt du noch irgendwas anderes über Ravel?"~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~"Nicht, wenn sich's vermeiden läßt. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~"Vielleicht tue ich das in einer anderen Inkarnation, aber nicht jetzt. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~"Es hieß, sie wäre eine der Nachthexen der Grauen Einöde, und man glaubte, sie besäße Kräfte und eine Klugheit, die die ihrer Schwestern bei weitem übersteigen würden. Sie kam vor langer Zeit nach Sigil, und zusätzlich zu den bösen Taten, die sie während ihres Aufenthalts vollbrachte, geht das Gerücht, daß ihre Aktionen den Käfig selbst bedroht hätten. Jetzt existiert sie in erster Linie nur noch als Fiktion, als Gestalt in Kindergeschichten." Grace hält inne. "Ich nehme an, die Dame der Schmerzen ist mit ihr so verfahren, wie mit allen Bedrohungen für Sigil verfahren wird."~ */
  IF ~~ THEN REPLY #62148 /* ~"Wie?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~"Was ist die Graue Einöde?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~"Gibt es noch irgend jemanden, der etwas über sie wissen könnte?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~"Ich verstehe. Laß uns weitergehen."~ */ JOURNAL #27458 /* ~Grace, die Gefallene, sagt, Ravel sei eine Nachthexe, eine der grauen Schwestern, die in der Grauen Einöde herumziehen. Sie besitze Kräfte, die weit über die ihrer Schwestern hinausgingen, und sie sei vor langer Zeit nach Sigil gekommen. Während ihres Aufenthalts habe sie die Dame der Schmerzen verärgert und sei bestraft worden.~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~"Ravel wurde höchstwahrscheinlich in einen Irrgang geschickt. Eines der Gefängnisse der Dame."~ */
  IF ~~ THEN REPLY #62154 /* ~"Irrgänge? Was sind Irrgänge?"~ */ JOURNAL #27457 /* ~Grace, die Gefallene, sagt, daß Ravel in einem der Irrgänge der Dame der Schmerzen gefangen sei.~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~"Was ist die Graue Einöde?"~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~"Gibt es noch irgend jemanden, der etwas über sie wissen könnte?"~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~"Eine verderbte Ebene, die eigentlich 'zwischen' Baator und dem Abgrund liegt. Sie ist oft Schlachtfeld im Blutkrieg."~ */
  IF ~~ THEN REPLY #62160 /* ~"Weißt du, was mit Ravel geschehen ist?"~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~"Genug über Ravel... Was ist der Blutkrieg?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~"Gibt es noch irgend jemanden, der etwas über sie wissen könnte?"~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~"Irgendjemand in der Festhalle könnte etwas über sie wissen."~ */
  IF ~~ THEN REPLY #62166 /* ~"Weißt du, was mit Ravel geschehen ist?"~ */ JOURNAL #27457 /* ~Grace, die Gefallene, sagt, daß Ravel in einem der Irrgänge der Dame der Schmerzen gefangen sei.~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~"Was ist die Graue Einöde?"~ */ JOURNAL #27457 /* ~Grace, die Gefallene, sagt, daß Ravel in einem der Irrgänge der Dame der Schmerzen gefangen sei.~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ JOURNAL #27457 /* ~Grace, die Gefallene, sagt, daß Ravel in einem der Irrgänge der Dame der Schmerzen gefangen sei.~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~"Vielleicht mach wir uns dann auf den Weg dahin. Laß uns weitergehen."~ */ JOURNAL #27457 /* ~Grace, die Gefallene, sagt, daß Ravel in einem der Irrgänge der Dame der Schmerzen gefangen sei.~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~NULL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~"Die Bedeutung von Namen ist ein komplexes Thema. Es gibt viel dazu zu sagen, und vieles, das besser ungesagt bleibt."~ */
  IF ~~ THEN REPLY #62172 /* ~"Ist Grace, die Gefallene, dein richtiger Name?"~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~"Also gut. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~"Wir werden nicht mehr über sie reden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~"Vielleicht." Sie lächelt verhalten. "Vielleicht nicht. Es gibt Namen, die gegeben werden, und Namen, die verdient werden. Wer könnte schon sagen, welcher der richtige ist?"~ */
  IF ~~ THEN REPLY #62178 /* ~"Ich glaube, daß ein verdienter Name mehr Gewicht hat."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~"Ich glaube, daß ein gegebener Name mehr Gewicht hat."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~"Ich weiß nicht, ob Namen für mich überhaupt einen Wert haben."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~"Also gut. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~"Wir werden nicht mehr über sie reden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~"Das kann schon sein. Warum glaubst du das?"~ */
  IF ~~ THEN REPLY #62185 /* ~"Weil ein verdienter Name nicht willkürlich ist, ein verdienter Name ist ein Zeugnis für das, was man erreicht hat."~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~"Das kann schon sein. Warum glaubst du das?"~ */
  IF ~~ THEN REPLY #62187 /* ~"Weil er sagt, wie andere einen sehen. Und deren Einschätzung kann stärker ins Gewicht fallen als die Selbsteinschätzung."~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~Sie blickt dich erstaunt an. "Wirklich?"~ */
  IF ~~ THEN REPLY #62189 /* ~"Ein Name ist ein Mantel aus Buchstaben, der einer Person übergeworfen wurde, weiter nichts. Manchmal kann ein Name etwas über einen Teil der Person aussagen oder sogar helfen, diese Person zu definieren, aber das ist nicht, wer die Person *ist*."~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~Grace nickt. "Ich akzeptiere deine Meinung."~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~"Also, warum heißt du Grace, die Gefallene?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~"Also, warum heißt du Grace, die Gefallene?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~"Also, warum heißt du Grace, die Gefallene?"~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~"Würde es eine Rolle spielen?" Sie lächelt. "Es ist ein verdienter Name."~ */
  IF ~~ THEN REPLY #62195 /* ~"Für mich spielt es eine Rolle. Ich würde gerne wissen, wie du zu diesem Namen gekommen bist."~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~"Würde es eine Rolle spielen?" Sie lächelt. "Es ist ein gegebener Name."~ */
  IF ~~ THEN REPLY #62197 /* ~"Für mich spielt es eine Rolle. Ich würde gerne wissen, wie du zu diesem Namen gekommen bist."~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~"Würde es eine Rolle spielen?" Sie lächelt. "Es ist nur ein Mantel aus Buchstaben."~ */
  IF ~~ THEN REPLY #62199 /* ~"Für mich spielt es eine Rolle. Ich würde gerne wissen, wie du zu diesem Namen gekommen bist."~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~"Ich bin von meinen Leuten abgefallen... Manch einer würde vielleicht sagen, von meinen Leuten aufgestiegen, aber für mich *fühlt* sich 'fallen' richtiger an." Sie sieht dich fragend an. "Ergibt das einen Sinn?" ~ */
  IF ~~ THEN REPLY #62201 /* ~"Ja, tut es. Schließlich assoziiert man mit 'gefallen' eine Art Verlust."~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~"Tut es. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~"Ja... Ich glaube, ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~Grace, die Gefallene, schweigt einen Moment, dann nickt sie gedankenvoll. "Ja... Vielleicht hat es sich deshalb so angefühlt. Ich... habe mich schon vor langem mit dem Verlust abgefunden, aber der Name ist geblieben."~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~"Bist du sicher, daß du dich damit abgefunden hast?"~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~"Bist du sicher, daß du dich damit abgefunden hast? Ravel schien anderer Meinung zu sein."~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~"Bist du sicher, daß du dich damit abgefunden hast?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~"Bist du sicher, daß du dich damit abgefunden hast? Ravel schien anderer Meinung zu sein."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~"Also gut. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~"Ich verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~Grace, die Gefallene, sieht dir in die Augen, und einmal mehr überwältigt dich das leuchtende Blau ihrer Augen... Es ist aufgewühlt, wie der Ozean im Sturm. "Das dachte ich mir. Doch im Gespräch mit dir hast du mich dazu gebracht, daß mir einige Dinge klar geworden sind." Sie lächelt. "Ich danke dir."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~"Nun, wenn du drüber reden willst, dann laß es mich wissen, ja?"~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~"Nun, wenn du drüber reden willst, dann laß es mich wissen, ja?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~"Also gut. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~"Ist gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~Sie nickt. "Du bist sehr gütig. Das werde ich tun."~ */
  IF ~~ THEN REPLY #62217 /* ~"Also gut. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~"Ist gut. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~Grace legt die Hände so zusammen, daß sich Finger und Daumen berühren und ungefähr einen Kreis bilden. "Es heißt, die Dame habe die Macht, Stücke von Sigil zu nehmen..." Du siehst überrascht zu, wie ein Geisterbild von Graces kleinem Finger sich von ihrer Hand löst, in der Luft schwebt und sich zu einem kleinen Kreis einrollt. "...und einen Irrgang zu schaffen."~ */
  IF ~~ THEN REPLY #62220 /* ~"Erzähl weiter..."~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~"Ich verstehe. Kannst du mir mehr über diese Ebene sagen, von der Ravel stammt... die Graue Einöde?"~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~"Ich glaube, ich verstehe. Gibt es sonst irgend jemanden, der mehr über Ravel wissen könnte?"~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~"Macht nichts. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~"Ich verstehe. Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~Der kleine, geisterhafte Kreis schwebt in der Luft und beginnt, sich langsam zu drehen. "Das Stück Sigil, das sie nimmt, hält den Gefangenen fest, der Gefangennahme im Irrgang kann man nicht entkommen. Es kann jederzeit passieren, während man die Straße hinuntergeht, oder durch eine Tür..." Sie klatscht in die Hände. "...Und dann ist man woanders." In dem geisterhaften Kreis siehst du auf einmal die Spur einer Bewegung, als gehe jemand im Innern umher.~ */
  IF ~~ THEN REPLY #62226 /* ~"Erzähl weiter..."~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~"Ich verstehe. Kannst du mir mehr über diese Ebene sagen, von der Ravel stammt... die Graue Einöde?"~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~"Ich glaube, ich verstehe. Gibt es sonst irgend jemanden, der mehr über Ravel wissen könnte?"~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~"Macht nichts. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~"Ich verstehe. Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~Grace fährt fort, der winzige Geisterirrgang spiegelt sich in ihren Augen. "Es heißt, daß es in jedem Irrgang ein Portal gibt, das hinausführt, aber es ist schwer zu finden. Vielleicht ist es dazu da, dem Gefangenen Hoffnung zu geben. Vielleicht ist es dazu da, den Gefangenen zu foltern." Der geisterhafte Irrgang löst sich auf. "Vielleicht beides."~ */
  IF ~~ THEN REPLY #62232 /* ~"Ich verstehe. Kannst du mir mehr über diese Ebene sagen, von der Ravel stammt... die Graue Einöde?"~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~"Ich glaube, ich verstehe. Gibt es sonst irgend jemanden, der mehr über Ravel wissen könnte?"~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~"Macht nichts. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~"Ich verstehe. Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~"Nein. Ich mache ihr keinen Vorwurf."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~"Was meinte sie damit, daß du eine Anhängerin des Baatezu-Lagers seist?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~"Was meinte sie damit, daß du eine Anhängerin des Baatezu-Lagers seist?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~"Was meinte sie damit, daß du eine Anhängerin des Baatezu-Lagers seist?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~"Warum nicht?"~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~"Ich verstehe. Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~"Wir haben uns darüber unterhalten. Ich war eine Zeitlang eine Sklavin der Baatezu. In der Zeit haben sie mich vielen Foltern unterzogen."~ */
  IF ~~ THEN REPLY #62244 /* ~"Nun, mich interessiert eher diese Sache mit der 'Lageranhängerin', die Vrischika erwähnt hat. Was hat sie damit gemeint?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~"Vergiß es einfach. Warum machst du Vrischika keinen Vorwurf, daß sie dich haßt?"~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~"Ich war eine Zeitlang eine Sklavin der Baatezu - vor langer Zeit. Ich habe meine Freiheit in einem Improvisationswettbewerb gewonnen." ~ */
  IF ~~ THEN REPLY #62249 /* ~"Nun, mich interessiert eher diese Sache mit der 'Lageranhängerin', die Vrischika erwähnt hat. Was hat sie damit gemeint?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~"Ich verstehe. Warum machst du Vrischika keinen Vorwurf, daß sie dich hast?"~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~"Du erinnerst dich doch sicher daran, was ich dir über meine Vergangenheit erzählt habe?"~ */
  IF ~~ THEN REPLY #62254 /* ~"Nun, mich interessiert eher diese Sache mit der 'Lageranhängerin', die Vrischika erwähnt hat. Was hat sie damit gemeint?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~"Vergiß es einfach. Warum machst du Vrischika keinen Vorwurf, daß sie dich haßt?"~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~"Ich verstehe. Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~Grace, die Gefallene, macht ein erstauntes Gesicht... Sie scheint dich einen Moment lang zu mustern, als versuche sie, deine Miene zu interpretieren. Nach einem Moment spricht sie, und ihre Stimme ist ruhiger als normal. "Spielt das eine Rolle?"~ */
  IF ~~ THEN REPLY #62259 /* ~"Für mich schon. Ich würde gerne wissen, mit wem ich reise."~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~"Nein, tut es nicht. Warum machst du Vrischika keinen Vorwurf, daß sie dich haßt?"~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~"Um deine Frage zu beantworten, werde ich dir folgendes erzählen: Die Baatezu sind keine Menschen. Ihre Lüste streben nach Macht, nicht nach dem Fleisch, und Vergewaltigungen oder fleischliche Triebe, wie man sie bei Menschen antrifft, die andere Menschen gefangen halten, bedeuten ihnen nichts. Die Foltern der Baatezu sind viel subtiler und viel gefährlicher als *jede* Verletzung des Fleisches, und die Narben verblassen viel langsamer. Ist es das, was du wissen wolltest?" ~ */
  IF ~~ THEN REPLY #62264 /* ~"Ja. Ich wollte einfach wissen, mit wem ich gereist bin."~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~"Ja. Warum machst du Vrischika keinen Vorwurf, daß sie dich haßt?"~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~"Ich dachte, du wüßtest das bereits." Grace, die Gefallene, neigt leicht den Kopf. "Ich habe mich getäuscht."~ */
  IF ~~ THEN REPLY #62269 /* ~"Warum machst du Vrischika keinen Vorwurf, daß sie dich haßt?"~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~"Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~"Vrischika ist ein Tanar-Ri-Scheusal, wie ich, aber von einer anderen Art: ein Alu-Scheusal. Um Vrischika zu verstehen, muß einem klar sein, daß die Kultur der Tanar-Ri das Chaos ist, und seinem Wesen nach sind dem Chaos Fairness und Gerechtigkeit gleichgültig. Alu-Scheusale gelten als... irrelevant. Ohne Zweck. In vielerlei Hinsicht ist das schlimmer als ein Todesurteil."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~"Was meinte sie damit, daß du eine Anhängerin des Baatezu-Lagers seist?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~"Was meinte sie damit, daß du eine Anhängerin des Baatezu-Lagers seist?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~"Was meinte sie damit, daß du eine Anhängerin des Baatezu-Lagers seist?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~Grace, die Gefallene, schweigt einen Moment und ihr Blick schweift in die Ferne. Als sie sich wieder dir zuwendet, haben ihre Augen einen eigenartigen Azurton angenommen, einen Ton, der von Traurigkeit und Tränen kündet.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~"Ravel sieht vieles mit ihren Schwarzstachel-Augen, manche Dinge, die anderen Augen verborgen bleiben, sogar das Wesen anderer." Sie schüttelt langsam den Kopf. "Manchmal... Manchmal macht sich der Schmerz bemerkbar. Ich habe gelernt, daß es *schwer* ist, sich gegen die eigene Natur zu wenden."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~"Geht's dir nicht gut?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~"Ist alles in Ordnung?"~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~Sie lächelt kaum sichtbar und sieht dir in die Augen. "Ja... Es ist nett von dir, daß du dich erkundigst. Der Schmerz macht sich immer noch bemerkbar, aber ich habe mich vor vielen Jahrhunderten mit meinem Wesen abgefunden."~ */
  IF ~~ THEN REPLY #62285 /* ~"Also gut, d-"~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~Grace unterbricht dich, bevor du fortfahren kannst. "Ich danke dir, daß du dich nach meinem Wohlbefinden erkundigst. Deine Anteilnahme ist nicht unwillkommen."~ */
  IF ~~ THEN REPLY #62287 /* ~"Ich wollte nur sichergehen, daß es dir gut geht. Ich hätte noch ein paar Fragen."~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~"Sicher. Ich wollte nur sehen, wie es dir geht. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~Grace, die Gefallene, deutet ein Kopfschütteln an. "Nein, ich glaube nicht. Die Kunst... und die Disziplinen, die ich ausübe, unterscheiden sich."~ */
  IF ~~ THEN REPLY #62290 /* ~"Was meinst du?"~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~"Dann vergiß es. Kann ich dir noch ein paar andere Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~"Meine 'Fähigkeiten', wie du sie siehst, haben ihre Wurzeln in meinem Glauben, nicht in der Manipulation von Energien wie die Kunst es tut. Die Kunst ist ein *Mechanismus*, mit dessen Hilfe die Kraft des Multiversums gezähmt werden kann, durch Gesten, Rituale und Geräte. Meine 'Fähigkeiten' kommen auf einem anderen Weg zu mir. Mein Glaube und sein Wesen ermöglichen es, daß sich mir Teile des Multiversums offenbaren."~ */
  IF ~~ THEN REPLY #62294 /* ~"Das Wesen deines Glaubens? An was glaubst du?"~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~"Ich glaube an *Erfahrung*. Ich glaube, daß eine Person verändert werden kann - zum Guten - je mehr Teile des Multiversums sie wahrnehmen darf und je mehr das Multiversum von ihr wahrnehmen darf. Mein Glaube an das Wesen der Erfahrung erlaubt es mir..." Sie hält nachdenklich inne.~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~"Ich nehme an, die beste Erklärung ist, daß mein Glaube es mir erlaubt, Dinge anders zu *sehen*. Wenn man das Multiversum auf diese Weise sieht, lernt man, wie man Dinge 'verändert' - Wunden heilt, einer Person ins Herz blickt und so weiter - indem man einfach nur will, daß sie passieren."~ */
  IF ~~ THEN REPLY #62426 /* ~"Aber diese 'Veränderungen', die du bewirkst, scheinen Zaubereien sehr ähnlich zu sein - wie lernt man es, solche Dinge zu tun? Hast du ein Buch mit Zaubersprüchen?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~"Glaubst du an die Erfahrung wegen dem, was dir bei den Baatezu passiert ist?"~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~"Kannst du mir beibringen, die Dinge so zu sehen, wie du es tust?"~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~"Ich kann dir nicht beibringen, das Multiversum auf diese Art zu sehen. Man muß lernen, es zu sehen... und auf die eigene Weise, nicht durch die Augen eines anderen." Sie lächelt verhalten. "Ich glaube nicht, daß ausgerechnet *du* in so einer Angelegenheit meine Hilfestellung brauchst - ich stelle fest, daß ich viel mehr von dir lerne, als du von mir."~ */
  IF ~~ THEN REPLY #62432 /* ~"Diese 'Veränderungen', die du bewirkst, scheinen Zaubereien sehr ähnlich zu sein - wie lernt man es, solche Dinge zu tun? Hast du ein Buch mit Zaubersprüchen?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~"Glaubst du an die Erfahrung wegen dem, was dir bei den Baatezu passiert ist?"~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~"Nein, meine 'Zaubersprüche', wie du sie nennst, kommen zu mir, nachdem ich mich ausgeruht und konzentriert habe. Wenn ich schlafe und dann aufwache, kann ich mich wieder neu konzentrieren. Die Menge an Glauben, die nötig ist, um das Multiversum um mich herum zu 'Verändern', kann eine große seelische Belastung sein, fürchte ich. Nur sehen zu können, wie man Dinge Verändert, reicht nicht - man muß die Kraft haben, die Veränderung zu bewirken und zu erhalten."~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~"Glaubst du an die Erfahrung wegen dem, was dir bei den Baatezu passiert ist?"~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~Grace, die Gefallene, nickt. "Ich habe lange darüber nachgedacht, und ich glaube ja." Sie sieht dich fragend an. "Ich glaube, daß es daran liegt, daß ich zufrieden bin mit dem, was ich geworden bin, und ich denke nicht, daß es möglich gewesen wäre, wenn ich das Multiversum nicht so erfahren hätte, wie ich es getan habe."~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~"Ich glaube nicht, daß es etwas damit zu tun hat, daß du das Multiversum erfährst... Ich glaube, das Wichtige war, wie du mit der Erfahrung umgegangen bist."~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~"Wie ich schon sagte, ich glaube nicht, daß es etwas damit zu tun hat, daß du das Multiversum erfährst... Ich glaube, das Wichtige war, wie du mit der Erfahrung umgegangen bist. Es war deine Charakterstärke, die dich verändert hat."~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~"Wie ich schon sagte, ich glaube nicht, daß es etwas damit zu tun hat, daß du das Multiversum erfährst... Ich glaube, das Wichtige war, wie du mit der Erfahrung umgegangen bist. Es war deine Charakterstärke, die dich verändert hat."~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~"Diese 'Veränderungen', die du bewirkst, scheinen Zaubereien sehr ähnlich zu sein - wie lernt man es, solche Dinge zu tun? Hast du ein Buch mit Zaubersprüchen?"~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~"Ich verstehe. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~"Das ist alles, was ich wissen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~Grace, die Gefallene, nickt langsam. Sie macht einen nachdenklichen Eindruck. "Wahrheit liegt in dem, was du sagst."~ */
  IF ~~ THEN REPLY #62448 /* ~Wirklichkeit: "Ich glaube, es hätte viele andere gegeben, die zusammengebrochen wären, wenn sie solchen Erfahrungen wie du ausgesetzt worden wären. Du hast aus ihnen *gelernt*, und du bist stärker geworden. Das beweist eine große Willenskraft und Charakterstärke."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~Schmeichelnde Lüge: "Ich glaube, es hätte viele andere gegeben, die zusammengebrochen wären, wenn sie solchen Erfahrungen wie du ausgesetzt worden wären. Du hast aus ihnen *gelernt*, und du bist stärker geworden. Das beweist eine große Willenskraft und Charakterstärke."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~"Vielleicht. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~"Das ist alles, was ich sagen wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~Grace, die Gefallene, sieht dich schweigend an. ~ */
  IF ~~ THEN REPLY #62453 /* ~Wahrheit: "...Und das bewundere ich an dir. Nicht nur für die Stärke, sondern auch für die Fähigkeit, solche Schrecken als Möglichkeit zu betrachten, eine bessere Person zu werden, braucht es eine Kraft, die *wenige* besitzen."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~Schmeichelnde Lüge: "...Und das bewundere ich an dir. Nicht nur für die Stärke, sondern auch für die Fähigkeit, solche Schrecken als Möglichkeit zu betrachten, eine bessere Person zu werden, braucht es eine Kraft, die *wenige* besitzen."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~"Und das ist alles." ~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~Grace, die Gefallene, lächelt und nickt dann. "Ich danke dir. Deine Worte sind verständnisvoll und gütig. Aber ich fürchte, daß mein Charakter nicht so stark ist wie er vielleicht scheint. Doch versuche ich, jede Erfahrung als neue Chance zu behandeln, etwas zu lernen."~ */
  IF ~~ THEN REPLY #62457 /* ~"Eine gute Einstellung. Kann ich dir noch ein paar Fragen stellen?"~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~"Weise. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~"Nein."~ */
  IF ~~ THEN REPLY #62460 /* ~"Bitte?"~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~"Ich dachte, ich frag einfach mal. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~Grace lächelt verhalten. "Eine Dame muß ihre Geheimnisse haben."~ */
  IF ~~ THEN REPLY #62464 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~"Ich dachte, ich frag einfach mal. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~"Über wen genau möchtest du reden?"~ */
  IF ~~ THEN REPLY #62467 /* ~"Also... mich."~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~"Dich."~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~"Morte."~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~"Annah."~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~"Dak'kon."~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~"Nordom."~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~"Ignus."~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~"Vhailor."~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~"Niemanden eigentlich. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~"Vergiß es. Vielleicht ein anderes Mal. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~"Mich? Wirklich." Sie überlegt kurz, dann nickt sie. "Also gut, wenn es etwas gibt, das du wissen willst, dann frag bitte."~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~"Ich wollte, daß du weißt, daß ich - als ich im Irrgang Ravel geküßt habe..."~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~"Ehrlich gesagt, würde ich gerne wissen, was du wirklich für mich empfindest."~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~"Ich würde gerne wissen, was du über meine Situation denkst."~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~"Hast du irgendeine Ahnung, wer oder was ich sein könnte?"~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~"Vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~"Vielleicht ein anderes Mal. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~Grace hebt die Hand, um dich zu unterbrechen. "Es braucht nichts gesagt zu werden. Ich muß sagen, ich bewundere deinen Mut, so etwas zu tun - nicht viele Leute würden sich trauen, einen Mythos zu küssen, schon gar nicht einen von Ravels Format."~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~Wahrheit: "Ich habe Ravel nur geküßt, weil Ravel nicht damit gerechnet hat, nur deshalb - ich hatte den Verdacht, daß sie mich auf die Probe stellen wollte."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~Lüge: "Ich habe Ravel nur geküßt, weil Ravel nicht damit gerechnet hat, nur deshalb - ich hatte den Verdacht, daß sie mich auf die Probe stellen wollte."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~Wahrheit: "Ich habe Ravel nur geküßt, weil es mir richtig erschien - frag mich nicht, warum."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~Lüge: "Ich habe Ravel nur geküßt, weil es mir richtig erschien - frag mich nicht, warum."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~Wahrheit: "Ich habe Ravel geküßt, weil ich wollte, daß... Ihre normale Form war irgendwie unangenehm."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~Lüge: "Ich habe Ravel geküßt, weil ich wollte, daß... Ihre normale Form war irgendwie unangenehm."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~Wahrheit: "Nun, ich habe Ravel geküßt, weil ich dich küssen wollte."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~Schmeichelnde Lüge: "Nun, ich habe Ravel geküßt, weil ich dich küssen wollte."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~"Gut. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~"Dann werden wir nicht mehr darüber reden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~"Sie hat dich auf die Probe gestellt."~ */
  IF ~~ THEN REPLY #62498 /* ~"Was meinst du?"~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~"Ich glaube, dem, was Ravel bei dir sehen kann, sind Grenzen gesetzt. Das könnte mit ein Grund sein, warum du sie so faszinierst. Nur indem sie dir körperliche Herausforderungen stellt, kann sie dein Wesen prüfen."~ */
  IF ~~ THEN REPLY #62500 /* ~"Was, glaubst du, hat sie geprüft?"~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~"Ich glaube, sie wollte sehen, ob sie dir etwas bedeutet - ein Kuß ist eine Möglichkeit, sich darüber ein Urteil zu bilden, wenn es auch eine subtile Angelegenheit sein kann."~ */
  IF ~~ THEN REPLY #62502 /* ~"Gut. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~"Dann werden wir nicht mehr darüber reden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~"Dann ist es das Beste, daß du Ravel geküßt hast, trotz der Risiken. Einen Sukkubus zu küssen bedeutet, den Tod einzuladen."~ */
  IF ~~ THEN REPLY #62506 /* ~"Was meinst du?"~ */ JOURNAL #61616 /* ~Grace, die Gefallene, hat mir erzählt, daß ihr Kuß dem Opfer das Leben entziehen kann... Aus irgendeinem Grund erregt mich das. Ich meine, schließlich kann ich ja nicht sterben, oder? Hmmmm. Das muß ich mir merken.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~"Ein Sukkubus tötet, indem er den Sterblichen durch Küssen ihre Energie aussaugt. Während es für das Opfer eine angenehme Erfahrung ist, lebt das Opfer meistens nicht lange genug, die Erfahrung richtig zu genießen."~ */
  IF ~~ THEN REPLY #62508 /* ~"Oh. Ich... äh, wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~"Hmmmm. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~"Faszinierend... ähm, ich meine, erschreckend. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~Grace lächelt verhalten. "Eine Dame muß ihre Geheimnisse haben."~ */
  IF ~~ THEN REPLY #62512 /* ~"Dann würde ich gerne wissen, was du über meine Situation denkst."~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~"Gut. Hast du irgendeine Ahnung, wer oder was ich sein könnte?"~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~"Dann vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~"Dann vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~"Vielleicht ein anderes Mal. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~Grace runzelt nachdenklich die Stirn. "Ich gebe offen zu, daß du ein ziemliches Rätsel bist." Sie lächelt. "Aber ich finde solche mysteriösen Dinge sehr reizvoll. Sollen wir versuchen, deine Situation zu enträtseln?"~ */
  IF ~~ THEN REPLY #62518 /* ~"Ja."~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~"Nein, lassen wir das für später. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~"Vielleicht ein anderes Mal. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~"Erst einmal: Es ist zwar möglich, daß du ein Tiefling oder irgendeine seltene Kreuzung bist, aber ich vermute, daß du ein Mensch bist... oder einmal einer warst."~ */
  IF ~~ THEN REPLY #62523 /* ~"In Ordnung... Erzähl weiter."~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~"Wenn ich's mir recht überlege, lassen wir das für später. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~"Reden wir ein anderes Mal weiter darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~"Deine Erscheinung ist ungefähr die eines Mannes Anfang dreißig - die Nähte und das Narbengewebe machen die genaue Bestimmung schwierig."~ */
  IF ~~ THEN REPLY #62529 /* ~"Erzähl mir davon... Red weiter."~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~"Wenn ich's mir recht überlege, lassen wir das für später. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~"Der Schlüssel zu deiner Vergangenheit ist dein Gedächtnis, und es scheint, daß bestimmte Orte, Ereignisse und Personen scheinbar vergessene Erinnerungen auslösen. Es sieht so aus, als sei es am besten für dich, wenn du möglichst viele Orte besuchst und mit möglichst vielen Leuten sprichst... kurz gesagt, möglichst viele Erfahrungen in deinem Universum sammelst."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~"Der Rat eines Sinnsaten, was?"~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~"Gut. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~"Darüber hinaus gab es ein paar Dinge, die Ravel gesagt hat und die mich interessieren. Die Tatsache, daß deine Sterblichkeit verloren gegangen ist, gibt einigen Anlaß zur Sorge: Es scheint, daß es nicht gut für dich aussähe, falls jemand so etwas in die Hände bekommen würde."~ */
  IF ~~ THEN REPLY #62541 /* ~"Erzähl weiter..."~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~"Gut. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~"Außerdem hat mir nicht gefallen, was Ravel über die Tode des Gedächtnisses gesagt hat - sie scheint andeuten zu wollen, daß jeder weitere Tod von dir ein Stück weiter an deinem Gedächtnis sagt."~ */
  IF ~~ THEN REPLY #62547 /* ~"Erzähl weiter..."~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~"Gut. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~"Und schließlich: Sie hat erwähnt, daß deine Narben von einem 'Krieg zwischen Scheusalen' erzählen - das klang nach dem Blutkrieg."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~"Was ist der Blutkrieg?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~"Ich habe schon vom Blutkrieg gehört. Kannst du mir erzählen, was du darüber weißt?"~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~"Gut. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~Grace, die Gefallene, lächelt amüsiert. "Ich würde es nicht empfehlen, wenn ich es nicht ausüben würde. Und wenn du nicht bereits wüßtest, daß es wahr ist."~ */
  IF ~~ THEN REPLY #62560 /* ~"Es könnte noch etwas geben, das Licht auf meine Situation werfen könnte..."~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~"In Ordnung. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~"Morte ist höchst merkwürdig... Ich habe in meinem Leben schon viel gesehen, aber nie so etwas wie ihn. Er benimmt sich ein bißchen wie ein Mimir: Zugegeben, man kann nicht leugnen, daß er viel weiß, aber er hat einen gewissen..." Sie schnuppert in der Luft und rümpft die Nase. "...Baatorianischen Geruch an sich."~ */
  IF ~~ THEN REPLY #62565 /* ~"Baatorianischer Geruch?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~"Mimir?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~"Ich habe herausgefunden, warum - ich habe ihn doch tatsächlich vor langer Zeit aus der Schädelsäule in Baator gezogen."~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~"Ja. Aber er ist kein Baatezu... Zumindest nicht von irgendeiner der Sorten, denen ich begegnet bin. Doch alleine der Geruch bringt mich dazu, diesen Schädel mit Vorsicht zu behandeln."~ */
  IF ~~ THEN REPLY #62572 /* ~"Was hast du mit 'Baatezu' und 'Baatorianisch' gemeint?"~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~"Was sagtest du da eben, ein 'Mimir'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~"Was sagtest du da eben, ein 'Mimir'?"~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~"Ich entschuldige mich... Baator ist eine der äußeren Ebenen, Heimat einer Scheusalrasse namens Baatezu. Sie sind böse Kreaturen, und doch verhalten sie sich in vielerlei Hinsicht organisiert und rechtschaffen. Manch einer würde sie vielleicht als 'Teufel' bezeichnen. Sie glauben an Verträge und Hierarchien... In vieler Hinsicht sind sie wie böse Bürokraten."~ */
  IF ~~ THEN REPLY #62579 /* ~"Was hast du gesagt, ein 'Baatorianischer Geruch'?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~"Was sagtest du da eben, ein 'Mimir'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~"Was sagtest du da eben, ein 'Mimir'?"~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~"Ein Mimir ist eine Enzyklopädie des Wissens. Der Besitzer kann ihr Fragen stellen, und wenn sie über das Wissen verfügt, informiert sie den Benutzer über das, was sie weiß."~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~"Und Morte ist ein Mimir?"~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~"Nun, Morte ist kein Mimir - ich habe ihn doch tatsächlich vor langer Zeit aus der Schädelsäule in Baator gezogen."~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~"Das glaube ich nicht. Morte fehlt das silbrige Metall, das Mimirs normalerweise aufweisen. Und er scheint eine eigene Meinung zu haben. Solche Eigenschaften findet man bei herkömmlichen Mimirs nicht." Grace zuckt leicht die Achseln. "Er *könnte* einer sein, aber er ähnelt keinem, dem ich je begegnet bin."~ */
  IF ~~ THEN REPLY #62592 /* ~"Ich glaube, Morte ist ein Mimir."~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~"Morte hat mir gesagt, daß er ein Mimir ist."~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~"Ich glaube auch nicht, daß Morte ein Mimir ist."~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~"Reden wir ein anderes Mal weiter darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~"Dann ist genug zu diesem Thema gesagt."~ */
  IF ~~ THEN REPLY #62599 /* ~"Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~"Dann laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~"So? Höchst merkwürdig. Nun gut."~ */
  IF ~~ THEN REPLY #62603 /* ~"Ich glaube ihm."~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~"Aber eigentlich glaube ich ihm irgendwie nicht."~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~"Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~"Dann laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~"Vielleicht gibt es eine Art Prüfung, um seine Echtheit festzustellen... Aber ich würde das nicht tun, wenn du ihn als Freund schätzt. Wenn das der Fall ist, dann mußt du akzeptieren, was er dir gesagt hat."~ */
  IF ~~ THEN REPLY #62609 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~"In Ordnung. Das war alles, worüber ich sprechen wollte."~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~"Das würde seinen Wissensvorrat erklären. Aber-" Grace, die Gefallene, hält inne. "Man kann nur unter bestimmten Umständen Teil der Säule werden."~ */
  IF ~~ THEN REPLY #62613 /* ~"Was für Umstände?"~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~"Ich weiß darüber Bescheid - man muß eine Lüge erzählt haben, die einen anderen in den Tod geführt hat, richtig?"~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~"Das war alles, worüber ich sprechen wollte. Laß uns gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~"Die Schädelsäule ist eine Säule aus lebenden Köpfen, die von denjenigen stammen, deren Lüge andere in den Tod getrieben haben. Sie kann viele Fragen beantworten, weil sie viel weiß, aber sie erwartet auch viel als Entschädigung für ihre Dienste."~ */
  IF ~~ THEN REPLY #62619 /* ~"Um da hineinzukommen, muß Morte also eine Lüge erzählt haben, durch die jemand getötet wurde?"~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~"Hmmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~"In Ordnung. Das war alles, worüber ich sprechen wollte."~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~"Das stimmt."~ */
  IF ~~ THEN REPLY #62625 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~"Hmmm. Vielleicht frage ich ihn mal danach. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~"Dak'kon?" Grace hebt eine Augenbraue. "Er ist höchst ungewöhnlich für einen Githzerai."~ */
  IF ~~ THEN REPLY #62629 /* ~"Wirklich? Auf welche Weise?"~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~"Vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~"Vergiß es für's erste. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~"Reden wir später darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~"Nun, er gehorcht dir. Das alleine würde ihn in seinem Volk schon zum Unberührbaren machen. Seine ganze Rasse war früher versklavt, und schon die *Erinnerung* an Unterwerfung ist ihnen... zuwider."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~"Ja, er hat mir vor langer Zeit versprochen, mir bis zu meinem Tod zu dienen. Das war, nachdem ich sein Leben gerettet hatte, und er wußte nicht, daß ich unsterblich bin."~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~"Sonst noch was?"~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~"Reden wir später darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~"Tatsächlich? Als Githzerai... muß er wirklich leiden. Wie hast du sein Leben gerettet?"~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~"Nachdem er von Shra'kt'lor gefallen war und sterbend auf Limbo lag, kam eine meiner früheren Inkarnationen zu ihm und gab ihm den Ungebrochenen Kreis von Zerthimon, diesen religiösen Text, den er da hat."~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~"Ich weiß es nicht. Es war eine andere Inkarnation, die ihn gerettet hat, und ich weiß nichts von dem Vorfall. Gibt es noch irgendwas, das du mir über ihn sagen kannst?"~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~"Das ist eine lange Geschichte. Hör zu, ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~"Ich erzähl's dir ein anderes Mal. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~"Darf ich fragen, ob du weißt, *warum* die Inkarnation sein Leben gerettet hat?"~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~"Ich glaube, ich habe ihn wegen seiner *Karach*-Klinge gerettet."~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~"Ich weiß es nicht. Seine Beweggründe sind mir ein Rätsel. Gibt es noch irgendwas, das du mir über Dak'kon sagen kannst?"~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~"Das ist eine lange Geschichte. Hör zu, ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~"Ich erzähl's dir ein anderes Mal. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~"Eigenartig." Grace, die Gefallene, ist für einen Moment still. "Weißt du, eine Klinge, die den Willen ihres Trägers widerspiegelt, ist eine mächtige Waffe, wenn der Träger sich selbst kennt."~ */
  IF ~~ THEN REPLY #62652 /* ~"Vielleicht ist das also der Grund, weswegen ich ihn gerettet habe. Gibt es noch irgendwas, das du mir über Dak'kon sagen kannst?"~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~"Wahrscheinlich. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~"Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~"Dak'kon geht alles geordnet an. Was wiederum sehr ungewöhnlich für einen Githzerai ist. Sie neigen zur Unberechenbarkeit - eher folgen sie ihren Impulsen, als daß sie etwas planen."~ */
  IF ~~ THEN REPLY #62657 /* ~"Sonst noch was?"~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~"Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~"Er scheint ein höchst frommer Githzerai und ein standhafter Verbündeter zu sein."~ */
  IF ~~ THEN REPLY #62662 /* ~"Das ist er. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~"In der Tat. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~"Ich weiß. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~"Nordom ist ein Einzelgänger-Modron. Obwohl sich einige Spuren des Chaos in sein System geschlichen haben, ist er immer noch ein äußerst logisches, geordnetes Wesen. Diese Logik kann auf Reisen sehr nützlich sein. Außerdem wird er bedingungslos loyal sein, wenn er dich als Anführer betrachtet."~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~"Probleme kann es geben, wenn Nordom mit einer gesellschaftlichen Situation konfrontiert wird, die Etikette erfordert... So etwas ist selbst für normale Modrons nur schwer zu verstehen." Sie hält inne. "Ich könnte dir einige Ratschläge zu Nordom geben, wenn du willst."~ */
  IF ~~ THEN REPLY #62667 /* ~"Natürlich. Was ist es?"~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~"Im Moment nicht. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~"Vielleicht später. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~"Nicht jetzt. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~"Nordoms Existenz wurde erschüttert. Je mehr du ihm hilfst zu verstehen, was seine Situation ist, wo sein Platz in der Hierarchie dieser Gruppe ist, und was ihn in seinen jetzigen Zustand gebracht hat, umso mehr hilfst du ihm vielleicht, sich besser zu konzentrieren. Es ist zumindest eine Idee."~ */
  IF ~~ THEN REPLY #62672 /* ~"Vielleicht befolge ich deinen Rat. Jetzt möchte ich erst mal über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~"Ich werde später mit ihm reden. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~"Hmmm. Dann werde ich vielleicht mal sehen, was ich tun kann. Danke. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~"Es wäre eine weise Entscheidung, wenn du nicht länger mit ihm reisen würdest. Er ist wahnsinnig, und er hat unter Beweis gestellt, daß er zu Akten großer Zerstörung fähig ist. Soweit ich es verstehe, wurde er in einen Leiter zur Feuerebene verwandelt... Solch eine Verwandlung hätte viele Sterbliche umgebracht."~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~"Nicht nur hat er eine solche Prüfung *überlebt*, sie hat ihm sogar gut getan. Er besitzt eine unglaubliche Kraft - sollte er in eine Konfrontation gezwungen werden, würde ich um die Chancen jedes Gegners bangen. Ich hoffe inständig, daß es nicht dazu kommt."~ */
  IF ~~ THEN REPLY #62677 /* ~"Wenn Ignus so mächtig ist, warum greift er dann nicht einfach alles an, was er sieht? Warum reist er sogar mit uns?"~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~"Das hoffe ich auch. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~"Hmmm. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~"Ich weiß es nicht. Aber ich glaube nicht, daß es daran liegt, daß ihm unsere Gesellschaft gefällt. Ich glaube eher, daß er alle von uns mit Ausnahme von dir als irrelevant betrachtet."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~"Ich glaube, es liegt daran, daß ich in der Vergangenheit sein Lehrer war."~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~"Mich? Warum mich?"~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~"Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~"Hmmm. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~"Auch das weiß ich nicht. Doch ist dir nicht aufgefallen, daß er *gehorcht*, wenn du ihn bittest, etwas zu tun? Ohne Fragen zu stellen. Würde ich die gleiche Bitte äußern, würde ich alles bekommen, nur nicht seinen Gehorsam." ~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~"Ich glaube, es liegt daran, daß ich in der Vergangenheit sein Lehrer war."~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~"Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~"Hmmm. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~"Du warst sein Lehrer?"~ */
  IF ~~ THEN REPLY #62693 /* ~"Ja... Eine meiner früheren Inkarnationen hat ihm die Kunst beigebracht, aber ich glaube nicht, daß es eine sanfte Lektion war. Ich vermute, daß er mich auf eine gewisse Art immer noch als seinen Meister betrachtet."~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~"Vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~"Das ist eine lange Geschichte. Jetzt hätte ich erst mal ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~"Machen wir damit ein anderes Mal weiter. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~Grace, die Gefallene, nickt gedankenvoll. "Das würde vieles erklären." Sie studiert einen Moment lang deine Miene. "Hat die Erkenntnis dich beunruhigt?"~ */
  IF ~~ THEN REPLY #62698 /* ~"Ich bin nicht für das verantwortlich, was aus Ignus geworden ist. Hat mich die Erkenntnis beunruhigt? Nein."~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~"Ich fühle mich irgendwie verantwortlich - ich glaube, daß die Weise, auf die ich Ignus gelehrt habe, zu seinem Wahnsinn beigetragen haben könnte. Aber ich kann es nicht mit Sicherheit sagen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~"Ja. Ich bedaure es, daß meine vergangenen Leben Ignus berührt und ihn so verbrannt haben."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~"Ich möchte jetzt grade nicht darüber reden. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~"Reden wir ein anderes Mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~"Ignus brennt im Innern, mit solchem Feuer, daß selbst Baator vor Ehrfurcht erblassen würde. Er ist mehr als ein Zauberer, mehr als ein Mann geworden. Er ist zu einer Gewalt geworden. Ich muß mich einfach fragen, ob das ein Teil seines Wesens war, bevor sein Pfad deinen gekreuzt hat."~ */
  IF ~~ THEN REPLY #62705 /* ~"Ich weiß es nicht. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~"Reden wir ein anderes Mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~"Jeder Umgang mit den Gnadentötern ist ein Vorhaben mit vielen Risiken. Ich fürchte, daß sich diese Risiken bei Vhailor vervielfachen. Gerechtigkeit ist bei ihm mehr als eine Obsession, Gerechtigkeit ist ein *Teil* von ihm. Paß auf, was du tust und wie du dich verhälst, denn er beobachtet uns alle aufmerksam. Das ist das Wesen eines Gnadentöters."~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~"Ich muß etwas gestehen... Ich glaube, ich bin der Grund dafür, daß Vhailor so lange in dieser Zelle unter Verdammnis eingesperrt war."~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~"Sehr gut. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~"Was meinst du?"~ */
  IF ~~ THEN REPLY #62714 /* ~"Ich hatte eine Erinnerung... Ich erinnere mich daran, wie ich ihn in der Zelle eingesperrt habe, weil er mich so lange verfolgt hatte. Aber ich wollte ihn nicht töten, ihn nur gefangenhalten, ihn aus dem Weg halten."~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~"Vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~"Reden wir ein anderes Mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~"Wenn er dich verfolgt hätte, warum hättest du ihn dann gefangengenommen? Warum ihn nicht einfach töten?"~ */
  IF ~~ THEN REPLY #62719 /* ~"Nun, ich bin nicht sicher, ob ich ihn hätte töten *können* - der Tod hatte seine Chance, und es wie es aussieht, hat er's nicht so richtig hinbekommen."~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~"Weißt du, das hört sich jetzt komisch an, aber ich habe das merkwürdige Gefühl, daß ich ihn nicht getötet habe, WEIL er mich hätte töten können."~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~"Vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~"Reden wir ein anderes Mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~"Das ist wahr. Der Glaube hält ihn am Leben, und Glaube ist etwas Mächtiges."~ */
  IF ~~ THEN REPLY #62725 /* ~"Weißt du, das hört sich jetzt komisch an, aber ich habe das merkwürdige Gefühl, daß ich ihn nicht getötet habe, WEIL er mich hätte töten können."~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~"Ja. Hör zu, ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~"Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~Grace, die Gefallene, nickt. "Selbst ein Unsterblicher möchte vielleicht eine Öffnung lassen, durch die die Sterblichkeit hereinkriechen kann. Es gibt viele, für die Unsterblichkeit *kein* Segen ist. Vielleicht hast du gewünscht, daß Vhailor festgehalten wird, für den Fall, daß dir die Unsterblichkeit eines Tages unerträglich wird."~ */
  IF ~~ THEN REPLY #62730 /* ~"Ach so. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~"Hmmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~"Interessanter Gedanke. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~"Weiß du noch etwas, das sich als nützlich erweisen könnte?"~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~"Nun, es kommen immer wieder Schatten, um mich zu töten - ich habe das Gefühl, daß sie mir folgen, aber ich weiß nicht, warum."~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~"Ich glaube, daß mich jemand umbringen will.... daher habe ich eine Gruftfalle gebaut, um ihn zu fangen und zu töten. Einer der Inschriften in der Gruft zufolge verfolgt er mich anscheinend schon so lange, wie sich meine Inkarnationen erinnern können."~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~"Noch etwas: Ich war nicht immer unsterblich... Erst Ravel hat mich dazu gemacht."~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~"Als ich mit Ravel gesprochen habe, hat sie gesagt, daß die Tätowierungen auf meiner Haut von einem 'Scheusalkrieg' erzählen. Weißt du, was sie damit gemeint hat?"~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~"Nun, die Schädelsäule hat mir gesagt, daß ich 'einen Schatten auf die Existenz werfe' - daß immer, wenn ich sterbe, jemand anderes an meiner Stelle stirbt."~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~"Trias sagte, es gäbe einen 'Wächter' in dieser Festung der Reue, der meine Sterblichkeit gefangenhält."~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~"Ach, nichts Wichtiges. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~"Vergiß es. Vielleicht ein anderes Mal."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~"Schatten?" Grace, die Gefallene, schweigt einen Moment. "Schatten gehören zu den Toten. Sie jagen normalerweise nicht, sondern lauern ihren Opfern auf. Seltsam."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~"Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~"Und Ravel hat gesagt, daß du der Werfer von Schatten bist - vielleicht werden diese Schatten auf irgendeine Art von dir angezogen?" Grace, die Gefallene, tippt sich ans Kinn. "Es ist schwer mit Bestimmtheit zu sagen."~ */
  IF ~~ THEN REPLY #62747 /* ~"Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~"Was immer von Ravels Zaubern berührt wurde ist selten für irgendwen von Vorteil, scheint es." Die Stimme von Grace, der Gefallenen, senkt sich. "Da muß man sich fragen, wie oft du gestorben bist... und jemand anderen mit dir genommen hast."~ */
  IF ~~ THEN REPLY #62751 /* ~"Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~"Und... Wer auch immer der Mörder ist, er hat eine sehr lange Zeit gelebt, um dich so lange verfolgt zu haben." Sie tippt sich ans Kinn. "Könnte der Mörder auch unsterblich sein?"~ */
  IF ~~ THEN REPLY #62755 /* ~"Möglicherweise. Es gibt noch etwas, das helfen könnte, Licht auf... "~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~"Dann ist das an sich schon vielsagend. Dies ist nicht dein natürlicher Zustand, was die nächste Frage aufwirft: *Warum* hast du gewünscht, unsterblich zu werden? Weißt du irgendetwas darüber, warum Ravel so etwas getan hat?"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~"Ich weiß es nicht mit Sicherheit, aber ich glaube, daß es mir helfen sollte, aus einem Käfig zu entkommen, mir meine Freiheit geben sollte."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~"Ich weiß es nicht mit Sicherheit, aber ich glaube, daß es mir helfen sollte, aus einem Käfig zu entkommen, mir meine Freiheit geben sollte."~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~"Ich weiß es nicht - alles was ich weiß ist, daß ich sie darum gebeten habe."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~"Ich weiß es nicht - alles was ich weiß ist, daß ich sie darum gebeten habe."~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~"Noch nicht. Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~"Ich weiß es nicht. Ich wollte dir noch ein paar andere Fragen stellen."~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~"Laß uns ein anderes Mal darüber reden."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~"Höchst merkwürdig. Das wäre wohl das Erste, was man entdecken müßte... Nur wenn man ein solides Fundament in der Vergangenheit hat, kann man bestimmen, was die Zukunft bringt."~ */
  IF ~~ THEN REPLY #62767 /* ~"Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~"Hmmmm. Ravel hat etwas gesagt, das mich interessiert... Sie hat den Krieg der Scheusale erwähnt, womit zweifellos der Blutkrieg gemeint war. Ich finde das höchst seltsam. Das, und daß die Ebene, auf der Ravel sich niedergelassen hat, oft umkämpftes Gebiet in dem Konflikt ist. Vielleicht hatte was auch immer dich zu Ravel gebracht hat mit dem Blutkrieg zu tun?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~"Was ist der Blutkrieg?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Grace, die Gefallene, hat gesagt, daß der Krieg der Scheusale, den Ravel erwähnt hatte, wahrscheinlich der Blutkrieg sei. Das ist ein Konflikt zwischen den Rassen der Baatezu und der Tanar-Ri. Sie hat die Vermutung geäußert, daß meine Geschäfte mit Ravel wahrscheinlich irgend etwas mit dem Blutkrieg zu tun hätten.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~"Was ist der Blutkrieg?"~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~"Das wäre möglich. Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~"Vielleicht. Ich wollte dir noch ein paar andere Fragen stellen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~"Ich weiß es nicht. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~"Hmmmm. Mit ein 'Krieg der Scheusale' ist zweifellos der Blutkrieg gemeint." Grace, die Gefallene, nickt. "Weißt du, die Graue Einöde, also die Ebene, auf der Ravel sich niedergelassen hat, ist oft umkämpftes Gebiet in diesem Konflikt. Vielleicht hatte was auch immer dich zu Ravel gebracht hat mit dem Blutkrieg zu tun?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~"Was ist der Blutkrieg?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Grace, die Gefallene, hat gesagt, daß der Krieg der Scheusale, den Ravel erwähnt hatte, wahrscheinlich der Blutkrieg sei. Das ist ein Konflikt zwischen den Rassen der Baatezu und der Tanar-Ri. Sie hat die Vermutung geäußert, daß meine Geschäfte mit Ravel wahrscheinlich irgend etwas mit dem Blutkrieg zu tun hätten.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~"Was ist der Blutkrieg?"~ */ JOURNAL #61615 /* ~Grace, die Gefallene, hat gesagt, daß der Krieg der Scheusale, den Ravel erwähnt hatte, wahrscheinlich der Blutkrieg sei. Das ist ein Konflikt zwischen den Rassen der Baatezu und der Tanar-Ri. Sie hat die Vermutung geäußert, daß meine Geschäfte mit Ravel wahrscheinlich irgend etwas mit dem Blutkrieg zu tun hätten.~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~"Das wäre möglich. Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~"Vielleicht. Ich wollte dir noch ein paar andere Fragen stellen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~"Ich weiß es nicht. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~"Es scheint mir, daß du diesen Bewahrer finden und mit ihm reden mußt. Ich glaube, daß sich die Unterhaltung als höchst erhellend erweisen würde. Anscheinend will dieser Bewahrer nicht, daß deine Sterblichkeit zurückgeholt wird."~ */
  IF ~~ THEN REPLY #62783 /* ~"Das wäre möglich. Es gibt noch etwas, das helfen könnte, Licht auf..."~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~"Ich wollte dir noch ein paar andere Fragen stellen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~"Wahrscheinlich - in dem Fall wird er enttäuscht werden. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~"Sie ist stark und fähig, und sie ist sehr leidenschaftlich. Ich wünsche mir fast, ich hätte sie vor langer Zeit kennengelernt und gebeten, in mein Bordell zu kommen... Vielleicht wär' dann alles anders gewesen." Grace mustert dich einen Moment. "Was hälst du von ihr?"~ */
  IF ~~ THEN REPLY #62787 /* ~"Ich glaube, sie mag dich nicht besonders."~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~"Nun, ich glaube, ich könnte mich in sie verlieben."~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~"Ich betrachte sie als gute Freundin, nichts weiter."~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~"Sie ist mir völlig gleichgültig."~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~"Ich hasse sie."~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~"Ich traue ihr nicht."~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~"Ich traue ihr nicht."~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~"Darüber möchte ich lieber nicht reden."~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~"Da stimme ich zu..." Grace lächelt. "Aber ich werde dich meiner Frage nicht so einfach ausweichen lassen. Was hälst du von ihr?"~ */
  IF ~~ THEN REPLY #62796 /* ~"Nun, ich glaube, ich könnte mich in sie verlieben."~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~"Ich betrachte sie als gute Freundin, nichts weiter."~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~"Sie ist mir völlig gleichgültig."~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~"Ich hasse sie."~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~"Ich traue ihr nicht."~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~"Sie kann ganz nützlich sein, weiter nichts."~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~"Darüber möchte ich lieber nicht reden."~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~"Das solltest du ihr vielleicht sagen."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~"Ich weiß es nicht... Ich scheine auf Schritt und Tritt diese *Verwüstungen* zurückzulassen, vor allem bei Deionarra und den Leben anderer, die ich berührt habe. Es wäre vielleicht am besten, sich fernzuhalten."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~"Ich weiß es nicht... Ich scheine auf Schritt und Tritt diese *Verwüstungen* zurückzulassen, vor allem bei Deionarra und den Leben anderer, die ich berührt habe. Es wäre vielleicht am besten, sich fernzuhalten."~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~"Ich weiß es nicht... Ich scheine auf Schritt und Tritt diese *Verwüstungen* zurückzulassen, vor allem bei Deionarra und den Leben anderer, die ich berührt habe - von Ravel ganz zu schweigen. Ich habe nicht die geringste Ahnung, warum sie von mir angezogen wurde, aber ich habe sie auch benutzt. Vielleicht sollte ich vorsichtiger mit meinen Gefühlen sein."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~"Ich weiß es nicht... Ich scheine auf Schritt und Tritt diese *Verwüstungen* zurückzulassen, vor allem bei Deionarra und den Leben anderer, die ich berührt habe - von Ravel ganz zu schweigen. Ich habe nicht die geringste Ahnung, warum sie von mir angezogen wurde, aber ich habe sie auch benutzt. Vielleicht sollte ich vorsichtiger mit meinen Gefühlen sein."~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~"Wenn, dann ist es *meine* Entscheidung."~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~"Ich weiß es nicht... Wir werden sehen."~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~"Nun gut."~ */
  IF ~~ THEN REPLY #62811 /* ~"Ich wollte dich nach jemand anderem fragen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~"Na gut. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~"Warum?"~ */
  IF ~~ THEN REPLY #62815 /* ~"In erster Linie der Akzent... und die Tatsache, daß sie der Grund ist, weshalb ich überhaupt in der Leichenhalle abgeladen wurde, sie ist eine Stockdiebin mit einem Schuß Scheusalblut, und sie meckert über alles, was ich tue. Muß ich noch mehr sagen?"~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~"Ich wollte dich nach jemand anderem fragen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~"Na gut. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~"Warum reist du dann mit ihr?"~ */
  IF ~~ THEN REPLY #62820 /* ~"Sie ist ganz nützlich - solange mir ihre Gesellschaft keinen Spaß machen muß, ist alles in Ordnung."~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~"Vergiß es. Ich wollte dich nach jemand anderem fragen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~"Warum vertraust du ihr nicht?"~ */
  IF ~~ THEN REPLY #62825 /* ~"Praktischerweise hat sie mich, als ich starb, in der Gasse der hallenden Seufzer gefunden, trotz der Tatsache, daß sich kein anderer Sammler da hineintraut, sie ist die Adoptivtochter von Pharod, und sie ist eine Stockdiebin mit einer Spur Scheusalblut. Muß ich noch mehr sagen?" ~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~"Vergiß es. Ich wollte dich nach jemand anderem fragen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~"Reden wir ein anderes Mal darüber. Jetzt laß uns erst mal weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~"Zeitweilige Enthaltung ist akzeptabel." Grace lächelt. "Dauerhafte Enthaltsamkeit könnte sich als schwierig erweisen."~ */
  IF ~~ THEN REPLY #62830 /* ~"*Du* würdest es wissen."~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~"OK, OK... Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~"Vielleicht. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~Grace sagt leise: "Folter." Sie betrachtet einen Moment lang das Symbol auf deinem Arm. "Fell hat gesagt..." Sie holt Luft. "Daß das Fleisch weiß, daß es leidet, auch wenn das Gedächtnis es vergißt. Fell hat gesagt, daß die Rune wie ein Magnet wirkt und andere gefolterte Seelen zu dir zieht."~ */
  IF ~~ THEN REPLY #62835 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~"Vielleicht. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~"Nein... Das ist selten nötig, und ich habe festgestellt, daß ich die Berührung von kaltem Eisen oder sogar Stahl nicht lange ertrage. Auf jeden Fall habe ich verschiedene... natürliche Abwehrmechanismen, die Angreifer meistens entmutigen."~ */
  IF ~~ THEN REPLY #62838 /* ~"Zum Beispiel?"~ */ JOURNAL #61616 /* ~Grace, die Gefallene, hat mir erzählt, daß ihr Kuß dem Opfer das Leben entziehen kann... Aus irgendeinem Grund erregt mich das. Ich meine, schließlich kann ich ja nicht sterben, oder? Hmmmm. Das muß ich mir merken.~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~"Oh. Ich hätte noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~"Ich... verstehe. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~"Der Kuß eines Sukkubus ist für Sterbliche tödlich - obwohl sie sich der Gefahr meistens erst bewußt werden, wenn der Tod sie schon fast ereilt hat." Grace, die Gefallene, seufzt. "Ich kann darauf zurückgreifen, wenn es nötig ist."~ */
  IF ~~ THEN REPLY #62842 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~"Faszinierend... ähm, ich meine, erschreckend. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~"Das stimmt. Yves braucht keine Geschichten mehr, die ihr Elend vergrößern... Und meine Geschichte würde ihr nicht bei ihrer Suche nach der Wahrheit helfen."~ */
  IF ~~ THEN REPLY #62845 /* ~"Würdest du es mir sagen?"~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~"Vielleicht. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~"Es ist eine lange Geschichte, und sie ist nicht so interessant, wie manche sie hinstellen würden." Sie seufzt. "Sie ist mit anderen Geschichten von Krieg und Sklaverei verwoben - es ist keine schöne Geschichte."~ */
  IF ~~ THEN REPLY #62849 /* ~"Ich würde es mir schon noch anhören."~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~"Dann laß uns einfach weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~"Also gut... Wisse, daß meine Vergangenheit keine lange ist, jedenfalls nicht nach dem Maßstab der Tanar-Ri. Ich weiß nicht, ob du dich mit den Tanar-Ri auskennst, aber wir sind eine Rasse aus dem Abgrund, einer gestaffelten Reihe von Ebenen, die mit Chaos und bösen Herzen angefüllt sind."~ */
  IF ~~ THEN REPLY #62853 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~"Ich bin ein Tanar-Ri, ein Scheusal, ein Sukkubus... Ich bin auf der ersten Ebene des Abgrunds aufgewachsen. Meine Mutter war selbst ein Sukkubus - wie dir sicher bekannt ist, verführen Sukkuben Sterbliche dazu, ihre Seelen in den Abgrund zu bringen. Meine Mutter gehörte zu den besten, sie hat zahllose sterbliche Männer in die ewige Verdamnis geführt. Sie lebt jetzt im Abgrund und verkauft ihre Kinder in die Sklaverei."~ */
  IF ~~ THEN REPLY #62857 /* ~"Deine Mutter hat dich in die Sklaverei verkauft?"~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~"Ja, sie hat mich an die Baatezu verkauft, die Blutfeinde der Tanar-Ri. Ich glaube, sie hat eigentlich damit gerechnet, daß sie mich töten würden - trotz ihres Wissens auf anderen Gebieten weiß sie wenig über die Kultur der Baatezu und die Freude, die sie daran haben, andere zu foltern."~ */
  IF ~~ THEN REPLY #62861 /* ~"Wie bist du entkommen?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~"Ich habe genug gehört. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~"Die Baatezu sind eine stolze Art. Der Gedanke, daß ein Tanar-Ri sie bei irgend etwas übertreffen könnte, ist ihnen unerträglich. Also habe ich einen der stolzesten der Balor zu einem Improvisationswettbewerb herausgefordert, und mein Tanar-Ri-Wesen hat mir einen Vorteil verliehen - weißt du, die Tanar-Ri sind Kreaturen des Chaos, wild und unberechenbar. Die Baatezu sind listiger und haben geordnete Herzen. Sie wissen, was Improvisation ist, aber in der Praxis sind sie dabei nicht die besten. Und so habe ich meine Freiheit gewonnen - und mein Pfad hat mich nach Sigil gebracht."~ */
  IF ~~ THEN REPLY #62865 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~"Das ist alles, was ich hören wollte. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~"Worüber wolltest du sprechen?"~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~"Ich wollte, daß du weißt, daß ich - als ich im Irrgang Ravel geküßt habe..."~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~"Ehrlich gesagt, würde ich gerne wissen, was du wirklich für mich empfindest."~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~"Ich würde gerne wissen, was du über meine Situation denkst."~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~"Hast du irgendeine Ahnung, wer oder was ich sein könnte?"~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~"Vergiß es. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~"Es ist nicht wichtig. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~"Deionarra war die Frau in dem Sinnesstein der Sehnsucht, nicht wahr? Die, die deine vorherige Inkarnation geliebt hat?"~ */
  IF ~~ THEN REPLY #62876 /* ~"Ja. Ich habe ihr etwas Schreckliches angetan, aber ich weiß nicht, was."~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~"Dazu möchte ich folgendes sagen: Liebe mag vielleicht sogar die Ebenen versetzen, wenn sie stark und wahrhaftig ist, und es gibt nichts Wahrhaftigeres in meiner ganzen Erfahrung als die Wahrheit dessen, was man für jemanden anderen *empfindet*."~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~"Vielleicht. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~"Du könntest recht haben. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~"Reden wir ein anderes mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~"Bevor du versuchst, andere vor deinen Gefühlen zu bewahren, merk dir dies: Liebe ist mächtig, so mächtig, daß sie ihren Weg in Ravels verworrenes, schwarzes Herz gefunden hat und ihre Berührung sie dazu gebracht hat, jemand anderen mehr als sich selbst zu schätzen. Kennst du die *Kraft* nicht, die nötig ist, um ein Herz wie das von Ravel zu verändern? Trotz all der Schmerzen, die sie vielleicht verursacht hat, glaube ich, daß auch das Gute, das sie geschaffen hat, nicht vergessen werden darf." ~ */
  IF ~~ THEN REPLY #62883 /* ~"Vielleicht. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~"Du könntest recht haben. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~"Reden wir ein anderes mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~"Ach - ich habe das verdient." Grace, die Gefallene, lächelt. "Dazu möchte ich folgendes sagen: Die Gefühle, die man für jemand anderen hegt, können sogar die Ebenen versetzen, und es gibt keine größere Wahrheit als das, was man für jemand anderen *empfindet*."~ */
  IF ~~ THEN REPLY #62887 /* ~"Vielleicht. Ich wollte über jemand anderen sprechen..."~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~"Du könntest recht haben. Ich hätte da noch ein paar Fragen..."~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~"Reden wir ein anderes mal darüber. Laß uns weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~"Tausende."~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~"Weißt du, Morte, auf manchen Ebenen werden statt Holz die Witzbolde verbrannt."~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~"Dein Glück scheint uns alle zu umhüllen."~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~"Nein, sie ist nicht hübsch. Aber sie könnte schön sein."~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~"Solange es mir erlaubt ist, würde ich sagen."~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~"Ich weiß nicht, ob ich zurückgehen werde."~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~"Ich werde vorsichtig sein. Ich versichere dir, ich habe keine solchen Gelüste."~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~"Nicht alle von uns, Annah. Ich würde dich gerne ermutigen, etwas aufgeschlossener zu sein. Auch du hast Scheusalsblut in dir, und du hast viele gute Eigenschaften."~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~"Annah, Eifersucht ist ein zweischneidiges Schwert. Wenn du -"~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~"Also gut."~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~"Annah, sieh mal, wir sollten -"~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~"Morte, komm schon."~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~"Oh? Gilt das auch für Modronen?"~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~"Warum, wer hat dir das bloß erzählt, lieber Nordom?"~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~"Wie bitte?"~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~"Wie bitte?"~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~"Warum. . . Ich schätze, ich finde es beruhigend. Außerdem mag ich die Flügel ganz gerne."~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~"Warum, Nordom, versuchst du, mir den Hof zu machen?"~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~"Solche 'Sünden' brechen kein Gesetz der Tanar-ri, Vhailor. Mein Pfad ist mein eigener, er ist meine freie Wahl, nicht meine Strafe."~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~Als deine Macht auf Grace trifft, steht sie benommen auf. Und obwohl sie noch keine Orientierung hat, gelingt es ihr, Haltung zu bewahren.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~"Grace, wir sind an der Festung der Reue, und ich habe meinen Mörder gefunden: Es ist meine eigene Sterblichkeit. Sie führt ein eigenes Leben. Ich brauche jetzt wirklich sofort deine Hilfe."~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~GRACE, DIE GEFALLENE.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~Sie nickt langsam. Ihre Kraft scheint zurückzukehren, während sie dich sprechen hört. "Ich befürchte, dieser Ort wird uns nicht einfach wieder gehen lassen, jetzt, wo wir hier sind."~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~"Wir werden sehen..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~"Wir werden sehen..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~Grace, die Gefallene, sieht auf und blickt dir kurz in die Augen, dann lächelt sie. Aber es ist nur ein leichtes Lächeln, aus dem mehr Traurigkeit als irgend etwas anderes spricht. "Deine Stimme... Hast du also endlich zu dir gefunden?"~ */
  IF ~~ THEN REPLY #68356 /* ~JA. DER PREIS WAR... HOCH. ES HAT VIELE LEBEN GEFORDERT, MEINE UND ANDERE.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~"Der Preis für so etwas wird nur selten in Kupfer gemessen." Grace mustert dich. "Bist du noch..."~ */
  IF ~~ THEN REPLY #68358 /* ~ICH BIN NOCH IMMER DER, DEN DU KENNST. ABER MEINE SICHTWEISE HAT SICH... VERÄNDERT. ICH HABE DICH NICHT VERGESSEN, FALLS DU DAS FÜRCHTEST.~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~Grace, die Gefallene, lächelt wieder, dasselbe traurige Lächeln wie vorher. "Nein, das habe ich nicht befürchtet."~ */
  IF ~~ THEN REPLY #68360 /* ~ICH KANN NICHT MEHR SEHR LANGE HIER BLEIBEN. MEINE STRAFE RUFT MICH, UND DAS SCHICKSAL UND DIE ZEIT WERDEN MICH BALD EINHOLEN. ICH BRINGE DICH ZURÜCK NACH SIGIL, WENN DU WILLST.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~"Das ist nicht, was ich wünsche." Grace, die Gefallene, streckt ihre Hand aus und berührt dich sanft am Arm. Du bemerkst ein leichtes, kaum zu spürendes Kribbeln, dann zieht sie die Hand zurück. "Ich *werde* dich wiederfinden, wo auch immer in den Unteren Ebenen du dich aufhältst. Und genauso wirst du mich finden können."~ */
  IF ~~ THEN REPLY #68362 /* ~DAS KANN SEHR LANGE DAUERN. WO ICH SEIN WERDE, WIRD DIE ZEIT NICHT IN JAHREN GEMESSEN. UND MEINE VERBRECHEN SIND SO SCHWER, SIE WÜRDEN JEDEN KÄFIG SPRENGEN.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~"Kein Käfig kann uns trennen, und keine Ebene soll zwischen uns stehen." Ihr Gesicht versteinert. "Denk immer an mich, und wir werden uns wiedersehen."~ */
  IF ~~ THEN REPLY #68364 /* ~ICH WERDE NIE VERGESSEN, WELCHE OPFER DU FÜR MICH ERBRACHT HAST.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~Sie schüttelt den Kopf. "Vergiß mich nur nicht."~ */
  IF ~~ THEN REPLY #68366 /* ~DIE ZEIT ZERSTÖRT ALLE DINGE. ABER ICH WERDE DAGEGEN ANKÄMPFEN, SOLANGE ICH KANN.~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~"Die Zeit ist nicht dein Feind. Dein Feind ist die Ewigkeit."~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~VIELLEICHT. LEB WOHL, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~Grace nickt, als du zu ihr sprichst. "Ich befürchte, dieser Ort wird uns nicht einfach wieder gehen lassen, jetzt, wo wir hier sind."~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~"Wir werden sehen. Statten wir erst mal meiner Sterblichkeit einen Besuch ab..."~ */ EXIT
END
