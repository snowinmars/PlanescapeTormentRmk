// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELDOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELDOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #47128 /* ~Il reste impassible mais ses paroles contiennent difficilement sa fureur. "Tu as trahi tes idéaux et ta place n'est plus ici. Nos gardes vont te reconduire jusqu'à la sortie. Partiras-tu au moins en paix ?"~ */
  IF ~~ THEN REPLY #47129 /* ~"Je souhaite m'excuser et rejoindre les Adorateurs de la Source."~ */ GOTO 1
  IF ~~ THEN REPLY #47130 /* ~"Je m'en vais sans faire d'histoire."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47131 /* ~"Il faudra que tu me mettes dehors."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47132 /* ~"Il n'existe aucun retour en arrière possible lorsque l'on a tourné le dos à ses croyances. Prends cela comme une nouvelle épreuve si tu le souhaites, mais il est hors de question que nous t'aidions dans ta quête de spiritualité, désormais. Partiras-tu en paix, ou bien faudra-t-il que le sang soit versé pour t'expulser ?"~ */
  IF ~~ THEN REPLY #47133 /* ~"Je m'en vais sans faire d'histoire."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47134 /* ~"Il faudra que tu me mettes dehors."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #47135 /* ~"Bonjour, camarade ! Qu'est-ce que je peux faire pour toi, aujourd'hui ?"~ */
  IF ~~ THEN REPLY #47136 /* ~"Je voudrais être soigné, si possible."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47137 /* ~"J'ai besoin d'acheter certains objets."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47138 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47139 /* ~"Je voudrais voir le projet secret, si possible."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47140 /* ~"J'ai perdu le jeton permettant d'accéder à la salle du projet secret."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47143 /* ~"Bedai-Lihn m'a demandé de saboter la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47144 /* ~"C'est Bedai-Lihn qui a détruit la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47145 /* ~"C'est Bedai-Lihn qui a détruit la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47146 /* ~"Bedai-Lihn m'a demandé de saboter la machine. J'ai refusé, mais je me suis dit que ça t'intéresserait de le savoir."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47147 /* ~"Bedai-Lihn m'a demandé d'assassiner Sandoz. Je me suis dit que ça t'intéresserait."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47148 /* ~"Bedai-Lihn m'a demandé d'assassiner Sandoz. Je me suis dit que ça t'intéresserait."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47149 /* ~"C'est Bedai-Lihn qui a assassiné Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47150 /* ~"C'est Bedai-Lihn qui a assassiné Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47151 /* ~"J'ai un message pour toi, de la part de Giltspur, le commissaire-priseur."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51167 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 9.3
  SAY #47152 /* ~"Tu as montré que tu étais digne de confiance. Tiens, prends ça." Il met dans ta main un jeton frappé du symbole des Hommes-Dieux. "Ne le perds pas, car je ne pourrai pas t'en donner un autre. Prends-en grand soin. Y a-t-il autre chose que je puisse faire pour toi ?"~ */
  IF ~~ THEN REPLY #47153 /* ~"Oui, j'aurais quelques questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #47154 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 9.4
  SAY #47155 /* ~"Je regrette, mais je ne puis t'en donner un autre. Je t'avais prévenu, tu te souviens ?" Il soupire. "Est-ce que je peux faire autre chose pour toi ?"~ */
  IF ~~ THEN REPLY #47156 /* ~"Réponds encore à une ou deux questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #47157 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 2.9 2.10 2.12 9.5 9.7 9.8 9.9 9.10 9.12
  SAY #47158 /* ~Ses traits se durcissent soudain et sa jovialité coutumière est remplacée par un air grave. "Vraiment ? Dans ce cas, nous allons l'emprisonner et nous découvrirons la vérité. S'il s'avère que tu as raison, nous l'exécuterons. Excuse-moi, j'ai des affaires à régler."~ */
  IF ~~ THEN REPLY #47159 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47160 /* ~Lorsque Keldor revient, son expression est grave. "Grâce aux renseignements que tu nous as fournis, nous avons pu appréhender une dangereuse criminelle. Ça nous a permis de marquer des points auprès de l'Harmonium et des Rectifieurs, et nous t'en sommes reconnaissants. Accepte ma gratitude. Je suis heureux de voir que je ne m'étais pas trompé en pensant que tu ferais un excellent Homme-Dieu."~ */
  IF ~~ THEN REPLY #47161 /* ~"Pas de problème. J'aurais quelques questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #47162 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 2.11 9.6 9.11
  SAY #47163 /* ~Ses traits se durcissent soudain et sa jovialité coutumière est remplacée par un air grave. "Vraiment ? Dans ce cas, nous allons l'emprisonner et nous découvrirons la vérité. S'il s'avère que tu as raison, nous l'exécuterons. Excuse-moi, j'ai des affaires à régler."~ */
  IF ~~ THEN REPLY #47164 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47165 /* ~Quand il revient, il a le visage encore plus fermé. "Elle a disparu. Personne ne l'a vue s'échapper et on ignore où elle a bien pu aller. Je te remercie tout de même de nous avoir avertis de sa traîtrise. Si jamais on la retrouve, elle est perdue. Je t'en donne ma parole."~ */
  IF ~~ THEN REPLY #47166 /* ~"J'avais des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #47167 /* ~"Si je la vois, je m'en assurerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.0 6.0 8.0 11.0 55.0
  SAY #47168 /* ~"Tu as d'autres questions ? Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #47169 /* ~"Je voudrais être soigné, si possible."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47170 /* ~"J'ai besoin d'acheter certains objets."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47171 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47172 /* ~"Je voudrais voir le projet secret, si possible."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47173 /* ~"J'ai perdu le jeton permettant d'accéder à la salle du projet secret."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47174 /* ~"Bedai-Lihn m'a demandé de saboter la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47175 /* ~"C'est Bedai-Lihn qui a détruit la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47176 /* ~"C'est Bedai-Lihn qui a détruit la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47177 /* ~"Bedai-Lihn m'a demandé de saboter la machine. J'ai refusé, mais je me suis dit que ça t'intéresserait de le savoir."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47178 /* ~"Bedai-Lihn m'a demandé d'assassiner Sandoz. Je me suis dit que ça t'intéresserait."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47179 /* ~"Bedai-Lihn m'a demandé d'assassiner Sandoz. Je me suis dit que ça t'intéresserait."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47180 /* ~"C'est Bedai-Lihn qui a assassiné Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47181 /* ~"C'est Bedai-Lihn qui a assassiné Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47182 /* ~"J'ai un message pour toi, de la part de Giltspur, le commissaire-priseur."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51168 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",5)
