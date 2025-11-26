// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARGRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARGRI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 9 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2927 /* ~Ce squelette porte d'anciennes robes de prêtres lourdes et ornées. Il porte une grande crosse imposante terminée par une volute ciselée, des pendeloques et un crâne doré.~ */
  IF ~~ THEN REPLY #2928 /* ~"Bonjour…"~ */ DO ~SetGlobal("Hargrimm","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21040 /* ~Laisse le 'prêtre squelette' tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21041 /* ~Le squelette, ses yeux brûlant comme des charbons ardents, te dévisage… mais ne répond pas.~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21042 /* ~"Es-tu le Roi Silencieux ?"~ */ GOTO 4
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21043 /* ~"Es-tu Hargrimm ?"~ */ GOTO 2
  IF ~~ THEN REPLY #21044 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21045 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #21046 /* ~Il secoue la tête solennellement, les pendentifs suspendus à son bâton tintant doucement. Il y a quelque chose de dérangeant dans son regard persistant et silencieux.~ */
  IF ~~ THEN REPLY #21047 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21048 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 4.2 5.5 6.4 9.0 10.5 11.1 12.3 13.2 14.1 15.1 16.3 17.3 18.2 19.4 20.2 21.3 22.3 23.6 24.2 25.2 26.4 27.1 28.1 30.3 31.3 32.2 33.1 35.2 36.2 37.1 39.0 40.4 41.3 43.5 44.3 45.1 46.0 47.2 50.2 51.5 52.4 53.5 54.4 55.5 56.4 57.3 58.2 59.8 60.7 63.7 71.0 72.2 73.1 105.3 106.0 107.1
  SAY #21049 /* ~Il te fait signe de continuer.~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21050 /* ~"Tu savais que Soego était un espion à la solde des rats-crâne ?"~ */ GOTO 40
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #21051 /* ~"J'ai trouvé et tué un groupe de rats-crâne dans les déblais d'un vieux passage."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ JOURNAL #21107 /* ~J'ai expliqué à Hargrimm que j'avais trouvé plusieurs rats-crâne dans les Nations Mortes et que je les avais tués. Il m'a remercié, mais c'est tout.~ */ GOTO 47
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #21052 /* ~"Puis-je parler au Roi Silencieux ?"~ */ GOTO 5
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21053 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 12
  IF ~~ THEN REPLY #21054 /* ~"Où suis-je ?"~ */ GOTO 15
  IF ~~ THEN REPLY #21102 /* ~"Qu'est-ce que tu fais ici ?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #21103 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21104 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21105 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 33
  IF ~  NumInParty(1)
~ THEN REPLY #68093 /* ~"Puis-je me reposer ici ?"~ */ GOTO 107
  IF ~  NumInParty(1)
~ THEN REPLY #68094 /* ~"J'ai besoin de soins. Peux-tu m'aider ?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68095 /* ~"Pouvons-nous nous reposer ici ?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68096 /* ~"Nous avons besoin de soins. Peux-tu nous aider ?"~ */ GOTO 107
  IF ~~ THEN REPLY #21106 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #21108 /* ~Il secoue la tête, se tournant avec une grâce inquiétante et indiquant la direction de l'est. Cela fait, il se tourne de nouveau vers toi.~ */
  IF ~~ THEN REPLY #21109 /* ~"Es-tu Hargrimm ?"~ */ GOTO 2
  IF ~~ THEN REPLY #21110 /* ~"Est-ce que je peux lui parler ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21111 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21112 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 14.0 25.0
  SAY #21113 /* ~Il lève une paume osseuse. Dans un grognement grinçant et une bouffée de poussière, ses mâchoires s'ouvrent pour parler : "Non." Sa voix, profonde et résonnante, fait longtemps écho dans la salle voûtée.~ */
  IF ~~ THEN REPLY #21114 /* ~"Mais pourquoi ?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21115 /* ~"Il me faut sa permission pour partir."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21116 /* ~"Il me faut sa permission pour partir."~ */ GOTO 10
  IF ~~ THEN REPLY #21117 /* ~Vérité :"Laisse-moi le voir ou je vous réduis tous en poussière."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21118 /* ~Bluff : "Laisse-moi le voir ou je vous réduis tous en poussière."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21119 /* ~"J'ai des questions, alors…"~ */ GOTO 3
  IF ~~ THEN REPLY #21120 /* ~"Je m'en vais alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21121 /* ~Sa voix résonne sur les murs de la salle : "Aucune créature vivante ne peut passer les portes qui mènent à la salle du trône ; et je n'autoriserai pas un entretien, même si une telle chose était possible. Tu ne le verras *pas*."~ */
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21122 /* ~"Il me faut sa permission pour partir."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21123 /* ~"Il me faut sa permission pour partir."~ */ GOTO 10
  IF ~~ THEN REPLY #21124 /* ~Vérité :"Laisse-moi le voir ou je vous réduis tous en poussière."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21125 /* ~Bluff : "Laisse-moi le voir ou je vous réduis tous en poussière."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21126 /* ~"J'ai des questions, alors…"~ */ GOTO 3
  IF ~~ THEN REPLY #21127 /* ~"Je m'en vais alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0 47.0
  SAY #21128 /* ~"Je rapporterai ta requête au Roi Silencieux."~ */
  IF ~~ THEN REPLY #21129 /* ~"Merci…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21130 /* ~"Le Roi Silencieux a parlé. Tu es libre de partir. Ton chemin ne sera plus entravé."~ */
  IF ~~ THEN REPLY #21131 /* ~"Merci. Au revoir."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #21132 /* ~Hargrimm a parlé au Roi Silencieux en mon nom, et j'ai été libéré de mon emprisonnement dans les Nations Mortes.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #21133 /* ~Hargrimm note ta présence par un calme signe de tête dans ta direction.~ */
  IF ~~ THEN REPLY #21134 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21135 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 6.1 47.1
  SAY #21136 /* ~Il lève sa paume. "Non. Par le pouvoir du Roi Silencieux, tu ne quitteras pas cet endroit."~ */
  IF ~  Global("DN_Reason","AR1500",1)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21137 /* ~"Qu'est-ce que je peux faire pour te convaincre ?"~ */ GOTO 43
  IF ~  Global("DN_Reason","AR1500",0)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21138 /* ~"Qu'est-ce que je peux faire pour te convaincre ?"~ */ GOTO 59
  IF ~  Global("DN_Rats","AR1500",3)
