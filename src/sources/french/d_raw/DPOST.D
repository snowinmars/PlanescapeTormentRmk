// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6229 /* ~Ce cadavre crasseux est en piteux état : les épaules sont basses et l'une des jambes est cassée, ce qui le fait pencher de côté. Le corps est recouvert de taches. À en juger par l'odeur et l'aspect, il s'agit de fruits pourris, de boue et de fientes d'oiseaux. Pour compléter ce spectacle répugnant, des graffiti ont été gravés sur le corps, et plusieurs notes ont été clouées sur la poitrine, le dos et la tête.~ */
  IF ~~ THEN REPLY #6230 /* ~"Je croyais que *j'étais* mal en point. Tous ces clous ne font pas mal ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6231 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6233 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6234 /* ~Examine les graffiti et les affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6235 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6236 /* ~"Je suis heureux de t'avoir parlé. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #6237 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6232 /* ~Le cadavre ne répond pas.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6238 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6239 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6240 /* ~Examine les graffiti et les affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6241 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6242 /* ~"Je suis heureux de t'avoir parlé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #6243 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN BEGIN 2 // from: 0.4 1.3 3.1 4.1 5.7 6.4 7.6 8.3 9.5 10.5 11.3 12.3 13.2 18.4 19.3
  SAY #6244 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6245 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6246 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6247 /* ~Examine les graffiti et les affiches.~ */ GOTO 5
  IF ~~ THEN REPLY #6248 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0 5.0 6.1 7.3 8.0 9.2 10.0 11.0 12.0 18.1 19.0
  SAY #6249 /* ~Malgré la présence de nombreux points de suture, la peau pourrissante de ce cadavre pèle à divers endroits, mettant en évidence de longues étendues de muscles et d'os. Ce zombi doit souvent servir de cible… Hormis les taches de fruit et de boue, certains morceaux de peau sont incrustés de cailloux et de morceaux de verre. Un vilain pavé est incrusté dans la tête.~ */
  IF ~~ THEN REPLY #6250 /* ~Examine les graffiti et les affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6251 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6252 /* ~Enlève le pavé.~ */ DO ~AddexperienceParty(250)
GiveItem("Cobble",Protagonist)
~ GOTO 13
  IF ~~ THEN REPLY #6253 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.1 2.1 5.1 6.2 7.4 8.1 9.3 10.1 11.1 12.1 13.0 18.2 19.1
  SAY #6254 /* ~Malgré la présence de nombreux points de suture, la peau pourrissante de ce cadavre pèle à divers endroits, mettant en évidence de longues étendues de muscles et d'os. Ce zombi doit souvent servir de cible… Hormis les taches de fruit et de boue, certains morceaux de peau sont incrustés de cailloux et de morceaux de verre.~ */
  IF ~~ THEN REPLY #6255 /* ~Examine les graffiti et les affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6256 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6257 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.2 2.2 3.0 4.0 6.3 7.5 8.2 9.4 10.2 10.3 10.4 11.2 12.2 13.1 18.3 19.2
  SAY #6258 /* ~Plusieurs prospectus ont été abîmés par la pluie, mais il y en a qui sont encore lisibles. Il en a un cloué dans le dos qui provient d'un endroit du nom de 'Bureau de Lutte contre la Vermine et la Maladie' ; celui qui orne son front ressemble à une note de restaurant, celui qui est fixé à sa poitrine a l'air d'une affiche officielle, et il en a un autre qui ressemble à une offre d'emploi.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6259 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6260 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6261 /* ~Ignore les affiches, examine les graffiti.~ */ GOTO 9
  IF ~~ THEN REPLY #6262 /* ~Regarde l'affiche du 'Bureau de Lutte contre la maladie'.~ */ GOTO 6
  IF ~~ THEN REPLY #6263 /* ~Examine le menu de restaurant.~ */ GOTO 7
  IF ~~ THEN REPLY #6264 /* ~Examine l'acte officiel.~ */ GOTO 8
  IF ~~ THEN REPLY #46493 /* ~Examine l'affiche d'offre d'emploi.~ */ GOTO 18
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46496 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #46497 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #6267 /* ~'Avis aux citoyens de la Ruche désireux de travailler pour l'HONORABLE et le GÉNÉREUX gouvernement de Sigil : déposez votre candidature sans délai auprès du Bureau de Lutte contre la vermine et la maladie pour combattre l'invasion des rats. TOUT SERVICE SERA RÉMUNÉRÉ ! Une rémunération est offerte pour chaque queue de rat (les queues doivent être authentiques et provenir de rats uniquement. Aucune queue de chat, de chien ou de fiélon n'est acceptée). Le Bureau se trouve à quelques rues au SUD-OUEST de l'entrée principale de la Morgue, dans la partie inférieure de la Ruche. Se renseigner auprès de l'inspecteur en chef, L'HONORABLE PHINEAS T. LORT, XXXIX.'~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6268 /* ~"Le 'Bureau de Lutte contre la vermine et la maladie' ?"~ */ GOTO 11
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6269 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6270 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6271 /* ~Examine les autres affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6272 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6273 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY #6274 /* ~Quelqu'un a affiché un menu provenant du 'Bar de la Poussière accumulée', mais ce menu est illisible car les mots 'BAR DU CADAVRE FUMANT' ont été griffonnés au charbon.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6275 /* ~"Le 'Bar du Cadavre fumant' ?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6276 /* ~"Le 'Bar du Cadavre fumant' ?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6277 /* ~"Le 'Bar du Cadavre fumant' ?"~ */ GOTO 10
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6278 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6279 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6280 /* ~Examine les autres affiches…~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6281 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6282 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5
  SAY #6283 /* ~'AVIS : Par ordre du Conseil judiciaire et en accord avec les habitants de Sigil, toute personne dégradant un bâtiment officiel des Hommes-Poussière, que ce soit par des graffiti, une attaque malveillante ou en collant des affiches, sera considérée comme ayant commis un ACTE CRIMINEL et sera jugée pour vandalisme.' - Par ordre de la Chambre des Orateurs -~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6284 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6285 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6286 /* ~Examine les autres affiches…~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6287 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6288 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #6289 /* ~Les graffiti sont variés allant d'injures à l'encontre des Hommes-Poussière à des slogans à la gloire des gangs locaux. Un graffiti attire ton regard : quelqu'un a gravé le nom 'Pharod' dans le bras gauche du corps, puis a entaillé un 'X' sur ce nom.~ */
  IF ~  Global("Post_Point","GLOBAL",1)
