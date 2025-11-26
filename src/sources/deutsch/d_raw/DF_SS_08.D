// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_08~

IF ~  !Global("S_Stone","AR0603",15)
!Global("S_Stone","AR0603",18)
~ THEN BEGIN 0 // from:
  SAY #34219 /* ~Dies ist ein ungewöhnlicher rötlich-orangefarbener Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47490 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",15)
~ THEN BEGIN 1 // from:
  SAY #47491 /* ~Dies ist der rötliche Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Schreckliche Reue' eingeschlossen.~ */
  IF ~~ THEN REPLY #47492 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47493 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47494 /* ~Du stehst an Deck deines Flaggschiffs Göttlicher Hammer, das über den Kontinent von Agarheim dahinschwebt und von den Winden der Magie getragen wird. Die Landschaft selbst erzittert und erbebt unter dem Bombardement durch deine Flotte. Kanonen und Geschütze von Tausend Schiffen schleudern ihr magisches Feuer wie rachsüchtige Götter auf die Erde. Erst vor wenigen Minuten haben die ersten Druckwellen dein Schiff getroffen - ein unaufhörliches Vibrieren läßt das alte Luftschiff bis in den letzten Winkel erzittern und fährt auch dir durch Mark und Bein - begleitet von einem dauerhaften grummelnden Baß. Als die Berge des Landes zu sinken und das umliegende Meer zu verdampfen beginnt, erscheint dein erster Offizier und stellt sich neben dich. ~ */
  IF ~~ THEN REPLY #47495 /* ~Setz die Erfahrung fort.~ */ GOTO 3
  IF ~~ THEN REPLY #47496 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47497 /* ~"Lord Admiral... bitte um Erlaubnis, frei sprechen zu dürfen, Sir." Du nickst zustimmend, und dir wird ganz flau im Magen, als du dir überlegst, was er wohl fragen wird. "Mylord... vergebt mir, aber wie können wir das nur tun? Was gibt uns das Recht? Eine Milliarde Leben..."~ */
  IF ~~ THEN REPLY #47498 /* ~Setz die Erfahrung fort.~ */ GOTO 4
  IF ~~ THEN REPLY #47499 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47500 /* ~Du sprichst, ohne ihn anzusehen. Du kannst deine Augen einfach nicht von Rhumos, der riesigen Hauptstadt des Landes, losreißen und bist Zeuge, wie sie in einer Wolke aus superheißen Gasen verpufft, die zwölf Meilen breit ist und immer größer wird. "Wenn Ihr nur das ganze Ausmaß des Verrats der Agariten kennen würdet, Erster Offizier Felm, ein Verrat, der über das Vorstellungsvermögen der meisten Menschen hinausgeht... dann würdet Ihr verstehen. Dann würdet Ob wir ein Recht haben, sie auszulöschen? Wir haben kein Recht, sie am Leben zu lassen."~ */
  IF ~~ THEN REPLY #47501 /* ~Setz die Erfahrung fort.~ */ GOTO 5
  IF ~~ THEN REPLY #47502 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47503 /* ~"Aber... Sir! Verräter? Alle von ihnen? Sicherlich ein paar Hunderttausend. Doch wie viele Unschuldige -""Schweigt! Sprecht nicht mehr davon! Unser König hat gesprochen, und was er verfügt, wird getan. Die uns auferlegte Aufgabe ist schrecklich und taugt nicht zum Überdenken oder Fragenstellen. Bei ihr gibt es keinen Platz für Mitleid und keinen Platz für Gewissensbisse - es gibt nur die *Pflicht*."~ */
  IF ~~ THEN REPLY #47504 /* ~Setz die Erfahrung fort.~ */ GOTO 6
  IF ~~ THEN REPLY #47505 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47506 /* ~Ihr steht für eine Weile schweigend nebeneinander und verfolgt die letzten Minuten von Agarheim. Schließlich seufzt du... atmest tief und stotternd aus, so als ob etwas in dir zerbrochen ist. Unter der metallischen Platte, die die entstellte Hälfte deines Gesichts bedeckt, fängt dein totes Auge zu weinen an...~ */
  IF ~~ THEN REPLY #47507 /* ~Setz die Erfahrung fort.~ */ GOTO 7
  IF ~~ THEN REPLY #47508 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47509 /* ~"Falm... mein Freund... Ich möchte, daß Ihr versteht. Ich weiß jetzt, wenn ich auf das hinunterschaue, was ich angerichtet habe, daß ich verrückt würde, wenn ich darüber nachdächte, was ich getan habe... Was ich *tatsächlich* getan habe Eine solche Tat... Die Qual würde mich überwältigen, mich zerstören. Deshalb, Erster Offizier Falm, *muß* es einfach so sein, daß in Agarheim keine Unschuldigen sind... keine Mütter, keine Kinder, keine *Menschen*. Nur Verräter. Gemeine und gerissene Verräter, die nichts Geringeres verdienen als die ganze Wucht des Zorns unseres Allerheiligsten Königs. Versteht Ihr das?"~ */
  IF ~~ THEN REPLY #47510 /* ~Setz die Erfahrung fort.~ */ GOTO 8
  IF ~~ THEN REPLY #47511 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47512 /* ~"J-ja, Mylord.""Gut. Geht jetzt... Ich möchte allein sein.""Wie Ihr befehlt, Lord Admiral." Falm nickt salutierend, geht unter Deck zurück und läßt dich weiter dem Ende einer Zivilisation beiwohnen.~ */
  IF ~  Global("Sensation15","AR0603",0)
