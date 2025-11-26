// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~Ce squelette se parle à lui-même, s'arrêtant parfois pour se gratter le crâne. Il est tellement vieux qu'aucune viande ne reste sur ses os… seules quelques hardes colorées.~ */
  IF ~~ THEN REPLY #20296 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~Il te salue en retour mais ne te répond pas.~ */
  IF ~~ THEN REPLY #20298 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~Le squelette te regarde et grogne de frustration. "Pas maintenant ! Pardonne-moi, mais j'ai la devinette la plus *horrible* qui soit à l'esprit et j'peux pas y répondre !"~ */
  IF ~~ THEN REPLY #20300 /* ~"Quelle est cette devinette ?"~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~Il semble surpris. "Oh ? Tu vas essayer, c'est ça ?"~ */
  IF ~~ THEN REPLY #20302 /* ~"Oui, vas-y."~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~"Non, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~"Très bien. Elle me vient d'une espèce de sac d'os gloussant que tu pourrais bien rencontrer par ici. Il refuse de me donner la réponse et ça me *tue* !"~ */
  IF ~~ THEN REPLY #20304 /* ~"Alors, vas-y…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~Il acquiesce. "Voilà : si tu trouves le passage, alors je t'apparais. Tu pourras me garder ou bien me partager. Mais si tu me partages alors je disparais. Que suis-je ?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~"Bien sûr, c'est le 'secret'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~"C'est… Euh… Hmm."~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~Il semble incrédule. "C'est *quoi* ? Mais…"~ */
  IF ~~ THEN REPLY #20308 /* ~"Si tu trouves le passage secret, il t'apparaît. Tu peux garder un secret ou le partager ; mais si tu dis un secret, ce n'est plus un secret."~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~Ris et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~"C'est… c'est… ooh ! Très rusé ! Ben moi, je n'étais pas dans le secret !" Il s'arrête, puis rit, de la poussière sortant de ses mâchoires qui craquent. "C'est bien, très bien. Je te remercie !"~ */
  IF ~~ THEN REPLY #20310 /* ~"Pas de problème. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~"Bouche bée, toi aussi ? Fais-moi savoir si tu trouves la réponse… et bonne chance si tu essaies de l'obtenir de ce fou caquetant qui me l'a posée !"~ */
  IF ~~ THEN REPLY #20311 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~Le squelette te regarde. "Alors, tu l'as résolue cette ignoble devinette ?"~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~"Oui. C'est le 'secret'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~"Oui, mais je ne te donnerai pas la solution."~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~Mensonge : "Euh… Non. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~"Non. Répète-moi la devinette."~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~"Non, pas encore. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~"Je te remercie encore d'avoir résolu cette devinette ! J'imagine que ça va bien embêter mon "ami" !" Il ricane de bon cœur.~ */
  IF ~~ THEN REPLY #20317 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~"Mais… mais pourquoi ? Allez, vas-y ! Il *faut* que tu me le dises !"~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~"Très bien. C'est le 'secret'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~"Très bien. C'est le 'secret'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~"J'ai juré de ne pas donner la solution."~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~"Ah bon ? Au revoir."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~Il grince des dents de frustration. "Bah ! C'est comme cette… cette… poussière de cerveau qui tremblote constamment ! Et *toi* ! Merci bien pour *rien* !"~ */
  IF ~~ THEN REPLY #20322 /* ~"D'accord, d'accord. C'est le 'secret'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~"Excuse-moi. Au revoir."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~Le squelette croise les bras et refuse de parler.~ */
  IF ~~ THEN REPLY #68087 /* ~Pars.~ */ EXIT
END
