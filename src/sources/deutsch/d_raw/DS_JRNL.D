// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_JRNL~

IF ~  NearbyDialog("Dsoego")
~ THEN BEGIN 0 // from:
  SAY #48857 /* ~Die metallische Totenbank wird anscheinend als Bett verwendet. So wie es aussieht, gibt es einen Bereich an der Seite, der aufgebrochen werden kann.~ */
  IF ~~ THEN REPLY #48859 /* ~Brich sie auf, und schau hinein.~ */ GOTO 1
  IF ~~ THEN REPLY #48861 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48862 /* ~Dir wird es nicht gelingen, in Soegos Sachen herumzustöbern, solange dieser in der Nähe ist. Wenn du hineingelangen willst, muß dir etwas einfallen, wie du ihn ablenken oder weglocken kannst.~ */
  IF ~~ THEN REPLY #48863 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.0
  SAY #48864 /* ~Als du sicher bist, daß Soego nicht kommt, brichst du das kleine Brett auf und lugst hinein. Im Innern liegt eine Art Buch oder Journal.~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #66860 /* ~Hol es heraus, und lies es.~ */ GOTO 3
  IF ~  Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #48865 /* ~Hol es heraus, und lies es.~ */ DO ~SetGlobal("Soego_Journal","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 3
  IF ~~ THEN REPLY #48866 /* ~Bring das Brett wieder an, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48867 /* ~Es stellt sich heraus, daß es sich bei dem Buch um Soegos Journal handelt. Darin wird detailliert beschrieben, wie er von einer Werratte angegriffen wurde, allmählich der Lykanthropie verfiel und und aus der Leichenhalle fliehen mußte, nachdem er unabsichtlich einen Freund niedergemetzelt und verspeist hatte. Auf der Suche nach einem Unterschupf verschlug es ihn in die Gedankenlabyrinthe, wo er sich bereit erklärte, Viele-Als-Einer, dem geeinten Geist der Schädelratten im Stock, zu dienen.. Er ist jetzt hier in den Toten Landen, um die Untoten für Viele-Als-Einer auszuspionieren, der hofft, eines Tages diesen Teil der Katakomben zu beherrschen.~ */
  IF ~~ THEN REPLY #48868 /* ~Leg das Journal zurück, bring das Brett wieder an, und geh weg.~ */ JOURNAL #47846 /* ~Ich habe Soegos Journal entdeckt. Es war in seinem Zimmer versteckt und erzählt in allen Einzelheiten vom Angriff einer Werratte auf ihn, von seinem Rückzug in die Lykanthropie sowie seiner Flucht aus der Leichenhalle, nachdem er aus Versehen einen Freund abgeschlachtet und verschlungen hatte. Auf der Suche nach einem Versteck stieß er auf die Gedankenlabyrinthe und erklärte sich einverstanden, Viele-Als-Einer, dem geeinten Geist der Schädelratten im Stock, zu dienen. Er ist jetzt hier in den Toten Landen, um die Untoten für Viele-Als-Einer zu bespitzeln. Jener hegt die Hoffnung, eines Tages diesen Teil der Katakomben zu kontrollieren.~ */ EXIT
END

IF ~  !NearbyDialog("Dsoego")
~ THEN BEGIN 4 // from:
  SAY #67165 /* ~Die metallische Totenbank wird anscheinend als Bett verwendet. So wie es aussieht, gibt es einen Bereich an der Seite, der aufgebrochen werden kann.~ */
  IF ~~ THEN REPLY #67166 /* ~Brich sie auf, und schau hinein.~ */ GOTO 2
  IF ~~ THEN REPLY #67167 /* ~Geh weg.~ */ EXIT
END