~ THEN REPLY #47513 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation15","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation15","AR0603",1)
~ THEN REPLY #47514 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",18)
~ THEN BEGIN 9 // from:
  SAY #47515 /* ~Dies ist der rötliche Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Unbeschreibliche Frustration' eingeschlossen.~ */
  IF ~~ THEN REPLY #47516 /* ~Beginn die Erfahrung.~ */ GOTO 10
  IF ~~ THEN REPLY #47517 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47518 /* ~Jetzt erkennst du sie, die Krone von Haephon, die auf einem Marmorsockel erstrahlt. Sie liegt nicht mehr als zwanzig Schritte entfernt... Mit ihr könntest du deinem treulosen Bruder die Macht über die Armeen von Aethanopolis entziehen, und das Königreich deines Vaters wiederherstellen. Dein elender Bruder war schon ein Narr - du lächelst grimmig bei diesem Gedanken - daß er die einzige Tochter des Königs am Leben gelassen und geglaubt hat, daß sie ihm nicht schaden könne. ~ */
  IF ~~ THEN REPLY #47519 /* ~Setz die Erfahrung fort.~ */ GOTO 11
  IF ~~ THEN REPLY #47520 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #47521 /* ~Ein Geräusch! Das Quietschen von Ledersandalen, ein ganz leises Zischen... Es kommt von da drüben, von der dritten Säule! Polaphi, die Medusa, ist jetzt ganz in der Nähe... Eifersüchtig bewacht sie die Krone, die ihre Diener vor so langer Zeit für sie gestohlen haben. Du kauerst dich hinter eine breite Säule und deine Hand umfaßt fest den vertrauten Dreimal Geweihten Speer. Dank deines Helms der Schnelligkeit und deines Hundert-Spiegel-Schilds kannst du es selbst mit einer Bestie wie Polaphi aufnehmen. Sie kann jetzt jeden Moment um die Säule herumkommen und deinen Blick treffen. Selbst wenn sie sich vom Schild abwendete, würde dein Speer sicher ihren Hals finden...~ */
  IF ~~ THEN REPLY #47522 /* ~Setz die Erfahrung fort.~ */ GOTO 12
  IF ~~ THEN REPLY #47523 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47524 /* ~Plötzlich spürst du eine sanfte Berührung auf deiner Schulter. Dir stockt der Atem, du drehst dich schnell um und erblickst - natürlich - die Medusa. Du fügst dich in das Unvermeidliche und hast nur noch die Zeit, einen durchdringenden Schrei der Frustration auszustoßen, ehe deine Lunge... und alle deine anderen Körperteile... zu kaltem grauem Stein erstarren.~ */
  IF ~  Global("Sensation18","AR0603",0)
~ THEN REPLY #47525 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation18","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation18","AR0603",1)
~ THEN REPLY #47527 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.0 12.0
  SAY #47526 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47528 /* ~Geh weg.~ */ EXIT
END