~ THEN BEGIN 10 // from: 12.12
  SAY #47183 /* ~"Tu as mené à bien toutes les épreuves qui t'ont été proposées, et il ne t'en reste plus qu'une à affronter. Es-tu prêt à prêter serment et à te joindre aux Hommes-Dieux?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47184 /* ~"Oui."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47185 /* ~"Oui."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47186 /* ~"Oui."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66311 /* ~"Oui."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66312 /* ~"Oui."~ */ GOTO 56
  IF ~~ THEN REPLY #66313 /* ~"Pas encore. Tout d'abord, j'aurais quelques questions à te poser."~ */ GOTO 12
  IF ~~ THEN REPLY #66314 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 51.0 52.0 56.0 56.1 56.2 56.3 56.4
  SAY #47187 /* ~Le serment : "Les tribulations que nous impose la vie sont des épreuves. Tout ce que je vis est une nouvelle leçon, et la souffrance est le moyen que le multivers a trouvé de garantir que je l'apprendrai. Ce que je hais chez les autres n'est que le reflet de ce que je déteste chez moi. Je ferai tout mon possible pour libérer mon plein potentiel et pour aider les autres à atteindre leurs buts. Je n'oublierai jamais que l'étincelle de divinité est présente en tout. Je jure fidélité aux Adorateurs de la Source et à leurs objectifs, et je prête serment de ne jamais les renier." Tu le jures et Keldor t'adresse un large sourire. "Bienvenue parmi les Hommes-Dieux, mon garçon. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #47188 /* ~"J'avais quelques questions…"~ */ JOURNAL #46638 /* ~J'ai rejoint les rangs des Adorateurs de la Source et je suis désormais officiellement un Homme-Dieu. Voici le serment que j'ai prêté : "Les tribulations que nous impose la vie sont des épreuves. Tout ce que je vis est une nouvelle leçon, et la souffrance est le moyen que le multivers a trouvé de garantir que je l'apprendrai. Ce que je hais chez les autres n'est que le reflet de ce que je déteste chez moi. Je ferai tout mon possible pour libérer mon plein potentiel et pour aider les autres à atteindre leurs buts. Je n'oublierai jamais que l'étincelle de divinité est présente en tout. Je jure fidélité aux Adorateurs de la Source et à leurs objectifs, et je prête serment de ne jamais les renier."~ */ GOTO 9
  IF ~~ THEN REPLY #47189 /* ~"Pas maintenant. Au revoir."~ */ JOURNAL #46638 /* ~J'ai rejoint les rangs des Adorateurs de la Source et je suis désormais officiellement un Homme-Dieu. Voici le serment que j'ai prêté : "Les tribulations que nous impose la vie sont des épreuves. Tout ce que je vis est une nouvelle leçon, et la souffrance est le moyen que le multivers a trouvé de garantir que je l'apprendrai. Ce que je hais chez les autres n'est que le reflet de ce que je déteste chez moi. Je ferai tout mon possible pour libérer mon plein potentiel et pour aider les autres à atteindre leurs buts. Je n'oublierai jamais que l'étincelle de divinité est présente en tout. Je jure fidélité aux Adorateurs de la Source et à leurs objectifs, et je prête serment de ne jamais les renier."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.5 13.0 14.0 16.0 18.0 19.0 20.2 21.0 22.0 23.1 24.10 25.10 26.0 27.2 28.2 29.2 30.0 31.3 32.1 33.1 34.1 35.1 36.1 37.2 38.1 39.4 43.0 44.0 47.0 50.0 51.5 52.5 53.0 54.0 55.1
  SAY #47190 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #47191 /* ~"Qui es-tu ?"~ */ GOTO 23
  IF ~~ THEN REPLY #47192 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47193 /* ~"Qu'a-t-on à gagner à rejoindre la faction des Hommes-Dieux ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #47194 /* ~"Parle-moi encore de ta faction."~ */ GOTO 25
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47195 /* ~"Que peux-tu me dire au sujet de ta faction ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47196 /* ~"Je voudrais rejoindre les Hommes-Dieux."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47197 /* ~"Je voudrais rejoindre les Hommes-Dieux."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47198 /* ~"Je voudrais rejoindre les Hommes-Dieux."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47199 /* ~"Je voudrais rejoindre les Hommes-Dieux."~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #47200 /* ~"J'ai quelques questions à te poser au sujet de la Forge."~ */ GOTO 39
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #47201 /* ~"Je voudrais parler de l'enquête sur le meurtre."~ */ GOTO 44
  IF ~  Global("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #47202 /* ~"Je voudrais parler de Sandoz."~ */ GOTO 50
  IF ~  Global("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #47203 /* ~"Je voudrais prêter serment et rejoindre les rangs des Hommes-Dieux."~ */ GOTO 10
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47204 /* ~"Je voudrais voir le projet secret, si possible."~ */ GOTO 13
  IF ~  Global("Token_A","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47205 /* ~"J'ai perdu le jeton permettant d'accéder à la salle du projet secret."~ */ GOTO 14
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47206 /* ~"Bedai-Lihn m'a demandé de saboter la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 15
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47207 /* ~"C'est Bedai-Lihn qui a détruit la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 17
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47208 /* ~"C'est Bedai-Lihn qui a détruit la machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 15
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47209 /* ~"Bedai-Lihn m'a demandé de saboter la machine. J'ai refusé, mais je me suis dit que ça t'intéresserait de le savoir."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47210 /* ~"Bedai-Lihn m'a demandé d'assassiner Sandoz. Je me suis dit que ça t'intéresserait."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 15
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47211 /* ~"Bedai-Lihn m'a demandé d'assassiner Sandoz. Je me suis dit que ça t'intéresserait."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47212 /* ~"C'est Bedai-Lihn qui a assassiné Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 17
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47213 /* ~"C'est Bedai-Lihn qui a assassiné Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~J'ai dénoncé Bedai-Lihn à Keldor, en lui révélant qu'elle était Anarchiste et qu'elle avait tenté d'entraver la bonne marche de la Fonderie. Keldor en a été très heureux.~ */ GOTO 15
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #51169 /* ~"J'ai un message pour toi, de la part de Giltspur, le commissaire-priseur."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #51170 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.13
  SAY #47215 /* ~Il te sourit. "Je ne puis te le donner tant que tu n'auras pas apporté la preuve que tu es un ami des Hommes-Dieux."~ */
  IF ~~ THEN REPLY #47216 /* ~"Dans ce cas, réponds à une ou deux questions de plus…"~ */ GOTO 12
  IF ~~ THEN REPLY #47217 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.14
  SAY #47218 /* ~"Je regrette de ne pas pouvoir t'en donner d'autre." Il soupire. "Que puis-je pour toi, sinon ?"~ */
  IF ~~ THEN REPLY #47219 /* ~"Réponds encore à une ou deux questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47220 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.15 12.17 12.18 12.19 12.20 12.22
  SAY #47221 /* ~Ses traits se durcissent soudain et sa jovialité coutumière est remplacée par un air grave. "Vraiment ? Dans ce cas, nous allons l'emprisonner et nous découvrirons la vérité. S'il s'avère que tu as raison, nous l'exécuterons. Excuse-moi, j'ai des affaires à régler."~ */
  IF ~~ THEN REPLY #47222 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47223 /* ~Lorsque Keldor revient, son expression est grave. "Grâce aux renseignements que tu nous as fournis, nous avons pu appréhender une dangereuse criminelle. Ça nous a permis de marquer des points auprès de l'Harmonium et des Rectifieurs, et nous t'en sommes reconnaissants. Accepte ma gratitude. Je suis heureux de voir que je ne m'étais pas trompé en pensant que tu ferais un excellent Homme-Dieu."~ */
  IF ~~ THEN REPLY #47224 /* ~"Pas de problème. J'aurais quelques questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #47225 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.16 12.21
  SAY #47226 /* ~Ses traits se durcissent soudain et sa jovialité coutumière est remplacée par un air grave. "Vraiment ? Dans ce cas, nous allons l'emprisonner et nous découvrirons la vérité. S'il s'avère que tu as raison, nous l'exécuterons. Excuse-moi, j'ai des affaires à régler."~ */
  IF ~~ THEN REPLY #47227 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #47228 /* ~Quand il revient, il a le visage encore plus fermé. "Elle a disparu. Personne ne l'a vue s'échapper et on ignore où elle a bien pu aller. Je te remercie tout de même de nous avoir avertis de sa traîtrise. Si jamais on la retrouve, elle est perdue. Je t'en donne ma parole."~ */
  IF ~~ THEN REPLY #47229 /* ~"J'avais des questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #47230 /* ~"Si je la vois, je m'en assurerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY #47231 /* ~"Tu peux désormais fréquenter les excellents membres de notre faction, mais ce n'est pas tout, dit-il en souriant. Tu peux également utiliser nos sorts, objets et lieux de repos. Certains ne fonctionnent que pour nous. D'autres sont disponibles dans tout Sigil, mais ils sont bien moins chers pour les Hommes-Dieux."~ */
  IF ~~ THEN REPLY #47232 /* ~"Très bien. J'avais d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47233 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY #47234 /* ~"Tu te trouves à la Grande Fonderie, lieu d'habitation des Adorateurs de la Source, également connus sous le nom d'Hommes-Dieux. C'est ici que nous forgeons les objets que nous envoyons ensuite dans les plans. Seuls les meilleurs artisans travaillent pour nous, et nous sommes connus dans de nombreux mondes. On dit que nos forgerons sont aussi doués que ceux du Mont Clangeddin. Personnellement, je pense qu'il s'agit d'une exagération… mais à peine."~ */
  IF ~~ THEN REPLY #47235 /* ~"Peux-tu prendre davantage de travail ?"~ */ GOTO 21
  IF ~~ THEN REPLY #47236 /* ~"Que peux-tu me dire sur les gens d'ici ?"~ */ GOTO 22
  IF ~~ THEN REPLY #47237 /* ~"Je vois. J'ai encore quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47238 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #47239 /* ~"Hélas, mon ami, c'est impossible. Nous devons honorer un contrat à long terme qui mobilise la majeure partie de nos ressources. Quand nous aurons fini, peut-être… d'ici quelques années…" Il hausse les épaules. "Toutes mes excuses."~ */
  IF ~~ THEN REPLY #47240 /* ~"J'avais d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47241 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #47242 /* ~"Nous accueillons beaucoup de gens, pour la plupart des forgerons et des ouvriers, qui font fonctionner la Fonderie. Nous avons également deux ou trois ingénieurs capables de modifier le tissu de la réalité de façon spectaculaire. Un de ces jours, demande à Nihil Xander de te parler de son faiseur de rêves."~ */
  IF ~~ THEN REPLY #47243 /* ~"Peut-être que je le ferai. En attendant, il me reste encore quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47244 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #47245 /* ~Il t'adresse un large sourire. "Mon ami, je suis Keldor de Durian, l'un des factotums des Hommes-Dieux, responsable de ce lieu tant que nos supérieurs n'auront pas achevé leur conclave."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47246 /* ~"Que peux-tu me dire au sujet de ta faction ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #47247 /* ~"J'avais d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47248 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.4 23.0
  SAY #47249 /* ~Il te sourit et de nombreuses rides se creusent sur son visage. "Que souhaites-tu apprendre à notre sujet ?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47250 /* ~"Que dois-je faire pour devenir membre ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47251 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47252 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47253 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 29
  IF ~~ THEN REPLY #47254 /* ~"Quelles sont les croyances de cette faction ?"~ */ GOTO 31
  IF ~~ THEN REPLY #47255 /* ~"Raconte-moi l'histoire de cette faction."~ */ GOTO 32
  IF ~~ THEN REPLY #47256 /* ~"Qu'est-ce que j'y gagne si je rejoins cette faction ?"~ */ GOTO 33
  IF ~~ THEN REPLY #47257 /* ~"Qui sont les ennemis de la faction ?"~ */ GOTO 34
  IF ~~ THEN REPLY #47258 /* ~"Et qu'est-ce que vous faites vraiment ?"~ */ GOTO 35
  IF ~~ THEN REPLY #47259 /* ~"Pourquoi portez-vous ce nom-là ?"~ */ GOTO 36
  IF ~~ THEN REPLY #47260 /* ~"Rien pour le moment. Il me reste encore quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47261 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.3 27.1 28.1 29.1 31.2 32.0 33.0 34.0 35.0 36.0 37.1 38.0
  SAY #47262 /* ~"Avec joie. Qu'est-ce que tu veux savoir ?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47263 /* ~"Que dois-je faire pour devenir membre ?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47264 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47265 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47266 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 29
  IF ~~ THEN REPLY #47267 /* ~"Quelles sont les croyances de cette faction ?"~ */ GOTO 31
  IF ~~ THEN REPLY #47268 /* ~"Raconte-moi l'histoire de cette faction."~ */ GOTO 32
  IF ~~ THEN REPLY #47269 /* ~"Qu'est-ce que j'y gagne si je rejoins cette faction ?"~ */ GOTO 33
  IF ~~ THEN REPLY #47270 /* ~"Qui sont les ennemis de la faction ?"~ */ GOTO 34
  IF ~~ THEN REPLY #47271 /* ~"Et qu'est-ce que vous faites vraiment ?"~ */ GOTO 35
  IF ~~ THEN REPLY #47272 /* ~"Pourquoi portez-vous ce nom-là ?"~ */ GOTO 36
  IF ~~ THEN REPLY #47273 /* ~"Rien pour le moment. Il me reste encore quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47274 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.5 24.0 25.0 27.0 28.0 29.0
  SAY #47275 /* ~"Si tu désires te joindre aux Adorateurs de la Source, tu dois réussir trois quêtes. La première quête consiste à créer un objet à la forge. Ceci prouvera que tu discernes les possibilités inhérentes à un simple morceau de fer, et que tu peux façonner quelque chose qui résistera à l'épreuve du temps. C'est la mesure de ta vision et de ta capacité à rendre réel ce qui n'était jusque là que potentiel. Adresse-toi à Thildon, le Superviseur de la Fonderie, pour voir de quelle façon il convient de procéder."~ */
  IF ~~ THEN REPLY #47276 /* ~"J'avais d'autres questions…"~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Je serai bientôt un Homme-Dieu. Je dois trouver un forgeron à la Grande Fonderie, et il me dira comment faire fonctionner la forge. Il me faut fabriquer mon propre objet, pour montrer que je suis capable de voir le potentiel qui est en chaque morceau de minerai. Ça ne devrait pas être trop dur.~ */ GOTO 12
  IF ~~ THEN REPLY #47277 /* ~"Je n'y manquerai pas. Au revoir."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Je serai bientôt un Homme-Dieu. Je dois trouver un forgeron à la Grande Fonderie, et il me dira comment faire fonctionner la forge. Il me faut fabriquer mon propre objet, pour montrer que je suis capable de voir le potentiel qui est en chaque morceau de minerai. Ça ne devrait pas être trop dur.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.6 24.1 25.1
  SAY #47278 /* ~Il sourit d'un air espiègle. "Pour commencer, tu dois renoncer à ton appartenance à la faction des Hommes-Poussière."~ */
  IF ~~ THEN REPLY #47279 /* ~"Très bien, j'y renonce. Comment dois-je procéder ?"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47280 /* ~"Je ne suis pas sûr d'être prêt. Si tu commençais par répondre à quelques questions au sujet de ta faction ?"~ */ GOTO 25
  IF ~~ THEN REPLY #47281 /* ~"Pas encore. J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47282 /* ~"Pas encore, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.7 24.2 25.2
  SAY #47283 /* ~Il sourit d'un air espiègle. "Pour commencer, tu dois renoncer à ton appartenance à la faction des Sensats."~ */
  IF ~~ THEN REPLY #47284 /* ~"Très bien, j'y renonce. Comment dois-je procéder ?"~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47285 /* ~"Je ne suis pas sûr d'être prêt. Si tu commençais par répondre à quelques questions au sujet de ta faction ?"~ */ GOTO 25
  IF ~~ THEN REPLY #47286 /* ~"Pas encore. J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47287 /* ~"Pas encore, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.8 24.3 25.3
  SAY #47288 /* ~Il sourit d'un air espiègle. "Pour commencer, tu dois renoncer à ton appartenance à la faction des Xaositectes."~ */
  IF ~~ THEN REPLY #47289 /* ~"Très bien, j'y renonce. Comment dois-je procéder ?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47290 /* ~"Je ne suis pas sûr d'être prêt. Si tu commençais par répondre à quelques questions au sujet de ta faction ?"~ */ GOTO 25
  IF ~~ THEN REPLY #47291 /* ~"Pas encore. J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47292 /* ~"Pas encore, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 39.0
  SAY #47293 /* ~"Tous les forgerons qui se trouvent ici devraient pouvoir t'aider."~ */
  IF ~~ THEN REPLY #47294 /* ~"Très bien. J'aurais encore quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47295 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4 25.4
  SAY #47296 /* ~"Nous pensons que l'univers est un laboratoire géant qui nous propose toute une série d'épreuves. Celles-ci se prolongent toute la vie durant, ou plutôt, toutes *les* vies durant. Chaque pas que tu fais peut être une épreuve différente, et les récompenses auxquelles tu pourras prétendre dans ta vie suivante dépendent de la manière dont tu auras géré les épreuves que la vie t'impose. Nous croyons que les expériences permettent d'en apprendre toujours plus, vie après vie, et de finalement devenir plus qu'un simple humain."~ */
  IF ~~ THEN REPLY #47297 /* ~"Mais alors, pourquoi tout ça ?"~ */ GOTO 37
  IF ~~ THEN REPLY #47298 /* ~"Jusque-là, c'est logique. Continue."~ */ GOTO 38
  IF ~~ THEN REPLY #47299 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47300 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47301 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.5 25.5
  SAY #47302 /* ~"On pense généralement que notre groupe a été fondé par Perrine, avant le Grand Bouleversement, moment où les factions étaient au nombre de quinze. Durant le Bouleversement, Augy de Faunel a établi les croyances de notre faction sous leur forme actuelle. Réincarnée mille fois, elle était capable de se souvenir de *chacune* de ses vies. Elle nous a appris à suivre notre intuition et nous a fait entrer dans une nouvelle ère. Perrine et elle sont nos plus grandes figures. Nous avons d'autres histoires, mais celle-ci est la plus importante."~ */
  IF ~~ THEN REPLY #47303 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47304 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47305 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.6 25.6
  SAY #47306 /* ~"En fait, nous n'offrons guère d'avantages, si l'on excepte l'accès à notre fonderie d'excellente qualité, le gîte et le couvert pour toi et tes amis, des sorts et objets spéciaux, et enfin une réaction favorable de la plupart des gens que tu croiseras dans la rue. Mais si tu as seulement l'intention de te joindre à nous pour cela, je te le déconseille."~ */
  IF ~~ THEN REPLY #47331 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47332 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47333 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 24.7 25.7
  SAY #47334 /* ~"Nous n'avons pas à proprement parler d'ennemis. Cela dit, certains sont opposés à nos croyances. La Morne Cabale refuse que l'homme puisse évoluer vers la perfection. À mon avis, ses membres préfèrent que la vie n'ait aucun sens, ce qui leur permet de ne pas lui accorder la moindre importance. Pour les Hommes-Poussière, l'existence n'est qu'une illusion préparant à la Grande Mort. Ils célèbrent la mort, alors que nous glorifions la vie. Nos croyances sont donc radicalement opposées."~ */
  IF ~~ THEN REPLY #47335 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47336 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47337 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 24.8 25.8
  SAY #47338 /* ~"Administrer la Grande Fonderie. Ainsi que la Maison des Présages, où on entraîne des gens qui nous semblent des puissances en puissance… des bougres dotés d'une capacité spéciale qui les sépare du commun des mortels. Selon certains, nous voulons avoir une puissance de notre côté ; en vérité, nous agissons ainsi parce que nous croyons que cela fait partie des examens qu'il nous faut réussir. Nous faisons de notre mieux pour veiller à ce que chaque créature assume ses responsabilités - nous voulons voir évoluer le multivers."~ */
  IF ~~ THEN REPLY #47339 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47340 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47341 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 24.9 25.9
  SAY #47342 /* ~"C'est une bonne question. Notre vrai nom est 'Adorateurs de la Source', car nous sommes persuadés que toute vie est issue d'une source pure et unique. Mais comme nous pensons que nous avons tous une étincelle de divinité en nous, il est logique que l'on nous ait surnommé les Hommes-Dieux."~ */
  IF ~~ THEN REPLY #47343 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47344 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47345 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.0
  SAY #47346 /* ~"Nous n'en sommes pas totalement sûrs. Car nous ne sommes pas encore arrivés au terme du voyage, n'est-ce pas ? Nous pensons que nous devons mener notre vie en cherchant les réponses qui nous conviennent et, qu'au bout du compte, nous finirons par devenir des dieux. Quant à dire ce que nous trouverons là, personne n'en est capable…"~ */
  IF ~~ THEN REPLY #47347 /* ~"Très bien, continue."~ */ GOTO 38
  IF ~~ THEN REPLY #47348 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47349 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47350 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1 37.0
  SAY #47351 /* ~"La vie est donc une épreuve que nous passons. Lorsque nous le faisons avec succès, nous évoluons pour prendre une forme plus avancée ; il peut s'agir de celle d'un archon, d'un fiélon ou d'un dieu. Comme toujours, ce sont les choix que nous faisons dans cette vie qui déterminent la suite. Pour ce qui est du libre arbitre, le débat n'est pas clos." Il sourit. "Pour ma part, je crois que nous en disposons ; je détesterais apprendre que tous mes choix ont déjà été faits pour moi."~ */
  IF ~~ THEN REPLY #47352 /* ~"D'accord. J'ai d'autres questions au sujet de ta faction…"~ */ GOTO 25
  IF ~~ THEN REPLY #47353 /* ~"J'ai d'autres questions, mais celles-là ne sont pas en rapport avec ta faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47354 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 44 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",2)
~ THEN BEGIN 39 // from: 12.9
  SAY #47355 /* ~"Tu as des questions au sujet de la forge ? J'y répondrai de mon mieux."~ */
  IF ~~ THEN REPLY #47356 /* ~"Rappelle-moi à qui je dois m'adresser…"~ */ GOTO 30
  IF ~  Global("G_Test1","GLOBAL",3)
~ THEN REPLY #47357 /* ~Tu lui montres l'objet que tu as forgé : "J'ai créé mon propre objet, comme demandé."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 40
  IF ~  Global("G_Test1","GLOBAL",4)
~ THEN REPLY #47358 /* ~Tu lui montres l'objet que tu as forgé : "J'ai créé mon propre objet, comme demandé."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 41
  IF ~  Global("G_Test1","GLOBAL",5)
~ THEN REPLY #47359 /* ~Tu lui montres l'objet que tu as forgé : "J'ai créé mon propre objet, comme demandé."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 42
  IF ~~ THEN REPLY #47360 /* ~"En fait, je te demande juste de répondre à quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #47361 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #47362 /* ~Il saisit l'objet que tu lui tends et l'examine attentivement. Il prend manifestement sur lui pour ne pas te réprimander. "Tu auras au moins essayé. Es-tu prêt à passer l'épreuve suivante ? Je l'espère…"~ */
  IF ~~ THEN REPLY #47363 /* ~"Je suppose que oui…"~ */ DO ~GiveExperience(Protagonist,6000)
~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY #47364 /* ~Il prend l'objet que tu lui tends et l'examine attentivement. "Il fera l'affaire. Avec un peu d'entraînement, tu deviendras peut-être un honnête forgeron. Es-tu prêt à passer l'épreuve suivante ? Je l'espère…"~ */
  IF ~~ THEN REPLY #47365 /* ~"Je suppose que oui…"~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY #47366 /* ~Il prend l'objet que tu lui tends et l'examine attentivement. "C'est sûrement l'une des plus belles pièces que j'ai vu réalisées par une nouvelle recrue. Tu iras loin, mon ami. Es-tu prêt à passer l'épreuve suivante ? Je l'espère…"~ */
  IF ~~ THEN REPLY #47367 /* ~"Je suppose que oui…"~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.0 41.0 42.0
  SAY #47368 /* ~"Un assassin a frappé dans la Fonderie, fait-il d'un ton sombre, c'est pourquoi je préfère renoncer à l'épreuve habituelle pour te demander de le retrouver. Commence par aller voir Alissa Tield, qui occupe le poste de directrice. Reviens me voir quand tu auras conclu ton enquête.~ */
  IF ~~ THEN REPLY #47369 /* ~"Très bien. Commence d'abord par répondre à quelques questions…"~ */ JOURNAL #39501 /* ~J'attaque la deuxième épreuve que m'ont imposée les Hommes-Dieux : mener l'enquête sur un meurtre. Je dois aller interroger le directeur de la Fonderie, puis retourner voir Keldor lorsque j'aurai appris du nouveau.~ */ GOTO 12
  IF ~~ THEN REPLY #47370 /* ~"Je reviendrai. Au revoir."~ */ JOURNAL #39501 /* ~J'attaque la deuxième épreuve que m'ont imposée les Hommes-Dieux : mener l'enquête sur un meurtre. Je dois aller interroger le directeur de la Fonderie, puis retourner voir Keldor lorsque j'aurai appris du nouveau.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 44 // from: 12.10
  SAY #47371 /* ~"Alors ? Connais-tu le coupable ? As-tu réuni des preuves ?"~ */
  IF ~~ THEN REPLY #47372 /* ~"Ça ne suffit pas. Je voudrais d'abord te poser quelques questions de plus…"~ */ GOTO 12
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_T","GLOBAL",1)
~ THEN REPLY #47373 /* ~"Oui, Thildon est le coupable. Il n'a pas de véritable alibi."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_S","GLOBAL",1)
~ THEN REPLY #47374 /* ~"Oui, Saros est le coupable. Tout le monde sait bien qu'il ne cesse de rôder autour de la Fonderie."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",3)
~ THEN REPLY #47375 /* ~"Oui, Thildon et Saros sont tous deux coupables, de même que Bedai-Lhin. Aucun n'est capable de dire ce qu'il faisait la nuit du meurtre."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #47376 /* ~"Oui, Thildon est coupable. Saros m'a donné le poinçon qu'il a trouvé à côté du corps. C'est celui de Thildon."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_1","GLOBALLaw",-2)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #47377 /* ~"Oui, Saros est coupable. Il a essayé de faire accuser Thildon en dérobant le poinçon de ce dernier. Il prétend l'avoir retrouvé à côté du corps, mais Thildon nie tout en bloc. Saros est notre homme."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_2","GLOBALLaw",-2)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #47378 /* ~"C'est Saros, le coupable. Il est de mèche avec les Anarchistes."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47379 /* ~"Thildon a commis le crime, après quoi Saros a tout fait pour qu'il soit accusé. C'est bien un plan d'Anarchiste, et Saros est au cœur de la manigance. Arrête-les tous les deux."~ */ DO ~SetGlobal("G_Test2","GLOBAL",11)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 49
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47380 /* ~"C'est Thildon, le coupable. Il avait des problèmes avec Avildon et il a essayé de faire accuser Saros. Fais-le exécuter."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47381 /* ~"Saros est un Anarchiste qui veut la destruction de la Fonderie. Il a essayé de faire accuser Thildon."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 44.1 44.2 44.3
  SAY #47382 /* ~Il secoue la tête. "Nous en avons déjà parlé. Les preuves ne sont pas suffisantes. Poursuis ton enquête." Il se replonge dans son travail.~ */
  IF ~~ THEN REPLY #47383 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.4 44.8
  SAY #47384 /* ~Il secoue la tête. "Je n'aurais jamais cru ça de Thildon. J'espère que tu as suffisamment approfondi ton enquête… mais je te fais confiance. Attends, j'appelle les gardes."~ */
  IF ~~ THEN REPLY #47385 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #39500 /* ~J'ai accusé Thildon du meurtre d'Avildon, le forgeron. Il a été arrêté.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 48.0 49.0
  SAY #47386 /* ~Il a manifestement l'air attristé. "C'est fait. Merci d'avoir résolu cette enquête. Tu n'as plus qu'une tâche à mener à bien. Sandoz est le père de Saros et de Sarossa, mais c'est aussi l'un de nos membres les plus éminents. Il revient juste d'un terrible voyage et s'est enfermé dans sa tour. Il menace de mettre fin à ses jours. Parle-lui et fais-le changer d'avis."~ */
  IF ~~ THEN REPLY #47387 /* ~"J'y travaille. Réponds juste à quelques questions supplémentaires…"~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Avant d'être accepté par les Hommes-Dieux, mon ultime épreuve consiste à dissuader l'un des leurs, qui a des tendances suicidaires. Il se nomme Sandoz. C'est le père de Saros et Sarossa.~ */ GOTO 12
  IF ~~ THEN REPLY #47388 /* ~"Je cherche toujours. Au revoir."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Avant d'être accepté par les Hommes-Dieux, mon ultime épreuve consiste à dissuader l'un des leurs, qui a des tendances suicidaires. Il se nomme Sandoz. C'est le père de Saros et Sarossa.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.5 44.6 44.9
  SAY #47389 /* ~Il pousse une exclamation de surprise. "Je ne puis croire Saros capable d'un tel acte… mais pourquoi Thildon mentirait-il ? C'est affreux mais, si tu le dis, c'est que c'est vrai. Je vais le faire arrêter. J'appelle les gardes."~ */
  IF ~~ THEN REPLY #47390 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",9)
FadeFromColor([20.0],0)
~ JOURNAL #39498 /* ~J'ai accusé Saros du meurtre d'Avildon, le forgeron. Il a été arrêté.~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 44.7
  SAY #47391 /* ~"Quoi ? Tous les deux ? C'est un jour bien triste pour les Hommes-Dieux, bien triste, oui… Laisse-moi un moment, il faut que j'appelle les gardes."~ */
  IF ~~ THEN REPLY #47392 /* ~"Prends ton temps."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",11)
FadeFromColor([20.0],0)
~ JOURNAL #39495 /* ~J'ai accusé Thildon et Saros du meurtre d'Avildon, le forgeron. Tous deux ont été arrêtés.~ */ GOTO 47
END

IF WEIGHT #5 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 50 // from: 12.11
  SAY #47393 /* ~"Es-tu parvenu à le convaincre que la vie méritait d'être vécue ?"~ */
  IF ~  !Global("G_Test3","GLOBAL",6)
!Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47394 /* ~"Pas encore, mais au moins, il est toujours en vie. Tu veux bien répondre à quelques questions de plus ?"~ */ GOTO 12
  IF ~  Global("G_Test3","GLOBAL",6)
~ THEN REPLY #47395 /* ~"J'ai réussi. Il a retrouvé le goût de vivre."~ */ DO ~AddexperienceParty(12000)
SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64545 /* ~Je suis allé dire à Keldor que j'avais réussi à sauver Sandoz. Il en a été très heureux.~ */ GOTO 51
  IF ~  Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47396 /* ~"J'ai échoué. Il a mis fin à ses jours."~ */ DO ~SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64546 /* ~Je suis allé dire à Keldor que je n'avais pas réussi à sauver Sandoz. Bien que déçu, il savait qu'il m'avait assigné une tâche très difficile, et il m'a dit que ma seule tentative me permettait de passer l'épreuve avec succès.~ */ GOTO 52
  IF ~~ THEN REPLY #47397 /* ~"Pas encore, mais j'y travaille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #47398 /* ~"Tu as réussi ? Splendide ! Félicitations, mon ami ! Tu es digne de te joindre aux Hommes-Dieux ! Souhaites-tu prêter serment tout de suite, ou préfères-tu attendre ?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47399 /* ~"Je m'en occupe sans attendre."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47400 /* ~"Je m'en occuperai plus tard. Tu veux bien commencer par répondre à quelques questions ?"~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47401 /* ~"Tout de suite."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67783 /* ~"Maintenant."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67784 /* ~"Maintenant."~ */ GOTO 56
  IF ~~ THEN REPLY #67785 /* ~"Je le ferai plus tard. Réponds d'abord à quelques questions, d'accord ?"~ */ GOTO 12
  IF ~~ THEN REPLY #67786 /* ~"Je le ferai plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #47402 /* ~"Tu as échoué ? C'est une bien triste nouvelle que tu m'apportes là. Mais tu as essayé, n'est-ce pas ? C'est ça le plus important… le fait que tu aies essayé…" Il fait de son mieux pour avoir l'air enjoué, mais échoue lamentablement. "Souhaites-tu prêter serment tout de suite, ou préfères-tu attendre ?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47403 /* ~"Je m'en occupe sans attendre."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47404 /* ~"Je m'en occuperai plus tard. Tu veux bien commencer par répondre à quelques questions ?"~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47405 /* ~"Tout de suite."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67787 /* ~"Maintenant."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67788 /* ~"Maintenant."~ */ GOTO 56
  IF ~~ THEN REPLY #67789 /* ~"Je le ferai plus tard. Réponds d'abord à quelques questions, d'accord ?"~ */ GOTO 12
  IF ~~ THEN REPLY #67790 /* ~"Je le ferai plus tard. Au revoir."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 53 // from:
  SAY #47406 /* ~Tu vois un homme plein de vie et solidement charpenté. Son visage bronzé est parsemé de rides et quelques fils blancs parsèment sa barbe noire. "Bonjour, étranger ! Qu'est-ce que je peux faire pour toi en cette belle journée ?"~ */
  IF ~~ THEN REPLY #47407 /* ~"Je voudrais te poser quelques questions…"~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47408 /* ~"J'ai un message pour toi, de la part de Giltspur, le commissaire-priseur."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54086 /* ~"Rien pour l'instant, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 54 // from:
  SAY #47409 /* ~"Bonjour, mon ami ! Qu'est-ce que je peux faire pour toi aujourd'hui ?"~ */
  IF ~~ THEN REPLY #47410 /* ~"Tu peux répondre à quelques questions…"~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47411 /* ~"J'ai un message pour toi, de la part de Giltspur, le commissaire-priseur."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54087 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 12.23 53.1 54.1
  SAY #51171 /* ~"Un message, hein ?" Il te prend le billet. "Très bien. Tu peux aller le prévenir que tu me l'as remis. Tu voulais autre chose ?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51172 /* ~"J'avais encore quelques questions."~ */ GOTO 9
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51173 /* ~"J'avais encore quelques questions."~ */ GOTO 12
  IF ~~ THEN REPLY #51174 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.1 10.2 10.3 10.4 51.1 51.2 51.3 51.4 52.1 52.2 52.3 52.4
  SAY #66315 /* ~Il te dédie un rictus. "Tu dois commencer par quitter la faction dont tu fais partie si tu veux rejoindre celle des Hommes-Dieux."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66318 /* ~Renonce vraiment à ton appartenance à la faction des Anarchistes : "Je renie cette faction."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Anarchists","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66319 /* ~"Je renie les Sensats."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66320 /* ~"Je renie les Hommes-Poussière."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Dustmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66321 /* ~"Je renie les Chaoteux."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66322 /* ~Mens pour intégrer la faction au nom des Anarchistes : "Je renie cette faction."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~~ THEN REPLY #66323 /* ~"Non."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.5
  SAY #66316 /* ~"Dans ce cas, je ne puis te le permettre. Adieu." Il se désintéresse de toi.~ */
  IF ~~ THEN REPLY #66317 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #6342 /* ~"Tu apprendras que je ne suis pas sans défense, balafré. Ne t'approche pas."~ */
  IF ~~ THEN REPLY #6343 /* ~Terminé.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 59 // from:
  SAY #6344 /* ~"On voit que tu n'es pas d'ici. Pars sur-le-champ, intrus, ou les gardes vont faire plus que de te servir d'escorte."~ */
  IF ~~ THEN REPLY #6347 /* ~Pars.~ */ EXIT
END