~ THEN REPLY #67809 /* ~"Mais que puis-je faire *d'autre* pour te convaincre ?"~ */ DO ~SetGlobal("Soego_Quest","GLOBAL",1)
~ JOURNAL #67810 /* ~J'ai demandé à Hargrimm ce que je pouvais faire d'autre pour le convaincre de me libérer. Il m'a dit de trouver le moyen de chasser Soego des Nations Mortes, en échange de quoi il intercédera en ma faveur auprès du Roi Silencieux.~ */ GOTO 105
  IF ~~ THEN REPLY #21139 /* ~Vérité :"Laisse-moi le voir ou je vous réduis tous en poussière."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21140 /* ~Bluff : "Laisse-moi le voir ou je vous réduis tous en poussière."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21141 /* ~"J'ai des questions, alors…"~ */ GOTO 3
  IF ~~ THEN REPLY #21142 /* ~"Je m'en vais alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 5.4 6.2 6.3 10.3 10.4
  SAY #21143 /* ~Sa voix résonne sur les murs de la salle : "TU NE FERAS *RIEN* DE LA SORTE." La poussière tombe du plafond, et tes oreilles bourdonnent. Alors que tu commences à récupérer, une aura de pouvoir se forme autour de lui. Il ne fait toutefois aucun mouvement d'attaque.~ */
  IF ~~ THEN REPLY #21144 /* ~Attaque-le.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21145 /* ~"J'ai des questions, alors…"~ */ GOTO 3
  IF ~~ THEN REPLY #21146 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 107.0
  SAY #21147 /* ~"C'est la volonté du Roi Silencieux. Les vivants capturés ici doivent se languir dans ces salles jusqu'à ce qu'ils rejoignent les immobiles."~ */
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21150 /* ~"Pourrait-on le convaincre de changer d'avis ?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm m'a expliqué qu'il y avait une chance pour que le Roi Silencieux accepte de me libérer. Si seulement je pouvais le rencontrer, peut-être que…~ */ GOTO 14
  IF ~~ THEN REPLY #21148 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #21149 /* ~"Les immobiles ?"~ */ GOTO 13
  IF ~~ THEN REPLY #21151 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21152 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #21154 /* ~"Les vrais morts. Ceux qui n'ont pas de voix et ne font que dormir éternellement. Que le Roi Silencieux les garde !"~ */
  IF ~~ THEN REPLY #21155 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21156 /* ~"Pourrait-on convaincre le Roi Silencieux de changer d'avis ?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm m'a expliqué qu'il y avait une chance pour que le Roi Silencieux accepte de me libérer. Si seulement je pouvais le rencontrer, peut-être que…~ */ GOTO 14
  IF ~~ THEN REPLY #21157 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21158 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.1
  SAY #21159 /* ~Après un court silence, ses mâchoires s'ouvrent dans un grincement : "Cela est peu probable, mais peut-être. Les voies du Roi Silencieux sont mystérieuses."~ */
  IF ~~ THEN REPLY #21160 /* ~"Est-ce que je peux lui parler ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21161 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21162 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4
  SAY #21163 /* ~Il désigne les alentours "Dans les limites des Nations Mortes, les salles du Roi Silencieux."~ */
  IF ~~ THEN REPLY #21164 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #21165 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21166 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 23.0
  SAY #21167 /* ~Il indique ses robes et son bâton. "On m'appelle Hargrimm. Je suis le haut-prêtre des citoyens de cet endroit. Je répands la parole du Roi Silencieux à ses disciples."~ */
  IF ~~ THEN REPLY #21168 /* ~"Comment es-tu arrivé ici ?"~ */ GOTO 57
  IF ~~ THEN REPLY #21169 /* ~"Ses disciples ? Qui d'autre est ici ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21170 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #21171 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21173 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.6 16.1 18.1 19.3 20.1 21.2 22.2 50.1 51.4 52.3 53.4 54.3 55.4 56.3 57.1 58.0 72.1
  SAY #21172 /* ~"Nous, les squelettes. D'autres morts-vivants, aussi - zombis et goules. Il y avait autrefois des ombres, mais elles ont disparu depuis longtemps. Il arrive que des vivants passent leurs derniers jours ici. Il y a aussi beaucoup de rats-crâne qui vivent à l'est."~ */
  IF ~~ THEN REPLY #21174 /* ~"Parle-moi des tiens."~ */ GOTO 18
  IF ~~ THEN REPLY #21175 /* ~"Parle-moi des autres morts-vivants."~ */ GOTO 19
  IF ~~ THEN REPLY #21176 /* ~"Parle-moi des rats."~ */ GOTO 22
  IF ~~ THEN REPLY #21177 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21178 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #21179 /* ~"Nous gardons les immobiles, et obéissons aux ordres du Roi Silencieux. Notre tâche ici se poursuit depuis des siècles."~ */
  IF ~~ THEN REPLY #21180 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #21181 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21182 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21183 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #21184 /* ~Il expire sa réponse dans un nuage de poussière : "Qui ?"~ */
  IF ~~ THEN REPLY #21185 /* ~"Les zombis."~ */ GOTO 20
  IF ~~ THEN REPLY #21186 /* ~"Les goules."~ */ GOTO 21
  IF ~~ THEN REPLY #21187 /* ~"Qu'est-il arrivé aux ombres ?"~ */ GOTO 50
  IF ~~ THEN REPLY #21188 /* ~"Peu importe. Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21189 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21190 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.2
  SAY #21191 /* ~"Ils servent le Roi Silencieux et les Nations Mortes comme ouvriers. Ils travaillent sous la direction de Salie Marie, la plus sage et la plus intelligente d'entre eux."~ */
  IF ~~ THEN REPLY #21192 /* ~"Parle-moi de Salie Marie."~ */ GOTO 26
  IF ~~ THEN REPLY #21193 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21194 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21195 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 22.1 32.0
  SAY #21196 /* ~"Je ne fais confiance ni à elles, ni à leur matrone, Acaste. Elles nous regardent de leurs yeux affamés et nous dévoreraient sans doute si notre nombre et la parole du Roi Silencieux ne nous protégeaient pas." Il s'arrête, comme pour réfléchir.~ */
  IF ~~ THEN REPLY #21197 /* ~"Continue…"~ */ JOURNAL #21202 /* ~Hargrimm m'a expliqué qu'il était inquiet au sujet d'Acaste. Il pense que seules la présence des squelettes et des zombis et la peur du Roi Silencieux retiennent Acaste et ses goules dans leur volonté de tout tuer et de tout dévorer dans les catacombes.~ */ GOTO 72
  IF ~~ THEN REPLY #21198 /* ~"Parle-moi d'Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21199 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21200 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21201 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 45.0
  SAY #21203 /* ~"Ce sont des vermines de cerveau collectif qui sont venues autrefois en nombre, pour se nourrir des cadavres qui étaient sous notre garde. Les goules les ont pour la plupart refoulés, et ils ne quittent désormais plus guère leurs terriers, à l'est d'ici."~ */
  IF ~~ THEN REPLY #21204 /* ~"Est-ce qu'ils ont des points faibles ?"~ */ JOURNAL #21209 /* ~Hargrimm m'a expliqué que pour combattre les rats-crâne plus efficacement, je devais rechercher et détruire le plus grand nombre possible de petites concentrations de leur population. Les plus grands groupes auraient ainsi moins de rats, donc moins de puissance au moment du combat.~ */ GOTO 46
  IF ~~ THEN REPLY #21205 /* ~"Parle-moi des goules."~ */ GOTO 21
  IF ~~ THEN REPLY #21206 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21207 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21208 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.7 24.1 25.1 26.3 27.0 28.0 30.2 31.2 32.1
  SAY #21210 /* ~Il expire sa réponse dans un nuage de poussière : "Qui ?"~ */
  IF ~~ THEN REPLY #21211 /* ~"Parle-moi de toi."~ */ GOTO 16
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21212 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21213 /* ~"Parle-moi de Salie Marie."~ */ GOTO 26
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21214 /* ~"Parle-moi de Soego."~ */ GOTO 29
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",1)
~ THEN REPLY #21215 /* ~"Parle-moi de Soego."~ */ GOTO 28
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #21216 /* ~"Parle-moi d'Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21217 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21218 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1 13.0 15.0 16.2 18.0 23.1 31.1 57.2 58.1
  SAY #21219 /* ~"Notre seigneur et vision, celui qui ordonne les lois et nous protège. Tu ferais mieux de ne pas créer de troubles ici, étranger, car les yeux du Roi Silencieux sont partout et prompte est sa justice."~ */
  IF ~~ THEN REPLY #21220 /* ~"Pourquoi l'appelle-t-on le Roi Silencieux ?"~ */ GOTO 25
  IF ~~ THEN REPLY #21221 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21222 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21223 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #21224 /* ~"Il ne s'adresse à nous que pour nous guider. Loué soit le Roi Silencieux."~ */
  IF ~~ THEN REPLY #21225 /* ~"Est-ce que je peux lui parler ?"~ */ GOTO 5
  IF ~~ THEN REPLY #21226 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21227 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21228 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 23.2 52.0
  SAY #21229 /* ~"Elle est la plus intelligente de ce que certains appellent la 'horde pourrissante', ces zombis qui forment les Nations Mortes. Contrairement à nous, son cœur ne l'a pas quittée lors de sa mort. C'est tout ce que l'on sait."~ */
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23857 /* ~"Tu trouves pas qu'elle est difficile à comprendre ?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Quand j'ai parlé à Hargrimm du fait que je ne comprenais pas Salie Marie, il m'a expliqué que j'avais besoin d'*apprendre* à converser avec elle. Elle saura peut-être ce qu'il a voulu dire.~ */ GOTO 27
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #21230 /* ~"Comment la comprends-tu ?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Quand j'ai parlé à Hargrimm du fait que je ne comprenais pas Salie Marie, il m'a expliqué que j'avais besoin d'*apprendre* à converser avec elle. Elle saura peut-être ce qu'il a voulu dire.~ */ GOTO 27
  IF ~~ THEN REPLY #21231 /* ~"Parle-moi de… la 'horde pourrissante'."~ */ GOTO 20
  IF ~~ THEN REPLY #21232 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21233 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21234 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #21236 /* ~Le squelette fait une longue pause avant de répondre. "Tu dois *apprendre* à écouter, c'est tout."~ */
  IF ~~ THEN REPLY #21237 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21238 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21239 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4
  SAY #21240 /* ~Sa voix devient encore plus sinistre : "Il demeurera ici, captif, jusqu'à la fin de ses jours. Je ne parlerai plus de lui. Que le Roi Silencieux le damne !"~ */
  IF ~~ THEN REPLY #21241 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21242 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21243 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3 105.2
  SAY #21244 /* ~"Il essaie de nous convaincre d'abandonner ce semblant de vie, comme il l'appelle, et de rejoindre la Vraie Mort. Il prétend que ce sont nos passions qui nous retiennent à cette vie, et que nous devons nous séparer d'elles et de notre tâche. Il veut que nous mourions."~ */
  IF ~~ THEN REPLY #21245 /* ~"Continue…"~ */ JOURNAL #21249 /* ~Hargrimm est mécontent de Soego, car l'Homme-Poussière essaie constamment de convaincre les habitants des Nations Mortes de mourir. Si une telle chose se produisait et si leur nombre diminuait de manière trop importante, cela risquerait de mettre en péril leur civilisation tout entière, et ils seraient incapables de se protéger contre des menaces telles que les rats-crâne ou les goules d'Acaste.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #21250 /* ~"Certains écoutent ses propos, mais personne n'a choisi de s'abandonner à ses croyances. Ceux qui le feraient seraient silencieux à jamais. Notre nombre diminuerait, et tout ce que nous possédons ici serait détruit par ce qui nous entoure. Soego croit peut-être qu'il agit pour le bien, mais il cause en vérité un grand préjudice."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #67811 /* ~"Tu savais que c'est un espion à la solde des rats-crâne ?"~ */ GOTO 40
  IF ~~ THEN REPLY #21251 /* ~"Pourquoi lui permets-tu de rester ?"~ */ GOTO 31
  IF ~~ THEN REPLY #21252 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21253 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21254 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #21255 /* ~"Nous ne pouvons le forcer à partir. Il sait que nous ne pouvons pas le toucher. La Trêve des Morts… aucun mort-vivant ne peut blesser un Homme-Poussière, sauf s'il est attaqué en premier. Par ailleurs, le Roi Silencieux ne veut pas de combats dans ses murs."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #21256 /* ~"Sais-tu qu'il fait de l'espionnage pour les rats-crâne ?"~ */ GOTO 40
  IF ~~ THEN REPLY #21257 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #21258 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21259 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21260 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1 23.5 72.0
  SAY #21261 /* ~"Elle dirige le groupe de goules qui sont venues dans nos salles. Elle est forte et extrêmement rusée."~ */
  IF ~~ THEN REPLY #21262 /* ~"Parle-moi des goules."~ */ GOTO 21
  IF ~~ THEN REPLY #21263 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 23
  IF ~~ THEN REPLY #21264 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21265 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.8 59.0 60.0 63.0
  SAY #21266 /* ~Il secoue la tête. "Je l'ai pas vu. Pourquoi est-ce que tu recherches cet objet ?"~ */
  IF ~~ THEN REPLY #21267 /* ~"Pour un certain Pharod."~ */ GOTO 34
  IF ~~ THEN REPLY #21268 /* ~"Peu importe. J'ai d'autres questions.~ */ GOTO 3
  IF ~~ THEN REPLY #21269 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #21270 /* ~Le squelette recule. Il regarde en l'air et au loin, comme pour scruter la surface. "Le sang bat toujours dans son cœur noir et rongé par les vers ? Ce sac de chair sifflante envoie toujours ses troupes chez nous pour attaquer et piller." Il te fait de nouveau face. "Tu n'aurais pas dû venir dans ces murs… nous ne tolérons aucun profanateur sur nos terres."~ */
  IF ~~ THEN REPLY #21271 /* ~"Mais je ne fais pas partie de ses troupes…"~ */ GOTO 38
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21272 /* ~"Qu'est-ce que tu comptes faire, alors ?"~ */ GOTO 36
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21273 /* ~"Qu'est-ce que tu comptes faire, alors ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY #21274 /* ~Il te dévisage sans mot dire. "Rien… la Trêve des Morts te protège. Tu demeureras toutefois ici, jusqu'à ta mort."~ */
  IF ~~ THEN REPLY #21275 /* ~"Mais je ne peux pas mourir."~ */ GOTO 37
  IF ~~ THEN REPLY #21276 /* ~"En fait je n'fais pas partie des hommes de Pharod."~ */ GOTO 38
  IF ~~ THEN REPLY #21277 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21278 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #21279 /* ~"Tu seras exécuté, comme le veut la loi du Roi Silencieux. Aucun pilleur de tombe n'est autorisé à vivre ici."~ */
  IF ~~ THEN REPLY #21280 /* ~"Mais je ne peux pas mourir."~ */ GOTO 37
  IF ~~ THEN REPLY #21281 /* ~"En fait je n'fais pas partie des hommes de Pharod."~ */ GOTO 38
  IF ~~ THEN REPLY #21282 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21283 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #21284 /* ~Il fixe tes yeux pendant un instant avant de répondre. "Cela ne présente aucun problème. Tu demeureras ici, sous le regard du Roi Silencieux, pour l'éternité. Peut-être un jour réaliseras-tu la folie de tes actes et feras-tu un effort pour être utile à notre loyale civilisation."~ */
  IF ~~ THEN REPLY #21285 /* ~"En fait je n'fais pas partie des hommes de Pharod."~ */ GOTO 38
  IF ~~ THEN REPLY #21286 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21287 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.0 35.1 36.1 37.0
  SAY #21288 /* ~"Pourquoi alors es-tu ici, nous envahissant chez nous pour trouver ce que t'a envoyé chercher cette âme misérable ?"~ */
  IF ~~ THEN REPLY #21289 /* ~"Je lui trouve sa sphère en échange d'informations dont j'ai besoin. Il n'y a rien d'autre entre nous."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #21290 /* ~"C'est strictement mercantile, une affaire sans suite. Il me dédommage pour le retour de la sphère."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",2)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #21291 /* ~Il t'observe attentivement, frappant son menton d'un doigt osseux - *clic, clic, clic*. "Tu ne sembles pas être du genre à suivre un tel homme. Peut-être dis-tu la vérité. Peut-être… ta présence ici est tolérable."~ */
  IF ~~ THEN REPLY #21292 /* ~"Bien. J'ai d'autres questions…"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21293 /* ~"Bien. Au revoir."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.0 30.0 31.0 43.0 44.0 105.1
  SAY #21294 /* ~Il se rapproche de toi, sentant la poussière et le tissu moisi. "Qu'est donc ce dont tu parles ? Quelle preuve ai-je que Soego est de mèche avec la vermine à cerveau ?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #21295 /* ~"Je leur ai parlé et c'est ce qu'ils m'ont dit."~ */ GOTO 41
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57892 /* ~"La preuve se trouve dans ses quartiers, dans son journal. Mais il est mort, maintenant."~ */ JOURNAL #21303 /* ~J'ai dit à Hargrimm que Soego était de mêche avec les rats-crânes. Il m'a répondu qu'il s'intéresserait à la question, mais plus tard.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21296 /* ~"La preuve se trouve chez lui, dans son journal."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21297 /* ~"Il y a des preuves dans ses quartiers et son journal. Quand je l'ai accusé, il s'est transformé en homme-rat et m'a attaqué."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~~ THEN REPLY #21299 /* ~"Peu importe. J'ai d'autres questions.~ */ GOTO 3
  IF ~~ THEN REPLY #21300 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21304 /* ~"Ils t'ont peut-être menti pour que tu tues Soego. As-tu réfléchi à cela ?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57893 /* ~"La preuve se trouve dans ses quartiers, dans son journal. Mais il est mort, maintenant."~ */ JOURNAL #21303 /* ~J'ai dit à Hargrimm que Soego était de mêche avec les rats-crânes. Il m'a répondu qu'il s'intéresserait à la question, mais plus tard.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21305 /* ~"La preuve se trouve chez lui, dans son journal."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67794 /* ~"La preuve se trouve dans ses quartiers, sous la forme d'un journal. Quand je lui en ai parlé, il s'est transformé en homme-rat et m'a attaqué."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~~ THEN REPLY #21306 /* ~"Je trouverai une autre preuve, alors. J'ai d'autres questions."~ */ JOURNAL #21301 /* ~J'ai parlé à Hargrimm des relations que Soego entretenait avec les rats-crâne, mais le squelette a estimé que je n'avais pas assez de preuves. Je peux peut-être trouver des preuves plus convaincantes sur Soego et ses activités.~ */ GOTO 3
  IF ~~ THEN REPLY #21307 /* ~"Peu importe, je trouverai bien une autre preuve. Au revoir."~ */ JOURNAL #21301 /* ~J'ai parlé à Hargrimm des relations que Soego entretenait avec les rats-crâne, mais le squelette a estimé que je n'avais pas assez de preuves. Je peux peut-être trouver des preuves plus convaincantes sur Soego et ses activités.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2 40.3 41.1 41.2 73.0 102.2 102.3 103.1 103.2
  SAY #21309 /* ~"Nous verrons. Je reviendrai, bientôt. Si c'est vrai, je te devrai des remerciements."~ */
  IF ~~ THEN REPLY #21310 /* ~Attends.~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",1)
