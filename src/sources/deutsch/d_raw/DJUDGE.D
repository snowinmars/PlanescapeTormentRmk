// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~Dieser griesgrämige kleine Mann zieht eine Augenbraue hoch, als du dich ihm näherst. Er spricht mit dem Tonfall eines fetten und arroganten Adligen. "Darf ich Euch darauf hinweisen, mein Herr, daß Ihr einen offiziellen Prozeß unterbrecht. Paßt auf, was Ihr sagt, ich bin ein einflußreicher Friedensrichter und würde es hassen, wenn ihr das *traurige* Schicksal dieses Mannes..." Er deutet auf den Beamten, der soeben hingerichtet wird. "... teilen müßtet."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~"Ein 'offizieller Prozeß'? Das möchte ich bezweifeln. Ihr werdet diesen Mann nicht hinrichten."~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~"Oh?" Er läßt eine buschige Augenbraue sinken, nur um die andere hochzuziehen. "Ihr würdet Euch also der Gerechtigkeit in den Weg stellen? Und *wie*, bitte sehr, wollt ihr die Hinrichtung aufhalten, mein Herr?~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~"Indem ich den Henker töte... und dich, wenn es sein muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~"Vergiß es. Ich hab's nicht so gemeint."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~Sämtliche Farbe weicht aus dem Gesicht des Richters. "V-v-vielleicht sind w-wir ein w-w-wenig voreilig mit unserem Urteil, Gnadentöter. Wachen! Laßt diesen Mann frei!" Er lächelt Vhailor vorsichtig an. "Danke für Eure rechtzeitige Hilfe, mein Herr."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~Die Augenbrauen des Richter schießen in die Höhe. "Wa-? Du *wagst* es?! Wachen! Nehmt diesen Mann fest - oder tötet ihn, wenn es sein muß!"~ */
  IF ~~ THEN REPLY #57348 /* ~Greif den Richter an.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~Greif die Wachen an.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~Greif den Henker an.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~"*Falsch*? Ihr vergeßt wohl, daß ich ein Richter bin, mein Herr. Ich allein entscheide, was in dieser Stadt richtig und falsch ist!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~"Aber wenn ihr ihn hinrichtet, wird dies das Chaos, das diese Stadt überhaupt erst nach Carzeri verschoben hat, nur noch verstärken. Wir müssen diesem Wahnsinn ein Ende setzen, um Verdammnis dahin zurückzubefördern, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~"Aber wenn ihr ihn hinrichtet, wird dies das Chaos, das diese Stadt überhaupt erst nach Carzeri verschoben hat, nur noch verstärken. Wir müssen diesem Wahnsinn ein Ende setzen, um Verdammnis dahin zurückzubefördern, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~"Aber wenn ihr ihn hinrichtet, wird dies das Chaos, das diese Stadt überhaupt erst nach Carzeri verschoben hat, nur noch verstärken. Wir müssen diesem Wahnsinn ein Ende setzen, um Verdammnis dahin zurückzubefördern, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~"Das mag sein, wie es will, aber ihr werdet den Mann nicht hinrichten."~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~Der Richter zieht seine dicken Augenbrauen zusammen, so daß sie wie ein buschiges, weißes V über seinen Augen stehen. Er blickt dich an, dann den Beamten, dann wieder dich. "Sowohl klug als auch weise sind Eure Worte, Herr... Und ich danke Euch für Eure rechtzeitige Hilfe. Diese Stadt und auch der Angeklagte wissen sie zu schätzen. Es wird keine weiteren überstürzten Hinrichtungen mehr geben. Wachen! Laßt den Mann frei."~ */
  IF ~~ THEN REPLY #57365 /* ~"Danke. Leb wohl."~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~"Schon wieder? Und was genau wollt Ihr diesmal, mein Herr?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~"Das kann ich nicht zulassen. Ihr werdet den Mann nicht hinrichten."~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~Dieser griesgrämige Mensch zieht eine Augenbraue hoch, als du dich ihm näherst. "Ihr habt hier nichts zu schaffen, mein Herr. Ihr seid nur lästig... Ich würde vorschlagen, daß Ihr geht."~ */
  IF ~~ THEN REPLY #57387 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~"Schon wieder?" Der Richter stöhnt verärgert. "Ihr habt hier nichts zu schaffen, mein Herr. Ihr seid nur lästig... Ich würde vorschlagen, daß Ihr geht."~ */
  IF ~~ THEN REPLY #57390 /* ~Geh weg.~ */ EXIT
END
