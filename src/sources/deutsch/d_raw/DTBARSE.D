// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTBARSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTBARSE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Slavers","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #48096 /* ~Du siehst einen abgemagerten, grimmigen Mann. Sein grobes Gesicht ist faltig und wettergegerbt, und seine Augen haben rote Ränder. Er richtet sich auf, als er dich sieht. "Willkommen am Verrätertor. Ich bin Besuldeter Barse, der Wirt."~ */
  IF ~~ THEN REPLY #48097 /* ~"Was hast du denn?"~ */ GOTO 1
  IF ~~ THEN REPLY #48098 /* ~"Was ist das für ein Name?"~ */ GOTO 2
  IF ~~ THEN REPLY #48101 /* ~"Ich brauche etwas zu trinken."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48107 /* ~"Ich brauche eine Bleibe."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48108 /* ~"So so. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #48109 /* ~"Was los ist? Meine Tochter ist von Sklavenhändlern entführt worden, und jetzt schreibt mein Laden rote Zahlen, und ich werde ihn an einen dieser reichen Halunken des ersten Zirkels verlieren." Er sieht dich etwas eindringlicher an. "Du bist der Bursche, der nach dem Deva gefragt hat, stimmt's? Paß mal auf: Hilfst du mir, helf' ich dir."~ */
  IF ~~ THEN REPLY #48110 /* ~"Was weißt du über den Deva?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #48111 /* ~"Was muß ich tun?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48112 /* ~"Sprechen wir später darüber. Im Moment habe ich noch ein paar Fragen..."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #48113 /* ~"Ich denk drüber nach. Ich komme wieder. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #48114 /* ~Er starrt dich an. "Barse ist mein eigentlicher Name, Dussel. Das Besudelt kam erst später dazu, weil ein paar ehemalige Freunde unbegründetes Zeug über mich verbreitet haben." Er wirkt *sehr* wütend. "Was zum Teufel willst du überhaupt? Bist du'n Abenteurer, oder was?"~ */
  IF ~~ THEN REPLY #48116 /* ~"Warum? Was ist los?"~ */ GOTO 1
  IF ~~ THEN REPLY #48117 /* ~"Ich würde gern ein paar Fragen stellen..."~ */ GOTO 4
  IF ~~ THEN REPLY #48118 /* ~"Ich brauche etwas zu trinken."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48119 /* ~"Ich brauche eine Bleibe."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48120 /* ~"So so. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.4 7.1
  SAY #48125 /* ~Er lächelt listig. "Du suchst nach ihm, stimmt's? Ich kann dir sagen, daß er tief unter dem Gefängnis verborgen steckt. Ich kann dir auch sagen, wie du da hinkommst, ohne gefangengenommen zu werden und ohne Bestechungsversuche - wobei das sowieso nicht klappen würde."~ */
  IF ~~ THEN REPLY #48127 /* ~"Was muß ich dafür tun?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.0 7.3 8.0 12.0 13.0 14.1
  SAY #48128 /* ~"Was willst du wissen?"~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #48129 /* ~"Was ist mit der Stadt los, daß sie wie ausgestorben ist?"~ */ JOURNAL #47843 /* ~Der Besudelte Barse, der Wirt der Taverne "Zum Verrätertor", hat mir gesagt, daß die Stadtväter kürzlich das Gefängnis erweitert hätten. Dabei sei man auf einen Deva gestoßen, der in einer Steinblase im Boden gefangen gewesen war. Sie haben ihn natürlich nicht befreit, sondern ihm lediglich sein Schwert abgenommen, um damit die Zellen der Gefangenen mit Energie zu versorgen.~ */ GOTO 7
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #48130 /* ~"Was ist mit der Stadt los, daß sie wie ausgestorben ist?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ JOURNAL #47843 /* ~Der Besudelte Barse, der Wirt der Taverne "Zum Verrätertor", hat mir gesagt, daß die Stadtväter kürzlich das Gefängnis erweitert hätten. Dabei sei man auf einen Deva gestoßen, der in einer Steinblase im Boden gefangen gewesen war. Sie haben ihn natürlich nicht befreit, sondern ihm lediglich sein Schwert abgenommen, um damit die Zellen der Gefangenen mit Energie zu versorgen.~ */ GOTO 7
  IF ~~ THEN REPLY #48131 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~  Global("Slavers","GLOBAL",1)
