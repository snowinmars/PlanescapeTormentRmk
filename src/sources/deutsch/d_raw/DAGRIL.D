// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAGRIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAGRIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #54182 /* ~Du siehst ein riesiges Wesen; es ist bestimmt 5 Meter groß. An seinem massiven Körper hängen vier Arme. Zwei davon enden in Zangen, die anderen beiden Hände haben Klauen. Es hat einen hundeartigen Kopf mit scharfen Fängen und lila Augen. Es sieht dich unbewegt an.~ */
  IF ~~ THEN REPLY #57165 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57166 /* ~Ignoriere es.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57167 /* ~Der Blick dieses Wesens bleibt fest, während es dich weiter anstarrt. Schließlich meldet sich etwas in deinem Geist und eine Stimme spricht in deinem Kopf. "Ich grüße dich auch, Mensch. Ich bin Agril-Shanak. Was führt dich hierher?"~ */
  IF ~~ THEN REPLY #57168 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57169 /* ~"Egal. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.2 5.2 6.2 7.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 23.0
  SAY #57170 /* ~"Fragen... das belustigt mich. Du darfst fragen."~ */
  IF ~~ THEN REPLY #57171 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #57172 /* ~"Was machst du hier?"~ */ GOTO 8
  IF ~~ THEN REPLY #57173 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #57174 /* ~"Was kannst du mir über Dona Quisho erzählen?"~ */ GOTO 13
  IF ~~ THEN REPLY #57175 /* ~"Dona Quisho hat mich geschickt, um dich zu befreien. Was springt für mich raus, wenn ich es tue?"~ */ GOTO 15
  IF ~~ THEN REPLY #57176 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 27
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57177 /* ~"Wie ich schon sagte, bin ich Agril-Shanak. Was möchtest du sonst noch wissen?"~ */
  IF ~~ THEN REPLY #57178 /* ~"Was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #57179 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57180 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57181 /* ~"Manche nennen mich ein Scheusal... andere nennen mich einen Freund. Ich bin Agril-Shanak, ich bin ein Tanar-Ri." Er verstummt.~ */
  IF ~~ THEN REPLY #57182 /* ~"Wer nennt dich 'Scheusal'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57183 /* ~"Wer nennt dich 'Freund'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57184 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57185 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 6.0
  SAY #57186 /* ~"Diejenigen, die nach Macht streben, sehen mich oft als ein Mittel zum Zweck. Sie nennen mich ein Scheusal."~ */
  IF ~~ THEN REPLY #57187 /* ~"Wer nennt dich 'Scheusal'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57188 /* ~"Das ist eine vage Antwort..."~ */ GOTO 7
  IF ~~ THEN REPLY #57189 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57190 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #57191 /* ~"Die Ignoranten, die nicht hinter die Furcht und die Vorurteile sehen können. Es ist ihre Kurzsichtigkeit, die sie mich so bezeichnen läßt."~ */
  IF ~~ THEN REPLY #57192 /* ~"Wer nennt dich 'Freund'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57193 /* ~"Das ist eine vage Antwort..."~ */ GOTO 7
  IF ~~ THEN REPLY #57194 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57195 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY #57196 /* ~"Ah, aber es ist trotzdem eine Antwort." Er beugt sich zu dir vor. "Und es ist die einzige Antwort, die ich dir geben werde..."~ */
  IF ~~ THEN REPLY #57197 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57198 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #57199 /* ~"Ich warte auf meine Freiheit. Vielleicht bist du gekommen, um sie mir zu bringen? Du hast die Schriftrolle..." Er zeigt mit einem klauenbewehrten Finger auf das Pergament, das Dona Quisho dir gegeben hat.~ */
  IF ~~ THEN REPLY #57200 /* ~"Wie kommt es, daß du hier gefangen bist?"~ */ GOTO 9
  IF ~~ THEN REPLY #57201 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57202 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57203 /* ~"Ich weiß es nicht." Er macht eine lange Pause, bevor er weiterspricht. "Ich wurde gerufen und ich bin dem Ruf gefolgt. Dann hat mich eine größere Gewalt abgefangen und ich bin hierher gelangt. Seither bin ich hier gefangen."~ */
  IF ~~ THEN REPLY #57204 /* ~"Wer hat dich gerufen?~ */ GOTO 10
  IF ~~ THEN REPLY #57205 /* ~"Wer hat dich abgefangen?"~ */ GOTO 11
  IF ~~ THEN REPLY #57206 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57207 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #57208 /* ~"Du weißt die Antwort. Du hältst die Schriftrolle in Händen. Es war Dona Quisho."~ */
  IF ~~ THEN REPLY #57209 /* ~"Wer hat dich abgefangen?"~ */ GOTO 11
  IF ~~ THEN REPLY #57210 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57211 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 14.0
  SAY #57212 /* ~"Ich weiß es nicht. Mein Peiniger hat seine oder ihre Identität nicht enthüllt."~ */
  IF ~~ THEN REPLY #57213 /* ~"Wer hat dich gerufen?"~ */ GOTO 10
  IF ~~ THEN REPLY #57214 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57215 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY #57216 /* ~Du hörst es in deinem Kopf lachen. "Ich stamme nicht von hier. ich weiß nicht viel über Verdammnis. Für mich ist das ein Gefängnis - sonst nichts."~ */
  IF ~~ THEN REPLY #57217 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57218 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #57219 /* ~"Ich weiß nichts von ihr, außer, daß sie mich gerufen hat.... Das weißt du ja schon, denn du hältst die Schriftrolle in Händen...." Er zeigt mit einem klauenbewehrten Finger auf das Pergament, das dir Dona Quisho gegeben hat.~ */
  IF ~~ THEN REPLY #57220 /* ~"Warum hat sie dich gerufen?"~ */ GOTO 14
  IF ~~ THEN REPLY #57221 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57222 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #57223 /* ~"Ich weiß es nicht. Ich wurde abgefangen, bevor ich angekommen bin. Wir haben nie miteinander gesprochen..." Er verstummt.~ */
  IF ~~ THEN REPLY #57224 /* ~"Wer hat dich abgefangen?"~ */ GOTO 11
  IF ~~ THEN REPLY #57225 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57226 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #57227 /* ~"Meine Dankbarkeit wird keine Grenzen kennen. Ich werde dir die Ebenen selbst zu Füßen legen. Befreie mich!"~ */
  IF ~~ THEN REPLY #57228 /* ~"Ich brauche etwas Konkreteres als Worte... wenn du mir nichts zu bieten hast, dann gehe ich wieder."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57229 /* ~"Nun gut..." Du spürst, wie sich seine Augen in dich hineinbohren, während er überlegt. "Ich werde dir eine Zauberwaffe geben, eine Waffe mit großer Macht, eine Waffe, die deine Feinde in die Knie zwingt. Ich werde dir den Herzensbrecher geben!"~ */
  IF ~~ THEN REPLY #57230 /* ~"Herzensbrecher?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #57231 /* ~"Ja... Eine Waffe, die mir sehr teuer ist, aber für meine Freiheit würde ich sie opfern. Was sagst du dazu? Befreist du mich für den Herzensbrecher?"~ */
  IF ~~ THEN REPLY #57232 /* ~"Ja, sag mir wie."~ */ GOTO 18
  IF ~~ THEN REPLY #57233 /* ~"Nein, das glaube ich nicht."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57234 /* ~"Ich werd's mir überlegen. Leb wohl."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #57235 /* ~Er zeigt mit einem klauenbewehrten Finger auf die Seite des Pentagramms. "Brich das Diagramm einfach, indem du ein bißchen davon wegwischst..." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #57236 /* ~Durchbrich das Pentagramm.~ */ GOTO 19
  IF ~~ THEN REPLY #57237 /* ~"Nein, das glaube ich nicht."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Ich werd's mir überlegen. Leb wohl."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #57239 /* ~Du kniest dich hin, berührst das Diagramm, und eine Energiewelle strömt durch deinen Arm. Mit einer schnellen Bewegung wischst du ein Teil des Diagramms weg. Sofort läßt der Energiestoß nach und du hörst einen Triumphschrei in deinem Geist. "Endlich frei!"~ */
  IF ~~ THEN REPLY #57240 /* ~"Ich nehme jetzt den Herzensbrecher."~ */ DO ~GiveItemCreate("Grinder",Protagonist,0,0,0)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #57241 /* ~"Ja... Ich halte mich an meine Abmachung, Mensch. Die Waffe gehört dir und die Freiheit gehört mir. Ein fairer Handel. Er wirft dir einen kurzen Blick zu, dann erscheint in seiner Hand eine rostige Axt. Er hält sie dir hin. "Sie sieht nach nichts Besonderem aus... aber sie ist sehr mächtig."~ */
  IF ~~ THEN REPLY #57242 /* ~Nimm die Axt.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 28.0
  SAY #57243 /* ~"Du hast mir einen großen Dienst erwiesen. Aus Dankbarkeit werde ich dich nicht umbringen und zurücknehmen, was mir rechtmäßig gehört." Er zeigt mit einem Klauenfinger auf dich. "Aber wisse dies: Wenn wir uns je wiedertreffen, wirst du es bitter bereuen. Leb wohl."~ */
  IF ~~ THEN REPLY #57261 /* ~"Leb wohl."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
