// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHEAD~

IF ~  Global("Mertwyn_Head","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #42384 /* ~Diese robuste Stahlkiste hat oben einen dicken Ledergriff, aber es gibt keine offensichtliche Möglichkeit, das Ding zu öffnen - es scheint zugeschweißt zu sein. Auf einer Seite sind eine Reihe sehr enger Schlitze angebracht, aber du kannst durch sie nicht richtig in das Innere der Kiste sehen. Ein ekelig süßer, fauliger Gestank entströmt den Schlitzen.

Als du dir den Behälter genauer ansiehst, bewegt er sich leicht in deinen Händen. Drinnen hat sich etwas bewegt! Aus dem Innern tönt eine Männerstimme: "Ho, da draußen... Ist da vielleicht jemand? Mein Name ist Mertwyn... Jemand da? Hallo?"~ */
  IF ~~ THEN REPLY #42385 /* ~"Ja, ich bin da... Sei gegrüßt..."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42386 /* ~Ignoriere die Stimme und leg das Ding weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42387 /* ~"Den Mächten sei Dank! Hast du zufällig meinen Körper gesehen? Im Grunde kann man ihn kaum übersehen. Er stolpert mit einem bekloppten Holzkopf auf den Schultern durch die Gegend... Er hat sich bestimmt schon die Hacken abgelaufen auf der Suche nach mir!"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #42388 /* ~"Ja... In der Städtischen Festhalle."~ */ GOTO 2
  IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN REPLY #42389 /* ~"Nein... Nicht, daß ich wüßte..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42390 /* ~"So ein Glück aber auch! Kann ich dich überreden, mich zu ihm zurückzubringen?"~ */
  IF ~~ THEN REPLY #42391 /* ~"Ja, das mach ich für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Ich habe mich bereit erklärt, Mertwyns Kopf zu seinem Körper in der Städtischen Festhalle zurückzubringen.~ */ GOTO 3
  IF ~~ THEN REPLY #42392 /* ~"Was springt für mich dabei raus?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42393 /* ~"Vielleicht später. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0 8.0 9.0 10.0
  SAY #42394 /* ~"Großartig! Ich bedanke mich aufs Herzlichste. Wenn du erlaubst, würde ich unsere Unterhaltung gern auf später verschieben und erst mal meinen Körper suchen."~ */
  IF ~~ THEN REPLY #42395 /* ~"Aber ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42396 /* ~"Gut... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #42397 /* ~"Das ist ganz normal, wenn man einem abgetrennten, sprechenden Kopf über den Weg läuft, der obendrein in einem Eisenkasten steckt... Aber laß uns die Unterhaltung auf ein andermal verschieben. Es ist nämlich sehr lästig, von seinem Rumpf getrennt zu sein... Ich bitte vielmals um Entschuldigung."~ */
  IF ~~ THEN REPLY #42398 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 9.1 10.1
  SAY #42399 /* ~"Hmmm... Wie wär's mit meiner Dankbarkeit?"~ */
  IF ~~ THEN REPLY #42400 /* ~"Gut, das genügt. Ich bring dich zurück."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Ich habe mich bereit erklärt, Mertwyns Kopf zu seinem Körper in der Städtischen Festhalle zurückzubringen.~ */ GOTO 3
  IF ~~ THEN REPLY #42401 /* ~"Also, etwas mehr könnte ich schon gebrauchen."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #42402 /* ~"Also, mein Körper und ich zusammen könnten sicher was auftreiben, das dir zusagt. Aber kannst du mich vielleicht zuerst zurückgeben?"~ */
  IF ~~ THEN REPLY #42403 /* ~"In Ordnung, mach ich."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Ich habe mich bereit erklärt, Mertwyns Kopf zu seinem Körper in der Städtischen Festhalle zurückzubringen.~ */ GOTO 3
  IF ~~ THEN REPLY #42404 /* ~"Gib mir jetzt gleich was."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #42405 /* ~"Hm... Ist ja wohl offensichtlich, daß ich gerade *nichts* bei mir habe. Schließlich *bin* ich nur ein Kopf in einem Eisenkasten."~ */
  IF ~~ THEN REPLY #42406 /* ~"Also gut... Ich tu's."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Ich habe mich bereit erklärt, Mertwyns Kopf zu seinem Körper in der Städtischen Festhalle zurückzubringen.~ */ GOTO 3
  IF ~~ THEN REPLY #42407 /* ~"Bitte... Dann verrotte doch in deinem Kasten, Mertywn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #42408 /* ~"Halt! Warte! Da läßt sich bestimmt *was* machen, aber zuerst muß ich zurück zu meinem Körper!"~ */
  IF ~~ THEN REPLY #42409 /* ~"In Ordnung, mach ich."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42410 /* ~"Sprechen wir später darüber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #42411 /* ~"Schade. Na ja, wäre ja auch zu schön gewesen, was? Jedenfalls schlurft er wahrscheinlich irgendwo in der Nähe der Städtischen Festhalle rum, in der nordwestlichen Ecke des Bezirks der Kuratoren. Kann ich dich vielleicht irgendwie überreden, mich dorthin zu bringen?"~ */
  IF ~~ THEN REPLY #42412 /* ~"Ja, das mach ich für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~Ich habe mich bereit erklärt, Mertwyns Kopf zu seinem Körper in der Städtischen Festhalle zurückzubringen.~ */ GOTO 3
  IF ~~ THEN REPLY #42413 /* ~"Was springt für mich dabei raus?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42414 /* ~"Vielleicht später. Auf bald."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #42415 /* ~Mertwyns eingesperrter Kopf bewegt sich, als du den Kasten anhebst. "Hallo, du schon wieder... Könntest du mich vielleicht jetzt zu meinem Körper bringen? Ich versichere dir, daß ich dir dafür *sehr* dankbar wäre..."~ */
  IF ~~ THEN REPLY #42416 /* ~"Ja, das mach ich für dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42417 /* ~"Was springt für mich dabei raus?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42418 /* ~"Vielleicht später. Auf bald."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #42419 /* ~Mertwyns eingesperrter Kopf bewegt sich, als du den Kasten anhebst. "Sind wir schon da? Hmmm... Ich kann meinen Körper nicht *sehen*..."~ */
  IF ~~ THEN REPLY #42420 /* ~"Noch nicht, aber ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42421 /* ~"Wir sind noch nicht da. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #42422 /* ~Plötzlich schallt Mertwyns Stimme aus dem Stahlkasten. "Oh! Oh! Da ist er! Das ist mein Körper! He, altes Haus... hierher..."~ */
  IF ~~ THEN EXTERN ~DMERTWYN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #42423 /* ~"Ach komm... Das ist aber nicht nett von dir. Was kannst du mit meinem Kopf denn schon anfangen?"~ */
  IF ~~ THEN REPLY #42424 /* ~Laß Mertwyns Rumpf seinen Kopf nehmen.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GiveGoldForce(200)
~ JOURNAL #56738 /* ~Ich habe Mertwyns Kopf wieder mit seinem Körper vereint. Die beiden schienen ziemlich froh, einander wiederzusehen.~ */ EXTERN ~DMERTWYN~ 8
  IF ~~ THEN REPLY #42425 /* ~"Tut mir leid. Ich behalt dich noch ein Weilchen. Leb wohl."~ */ EXIT
END