Global("Curst_Key","GLOBAL",0)
~ THEN REPLY #48132 /* ~"Du sagtest, es gäbe etwas, um das man sich kümmern soll. Was soll ich also tun?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48133 /* ~"Was weißt du über den Deva?"~ */ GOTO 3
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48134 /* ~"Ich brauche etwas zu trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48135 /* ~"Ach, gar nichts. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48135 /* ~"Ach, gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.0 4.3 6.0
  SAY #48136 /* ~"Sprich mal mit Marquez da drüben. Er war früher ein Mitglied des Harmoniums, und er weiß auch was über diese Sklavenhändler. Außerdem hält er den ersten Teil des Schlüssels bereit, der dich zum Deva führt."~ */
  IF ~~ THEN REPLY #48137 /* ~"Ich denk drüber nach. Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Besudelter Barse hat mich darum gebeten, seine Tochter aus den Händen von Sklavenhändlern zu befreien. Er meinte, ich solle in seiner Bar mal mit Marquez, dem Harmonium-Offizier, reden.~ */ GOTO 4
  IF ~~ THEN REPLY #48138 /* ~"Ich werde es nicht tun."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ JOURNAL #68074 /* ~Besudelter Barse hat mich darum gebeten, seine Tochter aus den Händen von Sklavenhändlern zu befreien. Er meinte, ich solle in seiner Bar mal mit Marquez, dem Harmonium-Offizier, reden.~ */ GOTO 9
  IF ~~ THEN REPLY #48139 /* ~"Mach ich."~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 0.2 0.3 0.4 1.3 2.2 2.3 2.4 4.6 7.4 8.1 12.1 13.1
  SAY #48140 /* ~"Hör zu... Verflucht! Ich hasse es, einen Fremden um etwas zu bitten, aber ich denke, ich kann dir helfen, wenn du mir hilfst." Er redet hektisch weiter. "Meine Tochter ist entführt worden, sie soll verkauft werden, ich werde meinen Laden verlieren, wenn sie mir hier nicht hilft, und ich habe Informationen, die für dich sehr wertvoll sein könnten. Eine Hand wäscht die andere, verstehst du?"~ */
  IF ~~ THEN REPLY #48141 /* ~"Was brauchst du?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Besudelter Barse hat mich darum gebeten, seine Tochter aus den Händen von Sklavenhändlern zu befreien. Er meinte, ich solle in seiner Bar mal mit Marquez, dem Harmonium-Offizier, reden.~ */ GOTO 5
  IF ~~ THEN REPLY #48142 /* ~"Vergiß es. Ich bin gerade beschäftigt."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #48143 /* ~"Ha. Die Probleme sind hier so zahlreich wie eh und je. Zuerst graben sie Löcher, um das Gefängnis zu erweitern - und da entdecken sie diesen Deva in einer riesigen Blase aus Vulkangestein, die am Boden angekettet ist. Sie nehmen sein Schwert und nutzen dessen Macht, um die Verbrecher in ihren Käfigen zu halten. Sie überlegen hin und her, was mit der Himmelskreatur geschehen soll und raufen sich die Haare, wie sie von seiner Entdeckung profitieren können und wie sie ihren 'Freunden' zuvorkommen können... Und dann trifft uns die Pest."~ */
  IF ~~ THEN REPLY #48144 /* ~"Pest?"~ */ JOURNAL #48160 /* ~Besudelter Barse hat mir erzählt, daß Verdammnis kurze Zeit, nachdem die Beamten der Stadt das Gefängnis des Devas geöffnet hatten, von einer Seuche heimgesucht wurde.~ */ GOTO 12
  IF ~~ THEN REPLY #48145 /* ~"Was weißt du über den Deva?"~ */ GOTO 3
  IF ~~ THEN REPLY #48146 /* ~"Warum ist der Deva eingesperrt worden?"~ */ GOTO 13
  IF ~~ THEN REPLY #48147 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48148 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48159 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #48161 /* ~"Dieser Ort ist eine Brutstätte für Gerüchte und Andeutungen. Keiner traut keinem. Du tust hier niemandem einen Gefallen, ohne sicherzustellen, daß derjenige in deiner Schuld steht. Jeder haßt jeden, und jeder versucht, den anderen in der Hand zu haben. So jemand wie du... ist ein gefundenes Fressen für diese Leute, weil du die Spielregeln nicht kennst. Und ich garantiere dir, daß du in den Strudel hineingezogen wirst."~ */
  IF ~~ THEN REPLY #48162 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48163 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48164 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",6)
