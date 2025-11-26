// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~Un Récupérateur dépenaillé, pas très jeune, s'approche de toi. "Je…" Il te regarde rapidement puis ricane. "… te connais pas."~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~"Bonjour."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~"Je ne crois pas avoir déjà fait ta connaissance, moi non plus."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~"Je ne fais que passer."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~Ignore le Récupérateur et continue.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~Le Récupérateur continue à te fixer.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~"Je cherche un certain Pharod."~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~"Tu n'aurais pas vu un journal quelque part ?"~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~"Il y a un problème ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~Ignore le Récupérateur et continue.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~"C'que tu cherches me regarde pas, bige." Il crache. "C'qui m'regarde, c'est qu't'es toujours en train d'respirer devant moi."~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~"Si tu ne me laisses pas passer, Récupérateur, un de nous finira à la Morgue, et ce ne sera pas moi."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~"Si tu ne me laisses pas passer, Récupérateur, un de nous finira à la Morgue, et ce ne sera pas moi."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~"La récupération de corps avant leur mort a l'air d'être un très bon moyen pour rencontrer la Dame."~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~"Alors, je m'en vais, bige."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~Attaque le Récupérateur.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~Ignore le Récupérateur et continue.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~Alors que tu t'approches du Récupérateur, il te jette un regard dégoûté. "Pas un mot, matois. Tu trouveras pas à les échanger par ici." Le Récupérateur sort un couteau de sa poche. "J'ai bien peur qu'ton corps soit la seule monnaie valable."~ */
  IF ~~ THEN REPLY #32995 /* ~"Je ne crois pas…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~"L'problème tel que j'le vois, bige… c'est qu't'es toujours en train d'respirer devant moi." Il crache.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~"Si tu ne me laisses pas passer, Récupérateur, un de nous finira à la Morgue, et ce ne sera pas moi."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~"Si tu ne me laisses pas passer, Récupérateur, un de nous finira à la Morgue, et ce ne sera pas moi."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~"La récupération de corps avant leur mort a l'air d'être un très bon moyen pour rencontrer la Dame."~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~"Alors, je m'en vais, bige."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~Attaque le Récupérateur.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~Ignore le Récupérateur et continue.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~Alors que tu te retournes pour partir, tu remarques que le Récupérateur sort un couteau de l'une de ses poches. "J'sais pas à quoi tu pensais quand tu t'es pointé ici, mais l'seul endroit où tu vas aller, c'est la Morgue, matois."~ */
  IF ~~ THEN REPLY #33107 /* ~"Je ne crois pas…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~Ta menace paraît adoucir son tempérament. "Fiche le camp d'ici, matois !" Il siffle. "Et je f'rai bien attention, si j'étais toi."~ */
  IF ~~ THEN REPLY #33108 /* ~"Idem pour toi…"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~Le Récupérateur te répond en tirant un couteau de l'une de ses poches. "J'suis pas d'accord avec toi, bige. C'est TOI qui te transformeras bientôt en jonc dans mes poches !"~ */
  IF ~~ THEN REPLY #33109 /* ~"Chiche…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~Tu semble réussir à raisonner le Récupérateur, car il se détourne de toi. "Fais gaffe à toi, matois. La plupart te parleront avec leur lame avant d'branler leur râtelier, et si tu restes plus longtemps, j'ferai pareil."~ */
  IF ~~ THEN REPLY #33110 /* ~"Peu importe…"~ */ EXIT
END
