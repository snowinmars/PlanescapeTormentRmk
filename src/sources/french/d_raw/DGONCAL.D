// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGONCAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGONCAL~

IF ~  Global("Goncalves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2923 /* ~Ce petit homme trapu d'âge mûr porte des vêtements qui semblent avoir été tissés dans du fil d'or. Il tient en main un rouleau de tissu tendu sur une armature en bois ; il brode quelque chose sur le tissu.~ */
  IF ~~ THEN REPLY #2924 /* ~"Bonjour…"~ */ DO ~SetGlobal("Goncalves","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44148 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.1 25.0
  SAY #44149 /* ~L'homme ne semble pas remarquer ta présence. Il continue à travailler en marmonnant… Pendant qu'il coud, des étincelles semblent s'échapper de la pointe de son aiguille.~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44150 /* ~"Eh, tu m'entends ?"~ */ GOTO 2
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44151 /* ~"J'ai dit 'bonjour'."~ */ GOTO 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44152 /* ~"Eh, tu m'entends ?"~ */ EXTERN ~DGRACE~ 142
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44153 /* ~"J'ai dit 'bonjour'."~ */ EXTERN ~DGRACE~ 142
  IF ~~ THEN REPLY #44154 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #44155 /* ~L'homme ne lève pas les yeux de son ouvrage, fronçant les sourcils de mécontentement pendant qu'il te répond : "Oui, oui… et je suis sûr que ce que tu as à me demander est *très* urgent. Maintenant, si tu pouvais te taire un moment…"~ */
  IF ~~ THEN REPLY #44156 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #44157 /* ~Attends en silence.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44158 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44160 /* ~Il sourit d'un air supérieur, mais ne répond pas.~ */
  IF ~~ THEN REPLY #44161 /* ~"J'ai dit que j'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #44162 /* ~Attends en silence.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #66869 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44163 /* ~Son visage commence à rougir ; il grince des dents, mais refuse toujours de t'écouter. Il te foudroie du regard et dit : "Je me *fiche* de tes questions ! Maintenant, tais-toi ou *sors* en silence de ma boutique !"~ */
  IF ~~ THEN REPLY #44164 /* ~"Réponds à mes questions, *tailleur*… ou tu auras des ennuis."~ */ GOTO 5
  IF ~~ THEN REPLY #44165 /* ~Attends en silence.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44166 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1
  SAY #44167 /* ~Il jette son ouvrage par terre dans un accès de fureur et se met à hurler en postillonnant. "Tu vas avoir des *ennuis*, d'accord, quand les gardes vont arriver pour te réduire en miettes ! Maintenant, DEHORS ! DEHORS ! SORS DE MA BOUTIQUE ! Avant que j'appelle l'Harmonium !"~ */
  IF ~~ THEN REPLY #44168 /* ~"Je te *défie* de le faire."~ */ DO ~SetGlobal("Goncalves","GLOBAL",3)
SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44169 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.1 4.1
  SAY #44170 /* ~Enfin, il dépose sa broderie et lève les yeux vers toi. Mais avant que tu aies le temps d'ouvrir la bouche, il attrape un autre ouvrage et se remet au travail. De nouveau, pendant qu'il travaille, de minuscules étincelles colorées semblent s'échapper du tissu.~ */
  IF ~~ THEN REPLY #44171 /* ~"Écoute, j'ai juste quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #44172 /* ~"Réponds à mes questions, *tailleur*… ou tu auras des ennuis."~ */ GOTO 5
  IF ~~ THEN REPLY #44173 /* ~Attends encore un peu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44174 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44175 /* ~L'homme soupire bruyamment. "Je n'en doute pas. Maintenant, puisque tu as eu la gentillesse d'attendre en silence quelque temps, je suis sûr que ça ne te fera pas de mal de tenir encore un peu ta langue…"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 211
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44176 /* ~"Réponds à mes questions, *tailleur*… ou tu auras des ennuis."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44177 /* ~Attends encore un peu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44178 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.2
  SAY #44179 /* ~Il termine enfin son ouvrage et le pose pour t'examiner. "Bonjour, je m'appelle Goncalves. Bon, qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #44180 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #44181 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.1 13.1 14.1 14.2 16.1 16.2 22.0 24.0 26.0
  SAY #44182 /* ~"Hum ? J'espère qu'il s'agit de vêtements ou de quelque chose en rapport avec moi ou ma boutique, sinon je ne te répondrai pas."~ */
  IF ~  GlobalGT("Malmaner","GLOBAL",1)
GlobalLT("Malmaner","GLOBAL",4)
Global("Goncalves_Costume1","AR0611",0)
~ THEN REPLY #44183 /* ~"Je voudrais un costume d'Homme-Poussière."~ */ DO ~SetGlobal("Malmaner","GLOBAL",3)
~ GOTO 14
  IF ~  GlobalGT("Malmaner","GLOBAL",3)
GlobalLT("Malmaner","GLOBAL",6)
Global("Goncalves_Costume2","AR0611",0)
~ THEN REPLY #44184 /* ~"Je voudrais un autre costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",5)
~ GOTO 16
  IF ~  Global("Know_Goncalves_Mage","AR0611",0)
~ THEN REPLY #44185 /* ~"C'était quoi ces étincelles quand tu brodais ?"~ */ DO ~SetGlobal("Know_Goncalves_Mage","AR0611",1)
~ GOTO 12
  IF ~  Global("Know_Goncalves_Mage","AR0611",1)
~ THEN REPLY #44186 /* ~"Quel genre de vêtements magiques tu proposes ?"~ */ GOTO 13
  IF ~~ THEN REPLY #66876 /* ~"Est-ce que je pourrais t'acheter des aiguilles et du fil ?"~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44188 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44189 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #44194 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #44198 /* ~"Ça ? Rien d'autre, monsieur, qu'un peu d'Art, que j'entrelace parfois dans le tissu quand m'en prend la fantaisie. Ces articles auxquels je prodigue des enchantements sont mes créations les plus précieuses et je les vends rarement."~ */
  IF ~~ THEN REPLY #44199 /* ~"Quel genre de vêtements magiques tu proposes ?"~ */ GOTO 13
  IF ~~ THEN REPLY #44200 /* ~"J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #44201 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 12.0
  SAY #44202 /* ~Goncalves te regarde en fronçant les sourcils. "Sûrement rien qui puisse *t'intéresser*."~ */
  IF ~~ THEN REPLY #44203 /* ~"Je voudrais quand même voir ce que tu as."~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #67828 /* ~"J'ai une autre question à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #67829 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #44204 /* ~"Alors, tu as de la chance… Il se trouve que j'en ai un de disponible. Son prix est de trente communs de cuivre."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44205 /* ~"Je le prends."~ */ DO ~DestroyPartyGold(30)
GiveItemCreate("Costume1",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume1","AR0611",1)
~ GOTO 15
  IF ~  PartyGoldLT(30)
~ THEN REPLY #44206 /* ~"Hum… Je n'ai pas assez sur moi. J'ai une autre question…"~ */ GOTO 9
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44207 /* ~"Peu importe, en fait. J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #44208 /* ~"Je reviendrai peut-être, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44209 /* ~Goncalves attrape un ensemble de robes bien pliées sous un comptoir. "Voilà, monsieur. Mais je dois te prévenir que si c'est pour le bal masqué de Lord Ird, beaucoup d'invités ont déjà l'intention de se déguiser en Homme-Poussière."~ */
  IF ~~ THEN REPLY #44210 /* ~"Je m'en souviendrai. Au revoir, Goncalves."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY #44211 /* ~Goncalves acquiesce et sourit d'un air entendu. "Le costume d'Homme-Poussière est un peu trop commun en fin de compte, hein ? Eh bien, il se trouve que j'ai aussi un costume d'Homme-Dieu, si ça t'intéresse. Il ne coûte que cinquante pièces de cuivre."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44212 /* ~"Je le prends."~ */ DO ~DestroyPartyGold(50)
GiveItemCreate("Costume2",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume2","AR0611",1)
~ GOTO 17
  IF ~  PartyGoldLT(50)
~ THEN REPLY #44213 /* ~"Hum… Je n'ai pas assez sur moi. J'ai une autre question…"~ */ GOTO 9
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44214 /* ~"Peu importe, en fait. J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #44215 /* ~"Je reviendrai peut-être, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44216 /* ~Goncalves attrape un ensemble de vêtements pliés, un lourd tablier en cuir et des bottes de travail sous un comptoir. "Voilà. Amuse-toi bien au bal masqué."~ */
  IF ~~ THEN REPLY #44217 /* ~"Merci, Goncalves. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44218 /* ~L'homme lève les yeux de son ouvrage et semble voir Annah pour la première fois. D'un air un peu désapprobateur, il secoue la tête. "Jeune fille, par les vents fous de Pandemonium, qu'est-ce qui t'a *incitée* à t'habiller comme ça ?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 212
END

IF ~~ THEN BEGIN 19 // from:
  SAY #44219 /* ~Il désigne la tenue d'Annah. "Le cuir, mademoiselle. Ce n'est pas pratique du tout. L'accent mis sur la ligne de la poitrine, en particulier le *oh-si-pratique* point en croix du corsage. Ta tenue était *manifestement* destinée à apaiser les pulsions hormonales d'autrui plutôt que de te permettre d'être à l'aise. Même si tu veux t'opposer à l'autorité et à la bienséance, comme vous avez tendance à le faire, vous les tieffelins, c'est à toi que tu feras du tort à long terme…"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 472
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44220 /* ~Essaie de les interrompre.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44221 /* ~Laisse-les continuer à parler.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #44222 /* ~Goncalves continue de critiquer Annah. "Vraiment, tu ressembles plus à quelqu'un qui se prépare à une session à la Salle des Fêtes qu'à…" Il fronce les sourcils. "Au fait, tu n'es pas une Sensat, si ?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 213
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44223 /* ~Le tailleur acquiesce. "C'est bien ce que je pensais. Vraiment. Et si je t'habillais avec quelque chose de plus modeste…"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 473
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44224 /* ~Essaie de les interrompre.~ */ EXTERN ~DANNAH~ 214
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44225 /* ~Laisse-les continuer à parler.~ */ EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 22 // from:
  SAY #44226 /* ~"Bon, comme tu voudras, demoiselle." Goncalves te regarde. "Bon, maintenant que mon travail a bel et bien été interrompu, monsieur… Je me présente, Goncalves. Pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #44227 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #44228 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44229 /* ~Goncalves abandonne immédiatement son ouvrage et salue poliment Tombée-en-Disgrâce, qui le salue à son tour. "Bonjour, Dame Grâce. Que puis-je faire pour vous aujourd'hui ? Cette commande est presque terminée…"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 143
END

IF ~~ THEN BEGIN 24 // from:
  SAY #44230 /* ~"Bien sûr !" Goncalves se tourne vers toi. "Alors… Pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #44231 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #44232 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #44233 /* ~Le tailleur brode encore des motifs sur le tissu qu'il tenait auparavant. Il ne semble pas te remarquer.~ */
  IF ~~ THEN REPLY #44234 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #44235 /* ~Laisse-le.~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #44236 /* ~Goncalves pose son ouvrage et s'adresse à toi. "Encore toi… Bien. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #44237 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #44238 /* ~"Je ne faisais que passer, Goncalves. Au revoir."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #44240 /* ~Le tailleur se moque de toi. "Je te conseille de *partir*, sinon je rappelle les gardes. Aucune parole, aucun acte ne rachèteront jamais ce que tu m'as fait. Dehors !"~ */
  IF ~~ THEN REPLY #44242 /* ~"Vas-y, appelle les gardes."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44243 /* ~Pars.~ */ EXIT
END