~ THEN BEGIN 9 // from: 5.1 6.1 14.0
  SAY #48165 /* ~"Wenn du mir keinen Gefallen tust, dann tu ich dir auch keinen. Mach, daß du verschwindest!"~ */
  IF ~~ THEN REPLY #48166 /* ~"Nein. Ich brauch was zu trinken."~ */ GOTO 11
  IF ~~ THEN REPLY #48167 /* ~"Nein. Ich bräuchte eine Übernachtungsmöglichkeit."~ */ GOTO 11
  IF ~~ THEN REPLY #48168 /* ~"Ich hab's mir anders überlegt. Ich helfe dir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48169 /* ~"Dann geh ich eben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 9.2
  SAY #48170 /* ~"Marquez sagt dir, was du tun mußt, und wenn du fertig bist, lotst er dich an die nächste Person mit einem Schlüssel."~ */
  IF ~~ THEN REPLY #48171 /* ~"Leb wohl."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Besudelter Barse hat mich darum gebeten, seine Tochter aus den Händen von Sklavenhändlern zu befreien. Er meinte, ich solle in seiner Bar mal mit Marquez, dem Harmonium-Offizier, reden.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.1
  SAY #48172 /* ~"Du bekommst ihn nur, wenn du mich tötest - und wenn du das tust, kommst du nie mehr aus dieser Stadt raus. Du wirst hier verrotten, Dussel! Ich mein's ernst. Du kommst hier nie mehr raus!"~ */
  IF ~~ THEN REPLY #48173 /* ~Töte ihn.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #48174 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY #48175 /* ~"Ganz genau. Etwas, das die Leute reihenweise niederstreckt. Macht die Leute total streitlustig und schlechtgelaunt - und zu schwach, um etwas dagegen zu tun. Die Wachen haben Teile der Stadt abgesperrt, und sie sind alle ziemlich aufgebracht. Die sperren einen heutzutage unter dem fadenscheinigsten Vorwand ein. Ich weiß nicht, wie du in die Stadt gelangt bist, aber du kommst erst wieder raus, wenn du ein Portal findest."~ */
  IF ~~ THEN REPLY #48176 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48177 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48178 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #48179 /* ~Er sieht dich mit festem Blick an, um zu prüfen, ob du ihn veräppeln willst. "Ich hab dir doch gesagt, daß sie ihn begraben in der Erde gefunden haben, oder? Das heißt, daß ich keinen blassen Schimmer hab, wie er da unten hingekommen ist. Ich wünschte, ich hätte die Macht, um einen Deva zu fangen. So eine Macht wär schon was wert."~ */
  IF ~~ THEN REPLY #48180 /* ~"Gut. Und jetzt beantworte mir ein paar Fragen."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48181 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48182 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Slavers","GLOBAL",6)
