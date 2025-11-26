// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKJOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKJOURN~

IF ~  Global("Maze_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #60402 /* ~Es scheint eine Art Journal zu sein. Seiten aus getrockneter Menschenhaut wurden über einen Rahmen aus Knochen gespannt, und eigenartigerweise sind die Häute an den Nähten zusammengewachsen und bilden den Rücken eines notdürftig zusammengebastelten Buches. Es sieht aus, als bildeten die äußeren Hautseiten einen Einband für die Hautblätter innerhalb des Knochenrahmens. ~ */
  IF ~~ THEN REPLY #60403 /* ~Untersuche es von außen.~ */ GOTO 1
  IF ~~ THEN REPLY #61187 /* ~Untersuche die Haut.~ */ GOTO 2
  IF ~~ THEN REPLY #61188 /* ~Untersuche den Rahmen.~ */ GOTO 3
  IF ~~ THEN REPLY #61189 /* ~Schließe den Knochenrahmen auf. ~ */ GOTO 4
  IF ~~ THEN REPLY #61190 /* ~Laß das merkwürdige Journal in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 3.0
  SAY #61191 /* ~Eine Reihe von Symbolen wurden in Blut auf die Hautblätter geschrieben, doch du kannst sie nicht entziffern. Sie scheinen irgendeine Schrift zu ergeben, sehen jedoch aus, als wären sie über Kopf und von rechts nach links geschrieben, und seltsam verwinkelt, so daß dir die Augen schmerzen. ~ */
  IF ~~ THEN REPLY #61192 /* ~Untersuche die Haut.~ */ GOTO 2
  IF ~~ THEN REPLY #61193 /* ~Untersuche den Rahmen.~ */ GOTO 3
  IF ~~ THEN REPLY #61194 /* ~Schließe den Knochenrahmen auf. ~ */ GOTO 4
  IF ~~ THEN REPLY #61195 /* ~Laß das merkwürdige Journal in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.1
  SAY #61196 /* ~Die Haut sieht so bleich aus wie deine. Ihre narbige graue Oberfläche erinnert dich an die Haut eines Zombies, und die Seiten fühlen sich eher wie hartes Leder an als wie Haut.~ */
  IF ~~ THEN REPLY #61197 /* ~Untersuche es von außen.~ */ GOTO 1
  IF ~~ THEN REPLY #61198 /* ~Untersuche den Rahmen.~ */ GOTO 3
  IF ~~ THEN REPLY #61199 /* ~Schließe den Knochenrahmen auf. ~ */ GOTO 4
  IF ~~ THEN REPLY #61200 /* ~Laß das merkwürdige Journal in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #61201 /* ~Die Schrift ist zwar primitiv, doch du mußt eingestehen, daß der Knochenrahmen recht kunstvoll gearbeitet ist. Die Knochen sind so geschnitzt, daß sie genau ineinanderrasten. Es sieht aus, als könnte man die Knochen auseinanderhaken, um das Buch zum Lesen aufzuschlagen. ~ */
  IF ~~ THEN REPLY #61202 /* ~Untersuche es von außen.~ */ GOTO 1
  IF ~~ THEN REPLY #61203 /* ~Untersuche die Haut.~ */ GOTO 2
  IF ~~ THEN REPLY #61204 /* ~Schließe den Knochenrahmen auf. ~ */ GOTO 4
  IF ~~ THEN REPLY #61205 /* ~Laß das merkwürdige Journal in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 2.2 3.2
  SAY #61206 /* ~Du schließt den Knochenrahmen auf, und er öffnet sich mit einem präzisen *Schnappen*. Du schlägst das Buch auf und betrachtest die Seiten... Sie sind vollgeschrieben mit denselben merkwürdigen Symbolen wie der Einband; sie scheinen keinen Sinn zu ergeben. ~ */
  IF ~~ THEN REPLY #61207 /* ~Versuch die Symbole zu enträtseln.~ */ GOTO 5
  IF ~~ THEN REPLY #61208 /* ~Hake den Knochenrahmen wieder zu und laß das Journal in Ruhe.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 5.0
  SAY #61209 /* ~Die Symbole scheinen keinem bestimmten Muster zu folgen - zumindest kannst du keines erkennen. Die Winkel und Bilder scheinen vollkommen willkürlich gewählt, aber du kannst es nicht mit Sicherheit sagen.~ */
  IF ~~ THEN REPLY #61210 /* ~Versuch die Symbole noch einmal zu enträtseln.~ */ GOTO 5
  IF ~~ THEN REPLY #61211 /* ~Hake den Knochenrahmen wieder zu und laß das Journal in Ruhe.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY #61212 /* ~Als du den Knochenrahmen wieder zuhakst, kommt dir auf einmal der kuriose Gedanke, daß die inneren Seiten gar keinen Sinn ergeben *sollen*. Du - wer immer du damals gewesen sein magst - hast die Symbole dort hingeschrieben, um jeden zu täuschen, der den wahren Inhalt lesen will, welcher irgendwo anders im Rahmen des Journals verborgen ist. ~ */
  IF ~~ THEN REPLY #61213 /* ~Untersuche den Knochenrahmen.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61214 /* ~Du untersuchst die Kanten des Rahmens und bemerkst, daß einer der Knochen um ein Ende herum einen Haarriß hat. Du legst die Hand auf dieses Ende und drehst die Spitze des Knochens ab. Zum Vorschein kommt ein Hohlraum. In dem Hohlraum liegt ein kleines, zusammengerolltes Stückchen Haut. ~ */
  IF ~~ THEN REPLY #61215 /* ~Zieh die Haut hervor, lies, was auf ihr steht.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 12.0
  SAY #61216 /* ~Der Hautfetzen ist von oben bis unten beschrieben. Es sieht aus, als hätte jemand die Seite immer und immer wieder überschrieben, bis sie fast unleserlich geworden ist. Dennoch kannst du einige Worte und Symbole entziffern...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61217 /* ~"GEFANGen GefanGen DER DAME WILLE geschehe WEIche ihrem Blick aus... zu VIELE ich TÖTETe zu VIELE, erwürgen und töten und den ATEM stoppen in ihrem Hals... es gibt einen AUSWEG ICH WEISS es dann grinse ich dem mit der KLINGe eins..."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61218 /* ~"...EINER der BÖGEN birgt den Ausgang, EINER von ihnen, EINER hat den Ausgang, kann nur nicht einfach durch einen nach dem anderen GEHEN, vielleicht - vielleicht sollte ich durch einen gehen, DANN zum selben Portal zurückgehen, ohne..."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61219 /* ~Der Eintrag verliert sich in unleserlichem Gekritzel. Irgendwie hast du das Gefühl, daß es der letzte Eintrag ist... daß die Inkarnation entweder in den Irrgängen starb oder irgendwie entkam.~ */
  IF ~  Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61220 /* ~Hake die Seiten wieder zusammen und leg das Journal weg.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #61223 /* ~Ich habe eins meiner Journale in den Irrgängen der Dame gefunden. In ihm befand sich ein Stück Haut, das irgendein wirres Geschwafel enthielt. Wer auch immer ich war, als ich es geschrieben habe, ich hatte zu dem Zeitpunkt eindeutig nicht alle Tassen im Schrank.~ */ EXIT
  IF ~  !Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61221 /* ~Hake die Seiten wieder zusammen und leg das Journal weg.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
~ EXIT
END

IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #61224 /* ~Es scheint eine Art Journal zu sein. Seiten aus getrockneter Menschenhaut wurden über einen Rahmen aus Knochen gespannt, und eigenartigerweise sind die Häute an den Nähten zusammengewachsen und bilden den Rücken eines notdürftig zusammengebastelten Buches. Es sieht aus, als bildeten die äußeren Hautseiten einen Einband für die Hautblätter innerhalb des Knochenrahmens. ~ */
  IF ~~ THEN REPLY #61225 /* ~Hake den Knochenrahmen auf und lies das Stück Haut darin...~ */ GOTO 8
  IF ~~ THEN REPLY #61226 /* ~Laß das merkwürdige Journal in Ruhe.~ */ EXIT
END
