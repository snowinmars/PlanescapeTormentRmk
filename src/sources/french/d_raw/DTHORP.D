// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORP~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51205 /* ~Cette immense créature mesure plus de 2,70 mètres. Des muscles saillants soutiennent son énorme charpente. À ton approche, elle te regarde d'un air amusé et éclate de rire.~ */
  IF ~~ THEN REPLY #51206 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #51207 /* ~Ignore la créature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51208 /* ~Il baisse les yeux vers toi et te sourit chaleureusement. "Quoi toi vouloir, petite chose ?"~ */
  IF ~~ THEN REPLY #51209 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51210 /* ~"Rien, au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0 6.1 7.1 8.1 9.1 10.1 11.1 12.0 14.0 23.0
  SAY #51211 /* ~"Si toi avoir question, peut-être que Thorp avoir réponse." Il te sourit.~ */
  IF ~~ THEN REPLY #51212 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #51213 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #51214 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 13
  IF ~  GlobalGT("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51215 /* ~"J'ai cru comprendre que tu allais combattre un abishaï."~ */ GOTO 15
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51216 /* ~"J'ai parlé à Xanthia. Elle m'a dit que tu allais combattre un abishaï ?"~ */ GOTO 15
  IF ~~ THEN REPLY #68262 /* ~"Il faut que j'y aille, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51217 /* ~Dans un souffle tonitruant, il se frappe la poitrine. "Thorp." Il lève les poings au ciel d'un air menaçant. "Puissant guerrier être Thorp. Tous les thokolas être puissants guerriers." Les poings sur les hanches, il te lance un regard furibond. "Qui être toi ?"~ */
  IF ~~ THEN REPLY #51219 /* ~Mensonge : "Je suis Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALThorp_Adahn","GLOBALAdahn",1)
IncrementGlobalOnceEx("GLOBALChaotic_Thorp_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #51220 /* ~"Je ne me souviens pas de mon nom."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51221 /* ~Il réfléchit un moment et acquiesce. "Ça beau nom pour une petite chose. Jolie sonorité. Thorp bien aimer."~ */
  IF ~~ THEN REPLY #51222 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51223 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51224 /* ~Il acquiesce en examinant tes cicatrices. "Toi avoir grosses cicatrices. Toi dois être grand guerrier… comme Thorp !" Il fronce les sourcils et acquiesce sagement. "Toi avoir été touché à la tête trop souvent. Toi pas te souvenir de ton nom. Un jour, lui revenir."~ */
  IF ~~ THEN REPLY #51225 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51226 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 13.0
  SAY #51227 /* ~Il éclate de rire et te sourit. "Thorp ici avec amis." Il fait signe aux thokolas qui se trouvent près de lui. "Nous bientôt combattre un… lézard volant." Il laisse échapper un rugissement et commence à se frapper la poitrine de ses deux poings gros comme des jambons.~ */
  IF ~~ THEN REPLY #51228 /* ~"Euh… un lézard volant ?"~ */ GOTO 7
  IF ~~ THEN REPLY #51229 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51230 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51231 /* ~Il acquiesce et fait mine de ramper. "Lézard, toi connaître… mais lui voler." Il fait semblant de battre des ailes, tel un immense oiseau difforme. Enfin, il s'arrête et te regarde comme s'il attendait une réaction de ta part.~ */
  IF ~~ THEN REPLY #51232 /* ~"Tu veux dire un dragon ?"~ */ GOTO 8
  IF ~~ THEN REPLY #51233 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51234 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51235 /* ~Il grogne et se lève, imposant. "Thorp bon, mais lui pas si bon. Un jour, Thorp vouloir combattre dragon…" Il regarde au loin, une lueur de désir ardent dans les yeux, et soupire. "Mais ce jour pas encore aujourd'hui."~ */
  IF ~~ THEN REPLY #51236 /* ~"Et bien, si ce n'est pas un dragon, qu'est-ce que c'est ?"~ */ GOTO 9
  IF ~~ THEN REPLY #51237 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51239 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51240 /* ~"Thorp pas se souvenir…" Une pause. "Ça lézard, aussi grand que Thorp. Marche sur pattes arrière… a des ailes… et des griffes… ça rouge. Xanthia appelle ça… habit chat ?" Une nouvelle pause. Il hausse les épaules.~ */
  IF ~~ THEN REPLY #51241 /* ~"Tu veux dire un abishaï ?"~ */ DO ~SetGlobal("Barsh_Abishai","GLOBAL",1)
~ JOURNAL #67299 /* ~Un thokola du nom de Thorp et deux de ses congénères s'apprêtent à combattre un abishaï. Les thokolas n'ont pas l'air très intelligents, mais ils sont sacrément musclés. Peut-être ont-ils leur chance.~ */ GOTO 10
  IF ~~ THEN REPLY #51242 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51243 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51245 /* ~Ses yeux brillent et il hoche la tête avec un sourire joyeux. "Oui ! Abishaï… Lézard volant. Thorp et amis le battre. Thorp être véritable guerrier, alors. Xanthia accepter excuses…"~ */
  IF ~~ THEN REPLY #51246 /* ~"Qu'est-ce que c'est que cette histoire de Xanthia et d'une excuse ?"~ */ GOTO 11
  IF ~~ THEN REPLY #51247 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51248 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51249 /* ~"Thorp amener amis à taverne hier soir. Thorp se saouler figure, tomber sur table de Xanthia, renverse verres sur elle." Il paraît gêné. "Xanthia dit qu'elle pas accepter excuses jusqu'à ce que Thorp véritable guerrier."~ */
  IF ~~ THEN REPLY #51250 /* ~"Alors, le fait de tuer un abishaï est censé faire de toi un grand guerrier ?"~ */ JOURNAL #67300 /* ~On dirait que Thorp et ses amis avaient un peu trop bu et qu'ils ont insulté une dame dans une taverne en renversant un verre sur elle. Dame Xanthia refuse les excuses de Thorp tant qu'il n'aura pas montré qu'il est un grand guerrier. C'est pour ça qu'il lui faut tuer l'abishaï. ~ */ GOTO 12
  IF ~~ THEN REPLY #51251 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51252 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51253 /* ~Il hausse les épaules. "Xanthia dire ainsi. Thorp pas savoir."~ */
  IF ~~ THEN REPLY #51254 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51255 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #51256 /* ~Il te fixe un moment et hausse les épaules. "Thorp pas savoir. Thorp nouveau ici." Il te sourit naïvement. "Thorp ici pour s'amuser !"~ */
  IF ~  Global("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51257 /* ~"Quel genre d'amusement ?"~ */ GOTO 6
  IF ~  Global("Barsh_Abishai","GLOBAL",1)
~ THEN REPLY #51258 /* ~"Oui, tu vas combattre un abishaï."~ */ GOTO 14
  IF ~  Global("Barsh_Abishai","GLOBAL",2)
~ THEN REPLY #63237 /* ~"Oui, tu vas combattre un abishaï."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #51259 /* ~Il te sourit et acquiesce avec enthousiasme. "C'est ça ! Thorp et amis se battre !"~ */
  IF ~~ THEN REPLY #51260 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51261 /* ~"Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.3 2.4 13.2
  SAY #51262 /* ~Il te sourit et acquiesce avec enthousiasme. "C'est ça ! Thorp et amis se battre !"~ */
  IF ~  !Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51263 /* ~"Eh bien, amuse-toi. Au revoir."~ */ EXIT
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51264 /* ~Tu préviens Thorp : "J'ai appris que seules des armes magiques peuvent venir à bout de cet abishaï."~ */ DO ~AddexperienceParty(6000)
IncrementGlobalOnceEx("GLOBALGood_Thorp_1","GLOBALGood",1)
SetGlobal("Barsh_Abishai","GLOBAL",4)
~ JOURNAL #67301 /* ~J'ai prévenu Thorp que l'abishaï ne pouvait être touché que par les armes magiques ou la magie. Heureusement que je l'ai fait, sans quoi lui et ses amis se seraient fait massacrer.~ */ GOTO 16
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51265 /* ~Tu ne préviens pas Thorp : "Eh bien, amuse-toi. Je suis sûr que tu vas l'emporter. Au revoir."~ */ DO ~AddexperienceParty(1500)
IncrementGlobalOnceEx("GLOBALEvil_Thorp_1","GLOBALGood",-1)
SetGlobal("Barsh_Abishai","GLOBAL",3)
~ JOURNAL #67302 /* ~Apparemment, Thorp ignore que les abishaïs ne peuvent être touchés que par les armes magiques. J'aurais pu le prévenir, mais le combat promet d'être intéressant…~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #51266 /* ~Il te regarde, l'air inquiet. "Magiques ? Comment toi savoir ça ?"~ */
  IF ~~ THEN REPLY #51267 /* ~"Je me suis renseigné, Thorp. C'est ce que les gens m'ont dit."~ */ GOTO 17
  IF ~~ THEN REPLY #51268 /* ~"J'ai parlé à Xanthia. Elle me l'a dit."~ */ GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51269 /* ~"Thorp pas avoir magie. Amis pas avoir magie. Nous mourir si nous combattre abishaï…" Il soupire. "Thorp pas véritable guerrier. Xanthia pas accepter excuses."~ */
  IF ~~ THEN REPLY #51270 /* ~"Tu voulais risquer ta vie pour l'honneur d'une dame, Thorp. Seul un grand guerrier ferait ça."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51271 /* ~Il te regarde un moment, le visage dénué de toute expression, puis t'adresse un immense sourire. "Vraiment ? Thorp et amis maintenant être grands guerriers ?"~ */
  IF ~~ THEN REPLY #51272 /* ~"Oui. Considère l'honneur de Xanthia comme sauf et l'excuse comme acceptée."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 22.0
  SAY #51273 /* ~"Te dire merci. Tu sauver vie. Tu sauver vie amis." Il se tourne vers les autres thokolas et leur parle à toute allure. Au bout d'un moment, tous trois s'inclinent et te tendent chacun une bourse pleine.~ */
  IF ~~ THEN REPLY #51274 /* ~"Merci."~ */ DO ~GiveGoldForce(600)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51275 /* ~Il sourit. "Toi bon ami. Toi mériter."~ */
  IF ~~ THEN REPLY #51277 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY #51278 /* ~Il paraît d'abord troublé, puis semble comprendre. "Xanthia jouer avec Thorp… elle mentir, essayer de faire mourir Thorp et amis…"~ */
  IF ~~ THEN REPLY #51279 /* ~"J'en ai bien peur, Thorp."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #51280 /* ~Il acquiesce. "Xanthia pas mériter excuses. Thorp plus rien lui devoir."~ */
  IF ~~ THEN REPLY #51281 /* ~"Oui, tu es libéré de ta dette."~ */ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #51282 /* ~Tu vois Thorp, le thokola. À ton approche, il rit amicalement. "Petite chose être de retour ! Quoi toi vouloir de Thorp ?"~ */
  IF ~~ THEN REPLY #51283 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51284 /* ~"Rien, au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #51285 /* ~Tu vois Thorp, le thokola. Il te salue d'un rire amical. "Oh ! Le tout petit ! Quoi toi vouloir ?"~ */
  IF ~~ THEN REPLY #66163 /* ~"Rien, j'attends la grande bataille entre toi et l'abishaï."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #63465 /* ~Thorp se met à rire aux éclats et à se frapper la poitrine. "Thorp grand guerrier ! Bientôt, Thorp sera guerrier important." Il se calme et te regarde sérieusement. "Ainsi, la dame excusera Thorp d'être un peu balourd."~ */
  IF ~~ THEN REPLY #63466 /* ~"Au revoir, Thorp."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 26 // from:
  SAY #63467 /* ~Tu vois Thorp, le thokola. À ton approche, il rit amicalement. "Petite chose bonne amie de Thorp être de retour ! Quoi toi vouloir de Thorp ?" Il sourit chaleureusement. "Thorp pas oublier que toi avoir sauvé sa vie."~ */
  IF ~~ THEN REPLY #66164 /* ~"Rien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Kill_Special_Abashai_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #66165 /* ~Tu aperçois Thorp, le thokola. Il rit amicalement en te voyant approcher. "Thorp te remercier, petit homme. Toi aider Thorp."~ */
  IF ~~ THEN REPLY #66166 /* ~"De rien, Thorp. Au revoir."~ */ JOURNAL #67303 /* ~Il y a des fois où je me surprends moi-même. Thorp et ses amis m'ont fait tellement de peine que je les ai aidés à tuer l'abishaï. Nul doute qu'il s'agissait d'un moment de faiblesse de ma part.~ */ EXIT
END