SinisterPoof("S113SMOK",[843.428],1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1 18.1 24.1 27.1
  SAY #57245 /* ~"Du spielst mit mir... wenn du mir meine Freiheit nicht geben willst, dann verschwinde!"~ */
  IF ~~ THEN REPLY #57246 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 25 26 even though they appear after this state */
~  True()
~ THEN BEGIN 23 // from:
  SAY #57247 /* ~Du erblickst Agril-Shanak, den Glabrezu. "Du bist zurückgekehrt, Mensch. Warum?"~ */
  IF ~~ THEN REPLY #57248 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~  GlobalGT("Free_Agril","GLOBAL",0)
~ THEN REPLY #57249 /* ~"Ich habe mir überlegt, dich zu befreien."~ */ GOTO 24
  IF ~~ THEN REPLY #57250 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #57251 /* ~"Wirst du es tun?" Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #57252 /* ~"Ja, sag mir wie."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #57253 /* ~"Nein, das glaube ich nicht."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57254 /* ~"Ich werd's mir überlegen. Leb wohl."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",900)
~ THEN BEGIN 25 // from:
  SAY #57255 /* ~Vor dir steht eine riesige Gestalt. Sie ist über 5 Meter groß. Ihr massiver Körper hat vier Arme... Zwei davon enden in Zangen, und zwei in klauenbewehrten Händen. Der Kopf hat etwas hundeartiges, mit scharfen Zähnen und violetten Augen. Als es dich erblickt, geht es auf dich los.~ */
  IF ~~ THEN REPLY #57256 /* ~Verteidige dich.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57257 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
Global("Free_Agril","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #57258 /* ~Du erblickst Agril-Shanak, den Glabrezu. "Ich habe dich doch gewarnt, daß du es bitter bereuen würdest, wenn wir uns wiedersähen..." Er geht auf dich los.~ */
  IF ~~ THEN REPLY #57259 /* ~Verteidige dich.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57260 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.5
  SAY #57235 /* ~Er zeigt mit einem klauenbewehrten Finger auf die Seite des Pentagramms. "Brich das Diagramm einfach, indem du ein bißchen davon wegwischst..." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #57236 /* ~Durchbrich das Pentagramm.~ */ GOTO 28
  IF ~~ THEN REPLY #57237 /* ~"Nein, das glaube ich nicht."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Ich werd's mir überlegen. Leb wohl."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #57239 /* ~Du kniest dich hin, berührst das Diagramm, und eine Energiewelle strömt durch deinen Arm. Mit einer schnellen Bewegung wischst du ein Teil des Diagramms weg. Sofort läßt der Energiestoß nach und du hörst einen Triumphschrei in deinem Geist. "Endlich frei!"~ */
  IF ~~ THEN GOTO 21
END
