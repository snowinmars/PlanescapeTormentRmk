// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~Dieser freundlich aussehende alte Mann wirft dir nur einen kurzen Blick zu, bevor er mit seinem Vortrag fortfährt.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~Ruf dem Dichter dazwischen.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~Ruf dem Dichter dazwischen.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~Ruf dem Dichter dazwischen.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~Durch deine Zwischenrufe, die im wesentlichen aus Sätzen wie "Poesie stinkt!" und verächtlichem Prusten besteht, ziehst du ein paar verärgerte Blicke auf dich... aber mehr nicht.~ */
  IF ~~ THEN REPLY #43842 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~Du rufst dem Dichter ständig dazwischen und machst dich über seine Verse, seine Erscheinung und sein angebliches Leben im trauten Heim lustig. Dafür erntest du ein paar verärgerte Blicke und von ihm ein kurzes, böses Starren... aber mehr nicht.~ */
  IF ~~ THEN REPLY #43844 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~Du rufst dem Dichter ständig dazwischen und machst dich über seine Verse, seine Erscheinung und sein angebliches Leben im trauten Heim lustig. Obendrein unterbrichst du manche seiner Verse, die du mit eigenen, obszönen Reimen zu Ende dichtest. Ein paar Zuschauer kichern. Der alte Dichter ignoriert dich so gut er kann und beißt die Zähne zusammen.~ */
  IF ~~ THEN REPLY #43846 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~Der alte Dichter blickt dich mit gerunzelter Stirn an, bevor er weiter deklamiert.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~Stör den Dichter weiter durch Zwischenrufe.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~Stör den Dichter weiter durch Zwischenrufe.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~Stör den Dichter weiter durch Zwischenrufe.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~Geh weg.~ */ EXIT
END