~ THEN REPLY #6290 /* ~"Pharod ?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Post_Point","GLOBAL",2)
~ JOURNAL #66757 /* ~En prononçant le nom de Pharod à voix haute, j'ai demandé à 'la Poste' de me dire où il se trouvait. Elle a tendu le bras en direction de l'ouest… et du bas, bizarrement. Pharod vivrait-il sous terre ?~ */ GOTO 12
  IF ~  Global("Post_Point","GLOBAL",2)
~ THEN REPLY #6291 /* ~"Pharod ?"~ */ GOTO 12
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6292 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6293 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6294 /* ~Examine les autres affiches…~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6295 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6296 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 7.2
  SAY #6297 /* ~Le zombi pointe immédiatement son bras gauche loin en direction du sud. Après quelques instants, le bras retombe en faisant un BRUIT SOURD.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6298 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6299 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6300 /* ~"Hmmm. Je me demande si ça marcherait avec les autres affiches…"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6301 /* ~"Hmmmm. Je me demande si ça marcherait avec les autres affiches…"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6302 /* ~Examine les autres affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6303 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6304 /* ~"Euh… merci."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #6305 /* ~Le zombi pointe immédiatement son bras gauche loin en direction du sud-ouest. Après quelques instants, le bras retombe en faisant un BRUIT SOURD.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6306 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6307 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6308 /* ~Examine les autres affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6309 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6310 /* ~"Euh… merci."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 9.1
  SAY #6311 /* ~Le zombi pointe immédiatement son bras gauche loin en direction de l'ouest… puis le baisse. Après quelques instants, le bras retombe en faisant un BRUIT SOURD.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6312 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6313 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6314 /* ~Examine les autres affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6315 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6316 /* ~"Euh… merci."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY #6317 /* ~Tu saisis le pavé et tu l'extrais de la tête du cadavre. Des morceaux de cervelle et de chair pourrie commencent à en sortir… C'est comme si ce qu'il y avait dans ce crâne s'était transformé en boue depuis bien longtemps.~ */
  IF ~~ THEN REPLY #6318 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #6319 /* ~Examine les autres affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6320 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6321 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #6322 /* ~Le zombi pointe immédiatement son bras gauche loin en direction du sud-est. Après quelques instants, le bras retombe en faisant un BRUIT SOURD.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 109
END

IF ~~ THEN BEGIN 15 // from:
  SAY #9749 /* ~Le zombi se tient immobile. Tu remarques un endroit sur son épaule où tu pourrais graver son nom.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9750 /* ~Le zombi tend aussitôt son bras (dans la direction quelconque où se trouvera Xixi).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9751 /* ~Le zombi reste immobile.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.6
  SAY #46498 /* ~"ON RECHERCHE : Individu en parfaite santé prêt à mener une enquête de la plus grande importance pour la cause des Hommes-Poussière. Récompense offerte en cas de succès. Si vous êtes intéressé, contactez l'Initié Norochj, au bar de la Poussière accumulée."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #46499 /* ~"Le 'bar de la Poussière accumulée' ?"~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 19
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46501 /* ~Examine le cadavre.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46502 /* ~Examine le cadavre.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #46503 /* ~Examine les autres affiches…~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46504 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #46505 /* ~Laisse le cadavre tranquille.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46500 /* ~Le zombi lève le bras gauche et le tend en direction de l'ouest, vers le bâtiment qui te fait face. L'instant suivant, son bras retombe le long de son corps avec un bruit sourd.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46506 /* ~Examine le cadavre.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46507 /* ~Examine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #46508 /* ~Examine les autres affiches.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46509 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #46510 /* ~"Euh… merci."~ */ EXIT
END