~ THEN BEGIN 14 // from:
  SAY #48183 /* ~Er versucht, den nervösen Blick zu verbergen, als er die Frage stellt: "Hast du irgend etwas über meine Tochter herausgefunden? Ich mache mir große Sorgen um sie. Bitte sag es Marquez, wenn du irgend etwas hörst."~ */
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48184 /* ~"Ich werde nicht nach ihr suchen."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
  IF ~~ THEN REPLY #48185 /* ~"Noch nicht. Ich hätte da ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #48186 /* ~"Noch nicht. Ich hätte gern etwas zu trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48187 /* ~"Noch nicht. Ich bräuchte eine Übernachtungsmöglichkeit."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
!Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #48188 /* ~"Ja. Sie müßte bald wieder hier sein. Ich gehe und sag's Marquez."~ */ EXIT
  IF ~  Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66863 /* ~"Sie ist umgekommen, als ich versucht hab, sie zu befreien. Ich erzähl's Marquez."~ */ DO ~SetGlobal("Slavers","GLOBAL",7)
~ EXIT
  IF ~~ THEN REPLY #66864 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",7)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY #48189 /* ~Der aus seinen Augen sprechende Schmerz wirkt noch frisch. "Was willst du, Schleifer?"~ */
  IF ~~ THEN REPLY #48190 /* ~"Was hat es eigentlich mit diesem Schlüssel auf sich?"~ */ GOTO 16
  IF ~~ THEN REPLY #48191 /* ~"Ich hätte gern etwas zu trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48192 /* ~"Ich bräuchte eine Übernachtungsmöglichkeit."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48193 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #48194 /* ~"Es ist ein Schlüssel - aber kein Schlüssel im gewöhnlichen Sinn, wenn du verstehst, was ich meine. Wenn du die Schlüssel beisammen hast, sagst du mir Bescheid - und dann wird Wissen in meinem Gedächtnis freigesetzt. Bis dahin bleibt es allerdings geheim. Du mußt die Schlüsselbesitzer zufriedenstellen. Sonst noch was?" ~ */
  IF ~~ THEN REPLY #48195 /* ~"Ich hätte gern etwas zu trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48196 /* ~"Ich bräuchte eine Übernachtungsmöglichkeit."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48197 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #48198 /* ~"Kommst du mit dem Schlüssel voran? Nur keine Bange - du bekommst ihn ganz bestimmt."~ */
  IF ~~ THEN REPLY #48199 /* ~"Was hat es eigentlich mit diesem Schlüssel auf sich?"~ */ GOTO 16
  IF ~~ THEN REPLY #48200 /* ~"Ich hätte gern etwas zu trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48201 /* ~"Ich bräuchte eine Übernachtungsmöglichkeit."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48202 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
Global("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #48203 /* ~"Du mußt noch eine weitere Aufgabe erfüllen. Siehst du den betrunkenen Bastard Chek'ka Plute da in der Ecke? Bring ihn um!" Er hebt seine Stimme. "Hey, Chek'ka! Hier kommt dein Tod!"~ */
  IF ~~ THEN EXTERN ~DCHEKKA~ 4
END

IF WEIGHT #3 ~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
GlobalGT("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #48204 /* ~"Jetzt, da du diesen versoffenen Narren getötet hast, kann das Tor aufgeschlossen werden. Bist du bereit zu gehen? Es gibt kein Zurück - sobald du hindurchgegangen bist, wird das Tor geschlossen, verriegelt und auf magische Weise geschützt. Willst du es tun?"~ */
  IF ~~ THEN REPLY #48205 /* ~"Ich bin bereit."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48206 /* ~"Ich möchte mich zuerst noch ein wenig im Gasthof ausruh'n."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48207 /* ~"Ich möchte zuerst etwas trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48208 /* ~"Noch nicht."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3 21.3
  SAY #48209 /* ~"Dann kommst du eben wieder und sagst mir, wann du bereit bist."~ */
  IF ~~ THEN REPLY #48210 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 ~  Global("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #48211 /* ~"Bist du bereit zu gehen? Es gibt kein Zurück - sobald du hindurchgegangen bist, wird das Tor geschlossen, verriegelt und auf magische Weise geschützt. Willst du es tun?"~ */
  IF ~~ THEN REPLY #48212 /* ~"Ich bin bereit."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48213 /* ~"Ich möchte mich zuerst noch ein wenig im Gasthof ausruh'n."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48214 /* ~"Ich möchte zuerst etwas trinken."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48215 /* ~"Noch nicht."~ */ GOTO 20
END
