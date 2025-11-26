// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGONCAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGONCAL~

IF ~  Global("Goncalves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2923 /* ~Dieser kleine, schwere Mann mittleren Alters trägt Kleider, die aus gleißendem Gold gesponnen zu sein scheinen. In seinen Händen hält er einen Ballen von Stoff, der straff um einen Holzrahmen gewunden ist. Er ist gerade dabei, irgendein Muster in den Stoff zu sticken.~ */
  IF ~~ THEN REPLY #2924 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Goncalves","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44148 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.1 25.0
  SAY #44149 /* ~Der Mann scheint dich nicht zu bemerken. Er arbeitet weiter an seiner Stickerei und murmelt etwas vor sich hin... Bei jedem Stich scheinen kleine, leuchtende Funken von der Spitze der Nadel zu sprühen.~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44150 /* ~"Hallo! Hast du nicht gehört, was ich gesagt habe?"~ */ GOTO 2
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44151 /* ~"Ich sagte, 'Sei gegrüßt'."~ */ GOTO 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44152 /* ~"Hallo! Hast du nicht gehört, was ich gesagt habe?"~ */ EXTERN ~DGRACE~ 142
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44153 /* ~"Ich sagte, 'Sei gegrüßt'."~ */ EXTERN ~DGRACE~ 142
  IF ~~ THEN REPLY #44154 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #44155 /* ~Der Mann runzelt die Stirn. Ohne von seiner Arbeit aufzublicken, antwortet er mürrisch: "Ja, ja... Und Euer Anliegen ist bestimmt *sehr* dringend. Wenn Ihr jetzt bitte kurz still sein könntet..."~ */
  IF ~~ THEN REPLY #44156 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #44157 /* ~Warte, ohne etwas zu sagen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44158 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44160 /* ~Er grinst, antwortet dir aber nicht.~ */
  IF ~~ THEN REPLY #44161 /* ~"Ich sagte, 'Ich hätte da ein paar Fragen...'"~ */ GOTO 4
  IF ~~ THEN REPLY #44162 /* ~Warte, ohne etwas zu sagen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #66869 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44163 /* ~Die Zornesröte steigt ihm ins Gesicht, und er beißt die Zähne zusammen. Doch nach wie vor weigert er sich, dich direkt anzusehen. "Es ist mir *egal*, ob Ihr Fragen habt! Und jetzt seid still oder *verschwindet* aus meinem Laden!"~ */
  IF ~~ THEN REPLY #44164 /* ~"Beantworte meine Fragen, *Schneider*... Oder es gibt Ärger."~ */ GOTO 5
  IF ~~ THEN REPLY #44165 /* ~Warte, ohne etwas zu sagen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44166 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1
  SAY #44167 /* ~Wütend schmettert er sein Nähzeug hin. Er versprüht kleine Speicheltropfen, als er dich anschreit. "Das gibt *Ärger*, wenn die Wachen kommen und Euch so richtig vermöbeln! Und jetzt RAUS hier! RAUS! VERSCHWINDET AUS MEINEM LADEN... Bevor ich das Harmonium rufe!"~ */
  IF ~~ THEN REPLY #44168 /* ~"*Trau* dich doch."~ */ DO ~SetGlobal("Goncalves","GLOBAL",3)
SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44169 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.1 4.1
  SAY #44170 /* ~Schließlich legt er die Stickarbeit nieder und sieht dich an. Doch bevor du etwas sagen kannst, hat er sich schon an einer anderen Stickerei zu schaffen gemacht. Dabei scheinen wieder winzige, bunte Funken aus dem Stoff zu fallen.~ */
  IF ~~ THEN REPLY #44171 /* ~"Hör mal, ich hab doch nur ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #44172 /* ~"Beantworte meine Fragen, *Schneider*... Oder es gibt Ärger."~ */ GOTO 5
  IF ~~ THEN REPLY #44173 /* ~Warte noch eine Weile.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44174 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44175 /* ~Der Mann seufzt laut hörbar. "Das hatte ich mir fast gedacht. Da Ihr nett genug wart, eine Weile in aller Stille zu warten, bin ich mir sicher, daß Ihr nicht gleich tot umfallt, wenn Ihr Eure Zunge noch einen Moment im Zaum halten müßt..."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 211
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44176 /* ~"Beantworte meine Fragen, *Schneider*... Oder es gibt Ärger."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44177 /* ~Warte noch eine Weile.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44178 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.2
  SAY #44179 /* ~Als er fertig ist, legt er seine Arbeit nieder und sieht dich prüfend an. "Seid gegrüßt. Ich bin Gonkalves. Darf ich wissen, in welcher Angelegenheit Ihr mich sprechen möchtet?"~ */
  IF ~~ THEN REPLY #44180 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44181 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.1 13.1 14.1 14.2 16.1 16.2 22.0 24.0 26.0
  SAY #44182 /* ~"Häh? Ich hoffe, es geht um Kleider oder so. Ich beantworte nämlich keine Fragen, die nicht mich oder meinen Laden betreffen."~ */
  IF ~  GlobalGT("Malmaner","GLOBAL",1)
GlobalLT("Malmaner","GLOBAL",4)
Global("Goncalves_Costume1","AR0611",0)
~ THEN REPLY #44183 /* ~"Ich hätte gern ein Staubmenschen-Kostüm."~ */ DO ~SetGlobal("Malmaner","GLOBAL",3)
~ GOTO 14
  IF ~  GlobalGT("Malmaner","GLOBAL",3)
GlobalLT("Malmaner","GLOBAL",6)
Global("Goncalves_Costume2","AR0611",0)
~ THEN REPLY #44184 /* ~"Ich hätte gern ein anderes Kostüm."~ */ DO ~SetGlobal("Malmaner","GLOBAL",5)
~ GOTO 16
  IF ~  Global("Know_Goncalves_Mage","AR0611",0)
~ THEN REPLY #44185 /* ~"Was war das für ein Licht, als du gestickt hast?"~ */ DO ~SetGlobal("Know_Goncalves_Mage","AR0611",1)
~ GOTO 12
  IF ~  Global("Know_Goncalves_Mage","AR0611",1)
~ THEN REPLY #44186 /* ~"Was hast du denn so an magischen Kleidern da?"~ */ GOTO 13
  IF ~~ THEN REPLY #66876 /* ~"Kann ich hier Nadel und Faden kaufen?"~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44188 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44189 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #44194 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #44198 /* ~"Das? Ach, gar nichts. Etwas Zauberei, die ich in den Stoff einwirke, wenn mich der Hafer sticht. Diese Erzeugnisse, die so entstehen, sind meine kleinen Kostbarkeiten, die ich nur selten hergebe."~ */
  IF ~~ THEN REPLY #44199 /* ~"Was hast du denn so an magischen Kleidern da?"~ */ GOTO 13
  IF ~~ THEN REPLY #44200 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #44201 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 12.0
  SAY #44202 /* ~Gonkalves mustert dich mit gerunzelter Stirn. "Nichts, das *Euch* passen würde, mein Herr, soviel steht fest."~ */
  IF ~~ THEN REPLY #44203 /* ~"Ich hätte trotzdem gern gesehn, was du so anzubieten hast."~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #67828 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #67829 /* ~"Wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #44204 /* ~"Ihr habt großes Glück... Ich habe zufällig eines da. Es kostet dreißig einfache Kupfermünzen."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44205 /* ~"Das nehm ich."~ */ DO ~DestroyPartyGold(30)
GiveItemCreate("Costume1",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume1","AR0611",1)
~ GOTO 15
  IF ~  PartyGoldLT(30)
~ THEN REPLY #44206 /* ~"Hmm... Soviel hab ich nicht bei mir. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44207 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44208 /* ~"Ich komm vielleicht ein andermal wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44209 /* ~Gonkalves holt ein paar ordentlich zusammengelegte Roben unter einem Tisch hervor. "Bitte schön, mein Herr. Aber seid gewarnt: Falls Ihr das Kostüm beim nächsten Maskenball von Lord Ird tragen wollt, werdet Ihr nicht der einzige sein, der sich als Staubmensch verkleidet."~ */
  IF ~~ THEN REPLY #44210 /* ~"Das werd ich mir merken. Leb wohl, Gonkalves."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY #44211 /* ~Gonkalves nickt und lächelt vielsagend. "Die Staubmenschen-Nummer wird doch langsam fade, oder? Aber ich hab auch ein Göttermenschen-Kostüm da, wenn Ihr möchtet. Es kostet nur fünfzig Kupfermünzen."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44212 /* ~"Das nehm ich."~ */ DO ~DestroyPartyGold(50)
GiveItemCreate("Costume2",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume2","AR0611",1)
~ GOTO 17
  IF ~  PartyGoldLT(50)
~ THEN REPLY #44213 /* ~"Hmm... Soviel hab ich nicht bei mir. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44214 /* ~"Ach, vergiß es. Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44215 /* ~"Ich komm vielleicht ein andermal wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44216 /* ~Gonkalves holt ein paar zusammengelegte Kleidungsstücke und eine schwere Lederschürze und Arbeitsstiefel unter einem Tisch hervor. "Bitte schön. Und viel Spaß beim Maskenball, mein Herr."~ */
  IF ~~ THEN REPLY #44217 /* ~"Danke, Gonkalves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44218 /* ~Der Mann blickt von seiner Arbeit auf und scheint Annah zum ersten Mal zu sehen. Er schüttelt mißbilligend den Kopf. "Mädel, dich haben wohl alle guten Geister verlassen, daß du so rumläufst?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 212
END

IF ~~ THEN BEGIN 19 // from:
  SAY #44219 /* ~Er zeigt auf Annahs Kleidung. "Dieses unpraktische Leder, Fräulein. Und diese Betonung der Oberweite. Und vor allem dieser *ach-so-vorteilhafte* Schlitz quer über das Mieder. Was du trägst, sieht doch völlig unbequem aus und soll *offensichtlich* nur die Hormone der Männer in Wallung bringen. Selbst wenn du damit - wie ihr Tieflinge das wohl gerne tut - gegen Autorität und Tradition protestieren willst, dann wird dir dies auf lange Sicht nur schaden..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 472
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44220 /* ~Versuch, sie zu unterbrechen.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44221 /* ~Laß sie weiterreden.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #44222 /* ~Gonkalves läßt kein gutes Haar an Annah. "Also ehrlich gesagt ist deine Kleidung eher für eine Veranstaltung in der Festhalle geeignet als..." Er runzelt die Stirn. "Apropos: Du gehörst nicht zufällig zu den Sinnsaten?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 213
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44223 /* ~Der Schneider nickt. "Hatte ich nicht wirklich für möglich gehalten. Probier doch mal was anderes an, vielleicht was Dezenteres..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 473
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44224 /* ~Versuch, sie zu unterbrechen.~ */ EXTERN ~DANNAH~ 214
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44225 /* ~Laß sie weiterreden.~ */ EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 22 // from:
  SAY #44226 /* ~"Ganz wie du wünschst." Gonkalves sieht dich an. "Und da ich jetzt sowieso völlig aus meiner Arbeit gerissen worden bin... Ich bin Gonkalves. In welcher Angelegenheit möchtet Ihr mich sprechen?"~ */
  IF ~~ THEN REPLY #44227 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44228 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44229 /* ~Gonkalves blickt sofort von seiner Arbeit auf und verneigt sich höflich vor Grace, der Gefallenen, die die Geste erwidert. "Seid gegrüßt, Meisterin Grace. Was kann ich heute für Euch tun? Mit dem andern Auftrag bin ich fast fertig..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 143
END

IF ~~ THEN BEGIN 24 // from:
  SAY #44230 /* ~"Selbstverständlich!" Gonkalves dreht sich zu dir. "Ja, bitte... Worüber wolltet Ihr mit mir sprechen?"~ */
  IF ~~ THEN REPLY #44231 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44232 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #44233 /* ~Der Schneider ist weiter damit beschäftigt, ein Stück Stoff mit einem Muster zu besticken. Er scheint dich nicht im geringsten wahrzunehmen.~ */
  IF ~~ THEN REPLY #44234 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #44235 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #44236 /* ~Gonkalves legt seine Arbeit nieder und nickt dir zu. "Ihr seid's schon wieder... Gut. Was kann ich für Euch tun?"~ */
  IF ~~ THEN REPLY #44237 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44238 /* ~"Bin nur zufällig vorbeigekommen, Gonkalves. Leb wohl."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #44240 /* ~Der Schneider grinst dich höhnisch an. "Ich würde Euch raten zu *verschwinden*, bevor ich erneut die Wache rufen muß. Weder Worte noch Taten können das wiedergutmachen, was Ihr mir angetan habt. Geht!"~ */
  IF ~~ THEN REPLY #44242 /* ~"Mach doch, ruf die Wache."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44243 /* ~Geh weg.~ */ EXIT
END
