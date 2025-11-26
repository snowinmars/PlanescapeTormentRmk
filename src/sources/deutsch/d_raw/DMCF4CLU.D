// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~Du siehst eine unauffällige Frau. Sie scheint nichts anderes als eine weitere Marktkundin zu sein.~ */
  IF ~~ THEN REPLY #37193 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~Ignoriere sie.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~Bei deinem Gruß wendet sie sich dir zu. "Ja?"~ */
  IF ~~ THEN REPLY #37195 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~"Schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~Sie sieht dich gelangweilt an. "Bitte..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~"Nie von ihm gehört. An den Titel 'Herrn der Knochen' würde ich mich erinnern. Sowas vergißt man nicht." Sie sieht auch weiter gelangweilt aus.~ */
  IF ~~ THEN REPLY #37203 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~Sie starrt dich einen Moment lang an. "Du suchst einen Totenschädel... also wirklich, sowas hört man nicht alle Tage. Wüßte auch nicht, was ich dazu sagen sollte." Sie zuckt die Achseln.~ */
  IF ~~ THEN REPLY #37205 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~Sie sieht dich gelangweilt an und schaut dann über den Markt. "Genau hier, Schleifer. Nimm dir einfach die Zeit, die Händler zu fragen. Ich bin sicher, dann wirst du finden, was du suchst."~ */
  IF ~~ THEN REPLY #37207 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~Sie seufzt. "Da gibt's nicht viel zu erzählen... aber es ist das einzige Zuhause, daß ich oder all die anderen hier jemals haben werden. Mußt es halt lieben lernen, da du nicht wegkommst."~ */
  IF ~~ THEN REPLY #37209 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~"Auf bald."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~Sie dreht sich um, als du sie ansprichst, und runzelt die Stirn. "Ich habe dir bereits etwas Zeit geschenkt. Mehr werd ich dir nicht geben, Schleifer." Sie dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #37211 /* ~Geh.~ */ EXIT
END
