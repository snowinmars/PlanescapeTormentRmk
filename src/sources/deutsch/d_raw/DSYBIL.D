// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~Du siehst eine Person in einer schattigen Ecke des Raumes kauern. Als du näher kommst, tritt dir eine junge Frau entgegen. Sie ist in eine locker hängende Tunika gekleidet, die sie zusammen mit ihrem kurzgeschnittenen Haar und ihrer schlanken Gestalt eher jungenhaft aussehen läßt. "Ich würde an deiner Stelle nicht da hineingehen." Sie nickt in Richtung der Tür in der Südwand.~ */
  IF ~~ THEN REPLY #36189 /* ~"Warum? Was ist hinter der Tür?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~"Wer bist du?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~Beachte das Mädchen nicht, geh weiter.~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~Sie zuckt beim Klang deiner Stimme zusammen und legt einen Finger auf ihre Lippen, damit du leiser sprichst. Sie wartet einen Moment und antwortet dann flüsternd. "Eine ganze Horde dieser heulenden Verrückten, das ist es. Sieht aus, als hätten die so eine Art Versammlung. Kann nicht zur Gasse durch, bis die hier fort sind."~ */
  IF ~~ THEN REPLY #36192 /* ~"Heulende Verrückte?"~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~"Ich heiße Sibylle," wispert sie leise, spuckt in ihre Handfläche und greift nach deiner Hand.~ */
  IF ~~ THEN REPLY #36195 /* ~"Was machen die hier drinnen?"~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~"Danke für die Warnung, Sibylle. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~"Gibt es hier drin ein Echo? Ja, heulende Verrückte. Sie gehören zur Bande der 'Ausgehungerten Bellenden Hunde', einer Gruppe von übergeschnappten Xaositekten-Schlägern, die diesen Teil des Stocks unsicher machen."
