// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJHELAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJHELAI~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21487 /* ~Du siehst einen dünnen Mann mit fleckiger Kleidung, Hakennase und zwei gedrungenen Hörnern auf der Stirn. Er stolpert umher und murmelt vor sich hin... Er stinkt nach Salzwasser, Erbrochenem und billigem Wein.~ */
  IF ~~ THEN REPLY #21488 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22653 /* ~"Bist du Jhelai? Wenn ja, dann braucht dich Craddock zurück auf dem Marktplatz."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22654 /* ~Geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22655 /* ~"Hä?" Der Mann blinzelt dich aus trüben Augen an. "Was ist? Was?"~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22656 /* ~"Bist du Jhelai? Wenn ja, dann braucht dich Craddock zurück auf dem Marktplatz."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22657 /* ~"Egal. Verzeih, daß ich dich belästigt habe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #22658 /* ~"Crad-ok?" Der Mann reißt die Augen auf. "Ah, Craddock, mein großzügiger Boss... Also, du kannst ihm bestellen, daß er mich ANNERVT... und daß er 'n reudiger Hund ist, 'n Schweinehund der übelsten Sorte und daß Jhelai NIE mehr für ihn arbeiten wird!" Er sticht dich mit dem Finger. "Sag ihm das!"~ */
  IF ~~ THEN REPLY #22659 /* ~"Ich werd's ihm sagen... aus der Ferne. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #22660 /* ~"Äh... ich werd's ihm sagen... Leb wohl, Jhelai."~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalLT("Craddock_Quest","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #22661 /* ~Du siehst Jhelai. Er torkelt immer noch umher, und murmelt vor sich hin... Er stinkt nach Salzwasser, Erbrochenem und billigem Wein.~ */
  IF ~~ THEN REPLY #22662 /* ~Überlaß ihn seinem Vollrausch.~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalGT("Craddock_Quest","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #22663 /* ~Du siehst Jhelai. Er scheint wieder nüchtern zu sein - im Gegensatz zum letzten Mal, als du mit ihm gesprochen hast.~ */
  IF ~  GlobalGT("Lawful_Craddock_1","GLOBAL",0)
~ THEN REPLY #22664 /* ~"Jhelai... schau, ich würd mich vorsehen. Craddock ist wütend und hat gedroht, dich umzubringen, wenn er dich noch mal zu Gesicht bekommt."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22672 /* ~Ich bin zurückgegangen und habe Jhelai vor Craddock gewarnt. Es war das Mindeste, was ich tun konnte. Jhelai sah aus, als bereute er es, jemals etwas gesagt zu haben, aber er hat mir für die Warnung gedankt, der arme Schlucker.~ */ GOTO 5
  IF ~  GlobalGT("Chaotic_Craddock_1","GLOBAL",0)
~ THEN REPLY #22667 /* ~"Jhelai... schau, ich hab' Craddock gesagt, daß ich für dich einspringen würde... du hast immer noch deine Arbeit, also reiß dich zusammen."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22673 /* ~Ich bin zurückgegangen und habe Jhelai erzählt, dass ich für ihn eingesprungen bin und er immer noch seine Arbeit hat. Er sah aus, als bereute er es, jemals etwas gesagt zu haben, und dankte mir, dass ich seine Arbeit gerettet hatte.~ */ GOTO 6
  IF ~~ THEN REPLY #22668 /* ~Geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #22665 /* ~Jhelai grunzt. "Was war ich doch für'n Idiot... Ich wollt' nur mal kurz 'n Schluck Fusel trinken und plötzlich..." Er knirscht mit den Zähnen. "Danke für die Warnung..."~ */
  IF ~~ THEN REPLY #22666 /* ~"Sei vorsichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #22646 /* ~Jhelai grunzt. "Was war ich doch für'n Idiot... Ich wollt' nur mal kurz 'n Schluck Fusel trinken und plötzlich..." Er knirscht mit den Zähnen. "Danke, daß du für mich 'n gutes Wort eingelegt hast... Ich weiß so was zu schätzen, ehrlich."~ */
  IF ~~ THEN REPLY #22670 /* ~"Sei einfach das nächste Mal vorsichtiger. Leb wohl."~ */ EXIT
END
