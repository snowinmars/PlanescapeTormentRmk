// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~Dieser große Wachmann bellt den Zivilisten um ihn herum Befehle zu. Als du ihn unterbrichst, funkeln seine Augen dich durch die Schlitze seines Helmes an. "Was willst du, du Penner? Beeil dich, bevor wir hier mit der Arbeit anfangen."~ */
  IF ~~ THEN REPLY #53213 /* ~"Was geht hier vor sich?"~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~"Was glaubst du denn, Schlucker?! Wir werden jetzt dieses Lager plündern. Machst du mit oder nicht? Hier wird's nämlich nicht kein armseliges, unordentliches Durcheinander geben... Wir machen es *richtig*, und ich habe das Kommando."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~"Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~"Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~"Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~"Was ihr macht ist falsch. Ihr macht alles nur noch schlimmer. Anstatt zu plündern, solltest du deine Leute nehmen und die Mauern verteidigen, damit die Stadt in die Außenländer zurückgleiten kann."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~"Was ihr macht ist falsch. Ihr macht alles nur noch schlimmer. Anstatt zu plündern, solltest du deine Leute nehmen und die Mauern verteidigen, damit die Stadt in die Außenländer zurückgleiten kann."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~"Halt: Solange ich hier bin, wird hier nicht geplündert."~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~"Ich habe Besseres zu tun. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~Der Wachmann hebt das Visier seines Helmes an und spuckt dir vor die Füße. "Hah! Geh' mir aus den Augen, Schlucker, wir haben noch was zu plündern."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~"Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~"Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~"Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~"Halt: Solange ich hier bin, wird hier nicht geplündert."~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~Du spürst sein höhnisches Lächeln durch seinen Helm hindurch. "Oh, *meinst du*, was? Na dann..." Er droht mit seiner enormen Waffe. "Dann müssen wir dem eben abhelfen."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~"Moment mal: Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~"Moment mal: Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~"Moment mal: Die Stadt geht doch gerade an diesem allgegenwärtigen Chaos zugrunde. Wenn wir alles etwas beruhigen könnten, vielleicht würde die Stadt dann wieder zurück in die Außenländer gleiten. Überleg es dir: Wenn Verdammnis erst einmal von Monstern wimmelt, wie lange kannst du dann die Früchte deiner Plünderei genießen?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~"Warte: Was ihr tut ist falsch. Das macht die Probleme hier nur noch schlimmer. Anstatt hier zu plündern, solltest du lieber deine Leute nehmen und die Mauern verteidigen - damit die Stadt in die Außenländer zurückgleiten kann."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~"Warte: Was ihr tut ist falsch. Das macht die Probleme hier nur noch schlimmer. Anstatt hier zu plündern, solltest du lieber deine Leute nehmen und die Mauern verteidigen - damit die Stadt in die Außenländer zurückgleiten kann."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~"Aber... ach, verflucht, du hast recht." Er ruft den umstehenden Plünderern zu: "In Ordnung! Ihr habt den Mann gehört, also los! Und wenn einer von euch redet, wenn die Stadt zurückgeglitten ist... seid ihr tot! Los jetzt! Bewegung!" Er wendet sich wieder dir zu. "Und was *dich* betrifft: Du bist gar nicht so blöd, wie du aussiehst. Ein echter Mann."~ */
  IF ~~ THEN REPLY #53235 /* ~"Danke. Leb wohl."~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~Es ist mir gelungen, eine plündernde Meute von Bürgern - angeführt ausgerechnet von einem Wachposten - aufzuhalten und zur Verteidigung der Stadt zu bewegen.~ */ EXIT
END