~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~"Xaositekten? Ich bin ein Mitglied ihres Bundes... Sie werden mich durchlassen."~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~"Wie viele von ihnen sind da drinnen?"~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~"Du kapierst auch gar nix, was? Die Hunde sind noch verrückter als 'n durchschnittlicher Chaot. Bundmitglied oder nicht: wenn du da rein gehst, landest du garantiert unter den Totenbüchlern."~ */
  IF ~~ THEN REPLY #36200 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~"Wie viele von ihnen sind da drinnen?"~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~"Ich habe ungefähr ein Dutzend von ihnen gezählt. Natürlich konnte ich nur durch eine Türspalte spähen; es könnte also auch eine Handvoll mehr sein."~ */
  IF ~~ THEN REPLY #36203 /* ~"Etwa ein Dutzend? Das ist doch keine Herausforderung!"~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~"Sieht aus, als müßten wir uns da durchkämpfen."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~"Gibt es noch einen anderen Weg  zur Gasse?"~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~"Gut, von mir aus kannst du gerne den Helden spielen, wenn dir danach ist, aber laß mich aus dem Spiel. Ich bleibe hier. Und wenn dir durch irgend ein Wunder von den Tieren da drinnen vielleicht deine Eingeweide nicht herausgerissen werden, sehen wir uns später." Sie dreht sich um und verschwindet wieder in den Schatten der dunklen Zimmerecke.~ */
  IF ~~ THEN REPLY #36207 /* ~"Wenn ich es mir recht überlege... sollte ich vielleicht doch nicht da reingehen."~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~"Vielleicht gibt es doch einen Weg, ohne Kampf an diesen Tieren vorbeizukommen. Es gibt noch eine Tür, die dort hineinführt. Wenn ich das richtig gesehen habe, sind da Stapel von Holzkisten entlang der Wand mit der anderen Tür. Es könnte vielleicht möglich sein, von dieser Tür zum Ausgang auf der anderen Seite des Raums zu schleichen. Da ist nur ein Problem..."~ */
  IF ~~ THEN REPLY #36209 /* ~"Was soll das sein?"~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~"Probleme gibt es immer irgendwelche... anders würde es auch keinen Spaß machen."~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~"Nichts für ungut. Ich hab' genügend eigene Probleme."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~"Die Tür ist verschlossen... Ich habe sie ausprobiert. Ich vermute, daß einer der Schläger oben den Schlüssel dafür hat. Allerdings bin ich nicht irrsinig genug, hinauf zu gehen und nach ihm zu suchen." Sie verschränkt ihre Arme vor der Brust und sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #36212 /* ~"Wenn der Schlüssel da oben ist, werde ich ihn finden. Leb wohl."~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~Ich bin im Mietshaus der Schläger über ein Mädchen namens Sibylle gestolpert. Anscheinend wird sie im Mietshaus von einer Gruppe Xaositekten gefangengehalten, die in dem Raum, der zur Gasse der hallenden Seufzer führt, eine Art Versammlung abhalten. Sie hat mir von einer anderen Tür erzählt, durch die man eventuell ohne einen Kampf an den Schlägern vorbeikommen kann. Ich habe zugestimmt, den Schlüssel zu dieser Tür zu finden, den einer der Schläger in den oberen Stockwerken des Mietshauses bei sich tragen soll.~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~"Egal. Ich nehme das Risiko mit diesen Verrückten auf mich."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~"Was denkst du denn, was ich hier tue? Ich verstecke mich. Ich kam hier herein, um nach... Essen zu suchen." Du siehst, wie sich ihre rechte Hand beim Sprechen instinktiv zu ihrer Tasche bewegt. "Das Problem ist nur, daß diese bellenden Idioten nebenan antanzten und beschlossen, im Eingangsbereich eine Party zu veranstalten. Nun bin ich hier drin gefangen und kann nicht heraus."~ */
  IF ~~ THEN REPLY #36214 /* ~"Bellende Idioten?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~"Du suchst was zu essen, hä? Was ist in dem Beutel?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~"Du lügst. Du bist eine Diebin."~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~"Gibt es hier drin ein Echo? Ja, bellende Idioten. Sie gehören zur Bande der 'Ausgehungerten Bellenden Hunde', einer Gruppe von übergeschnappten Xaositekten-Schlägern, die den Stock unsicher machen.~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~"Xaositekten? Ich bin ein Mitglied ihres Bundes... Sie werden mich durchlassen."~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~"Wie viele von ihnen sind da drinnen?"~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~"Du kapierst auch gar nix, was? Die Hunde sind noch verrückter als 'n durchschnittlicher Chaot. Bundmitglied oder nicht: wenn du da rein gehst, landest du garantiert unter den Totenbüchlern."~ */
  IF ~~ THEN REPLY #36221 /* ~"Wie viele von ihnen sind da drinnen?"~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~Sie will etwas entgegnen, besinnt sich jedoch im letzten Moment eines anderen. Sie sieht dich einen Augenblick lang an und zuckt dann die Schultern. "Also gut, also gut... bin ich halt ein Dieb. Ein Mädchen muß schließlich irgendwie ihren Lebensunterhalt verdienen. Was geht dich das überhaupt an? Du gehörst ganz offensichtlich nicht zum Harmonium und definitiv nicht zu den Wilden hier drinnen."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~"Du hast recht... ich gehöre auch nicht hierher. Kennst du einen anderen Weg, auf dem man zur Gasse gelangt?"~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~"Ich könnte dich natürlich auch  den Schlägern ausliefern... Vielleicht revanchieren sie sich dafür, indem sie mich durchlassen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~"Wie viele von ihnen sind da drinnen?"~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~"Ha! Tust du ja doch nicht. Diese brutalen Kerls würden dir eher den Totenschädel einschlagen als dich ansehen. Außerdem... ich kann dir helfen."~ */
  IF ~~ THEN REPLY #36227 /* ~"Mir helfen? Und wie?"~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~"Ich will keine Hilfe von einer diebischen kleinen Gossenflittchen. Ich werde dich den Schlägern ausliefern."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~"Egal. Ich nehme das Risiko mit diesen Verrückten auf mich."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~"Du schon wieder?" Sibylle wirkt etwas irritiert, jedoch auch erleichtert, dich zu sehen. "Baator sei verflucht, Schleifer! Hättest du nicht noch mehr Lärm machen können? Ich habe dich schon vom anderen Ende der Halle gehört."~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~"Was ist hinter dieser Tür?"~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~"Ist das der Schlüssel, von dem du gesprochen hast?"~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~"Ich hab' mich um das Problem mit den Schlägern vor dem Ausgang gekümmert. Du müßtest jetzt unbehelligt gehen können."~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~"Wie soll ich das wissen? Warum gehst du nicht um die Ecke und versuchst, die Tür damit zu öffnen? Ich werde dir durch den Riß in der Tür hier zusehen. Wenn du in einem Stück in die Gasse gelangst, bin ich gleich hinter dir."~ */
  IF ~~ THEN REPLY #36235 /* ~"Na dann leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~"Ich muß zugeben, Schleifer... ich bin beeindruckt. Ich war mir sicher, daß dich diese Tiere zerfleischen würden. Ich schätze, ich bin dir zu Dank verpflichtet." Sie macht eine kurze Pause, greift dann in ihre Tasche und zieht einen kleinen, grünen Edelstein heraus. "Hier... auf die Hunde. Bis zum nächsten Mal, Schleifer!"~ */
  IF ~~ THEN REPLY #36236 /* ~"Leb wohl, Sibylle."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~Durch meine Bemühungen konnte Sibylle sicher dem Mietshaus der Schläger entkommen. Irgendwie kann ich mich des Gedankens nicht erwehren, daß sie bald wieder bis zum Hals in Ärger stecken wird. ~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~"Wenn du lange genug lebst, um ihn zu finden - die Tür befindet sich in einem Raum südöstlich von hier. Ich werde das Ganze aus dem Verborgenen verfolgen. Wenn du es in einem Stück bis zur Gasse schaffst, werde ich genau hinter dir sein."~ */
  IF ~~ THEN REPLY #50009 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~"Ich muß schon sagen, Schleifer... Ich bin beeindruckt. Ich hab wirklich geglaubt, daß diese Bestien Hackfleisch aus dir machen würden. Nun, ich denke, ich sollte dir dafür danken." Sie hält einen Moment inne, greift dann in ihre Gürteltasche und zieht einen kleinen grünen Edelstein hervor. "Hier... der ist für die Hunde. Mach's gut, Schleifer."~ */
  IF ~~ THEN REPLY #50011 /* ~"Leb wohl, Sybil."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
