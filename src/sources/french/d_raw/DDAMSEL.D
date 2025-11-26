// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAMSEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAMSEL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2207 /* ~Tu vois une jolie jeune femme. Ses cheveux sont en désordre et le corsage de sa robe est déchiré. Elle regarde autour d'elle d'un air désemparé, puis te remarque.~ */
  IF ~~ THEN REPLY #2208 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #2209 /* ~Ignore-la.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0
  SAY #51524 /* ~Elle court vers toi et t'attrape le bras. Tu constates que le devant de sa robe est maculé de sang. "Aide-moi, matois ! Je t'en prie ! Ils sont en train de tuer ma sœur !" Elle commence à te tirer sur le bras.~ */
  IF ~~ THEN REPLY #51525 /* ~"Qui ?"~ */ GOTO 2
  IF ~~ THEN REPLY #51526 /* ~"Je vais t'aider, mène-moi auprès d'elle."~ */ GOTO 12
  IF ~~ THEN REPLY #51527 /* ~"Je n'ai pas le temps de m'en occuper, au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51528 /* ~Elle regarde autour d'elle, affolée. "Un homme ivre nous a suivies, en sortant d'une taverne… on n'imaginait pas qu'il nous voulait du mal… s'il te plaît, matois, le temps presse ! Aide-nous !"~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #51529 /* ~"Attends une minute ! Tu as tout d'abord dit *qu'ils* allaient tuer ta sœur et maintenant tu dis *qu'il* va la tuer. Quelle est la bonne version ?"~ */ GOTO 3
  IF ~~ THEN REPLY #51530 /* ~"Pourquoi l'a-t-il attaquée ?"~ */ GOTO 10
  IF ~~ THEN REPLY #51531 /* ~"Je vais t'aider, mène-moi auprès d'elle."~ */ GOTO 12
  IF ~~ THEN REPLY #51532 /* ~"Je n'ai pas le temps de m'en occuper, au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51533 /* ~Elle te regarde, ne sachant trop que dire. "Je… je suis morte de peur… j'ai fait une erreur." Elle jette un coup d'œil au sang qui tâche sa robe. "Je t'en prie, aide-moi, matois !"~ */
  IF ~~ THEN REPLY #51534 /* ~Examine le sang sur ses vêtements.~ */ GOTO 4
  IF ~~ THEN REPLY #51535 /* ~"Je n'ai pas le temps de m'en occuper, au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.0
  SAY #51536 /* ~Tu baisses les yeux sur sa robe et tu observes les taches dont elle est maculée. Il s'agit bien de sang, mais il est complètement sec. Les taches doivent être vieilles de plusieurs heures.~ */
  IF ~~ THEN REPLY #51537 /* ~"Ce sang a déjà des heures… Qu'est-ce que tu manigances ?"~ */ GOTO 5
  IF ~~ THEN REPLY #51538 /* ~"Non, je m'en vais. Au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51539 /* ~Ses yeux se posent sur les tâches de sang, puis de nouveau sur toi. Tu perçois une pointe de nervosité dans sa voix. "Tu te trompes, matois. Je t'en prie, aide-moi ! Ma sœur est en train de mourir tandis que nous perdons du temps !"~ */
  IF ~~ THEN REPLY #51540 /* ~Dis la vérité : "Tu me caches quelque chose. Dis-moi ce qui se passe ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Damsel_1","GLOBALGood",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51541 /* ~Bluffe : "Tu me caches quelque chose. Dis-moi ce qui se passe ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Damsel_1","GLOBALLaw",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51542 /* ~"Je n'ai pas le temps de m'en occuper, au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #51543 /* ~Elle te regarde droit dans les yeux, puis jette un coup d'œil aux cicatrices qui te couvrent le corps. Elle déglutit nerveusement et blêmit. "Je… je suis censée attirer les gens vers une ruelle voisine. C'est là qu'ils attendent… pour te voler ton jonc…" Elle te regarde avec appréhension.~ */
  IF ~~ THEN REPLY #51544 /* ~"Laisse-moi te donner un conseil…"~ */ GOTO 7
  IF ~~ THEN REPLY #51545 /* ~"Pars d'ici et ne reviens pas…"~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51546 /* ~Elle te fixe en silence, puis acquiesce.~ */
  IF ~~ THEN REPLY #51547 /* ~"Évite de t'en prendre à des gens comme moi. Choisis plutôt des types ivres qui ont l'air de ne s'être jamais battus de leur vie…"~ */ GOTO 8
  IF ~~ THEN REPLY #51548 /* ~"Peu importe, au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51549 /* ~Elle fait un brusque signe de tête.~ */
  IF ~~ THEN REPLY #51550 /* ~"Et fais en sorte qu'il ait l'air d'avoir de l'argent… maintenant, va-t'en."~ */ GOTO 9
  IF ~~ THEN REPLY #51551 /* ~"Peu importe, au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #51552 /* ~Elle fait un brusque signe de tête et s'éloigne de toi. Elle hésite un moment, puis se tourne pour s'en aller. "Merci, matois." Elle part en courant.~ */
  IF ~~ THEN REPLY #51553 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #51554 /* ~"Quand elle a découvert qu'il n'avait pas d'argent, elle a dit qu'elle ne coucherait pas avec lui ! Et c'est alors qu'il a sorti un couteau…" Elle regarde le devant de sa robe, puis te tire de nouveau le bras.~ */
  IF ~~ THEN REPLY #51555 /* ~Examine le sang sur ses vêtements.~ */ GOTO 4
  IF ~~ THEN REPLY #51556 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY #51557 /* ~"Je t'en prie, matois, ne me laisse pas tomber. J'ai besoin d'aide !"~ */
  IF ~~ THEN REPLY #51558 /* ~"Qu'attends-tu de moi ?"~ */ GOTO 1
  IF ~~ THEN REPLY #51559 /* ~Continue à l'ignorer.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 1.1 2.2
  SAY #51560 /* ~Une expression de soulagement envahit son visage. Elle te tire le bras. "Par là, matois."~ */
  IF ~~ THEN REPLY #51561 /* ~Suis-la.~ */ DO ~SetGlobal("Damsel_Ambush","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 2.3 3.1 4.1 5.2 10.1 11.1
  SAY #51562 /* ~Alors que tu t'éloignes, la femme continue à pleurer et crier.~ */
  IF ~~ THEN REPLY #51563 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END