SetGlobal("Spawn_Soego","GLOBAL",1)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
FadeToColor([20.0],0)
SetGlobal("1500_Destroy_Duplicate","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 10.0 62.0
  SAY #21311 /* ~Il te scrute pendant un instant avant de parler. "Prouve aux Nations Mortes que tu ne leur veux aucun mal. Fais preuve de ta bonne volonté. Peut-être qu'alors je transmettrai ta requête au Roi Silencieux."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21312 /* ~"Tu savais que Soego était un espion à la solde des rats-crâne ?"~ */ GOTO 40
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
!Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21313 /* ~"Je pourrais dire aux Hommes-Poussière que Pharod leur vend des cadavres qu'il a volés ici. Je suis sûr qu'ils arrêteraient Pharod."~ */ GOTO 44
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21314 /* ~"Je pourrais dire aux Hommes-Poussière que Pharod leur vend des cadavres qu'il a volés ici. Je suis sûr qu'ils arrêteraient Pharod."~ */ DO ~IncrementGlobalOnceEx("GLOBALCHaotic_Hargrimm_2","GLOBALLaw",-2)
~ GOTO 44
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57708 /* ~"Y a-t-il quelque chose que je puisse faire pour toi ?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm m'a demandé de parcourir les Nations Mortes et de tuer tous les rats-crâne que je rencontrerais.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21315 /* ~"As-tu besoin de tuer quelqu'un ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm m'a demandé de parcourir les Nations Mortes et de tuer tous les rats-crâne que je rencontrerais.~ */ GOTO 45
  IF ~~ THEN REPLY #21316 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21317 /* ~"Je trouverai quelque chose à faire, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.2
  SAY #21319 /* ~"Je suis certain que tu peux entrevoir les problèmes inhérents à ton offre. Nous ne pouvons t'autoriser à partir simplement dans l'espoir que tu effectueras un tel acte."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21320 /* ~"Tu savais que Soego était un espion à la solde des rats-crâne ?"~ */ GOTO 40
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57737 /* ~"Y a-t-il quelque chose que je puisse faire pour toi ?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm m'a demandé de parcourir les Nations Mortes et de tuer tous les rats-crâne que je rencontrerais.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21321 /* ~"As-tu besoin de tuer quelqu'un ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21324 /* ~Hargrimm m'a demandé de parcourir les Nations Mortes et de tuer tous les rats-crâne que je rencontrerais.~ */ GOTO 45
  IF ~~ THEN REPLY #21322 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21323 /* ~"Je trouverai autre chose à faire, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.3 43.4 44.1 44.2
  SAY #21325 /* ~"Oui, peut-être. Il arrive que les goules passent à côté de petits groupes de rats-crâne bien cachés qui sont ici pour espionner. Si tu en vois, fais bien attention de tous les tuer."~ */
  IF ~~ THEN REPLY #21326 /* ~"Parle-moi des rats-crâne."~ */ GOTO 22
  IF ~~ THEN REPLY #21327 /* ~"Je m'en souviendrai. J'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21328 /* ~"Peut-être que je le ferai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 22.0
  SAY #21329 /* ~"Leur nombre fait leur force. Si quelqu'un trouvait et éliminait de petits groupes isolés, les grands groupes perdraient lentement leur puissance. Par exemple, ils sont très puissants dans les terriers de rats à l'est. Tuer la vermine à cerveau dans la Ruche, au-dessus, pourrait peut-être les affaiblir là-bas."~ */
  IF ~~ THEN REPLY #21330 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21331 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.1
  SAY #21332 /* ~Il fait un signe de tête, visiblement satisfait. "Nous te remercions. Que le Roi Silencieux te garde."~ */
  IF ~  Global("Hargrimm_Trust","AR1500",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67795 /* ~"Alors, tu peux aller voir le Roi Silencieux pour moi, maintenant ?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 7
  IF ~  Global("Hargrimm_Trust","AR1500",0)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67796 /* ~"Alors, tu peux aller voir le Roi Silencieux pour moi, maintenant ?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 10
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21333 /* ~"J'ai d'autres questions…"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21334 /* ~"Je m'en vais, maintenant. Au revoir."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 74 99 78 even though they appear after this state */
~  Global("DN_Prisoner","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #21335 /* ~Hargrimm te salue solennellement.~ */
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #67274 /* ~"J'ai découvert et tué un groupe de rats-crâne dans un vieux passage éboulé."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ EXIT
  IF ~  NumInParty(1)
~ THEN REPLY #63994 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 101
  IF ~  NumInParty(1)
~ THEN REPLY #63995 /* ~"J'ai besoin de soins - peux-tu m'aider ?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63996 /* ~"Pouvons-nous nous reposer ici ?"~ */ GOTO 101
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63997 /* ~"Nous avons besoin de soins - peux-tu nous aider ?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61825 /* ~"Je voulais te parler de Salie Marie… tu n'as aucun mal à comprendre ce qu'elle dit ?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Quand j'ai parlé à Hargrimm du fait que je ne comprenais pas Salie Marie, il m'a expliqué que j'avais besoin d'*apprendre* à converser avec elle. Elle saura peut-être ce qu'il a voulu dire.~ */ GOTO 100
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61826 /* ~"Je voulais te parler de Salie Marie… comment fais-tu pour comprendre ce qu'elle dit ?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Quand j'ai parlé à Hargrimm du fait que je ne comprenais pas Salie Marie, il m'a expliqué que j'avais besoin d'*apprendre* à converser avec elle. Elle saura peut-être ce qu'il a voulu dire.~ */ GOTO 100
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21336 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 49
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #64946 /* ~"Tu savais que Soego était un espion à la solde des rats-crâne ?"~ */ GOTO 102
  IF ~~ THEN REPLY #21337 /* ~"Au revoir, Hargrimm."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.7 100.0
  SAY #21338 /* ~Il secoue la tête. "Je n'ai pas vu de pareille chose ici. Peut-être plus bas, sous Sigil… fouille les catacombes englouties. Tu en trouveras l'entrée à l'ouest de l'endroit par lequel tu es entré ici. Prends garde de ne pas déranger les morts y reposant, ou tu encourras la colère du Roi Silencieux !"~ */
  IF ~~ THEN REPLY #21339 /* ~"Merci. Au revoir, Hargrimm."~ */ JOURNAL #21340 /* ~Hargrimm m'a dit de fouiller les catacombes englouties au-delà des Nations Mortes pour retrouver la sphère en bronze que je recherchais.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 19.2
  SAY #21341 /* ~"Nous ne savons pas. Il est possible qu'elles errent ailleurs. Nous quittons rarement cet endroit." Il s'arrête, comme s'il hésitait à continuer. "Autrefois de nombreuses ombres s'étendaient sur nous, mais elles ne viennent plus dans nos salles. Elles sont depuis longtemps parties - et nous ne savons pas où. Certains disent qu'elles errent dans les plans."~ */
  IF ~~ THEN REPLY #21342 /* ~"Elles errent dans les plans ?"~ */ JOURNAL #21346 /* ~Hargrimm m'a dit qu'autrefois, de nombreuses ombres habitaient les Nations Mortes. D'après une vision de Salie Marie, elles ont toutes été englouties dans la forteresse du Plan Négatif, il y a fort longtemps.~ */ GOTO 51
  IF ~~ THEN REPLY #21343 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21344 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21345 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #21347 /* ~"J'ai posé une fois la question. Marie prétend qu'elle a vu leur destin dans des visions. Elle prétend qu'elles ont toutes été emportées vers une forteresse échouée dérivant dans le Plan d'Énergie Négative, un cimetière de regrets duquel elles ne peuvent s'échapper."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21348 /* ~"Qui est Marie ?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21349 /* ~"Marie… Salie Marie ?"~ */ GOTO 52
  IF ~~ THEN REPLY #21350 /* ~"Une forteresse du Plan d'Énergie Négative ?"~ */ GOTO 53
  IF ~~ THEN REPLY #21351 /* ~"Pourquoi est-ce que tu restes ici ?"~ */ GOTO 55
  IF ~~ THEN REPLY #21352 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21353 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21354 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 53.1 53.2 54.0 54.1 55.1 55.2 56.0 56.1
  SAY #21355 /* ~Il acquiesce. "Oui, Salie Marie, que le Roi Silencieux la garde. Elle était prophétesse, il y a très longtemps, et reçoit toujours des visions de temps à autres."~ */
  IF ~~ THEN REPLY #21356 /* ~"Parle-moi d'elle."~ */ GOTO 26
  IF ~~ THEN REPLY #21357 /* ~"Tu as parlé d'une forteresse ?"~ */ GOTO 53
  IF ~~ THEN REPLY #21358 /* ~"Pourquoi est-ce que tu restes ici ?"~ */ GOTO 55
  IF ~~ THEN REPLY #21359 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21360 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21361 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2 52.1 55.3 56.2
  SAY #21362 /* ~"Oui." Le prêtre squelette secoue la tête. "Pure folie."~ */
  IF ~~ THEN REPLY #21363 /* ~"Pourquoi ?"~ */ GOTO 54
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21364 /* ~"Qui est Marie ?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21365 /* ~"Tu as parlé de Marie… Salie Marie ?"~ */ GOTO 52
  IF ~~ THEN REPLY #21366 /* ~"Pourquoi est-ce que tu restes ici ?"~ */ GOTO 55
  IF ~~ THEN REPLY #21367 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21368 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21369 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21370 /* ~"Ce Plan est un endroit où toutes les énergies qui remplissent les vides des morts-vivants prennent leur source. Lorsque la vie nous quitte, il y a des chances pour qu'à travers la passion et la magie… et peut-être d'autres choses… cette énergie remplisse le vide, nous donnant une nouvelle vie. Je ne vois toutefois pas comment quoi que ce soit puisse *exister* là-bas."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21371 /* ~"Qui est Marie ?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21372 /* ~"Tu as parlé de Marie… Salie Marie ?"~ */ GOTO 52
  IF ~~ THEN REPLY #21373 /* ~"Pourquoi est-ce que tu restes ici ?"~ */ GOTO 55
  IF ~~ THEN REPLY #21374 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21375 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21376 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.3 52.2 53.3 54.2
  SAY #21377 /* ~"Cette nation est sous notre protection. Les immobiles - les vrais morts - ont besoin d'être protégés et gardés… autrement, ils seraient à la merci des horreurs des catacombes, qui dérangeraient leur sommeil. Notre devoir sacré est de nous occuper d'eux."~ */
  IF ~~ THEN REPLY #21378 /* ~"Les horreurs des catacombes ?"~ */ GOTO 56
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21379 /* ~"Qui est Marie ?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21380 /* ~"Tu as parlé de Marie… Salie Marie ?"~ */ GOTO 52
  IF ~~ THEN REPLY #21381 /* ~"Tu as parlé d'une forteresse ?"~ */ GOTO 53
  IF ~~ THEN REPLY #21382 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21383 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21384 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #21385 /* ~"Les vivants… les nécrophages humains, la vermine nécrophage… tous ceux qui défient notre devoir de garde sacré. Que le Roi Silencieux nous protège."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21386 /* ~"Qui est Marie ?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21387 /* ~"Tu as parlé de Marie… Salie Marie ?"~ */ GOTO 52
  IF ~~ THEN REPLY #21388 /* ~"Tu as parlé d'une forteresse ?"~ */ GOTO 53
  IF ~~ THEN REPLY #21389 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21390 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21391 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 16.0
  SAY #21392 /* ~"Je suis mort il y a bien longtemps et j'ai découvert qu'au-delà de la mort se trouve seulement l'oubli… heureusement, j'ai pu m'éloigner du bord à la dernière minute."~ */
  IF ~~ THEN REPLY #21393 /* ~"T'éloigner ?"~ */ GOTO 58
  IF ~~ THEN REPLY #21394 /* ~"Tu as parlé de disciples. Qui d'autre est ici ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21395 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #21396 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21397 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #21398 /* ~"Oui, je me suis réveillé ici. J'ai erré dans les catacombes pendant un nombre de jours indéterminé avant de tomber sur le trône de mon seigneur, le Roi Silencieux. Il s'est adressé à moi et de cette rencontre du destin sont nées les Nations Mortes."~ */
  IF ~~ THEN REPLY #21399 /* ~"Tu as parlé de disciples. Qui d'autre est ici ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21400 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #21401 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21402 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1
  SAY #21403 /* ~"Je veux d'abord savoir pourquoi tu es ici."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21404 /* ~"Je cherche quelque chose. Une petite sphère en bronze."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21405 /* ~"Je suis envoyé par Tant-en-Un, le collectif des rats-crâne."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21406 /* ~"Je cherchais Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21407 /* ~"Pour rien."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21408 /* ~Mensonge : "Aucune raison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21409 /* ~Mensonge : "Aucune raison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21410 /* ~Mensonge : "Aucune raison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21411 /* ~"Ça ne te regarde pas."~ */ GOTO 60
  IF ~~ THEN REPLY #21412 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21413 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.7
  SAY #21414 /* ~Le squelette hausse les épaules, puis te fait signe de partir. "Qu'il en soit ainsi. bon séjour ici."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21415 /* ~"Je cherche quelque chose. Une petite sphère en bronze."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21416 /* ~"Je suis envoyé par Tant-en-Un, le collectif des rats-crâne."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21417 /* ~"Je cherchais Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21418 /* ~"Pour rien."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21419 /* ~Mensonge : "Aucune raison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21420 /* ~Mensonge : "Aucune raison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21421 /* ~Mensonge : "Aucune raison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21422 /* ~"Attends. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21423 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2 60.2 63.2
  SAY #21424 /* ~"Combien d'autres humains ce visage pâle adorateur de la mort amènera t-il dans nos salles ?! Une armée ? Une légion ?! Peut-être tout Sigil ?!" Le squelette tourne à nouveau son attention vers toi. "Es-tu de connivence avec les Hommes-Poussière ? Acceptes-tu leurs croyances et obéis-tu à ce ridicule concept de Vraie Mort ?"~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21425 /* ~"Non."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21426 /* ~"Oui."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21427 /* ~Mensonge : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_4","GLOBALLaw",-1)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1 61.2 63.3 63.4 63.5 63.6 67.0 68.0
  SAY #21428 /* ~"Fmm !" Le squelette regarde au loin, secouant la tête.~ */
  IF ~~ THEN REPLY #21429 /* ~"Et bien…?"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 63 // from: 59.3 59.4 59.5 59.6 60.3 60.4 60.5 60.6
  SAY #21430 /* ~"Vraiment ? Je trouve cela difficile à croire."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21431 /* ~"Je cherche quelque chose. Une petite sphère en bronze."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21432 /* ~"Je suis envoyé par Tant-en-Un, le collectif des rats-crâne."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21433 /* ~"Je cherchais Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21434 /* ~"C'est vrai."~ */ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21435 /* ~Mensonge : "C'est vrai."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21436 /* ~Mensonge : "C'est vrai."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21437 /* ~Mensonge : "C'est vrai."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~~ THEN REPLY #21438 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21439 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1 60.1 63.1
  SAY #21440 /* ~"Par le Roi Silencieux ! Tu es de connivence avec la *vermine* !?" Il devient furieux. "Tu tiens conseil avec ces nécrophages à cervelle collective qui profanent les tombes de nos protégés et se nourrissent de leurs restes ?!"~ */
  IF ~~ THEN REPLY #21441 /* ~"Excuse-moi…"~ */ GOTO 65
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21442 /* ~"Oui. Et alors ?"~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21443 /* ~"Oui. Et alors ?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #21444 /* ~"Tu ferais bien ! Dans quel but t'envoient-ils ici ?"~ */
  IF ~~ THEN REPLY #21445 /* ~"Pour tuer le Roi Silencieux."~ */ GOTO 68
  IF ~~ THEN REPLY #21446 /* ~Mensonge : "Pour négocier une trêve."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
  IF ~~ THEN REPLY #21447 /* ~Mensonge : "Pour rien."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #21448 /* ~La lueur vacillante de ses yeux rétrécit. "Je trouve cela difficile à croire. Peut-être as-tu une réponse plus proche de la vérité ?"~ */
  IF ~~ THEN REPLY #21449 /* ~"Pour tuer le Roi Silencieux."~ */ GOTO 68
  IF ~~ THEN REPLY #21450 /* ~"Pour négocier une trêve."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 65.1 66.1
  SAY #21451 /* ~"Il n'y a rien à négocier. Une trêve a été appliquée. Ils ont appris à respecter nos frontières et nous respectons les leurs."~ */
  IF ~~ THEN REPLY #21452 /* ~"Quoi qu'il en soit, c'est la raison pour laquelle je suis ici."~ */ GOTO 62
END

IF ~~ THEN BEGIN 68 // from: 65.0 66.0
  SAY #21453 /* ~"Comment oses-tu entrer dans ces salles et menacer notre seigneur ?! Et sous les ordres de la vermine à cerveau, qui plus est. Tu souffriras pour ton audace !"~ */
  IF ~~ THEN REPLY #21454 /* ~"Je n'ai dit que la vérité. Je n'ai aucune envie de le tuer, maintenant."~ */ GOTO 62
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21455 /* ~"Vas-y, fais-moi souffrir."~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21456 /* ~"Vas-y, fais-moi souffrir."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 64.1 68.1
  SAY #21457 /* ~"Tu quitteras ces catacombes dans le fumier des goules ! Que le Roi Silencieux nous protège lors de la bataille !"~ */
  IF ~~ THEN REPLY #21458 /* ~Réponds à leur attaque.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21459 /* ~Fuis.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 64.2 68.2
  SAY #21462 /* ~Il lève son bâton, puis s'arrête soudainement. "Hélas ! Par la grâce du Roi Silencieux, et par chance pour toi, nous honorons le Contrat à mort. Sois toutefois sûr que tu ne quitteras *jamais* ces catacombes. Adieu."~ */
  IF ~~ THEN REPLY #21461 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 40.1 41.0
  SAY #21463 /* ~"Je vérifierai cela. Si cela est vrai, je te remercierai dûment."~ */
  IF ~~ THEN REPLY #21464 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
ClearAllActions()
~ GOTO 3
  IF ~~ THEN REPLY #21465 /* ~"Je m'en vais, maintenant. Au revoir."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 21.0
  SAY #21466 /* ~"Elles sont toujours affamées ; sans nous pour les contrôler, elles attaqueraient le Village Enseveli et les terriers des rats-crâne, tuant tout et retournant dévorer tout ce qui se trouve ici."~ */
  IF ~~ THEN REPLY #21467 /* ~"Parle-moi d'Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21468 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #21469 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #21470 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~"Il s'est peut-être enfui pour une autre raison. As-tu pensé à cela ?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21472 /* ~"La preuve se trouve chez lui, dans son journal."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~~ THEN REPLY #21473 /* ~"Je trouverai une autre preuve, alors. J'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21474 /* ~"Peu importe, je trouverai bien une autre preuve. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 99 78 even though they appear after this state */
~  Global("Prisoner_Movie","GLOBAL",1)
~ THEN BEGIN 74 // from:
  SAY #21475 /* ~"Stop ! Tu es allé trop loin, voyageur, et est entré sans permission dans les Nations Mortes, domaine du Roi Silencieux ! Te soumettras-tu pacifiquement ?"~ */
  IF ~~ THEN REPLY #21476 /* ~"Me soumettre à quoi ?"~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("Know_Hargrimm","GLOBAL",1)
SetGlobal("Know_Silent_King","GLOBAL",1)
SetGlobal("Hargrimm_Talk","AR1500",2)
SetDoorLocked("AR1500D1",TRUE)
SetDoorLocked("AR1500D2",TRUE)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #21477 /* ~"La volonté du Roi Silencieux est que tous ceux qui passent les portes de notre nation deviennent prisonniers de ses terres. Te soumettras-tu ?"~ */
  IF ~~ THEN REPLY #21478 /* ~"Très bien, je me soumettrai."~ */ GOTO 76
  IF ~~ THEN REPLY #21479 /* ~"Non."~ */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #21480 /* ~"Viens, alors… nous te montrerons la chapelle. Sache ceci : tu es libre d'errer dans ces salles, mais pas de quitter ces catacombes. Tu seras prisonnier jusqu'à ta mort ; si jamais tu te relevais comme nous, tu seras libre. Que le Roi Silencieux soit loué, que sa volonté soit faite."~ */
  IF ~~ THEN REPLY #21481 /* ~Suis-les.~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("DN_Surrender","AR1500",1)
StartCutSceneMode()
StartCutSceneEx("1500cs3",FALSE)
~ JOURNAL #61610 /* ~J'ai rencontré un puissant prêtre-sorcier mort-vivant, qui m'a dit que je me trouvais dans les Nations Mortes, et plus particulièrement sur les terres du 'Roi Silencieux'. Ayant accepté de me soumettre, j'ai appris que je pouvais explorer les galeries à mon gré mais que je n'avais pas le droit de quitter les catacombes. Le prêtre squelette m'a dit que je serais prisonnier jusqu'à ma mort, mais que je deviendrais libre si je revenais à la vie comme eux. Peut-être y a-t-il un autre moyen…~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #21482 /* ~"Tu mourras alors ici, dans les salles du Roi Silencieux."~ */
  IF ~~ THEN REPLY #21483 /* ~"Très bien, je me soumettrai."~ */ GOTO 76
  IF ~~ THEN REPLY #21484 /* ~"Qu'il en soit ainsi."~ */ DO ~SetGlobal("Undead_Alert","AR1500",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ JOURNAL #61609 /* ~J'ai rencontré un puissant prêtre-sorcier mort-vivant, qui m'a dit que je me trouvais dans les Nations Mortes, et plus particulièrement sur les terres du 'Roi Silencieux'. Ayant refusé de me soumettre, j'ai été attaqué par le prêtre et ses serviteurs morts-vivants.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Throne_Movie","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY #23955 /* ~"Alors comme ça, tu es venu." Le squelette se retourne pour observer l'énorme trône. "Ce que tu as devant les yeux est la chute de notre société."~ */
  IF ~~ THEN REPLY #24110 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
  IF ~~ THEN REPLY #24112 /* ~"C'est lui le Roi Silencieux ?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #24114 /* ~Attends en silence qu'il continue.~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #23956 /* ~"Oui."~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 78.0 78.2 79.0
  SAY #23957 /* ~"Personne ne doit savoir que les paroles du Roi ne sont que silence."~ */
  IF ~~ THEN REPLY #24117 /* ~"Cela fait combien de temps que ça dure ?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24119 /* ~"Pourquoi il ne parle pas ?"~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from:
  SAY #23958 /* ~Hargrimm tourne les yeux vers l'obscurité. "Il a cessé de nous parler il y a bien longtemps -- lui-même est parti pour la Vraie Mort trois fois maudite". Un soupçon de rage et de désespoir perce dans sa voix. "Il nous a abandonnés ici pour que nous souffrions parmi les Vivants ! Nous sommes devenus… la proie… de tout ce qui vit."~ */
  IF ~~ THEN REPLY #24121 /* ~"Pourquoi il règne alors ?"~ */ GOTO 83
  IF ~~ THEN REPLY #24124 /* ~"Comment règne-t-il alors ?"~ */ GOTO 84
  IF ~~ THEN REPLY #24126 /* ~"Alors, qui règne en réalité ?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #23959 /* ~"Il est silencieux parce qu'il a quitté cet endroit. Il nous a abandonnés pour la Vraie Mort… et n'a laissé ici que ce corps."~ */
  IF ~~ THEN REPLY #24129 /* ~"Cela fait combien de temps que ça dure ?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24131 /* ~"Pourquoi il règne alors ?"~ */ GOTO 83
  IF ~~ THEN REPLY #24133 /* ~"Comment règne-t-il alors ?"~ */ GOTO 84
  IF ~~ THEN REPLY #24134 /* ~"Alors, qui règne en réalité sur les Nations Mortes ?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.0 82.1 84.0
  SAY #23960 /* ~"Il gouverne parce qu'il le doit."~ */
  IF ~~ THEN REPLY #24135 /* ~"Mais, s'il est mort… comment ?"~ */ GOTO 84
  IF ~~ THEN REPLY #24136 /* ~"Alors, qui règne en réalité sur les Nations Mortes ?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 81.1 82.2 83.0
  SAY #23961 /* ~"Nous interprétons les souhaits du Roi Silencieux en fonction de ce qu'il a dit il y a bien longtemps. Ce n'est pas facile…" Hargrimm a l'air fatigué ; il fléchit sous le poids d'un fardeau invisible. "Beaucoup de questions, j'ai beaucoup de questions pour lui."~ */
  IF ~~ THEN REPLY #24139 /* ~"Comment fait-il pour régner encore ?"~ */ GOTO 83
  IF ~~ THEN REPLY #24141 /* ~"Qui règne en réalité alors ?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 81.2 82.3 83.1 84.1
  SAY #23962 /* ~"Marie et moi parlons au Roi Silencieux. Nous gouvernons à sa place."~ */
  IF ~~ THEN REPLY #24143 /* ~"Pourquoi tu ne dis pas à ton peuple la vérité ?"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23963 /* ~"Je désire préserver ce que nous avons créé. Je ne veux pas mourir."~ */
  IF ~~ THEN EXTERN ~DSTALEMA~ 49
END

IF ~~ THEN BEGIN 87 // from:
  SAY #23964 /* ~"Si notre propre peuple venait à l'apprendre… ou si Acaste découvrait la supercherie… ou Tant-en-Un, l'esprit des rats-crâne de la Ruche… tout ce que nous avons construit ici serait détruit. Ce corps est tout ce qui nous permet de tenir les ennemis de l'intérieur et de l'extérieur à distance. Si la vérité était dévoilée, notre petite civilisation partirait en poussière."~ */
  IF ~~ THEN REPLY #24150 /* ~"Continue…"~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #23965 /* ~"Je ne peux pas te forcer au silence. Mais je te demande de regarder au-delà de toi, de considérer ce qu'il adviendrait si tu parlais de ce que tu as vu ici."~ */
  IF ~~ THEN REPLY #24152 /* ~Propose un serment : "Je désire seulement partir, Hargrimm. Laisse-moi partir et je te promets mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24154 /* ~Propose une fausse promesse : "Je désire simplement partir, Hargrimm. Accorde-moi cela et tu auras mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-1)
~ GOTO 89
  IF ~~ THEN REPLY #24156 /* ~"Ton peuple doit savoir. Si ta civilisation est détruite, qu'il en soit ainsi."~ */ GOTO 90
  IF ~~ THEN REPLY #24159 /* ~"Pourquoi ne pas placer un nouveau roi sur le trône ?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1 93.2 93.3 94.1 94.2 96.0 96.1
  SAY #23966 /* ~Hargrimm se tait un moment. "Tu peux quitter cet endroit. Va, maintenant… et je te le demande : respecte ta parole."~ */
  IF ~~ THEN REPLY #24164 /* ~"Merci. Au revoir."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~J'ai utilisé un portail dont Salie Marie m'avait parlé pour pénétrer dans la salle du trône du Roi Silencieux. Là, j'ai découvert que le monarque des Nations Mortes n'est en fait qu'un cadavre rabougri. J'ai accepté de n'en rien dire à personne et, en échange, Hargrimm m'a autorisé à quitter les Nations Mortes.~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2 93.4 94.3 96.2
  SAY #24092 /* ~Hargrimm se tait un moment. "Encore une fois, je ne peux pas te forcer à rester silencieux. Mais tu dois me dire si tu as l'intention de leur dire ou non."~ */
  IF ~~ THEN REPLY #24166 /* ~"Je leur dirai."~ */ GOTO 98
  IF ~~ THEN REPLY #24181 /* ~Vérité : "Je ne leur dirai pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 91
  IF ~~ THEN REPLY #24182 /* ~Mensonge : "Je ne leur dirai pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1 90.2
  SAY #24093 /* ~"Reçois ma gratitude. Tu peux maintenant quitter cet endroit si tu le désires. Passe par le portail par où tu es entré pour sortir de cette salle, pas par les portes."~ */
  IF ~~ THEN REPLY #24183 /* ~"Merci. Au revoir."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~J'ai utilisé un portail dont Salie Marie m'avait parlé pour pénétrer dans la salle du trône du Roi Silencieux. Là, j'ai découvert que le monarque des Nations Mortes n'est en fait qu'un cadavre rabougri. J'ai accepté de n'en rien dire à personne et, en échange, Hargrimm m'a autorisé à quitter les Nations Mortes.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #24094 /* ~"Qu'il en soit ainsi. Sache ceci, Vivant : seule la Trêve Morte te protège. Respecte cette Trêve, toi-même et tiens ta langue, si tu le veux bien. Tu es libre de quitter ces murs, maintenant. Adieu."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.3
  SAY #24095 /* ~"Le roi doit être en vie lorsqu'il s'assied sur le trône. Il n'en acceptera pas d'autre. Une fois qu'une personne s'assied sur le trône…" Le ton d'Hargrimm devient plus sinistre encore : "… il ne peut plus le quitter."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
Global("Soego_Fled","GLOBAL",0)
~ THEN REPLY #24185 /* ~"Et Soego ?"~ */ GOTO 94
  IF ~~ THEN REPLY #24186 /* ~"Je deviendrai votre roi, si vous voulez de moi."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24187 /* ~Propose un serment : "Je désire seulement partir, Hargrimm. Laisse-moi partir et je te promets mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24188 /* ~Propose une fausse promesse : "Je désire simplement partir, Hargrimm. Accorde-moi cela et tu auras mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24189 /* ~"Ton peuple doit savoir. Si ta civilisation est détruite, qu'il en soit ainsi."~ */ GOTO 90
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #24096 /* ~"Soego ne ferait pas un bon roi. Il est trop amoureux de sa propre voix pour rester silencieux. Cette position sur le trône le priverait de la Vraie Mort. Ce serait aussi blasphématoire que de tenter de nous voler la vie que nous possédons."~ */
  IF ~~ THEN REPLY #24190 /* ~"Je serai votre roi alors, si vous voulez de moi."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24191 /* ~Propose un serment : "Je désire seulement partir, Hargrimm. Laisse-moi partir et je te promets mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24192 /* ~Propose une fausse promesse : "Je désire simplement partir, Hargrimm. Accorde-moi cela et tu auras mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24193 /* ~"Ton peuple doit savoir. Si ta civilisation est détruite, qu'il en soit ainsi."~ */ GOTO 90
END

IF ~~ THEN BEGIN 95 // from:
  SAY #24097 /* ~"Lorsqu'on s'assoit sur le trône, on ne peut plus jamais le quitter. La mort… la Vraie Mort… est la seule délivrance du trône du Roi Silencieux."~ */
  IF ~~ THEN REPLY #24194 /* ~"Oui. J'accepte…"~ */ EXTERN ~DSTALEMA~ 51
  IF ~~ THEN REPLY #24195 /* ~"Dans ce cas, non."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.1 97.0
  SAY #24098 /* ~"C'est bien ce que je pensais." Hargrimm soupire, un nuage de poussière jaillit de sa bouche. "Ainsi… je saurai quand même si tu parles ou non de la véritable nature du Roi Silencieux."~ */
  IF ~~ THEN REPLY #24196 /* ~Propose un serment : "Je désire seulement partir, Hargrimm. Laisse-moi partir et je te promets mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24197 /* ~Propose une fausse promesse : "Je désire simplement partir, Hargrimm. Accorde-moi cela et tu auras mon silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24198 /* ~"Ton peuple doit savoir. Si ta civilisation est détruite, qu'il en soit ainsi."~ */ GOTO 90
END

IF ~~ THEN BEGIN 97 // from:
  SAY #24099 /* ~Hargrimm acquiesce et te montre le trône. "Prends ton trône, O Roi Silencieux…"~ */
  IF ~~ THEN REPLY #24199 /* ~"Attends… il vaut mieux pas."~ */ GOTO 96
  IF ~~ THEN REPLY #24200 /* ~Prends le trône.~ */ DO ~SetGlobal("Took_Throne","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 90.0
  SAY #24100 /* ~Le prêtre squelette secoue tristement la tête. "J'ai peur que nous ne puissions permettre ça, Vivant. Puisse le Roi Silencieux être avec moi dans la bataille…"~ */
  IF ~~ THEN REPLY #24201 /* ~Bats-toi.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #24202 /* ~Fuis.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR1501")
~ THEN BEGIN 99 // from:
  SAY #58914 /* ~Hargrimm indique solennellement la large porte à double battant située à l'extrémité sud de la salle du trône du Roi Silencieux. "Pars, maintenant, Vivant, et souviens-toi : ne dis rien à personne. Si d'aventure tu as besoin de me parler, fais-le loin de cette salle sacrée."~ */
  IF ~~ THEN REPLY #58915 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 48.5 48.6
  SAY #61822 /* ~Le squelette ne répond qu'au bout d'un long moment. "Il faut *apprendre* à écouter, voilà tout."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #61823 /* ~"Je comprends. Auriez-vous vu une petite sphère en bronze dans les parages ?"~ */ GOTO 49
  IF ~~ THEN REPLY #61824 /* ~"Je vais peut-être retourner lui parler, alors. Au revoir, Hargrimm."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 48.1 48.3
  SAY #63992 /* ~Hargrimm te regarde silencieusement pendant un moment puis soupire. "Tu devrais être à l'abri ici. Repose-toi."~ */
  IF ~~ THEN REPLY #63993 /* ~"Merci."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 48.8
  SAY #64947 /* ~Il s'approche de toi ; il sent la poussière et le linge moisi. "De quoi parles-tu ? Quelle preuve as-tu que Soego est de mèche avec la vermine à cerveau ?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #64954 /* ~"Je leur ai parlé et ils me l'ont dit." ~ */ GOTO 103
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64955 /* ~"La preuve se trouve dans ses quartiers, dans son journal. Mais il est mort, maintenant."~ */ JOURNAL #21303 /* ~J'ai dit à Hargrimm que Soego était de mêche avec les rats-crânes. Il m'a répondu qu'il s'intéresserait à la question, mais plus tard.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64956 /* ~"Il y a des preuves dans ses quartiers, dans son journal." ~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64957 /* ~"Il y a des preuves dans ses quartiers et son journal. Quand je l'ai accusé, il s'est transformé en homme-rat et m'a attaqué."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~~ THEN REPLY #64959 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #64948 /* ~"Ils t'ont peut-être menti pour que tu tues Soego. Tu y avais pensé ?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67797 /* ~"La preuve se trouve dans ses quartiers, sous la forme d'un journal. Mais Soego est mort."~ */ JOURNAL #21303 /* ~J'ai dit à Hargrimm que Soego était de mêche avec les rats-crânes. Il m'a répondu qu'il s'intéresserait à la question, mais plus tard.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67798 /* ~"La preuve se trouve dans ses quartiers, sous la forme d'un journal."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67799 /* ~"La preuve se trouve dans ses quartiers, sous la forme d'un journal. Quand je lui en ai parlé, il s'est transformé en homme-rat et m'a attaqué."~ */ JOURNAL #21302 /* ~J'ai dit à Hargrimm que Soego était de mèche avec les rats-crâne. Hargrimm est aussitôt allé interroger Soego. Voyant que ce dernier était coupable, il a décidé de le confiner dans ses quartiers jusqu'à ce que mort s'ensuive. Alors, Soego s'est transformé en rat-garou et a attaqué Hargrimm, qui n'a fait qu'une bouchée de lui.~ */ GOTO 42
  IF ~~ THEN REPLY #64962 /* ~"Peu importe, je vais chercher d'autres preuves. Au revoir." ~ */ JOURNAL #21301 /* ~J'ai parlé à Hargrimm des relations que Soego entretenait avec les rats-crâne, mais le squelette a estimé que je n'avais pas assez de preuves. Je peux peut-être trouver des preuves plus convaincantes sur Soego et ses activités.~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #64949 /* ~"Je vais y réfléchir. Si c'est le cas, je te devrai des remerciements."~ */
  IF ~~ THEN REPLY #64963 /* ~"Bon, je m'en vais. Au revoir."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 10.2
  SAY #67800 /* ~Le prêtre squelette fait un bruit de gorge et la lueur de ses yeux diminue ; il est en pleine réflexion. "Soego. Débarrasse-nous de ce maudit Homme-Poussière et j'intercéderai en ta faveur auprès du Roi Silencieux. Attention, je ne veux *pas* que tu l'assassines. Trouve-moi seulement le moyen de le chasser des Nations Mortes."~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",0)
Global("Soego_Journal","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67802 /* ~"Soego? Oh… il est mort."~ */ GOTO 106
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #67803 /* ~"Tu savais que c'est un espion à la solde des rats-crâne ?"~ */ GOTO 40
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67804 /* ~"Qu'est-ce qui te gêne vraiment chez Soego ?"~ */ GOTO 29
  IF ~~ THEN REPLY #67805 /* ~"Je vais voir. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #67806 /* ~"Je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #67801 /* ~"C'est vrai ? Bah ! Et maintenant, j'imagine que tu vas vouloir que j'aille voir le Roi Silencieux, hein ? Eh bien, il n'en est pas question ! Tant que tu ne m'auras pas démontré que le meurtre de Soego était nécessaire, tu ne quitteras pas les Nations Mortes."~ */
  IF ~~ THEN REPLY #67807 /* ~"Bien. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #67808 /* ~"Dans ce cas, je vais essayer de trouver quelque chose."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 3.9 3.10 3.11 3.12
  SAY #68089 /* ~"Non. Mais si tu n'étais pas un prisonnier attendant la mort, ma réponse serait peut-être différente."~ */
  IF ~~ THEN REPLY #68090 /* ~"Pourquoi suis-je retenu prisonnier ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #68091 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #68092 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
