// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMEBBETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMEBBETH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 2 87 88 123 even though they appear after this state */
~  Global("Mebbeth","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1801 /* ~On dirait que toute couleur a été effacée de cette vieille femme courtaude ; tout, de ses cheveux à son châle, en passant par sa robe, tout chez elle est un dégradé de gris. Les seules taches de couleur qu'elle porte viennent de plusieurs herbes étranges, attachées à sa ceinture par leurs tiges. Les herbes bruissent étrangement quand elle bouge, comme s'il s'agissait d'un balai.~ */
  IF ~~ THEN REPLY #1802 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #23159 /* ~Ignore la femme, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #23160 /* ~La vieille femme se retourne et te regarde fixement… et tu t'aperçois que les marques grises qui recouvrent son corps s'étendent jusqu'au visage. Sa chevelure est d'un gris vaporeux, et ses yeux sont comme des pépites de granit. Elle fronce les sourcils en t'apercevant. "Et qui es-tu, hmmmn ?"~ */
  IF ~~ THEN REPLY #23161 /* ~"Je suis un voyageur."~ */ GOTO 3
  IF ~~ THEN REPLY #23162 /* ~"Je n'sais pas vraiment qui je suis."~ */ GOTO 8
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",0)
~ THEN REPLY #23163 /* ~Mensonge : "Je m'appelle Adahn. Qui es-tu ?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mebbeth_1","GLOBALLaw",-1)
~ GOTO 9
  IF ~  Global("Chaotic_Mebbeth_1","GLOBAL",1)
~ THEN REPLY #23164 /* ~Mensonge : "Je m'appelle Adahn. Qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #23165 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 87 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #23166 /* ~Mebbeth se retourne lorsque tu entres et elle te jette un regard sceptique. "Ton chemin t'ramène ici, hein, mon enfant… ?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23167 /* ~"J'ai trouvé le marchand de fruits sur le marché."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23168 /* ~"Je suis revenu avec ces herbes que tu voulais… maintenant tu pourrais peut-être retirer ce maudit morceau de ronce de mon poignet."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23169 /* ~"Je t'ai apporté ta lessive… je pense que Giscorl y est allé un peu lourdement sur le rituel du nettoyage."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23170 /* ~"Oui, j'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23171 /* ~"Oui, j'ai besoin de soins."~ */ GOTO 12
  IF ~~ THEN REPLY #23172 /* ~"Je suis venu t'acheter certains remèdes et charmes…"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23173 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 41
  IF ~~ THEN REPLY #23174 /* ~"Non, je suis juste revenu voir ce que tu faisais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #23175 /* ~"Ah oui ? Et où a *commencé* ton voyage, dis-moi ?"~ */
  IF ~~ THEN REPLY #23176 /* ~"J'ai fait un aller-retour au royaume des morts, je crois."~ */ GOTO 4
  IF ~~ THEN REPLY #23177 /* ~"De la Morgue à ici en passant par la Ruche."~ */ GOTO 5
  IF ~~ THEN REPLY #23178 /* ~"Ici et là … pas mal d'endroits, en fait."~ */ GOTO 7
  IF ~~ THEN REPLY #23179 /* ~"C'est sans importance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23180 /* ~La femme crache une fois… deux fois… trois fois, puis trace un demi-cercle sur son cœur. "Attention à ce que tu dis, mon enfant - et prie pour qu'aucun des Pouvoirs Morts ne se sente offensé par tes propos."~ */
  IF ~~ THEN REPLY #23181 /* ~"Je… vois. Qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #23182 /* ~"Je n'oublierai pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #23183 /* ~"Hah ! Les visages pâles de la morgue, ils veulent tous être sûrs qu'les morts sont au bon endroit ! Peuh ! Hommes-Poussière et idiots, deux mots, mais une seule signification." Soudain, ses traits se figent, et ses yeux se révulsent.~ */
  IF ~~ THEN REPLY #23184 /* ~"Ça va ?"~ */ GOTO 6
  IF ~~ THEN REPLY #23185 /* ~"Euh… désolé de te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23186 /* ~La femme se met à grommeler, d'un ton moqueur. "J'suis un Homme-Poussière. 'Veux mourir parce que cette vie n'est pas vraie." Ses yeux se remettent en place et elle se met à grogner. "Ces Hommes-Poussière ! Ignorants et insensés !" Elle pointe le doigt dans ta direction. "Si tu quittes cette vie, mon enfant, il n'y a guère où aller."~ */
  IF ~~ THEN REPLY #23187 /* ~"Je… vois. Qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #23188 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #23189 /* ~"Ahhh…" Elle acquiesce pour elle-même. "Et pourtant, dans tes errances, tu viens frapper à ma porte, hein ?" Elle renifle. "J'suis bénie."~ */
  IF ~~ THEN REPLY #23190 /* ~"Qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #23191 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #23192 /* ~"Alors, tu sais pas toi-même, mon enfant ?" Elle te regarde en biais, puis pointe le doigt en direction de ta poitrine. "Difficile de déchiffrer l'homme sous tous ces dessins et ces cicatrices, hein ?"~ */
  IF ~~ THEN REPLY #23193 /* ~"Peut-être… qui es-tu ?"~ */ GOTO 9
  IF ~~ THEN REPLY #23194 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 4.0 6.0 7.0 8.0
  SAY #23195 /* ~Avec un jacassement sournois, elle hausse les sourcils. "T'as jamais entendu parler d'la vieille Mebbeth, alors ? La sage-femme du Square ? Hein, jamais ?" Elle plisse des yeux, et se met à parler plus bas. "Eh bien, maint'nant c'est fait, car je *suis* Mebbeth."~ */
  IF ~~ THEN REPLY #23196 /* ~"T'es une sage-femme ? Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("Mebbeth","GLOBAL",1)
~ JOURNAL #22703 /* ~J'ai rencontré une vieille femme, Mebbeth, sage-femme du Square du Chiffonnier. Elle a l'air un peu azimutée… ceci dit, tout le monde a l'air azimuté dans ce bled.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23197 /* ~"J'remets les os d'aplomb, arrête la toux des malades, fais sortir les bébés têtus et crieurs, répare quelquefois une cape ou un bout d'chiffon, prépare des remèdes et des herbes ou autres." Elle louche vers toi, et étudie tes cicatrices. "Alors, t'as besoin d'un remède ou trois, hein ?"~ */
  IF ~~ THEN REPLY #23198 /* ~"Des remèdes ?"~ */ GOTO 11
  IF ~~ THEN REPLY #23199 /* ~"Non merci. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23200 /* ~"Ouais, rien qu'à t'voir, t'auras besoin de remèdes. Tu veux en acheter, hein… ?" Elle regarde à nouveau les cicatrices couvrant ton corps, puis hausse les épaules. "Trop tard pour ça, je crois."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23201 /* ~"En fait, je *pourrais* avoir besoin de certains remèdes…"~ */ GOTO 12
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23202 /* ~"En fait, nous *pourrions* avoir besoin de certains remèdes…"~ */ GOTO 12
  IF ~~ THEN REPLY #23203 /* ~"Je n'ai pas besoin de remèdes pour l'instant, mais cela pourrait me servir plus tard. Est-ce que je peux voir ce que tu as ?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23204 /* ~"En fait, je cherche juste un endroit pour me reposer. Est-ce que je peux dormir ici ?"~ */ GOTO 41
  IF ~~ THEN REPLY #23205 /* ~"Pas maintenant. J'ai une question à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23206 /* ~"Je vois. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 11.0 11.1 17.3 87.2 88.3
  SAY #23207 /* ~Mebbeth acquiesce. "Très bien, dans ce cas." Elle saisit l'une des herbes séchées accrochées à sa ceinture, coupe la tige, et l'écrase dans ses mains calleuses. Des volutes de poussières s'échappent de ses mains. Elle murmure ensuite pour elle-même, puis souffle la poussière dans les airs…~ */
  IF ~  NumInParty(1)
~ THEN REPLY #23208 /* ~Respire profondément.~ */ DO ~FullHeal(Protagonist)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth m'a proposé de soigner mes blessures gratuitement… Il faudra que je m'en souvienne la prochaine fois que j'aurai besoin de me faire soigner.~ */ GOTO 13
  IF ~  NumInPartyGT(1)
~ THEN REPLY #23209 /* ~Respire profondément.~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ JOURNAL #22704 /* ~Mebbeth m'a proposé de soigner mes blessures gratuitement… Il faudra que je m'en souvienne la prochaine fois que j'aurai besoin de me faire soigner.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #23210 /* ~Le pollen gris tourbillonne dans la pièce, et tu respires profondément… et en un instant après, tu te sens étrangement reposé.~ */
  IF ~~ THEN REPLY #23211 /* ~"Merci Mebbeth. Avant de partir, j'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23212 /* ~"Merci, Mebbeth… Je me sens bien de nouveau. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #23213 /* ~Le pollen gris tourbillonne dans la pièce, te couvrant ainsi que tes compagnons. Tu respires profondément… et un court instant après, tu te sens étrangement reposé.~ */
  IF ~~ THEN REPLY #23214 /* ~"Merci Mebbeth. Avant de partir, j'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23215 /* ~"Merci, Mebbeth… Je me sens bien de nouveau. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #23216 /* ~"Besoin d'autre chose, mon enfant ?"~ */
  IF ~~ THEN REPLY #23217 /* ~"En fait, oui… est-ce que je peux encore regarder ce que t'as ?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23218 /* ~"Non, mais j'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23219 /* ~"Pas aujourd'hui, Mebbeth… merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.4 88.4
  SAY #23220 /* ~"Je vends des chiffons, des herbes, des remèdes, des charmes, des mélanges, des cataplasmes et tout le reste…" Elle hausse les épaules. "Et aussi, si tu trouves quelque chose que tu n'connais pas, amène-le à Mebbeth… je promets rien, mon enfant, mais p'têt que j'peux découvrir ce que c'est."~ */
  IF ~~ THEN REPLY #23221 /* ~"Je vois. Est-ce que je peux voir ce que t'as à vendre ?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23222 /* ~"Très bien. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23223 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3 11.4 13.0 14.0 15.1 16.1 18.1 19.1 20.1 21.0 22.0 23.1 24.1 25.1 26.1 27.1 29.0 30.1 31.1 32.1 33.1 34.0 36.0 37.0 39.0 45.0 46.0 47.1 48.1 49.5 53.3 54.0 57.0 58.2 60.1 61.1 62.0 72.0 79.0 80.0 87.1 88.2
  SAY #23224 /* ~"Vas-y, demande."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #23225 /* ~"Tu connais un certain Pharod ?"~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #23226 /* ~"Il me manque un journal. Sais-tu où je pourrais en trouver un ?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #23227 /* ~"As-tu entendu parler de quelqu'un du nom de 'Ravel', Mebbeth ?"~ */ GOTO 23
  IF ~~ THEN REPLY #23228 /* ~"Je pourrais avoir besoin de certains soins…"~ */ GOTO 12
  IF ~~ THEN REPLY #23229 /* ~"Que vends-tu ici, Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #23230 /* ~"Est-ce que je pourrais t'acheter des remèdes ?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23231 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 41
  IF ~  Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23232 /* ~"J'ai trouvé le marchand de fruits sur le marché."~ */ GOTO 58
  IF ~  Global("Mebbeth_Quest","GLOBAL",3)
~ THEN REPLY #23233 /* ~"Je suis revenu avec ces herbes que tu voulais… maintenant tu pourrais peut-être retirer ce maudit morceau de ronce de mon poignet."~ */ GOTO 63
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23234 /* ~"Je t'ai apporté ta lessive… je pense que Giscorl y est allé un peu lourdement sur le rituel du nettoyage."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23235 /* ~"J'ai trouvé Kossah-Jai. Elle n'a pas d'encre, mais une autre poissonnière en a… le truc c'est qu'il me faut quelque chose pour la mettre dedans."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23236 /* ~"Voici l'encre que tu voulais."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
AddexperienceParty(1000)
DestroyPartyItem("TankardF",TRUE)
~ GOTO 81
  IF ~  Global("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
~ THEN REPLY #23237 /* ~"Es-tu une sorcière, Mebbeth ?"~ */ GOTO 47
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
Global("Mebbeth_Art_Answer","GLOBAL",0)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23238 /* ~"Je veux apprendre l'Art, Mebbeth."~ */ GOTO 49
  IF ~  GlobalGT("Mebbeth_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #23239 /* ~"J'aimerais changer de profession et me concentrer sur mes études de magie, Mebbeth."~ */ GOTO 35
  IF ~~ THEN REPLY #23242 /* ~"Pas de questions aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #23243 /* ~"Pharod ?! Ce - ce - pouah !" Mebbeth crache une fois… deux fois… trois fois, puis trace un demi-cercle sur son cœur. "Cette fiente de mouette ! Qu'est-ce que tu trafiques avec ceux d'son espèce ?"~ */
  IF ~~ THEN REPLY #23244 /* ~"Il faut que je le trouve. Sais-tu où il est ?"~ */ GOTO 19
  IF ~~ THEN REPLY #23245 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23246 /* ~"Rien, peu importe. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #23247 /* ~"Il est pas *dans* le Square du Chiffonnier, ça j'peux te le dire… il faut que tu trouves un chemin, *sous* le square, pour arriver à la guitoune de cette fiente d'araignée." Elle crache à nouveau. "Rien que d'parler d'lui laisse un goût infect, ouais."~ */
  IF ~~ THEN REPLY #23248 /* ~"Il est sous le Square ?"~ */ GOTO 20
  IF ~~ THEN REPLY #23249 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23250 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #23251 /* ~Elle enfonce un doigt dans le sol. "Ouais, il s'est enterré sous ce tas d'ordures, avec ses gars, et il sera pas facile de le déterrer de son nid." Elle secoue la tête. "Tu ferais mieux d'abandonner, mon enfant."~ */
  IF ~~ THEN REPLY #23252 /* ~"Il faut que je le trouve. Comment on y va ?"~ */ JOURNAL #22705 /* ~Mebbeth m'a parlé d'une porte qui menait à la guitoune de Pharod, quelque part dans le Square. Elle m'a conseillé de demander à l'un des Récupérateurs comment la trouver.~ */ GOTO 21
  IF ~~ THEN REPLY #23253 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23254 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23256 /* ~Mebbeth fronce les sourcils, puis soupire. "D'après ce qu'on dit, Pharod a une porte qui mène à son terrier quelque part ici, dans le Square… y'a qu'à la trouver. Tu d'vrais demander aux autres, ceux qui voyagent plus que la vieille Mebbeth."~ */
  IF ~~ THEN REPLY #23257 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23258 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1
  SAY #23259 /* ~Mebbeth réfléchit. "J'en ai pas vu. Si c'est dans le Square - ce dont je doute, car les gens ne font pas beaucoup de trafic de livres et de choses de ce genre - l'a probablement été vendu ou volé. C'était important pour toi ? Une chose magique, toute brillante et étincelante de magie, hein ? Si c'est le cas, tu l'reverras sans doute jamais."~ */
  IF ~~ THEN REPLY #23260 /* ~"Peut-être pas. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23261 /* ~"Je commence à croire que je ne le reverrai jamais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #23262 /* ~"Pouah !" Mebbeth siffle et trace un demi-cercle sur son cœur. "Stupide insensé ! Prononcer un nom pareil en *ma* présence !" Elle secoue le doigt sous ton nez. "Mal, mal, dire une chose pareille appelle le mal à la porte."~ */
  IF ~~ THEN REPLY #23263 /* ~"Que sais-tu sur elle ?"~ */ GOTO 24
  IF ~~ THEN REPLY #23264 /* ~"Tant pis, alors. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23265 /* ~"Désolé, je ne voulais pas t'offusquer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23266 /* ~"Ravel ? Pouah ! Des mythes et des histoires à faire peur aux enfants." Elle baisse la voix, comme pour t'avertir. "Écoute, mon enfant : y'avait PAS de Ravel là-bas, pas DU TOUT… et même s'il y en *avait*, t'as pas besoin d'aller gratter contre cette cage."~ */
  IF ~~ THEN REPLY #23267 /* ~"Je dois savoir tout ce que tu sais sur elle, Mebbeth. C'est important."~ */ GOTO 25
  IF ~~ THEN REPLY #23268 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23269 /* ~"Désolé, je ne voulais pas t'offusquer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23270 /* ~Mebbeth fronce les sourcils… Elle semble vouloir éviter ton regard. "Mauvaises choses… mauvaises choses dans un nom…" Elle se retourne vers toi. "Le cœur de sorcière tordu de Ravel est plein de mal et d'abomination, mélangés et entrecroisés comme des serpents. Y'a rien d'autre à dire !"~ */
  IF ~~ THEN REPLY #23271 /* ~"Sais-tu où elle se trouve, Mebbeth ? Il faut que je la trouve."~ */ GOTO 26
  IF ~~ THEN REPLY #23272 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23273 /* ~"Désolé, je ne voulais pas t'offusquer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23274 /* ~"Où est-ce qu'on trouve un conte de fée ?! Mebbeth ne sait pas !" Elle chuinte. "Et *même si* je savais le savoir, est-ce que j'te dirais ? Nan, t'essaierais d'la déterrer, et j'veux pas avoir ça sur la conscience, j'veux pas…" Elle semble brisée. "Mais, mon enfant,… si t'as besoin de savoir, si t'es certain qu'c'est prêt à te dévorer de l'intérieur, alors… ouais, j'te dirai."~ */
  IF ~~ THEN REPLY #23275 /* ~"S'il te plaît… Mebbeth, je dois la trouver."~ */ JOURNAL #23278 /* ~Mebbeth m'a conseillé de demander à l'un des sages de la Salle des Fêtes du Quartier des Gratte-Papier comment trouver l'entrée du dédale de Ravel.~ */ GOTO 27
  IF ~~ THEN REPLY #23276 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23277 /* ~"J'ai pas absolument besoin de savoir ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #23279 /* ~"Ravel…" Mebbeth soupire. "Ravel, la cruelle Ravel, est sous la garde de la Dame, ouais, dans une prison, un dédale… on dit qu'il y a longtemps qu'on l'a placée là, très longtemps… mais, la trouver ? Mebbeth ne sait pas comment." Elle soupire. "Demande à la Salle des Fêtes, dans le Quartier des Gratte-Papier. Une des barbes grises aura peut-être une idée…"~ */
  IF ~~ THEN REPLY #23280 /* ~"Sais-tu autre chose sur Ravel…autre chose à me dire avant que je parte à sa recherche ?"~ */ GOTO 28
  IF ~~ THEN REPLY #23281 /* ~"Merci… Je vais voir ce que je peux trouver. J'ai d'autres questions d'abord…"~ */ GOTO 17
  IF ~~ THEN REPLY #23282 /* ~"Je vais parler à l'un d'entre eux dans ce cas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #23283 /* ~"Enfant…" Mebbeth parle, mais sa voix semble cassée et épuisée. "…si tu cherches le mal dans les plans… pas besoin d'aller loin." Elle tousse. "Les sorcières connaissent les sorcières, le pouvoir connaît le pouvoir et pourtant *personne* ne sait ce qui se passe chez Ravel. Apprends bien, et garde les yeux ouverts lorsque ta vue semble te jouer des tours. Aie confiance en toi, et ne lui fais surtout pas confiance, compris ?"~ */
  IF ~~ THEN REPLY #23285 /* ~"Oui. Merci, Mebbeth."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #23286 /* ~Mebbeth soupire. "Je n'souhaite de mal à personne, excepté celle-là. J'suis contente qu'elle soit plus là, ouais, et elle ne mérite que la Cage. Encore une fois, mon enfant… laisse le passé pourrir là où il est. Laisse-le là où il est."~ */
  IF ~~ THEN REPLY #23287 /* ~"Je n'oublierai pas ton avertissement. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23289 /* ~"Désolé, Mebbeth. Il faut que je trouve Ravel. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23290 /* ~"P'têt ben, si je commençais une histoire…" Mebbeth parle lentement, choisissant soigneusement ses mots. "Peut-être que l'histoire commencerait avec une *sœur* grise, qui vivait dans les Plans, sur les champs de la Gaste Grise. La Gaste était un endroit si calme, si tranquille, et c'est le silence qui a semé la graine de l'insatisfaction dans le cœur de Ravel."~ */
  IF ~~ THEN REPLY #23291 /* ~"Oui… ?"~ */ GOTO 31
  IF ~~ THEN REPLY #23292 /* ~"Je pense que j'en ai assez entendu. J'ai d'autres questions .."~ */ GOTO 17
  IF ~~ THEN REPLY #23293 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #23294 /* ~"Toujours voulu connaître le *pourquoi*, le *comment* et le *et si* des choses, toujours besoin de faire un pas de plus sur les sentiers qu'on ne doit pas suivre." Mebbeth soupire. "Et peut-être…"~ */
  IF ~~ THEN REPLY #23295 /* ~"Et peut-être…?"~ */ GOTO 32
  IF ~~ THEN REPLY #23296 /* ~"Je pense que j'en ai assez entendu. J'ai d'autres questions .."~ */ GOTO 17
  IF ~~ THEN REPLY #23297 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #23298 /* ~"Et peut-être que Ravel, splendide par son pouvoir, sa cruauté et ses stratagèmes, peut-être que Ravel a voyagé jusqu'à cette cité, cette Cage, qui brûle de trop de pensées et réflexions, car c'était là que les gens recherchaient les choses, juste pour *savoir*."~ */
  IF ~~ THEN REPLY #23299 /* ~Écoute.~ */ GOTO 33
  IF ~~ THEN REPLY #23300 /* ~"Je pense que j'en ai assez entendu. J'ai d'autres questions .."~ */ GOTO 17
  IF ~~ THEN REPLY #23301 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #23302 /* ~"Mais *savoir* n'était pas assez pour l'un des pouvoirs de Ravel, et tant… tant furent blessés, et cette Cage, cette cité, retentissait du bruit de ses désirs et de ses besoins. Ces maux…" Elle trace un demi-cercle sur son cœur. "Tels étaient les maux de Ravel… y penser me coupe la parole. Elle a été mise à l'écart, dans un dédale…"~ */
  IF ~~ THEN REPLY #23303 /* ~Écoute.~ */ GOTO 34
  IF ~~ THEN REPLY #23304 /* ~"Je pense que j'en ai assez entendu. J'ai d'autres questions .."~ */ GOTO 17
  IF ~~ THEN REPLY #23305 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #23306 /* ~"Et peut-être que ce dédale était aussi trop tranquille, comme sa cabane sur les Gastes Grises, et peut-être que le silence et la tranquillité ont pu s'immiscer dans l'esprit de Ravel, puisqu'ils n'étaient plus indésirables, et que la cruelle Ravel, et son esprit tortueux, étaient à nouveau satisfaits." Mebbeth soupire. "Et peut-être que c'est comme cela que l'histoire de Ravel se termine. Qui sait ?"~ */
  IF ~~ THEN REPLY #23307 /* ~"En effet. J'ai d'autres questions…"~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth m'a raconté l'histoire de Ravel… elle m'a dit que c'était une guenaude noire sur la Gaste Grise ; mécontente de la monotonie du lieu, Ravel décida de plier sa guitoune et de se rendre à Sigil, en quête du savoir. Malheureusement, elle se servit de ce qu'elle apprit contre la cité et ses habitants. Elle commit des actes si démoniaques que Mebbeth était incapable de les décrire. Ravel fut punie par la Dame et condamnée au dédale, où le silence et le calme apaiseraient son cœur avide.~ */ GOTO 17
  IF ~~ THEN REPLY #23308 /* ~"Merci pour le récit, Mebbeth. Je dois m'en aller. Au revoir."~ */ DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)
~ JOURNAL #22706 /* ~Mebbeth m'a raconté l'histoire de Ravel… elle m'a dit que c'était une guenaude noire sur la Gaste Grise ; mécontente de la monotonie du lieu, Ravel décida de plier sa guitoune et de se rendre à Sigil, en quête du savoir. Malheureusement, elle se servit de ce qu'elle apprit contre la cité et ses habitants. Elle commit des actes si démoniaques que Mebbeth était incapable de les décrire. Ravel fut punie par la Dame et condamnée au dédale, où le silence et le calme apaiseraient son cœur avide.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.14 49.0
  SAY #23311 /* ~"Ah, on revient au bercail, c'est ça ?" Mebbeth rit sèchement. "Très bien, voyons ce dont tu te souviens et ce que tu as oublié…"~ */
  IF ~~ THEN REPLY #23312 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ JOURNAL #23314 /* ~Mebbeth m'a enseigné l'Art ; je me concentre donc maintenant sur l'apprentissage de la magie… Il faut que je trouve un maître voleur ou un maître de combat si je veux me recycler dans une autre profession.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #23316 /* ~Mebbeth fronce les sourcils, puis acquiesce. "Tu as assez bien acquis les enseignements de l'Art. Tu te concentres maintenant sur l'art de la magie, ouais, - plus de bagarres et de vols, sauf si tu dois parler à quelqu'un qui peut t'enseigner une telle chose."~ */
  IF ~~ THEN REPLY #23317 /* ~"Merci, Mebbeth. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23318 /* ~"Je n'oublierai pas. Au revoir, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23319 /* ~Mebbeth secoue la tête… avec tristesse, semble-t-il. "Je t'ai appris tout ce que je peux enseigner, mon enfant… le peu qu'il me reste ne serait pas d'un grand intérêt pour quelqu'un comme toi. Je suis fière de toi, ouais. Tu as tout ce qu'il faut pour faire un grand sorcier."~ */
  IF ~~ THEN REPLY #23320 /* ~"Merci, Mebbeth. J'ai d'autres questions à te poser…"~ */ JOURNAL #23322 /* ~J'ai l'impression que Mebbeth ne pourra rien m'apprendre de plus sur l'Art. Il va falloir que je trouve d'autres maîtres qui ont des connaissances magiques plus vastes.~ */ GOTO 17
  IF ~~ THEN REPLY #23321 /* ~"J'ai eu un bon maître. Au revoir Mebbeth."~ */ JOURNAL #23322 /* ~J'ai l'impression que Mebbeth ne pourra rien m'apprendre de plus sur l'Art. Il va falloir que je trouve d'autres maîtres qui ont des connaissances magiques plus vastes.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23323 /* ~Mebbeth te scrute du regard. "Tu veux voir ce que j'ai d'autre à t'apprendre ? Voyons si tu as retenu ce que je t'ai déjà appris… et voyons d'abord s'il reste de la place dans ta caboche, mon enfant…"~ */
  IF ~~ THEN REPLY #23324 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #23326 /* ~Mebbeth m'a dit qu'il fallait que j'acquière un peu plus d'expérience avant qu'elle puisse m'enseigner quoi que ce soit d'autre sur l'Art.~ */ GOTO 39
  IF ~~ THEN REPLY #23325 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #23327 /* ~Mebbeth secoue la tête. "T'as besoin de plus d'expérience sur le tas, mon enfant. Reviens lorsque tu auras en toi un peu plus d'expérience du monde, et on reparlera de t'apprendre quelque chose de nouveau."~ */
  IF ~~ THEN REPLY #23328 /* ~"Bon, d'accord. J'ai d'autres questions à te poser avant de partir…"~ */ GOTO 17
  IF ~~ THEN REPLY #23330 /* ~"Je reviendrai quand j'aurai plus d'expérience. Au revoir, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #23332 /* ~Mebbeth acquiesce. "Ouais, t'as grandi, t'as appris, on dirait. J'peux t'apprendre un peu plus, ouais… une autre de mes recettes…"~ */
  IF ~~ THEN REPLY #23333 /* ~Sort 1 : Intimider~ */ EXIT
  IF ~~ THEN REPLY #23334 /* ~Sort 2 : Amis~ */ EXIT
  IF ~~ THEN REPLY #23336 /* ~Sort 3 : Apaiser~ */ EXIT
  IF ~~ THEN REPLY #23338 /* ~Sort 4 : Saisie~ */ EXIT
  IF ~~ THEN REPLY #23339 /* ~Sort 5 : Pont Sanglant~ */ EXIT
  IF ~~ THEN REPLY #23341 /* ~Sort 6 : Irritation~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.6 11.3 17.6 87.4 88.6
  SAY #23343 /* ~Elle acquiesce. "Bien sûr, mon enfant. J'ai un tas de couvertures dans le coin, qui pourront servir…"~ */
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",0)
~ THEN REPLY #23346 /* ~"Ce serait bien. Merci."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",0)
Global("Player_Dream","GLOBAL",1)
~ THEN REPLY #23356 /* ~"Ce serait bien. Merci."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Mebbeth_Dreams","GLOBAL",1)
~ THEN REPLY #23358 /* ~"Ce serait bien. Merci."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23360 /* ~Tu te réveilles, reposé. Mebbeth bricole autour de la cabane, mais elle se retourne lorsqu'elle t'entend remuer. "On est réveillé ? T'as dormi comme un mort…" Elle sourit. "T'as aucun rêve qui t'traîne dans la tête ?"~ */
  IF ~~ THEN REPLY #23361 /* ~"Euh… tu sais, je n'ai fait aucun rêve."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #23362 /* ~Mebbeth hausse les épaules. "Rien d'étrange à ça. La plupart des rêves sont timides ; ils s'envolent quand les paupières du dormeur s'ouvrent."~ */
  IF ~~ THEN REPLY #23363 /* ~"Non mais j'ai pas l'impression que je les ai oubliés… j'crois pas que j'ai rêvé à *quelque chose*. C'est… bizarre."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #23364 /* ~Mebbeth rumine là-dessus, puis hausse les épaules. "Les rêves peuvent enfanter de grands hommes, mais ils en ont aussi détruits plus d'un. Peut être qu'il vaut mieux que tu n'les laisses pas te diriger."~ */
  IF ~~ THEN REPLY #23365 /* ~"Peut-être… mais j'pense pas."~ */ JOURNAL #23367 /* ~Alors que j'étais dans la cabane de Mebbeth, j'ai soudain réalisé que je ne rêvais pas. Ce n'est pas moi qui oublie mes rêves… je crois que ça n'a *rien* d'un rêve. Ce n'est pas… normal. Il faudra que je me penche sur le problème.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #23369 /* ~Mebbeth renifle. "Ben, rêves ou pas, j'peux pas changer la nature d'un homme. T'as assez dormi ?"~ */
  IF ~~ THEN REPLY #23413 /* ~"Oui, merci… j'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23414 /* ~"Oui, je pense. Je ferais mieux de me mettre en route. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #23415 /* ~Tu te réveilles, reposé. Mebbeth bricole autour de la cabane, mais elle se retourne lorsqu'elle t'entend remuer. "On est réveillé ? T'as dormi comme un mort…"~ */
  IF ~~ THEN REPLY #23416 /* ~"Oui, merci… J'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23417 /* ~"Oui, je pense. Je ferais mieux de me mettre en route. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 17.12
  SAY #23418 /* ~Mebbeth te scrute du regard. "J'ai pas dit c'que j'étais ou j'étais pas, mais qu'est-ce que tu veux essayer d'extirper d'une vieille femme, aboyant et reniflant à la recherche d'un ragot bien juteux ?"~ */
  IF ~~ THEN REPLY #23419 /* ~"Je veux apprendre la magie. Peux-tu me l'enseigner ?"~ */ GOTO 48
  IF ~~ THEN REPLY #23420 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23421 /* ~"Tant pis. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #23422 /* ~Mebbeth rit. "Pouah ! J'suis pas un professeur, une maîtresse d'école prête à leur enseigner dans la Salle des Fêtes ! Y'en a d'autres ailleurs qu'hésiteraient pas… tu perdrais ton temps avec la vieille Mebbeth, pas de doute."~ */
  IF ~~ THEN REPLY #23423 /* ~"J'suis pas d'accord. Je pense que t'as un tas de choses à enseigner."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #23424 /* ~"Tant pis alors. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23425 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 17.13 48.0
  SAY #23426 /* ~Mebbeth te regarde intensément. "Oh, ouais ? *Pourquoi* tu veux apprendre ces choses ?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #62022 /* ~"J'ai été mage, mais je me suis détourné de la voie de l'Art. Et j'aimerais la fouler de nouveau."~ */ GOTO 35
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23427 /* ~Vérité : "Parce que je veux juste savoir."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23428 /* ~Vérité : "Parce que je pourrais en avoir besoin pour résoudre le mystère de mon identité."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23429 /* ~Vérité : "Parce que j'ai besoin du pouvoir."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #23431 /* ~"Mes raisons ne regardent que moi."~ */ GOTO 53
  IF ~~ THEN REPLY #23432 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23433 /* ~"Peu importe… il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.1 53.0
  SAY #23430 /* ~Mebbeth pouffe. "C'est pas un bouquin de grammaire pour enfants, pas un livre de loi… c'est l'*Art*, mon enfant. J't'apprendrai, mais faut qu'tu gardes la tête froide."~ */
  IF ~~ THEN REPLY #23435 /* ~"Je comprends. Tu m'apprendras ?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 51 // from: 49.2 53.1
  SAY #23438 /* ~Après un moment, Mebbeth acquiesce. "L'Art peut t'aider, peut-être pas, et faut pas compter dessus pour résoudre tous tes problèmes." Elle soupire. "Enfant, ça va juste ajouter une brique à ta pile de questions…"~ */
  IF ~~ THEN REPLY #23439 /* ~"Je comprends. Tu m'apprendras ?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 49.3 53.2
  SAY #23442 /* ~"Pouah ! Un faux besoin, car l'échelle de l'Art te rappellera toujours qu'il y a un barreau au-dessus, et qu'il y a aussi des choses et des gens dessus. Y'a toujours quelqu'un de meilleur, et ils *t'apprendront*, si t'es trop avide."~ */
  IF ~~ THEN REPLY #23443 /* ~"Je comprends. Tu m'apprendras quand même ?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 49.4
  SAY #23446 /* ~"Ah bon ? Ben, si tes raisons r'gardent que toi, mes *connaissances* r'gardent que moi. J'apprendrai pas à celui qui se cache de son maître… seul le mal vient d'une telle voie."~ */
  IF ~~ THEN REPLY #23447 /* ~Vérité : "Très bien, je désire apprendre l'Art rien que pour le plaisir de le connaître."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #23448 /* ~Vérité : "Je veux apprendre l'Art parce que je pourrais en avoir besoin pour résoudre le mystère de mon identité."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",2)
~ GOTO 51
  IF ~~ THEN REPLY #23449 /* ~Vérité : "Je veux apprendre l'Art parce que j'ai besoin du pouvoir."~ */ DO ~SetGlobal("Mebbeth_Art_Answer","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_1","GLOBALGood",-1)
~ GOTO 52
  IF ~~ THEN REPLY #23450 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23451 /* ~"Alors, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 59.0
  SAY #23452 /* ~"Ouais, bien…" Elle renifle. "si tu veux toujours apprendre, il faut que tu me rendes un autre service. J'ai oublié de te dire de ramener quelque chose la dernière fois, et ça t'renverra sur la place du marché… cherche le marchand d'habits, Giscorl. Il a des chiffons à moi qu'il doit laver, et il y a longtemps que je le lui ai demandé."~ */
  IF ~~ THEN REPLY #23453 /* ~"Je… vois. Écoute, j'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23454 /* ~"Tu aurais pu *parler de cela* avant que je parte… très bien, je reviendrai."~ */ EXIT
  IF ~~ THEN REPLY #23455 /* ~"Je vais le chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 51.0 52.0
  SAY #23456 /* ~"Pouah !" Mebbeth secoue la tête. "On ferait mieux d'écrire des chansons que de faire de la magie. Les chansons sont plus belles. La magie a été rendue anonyme, commune, souillée par les foules qui s'en sont servies… hmpppph." Elle te regarde en biais. "Je t'apprendrai… mais il faut d'abord que tu fasses des choses pour *moi*, tu m'entends ?"~ */
  IF ~~ THEN REPLY #23457 /* ~"Comme quoi ?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #23458 /* ~"Mes jambes ne sont pas bonnes pour vagabonder sur Sigil, et j'voudrais qu'tu m'fasses des *courses*. J'veux que tu me ramènes des herbes du marché… c'est tout droit - à l'est et au sud d'ici - dans le marché de la Ruche. En voici un peu…" Elle sort une graine noire de son manteau et te la tend.~ */
  IF ~~ THEN REPLY #23459 /* ~Examine la graine.~ */ DO ~GiveItemCreate("BSeed1",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",1)
~ JOURNAL #22700 /* ~Mebbeth m'a demandé d'apporter une étrange graine noire à l'un des marchands de fruits, sur le marché de la Ruche, et de lui rapporter quelques herbes. Elle m'a expliqué que le marché était à quelques mètres au sud-est de sa cabane.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #23460 /* ~Tu prends la graine noire dans ta main… et tu ressens alors une légère morsure, puis une petite goutte de sang s'écoule de ton pouce… Il y a de minuscules épines sur la graine, comme des dents. Mebbeth grogne. "Attention avec ça… montre-la à un des marchands de fruits du marché, et il saura quelle herbe tu veux."~ */
  IF ~~ THEN REPLY #23461 /* ~"Très bien. Mais j'ai d'autres questions avant de partir …"~ */ GOTO 17
  IF ~~ THEN REPLY #23462 /* ~"Très bien. Je reviendrai lorsque j'aurai les herbes."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 2.0 17.7
  SAY #23463 /* ~"Ouais ? Tu as les herbes que je voulais ?"~ */
  IF ~  !Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23464 /* ~"Pas encore, Mebbeth. Il a dit qu'il ne pouvait pas m'aider … qu'il fallait que je trouve un jardinier."~ */ GOTO 60
  IF ~  Dead("MFTree")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #23465 /* ~"Pas encore, Mebbeth. Il a dit qu'il ne pouvait pas m'aider … qu'il fallait que je trouve un jardinier."~ */ GOTO 59
  IF ~~ THEN REPLY #23466 /* ~"Non, en fait j'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23467 /* ~"Pas encore. Je cherche toujours. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #23468 /* ~Mebbeth soupire. "Rien à faire, je suppose." Elle grogne. "C'est pas grave, mon enfant, c'est pas grave. J'vais voir si j'peux faire pousser une de mes vieilles graines, mais ça va prendre du temps. J'crois qu'il m'en reste encore une ou deux…"~ */
  IF ~~ THEN REPLY #23469 /* ~"Alors très bien…"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
SetGlobal("Mebbeth_Fail","GLOBAL",1)
~ JOURNAL #23471 /* ~Mebbeth veut que je lui rapporte sa lessive de chez le vendeur de vêtements du marché, un type dénommé Giscorl. J'aurais préféré qu'elle y ait pensé avant que j'aille chercher ses herbes…~ */ GOTO 54
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #23472 /* ~Mebbeth grogne. "Fainéant… dans l'passé, les gens donnaient des ingrédients, pas des excuses…"~ */
  IF ~~ THEN REPLY #23473 /* ~"Qu'est-ce qu'il faudrait faire alors ?"~ */ GOTO 61
  IF ~~ THEN REPLY #23474 /* ~"Peut-être. De toute façon, j'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23475 /* ~"Bon, je vais chercher un peu plus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #23476 /* ~Mebbeth soupire. "Chercher un jardinier, j'imagine." Elle mâchouille sa lèvre.~ */
  IF ~~ THEN REPLY #23477 /* ~"Où ?"~ */ GOTO 62
  IF ~~ THEN REPLY #23478 /* ~"Très bien. Écoute, j'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #23479 /* ~"Je vais chercher un peu plus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #23480 /* ~Mebbeth fronce les sourcils. "Y'a pas mal de cycles que j'ai pas quitté cette cabane, mon enfant. Je ne sais pas où trouver un jardinier… mais si tu veux apprendre l'Art, il faut que tu apprennes à insister, alors *cherche*. Il doit bien y en avoir un dans la Ruche."~ */
  IF ~~ THEN REPLY #23481 /* ~"Très bien… mais avant de partir, j'ai des questions à te poser."~ */ GOTO 17
  IF ~  Global("Mourns","GLOBAL",0)
~ THEN REPLY #23482 /* ~"Je vais aller en chercher un."~ */ EXIT
  IF ~  GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #23483 /* ~"Deuils-pour-Arbres peut m'aider peut-être… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 2.1 17.8
  SAY #23484 /* ~"Ah bon ?" Mebbeth jette un regard aux épines autour de ton poignet. "Alors *pense* que ça n'est plus là."~ */
  IF ~~ THEN REPLY #23485 /* ~Fais-le.~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",4)
GiveExperience(Protagonist,500)
~ JOURNAL #23487 /* ~Mebbeth veut que je lui rapporte sa lessive de chez le vendeur de vêtements du marché, un type dénommé Giscorl. J'aurais préféré qu'elle y ait pensé avant que j'aille chercher ses herbes…~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #23486 /* ~Craquant et cassant, les branches épineuses se démêlent de ton poignet et forment une boule de branches et brindilles, ressemblant à un nid de serpents noirs morts. Mebbeth renifle. "Pense à ça comme à un cadre, ou quelque chose dans ce genre, quelque chose de plus structuré et moins anguleux."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23488 /* ~Essaie d'imaginer la boule épineuse en forme de cadre.~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23489 /* ~Imagine la boule épineuse en forme de cadre.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #23490 /* ~Concentre-toi sur la boule épineuse puis imagine-la en forme de cadre.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #23503 /* ~Imagine la boule épineuse en forme de cadre.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 69
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #23505 /* ~Concentre-toi sur la boule épineuse puis imagine-la en forme de cadre.~ */ DO ~GiveExperience(Protagonist,750)
~ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #23535 /* ~Tu te concentres un moment et essaies de te représenter un cadre… un craquement se fait entendre, provenant de la boule, et tu ouvres les yeux : elle s'est transformée en un cube bizarre, toutes ses épines tournées vers l'extérieur, qui déchirerait les mains si on essayait de le ramasser.~ */
  IF ~~ THEN REPLY #23536 /* ~"Euh…"~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #23538 /* ~Mebbeth grogne. "Pourquoi t'essaierais pas encore une fois."~ */
  IF ~~ THEN REPLY #23540 /* ~Respire, concentre-toi et essaie encore.~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #23541 /* ~Les branches de la boule craquent, les brindilles se tordent et se vrillent jusqu'à ce que les branches forment un cadre grossier, de deux empans de côté.~ */
  IF ~~ THEN REPLY #23542 /* ~"Alors ?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #23544 /* ~Mebbeth observe le cadre d'un œil critique pendant un instant, puis secoue la tête. "Assez carré." Elle ramasse le cadre et l'examine. "Ça peut aller… ca peut aller."~ */
  IF ~~ THEN REPLY #23546 /* ~"Et c'est pour ça que tu le voulais ?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 64.1 64.3
  SAY #23548 /* ~Les branches de la boule craquent, les brindilles se tordent et se vrillent jusqu'à ce que les branches forment un cadre grossier, de deux empans de côté. Presque inconsciemment, tu t'imagines en train de plier les épines au dos du cadre pour pouvoir l'accrocher facilement à un mur.~ */
  IF ~~ THEN REPLY #23549 /* ~"Alors ?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 64.2 64.4
  SAY #23550 /* ~Les branches de la boule craquent, les brindilles se tordent et se vrillent jusqu'à ce que les branches forment un cadre grossier, de deux empans de côté. Presque inconsciemment, tu t'imagines en train de plier les épines au dos du cadre pour pouvoir l'accrocher facilement à un mur… et, après coup, tu déplaces les épines qui restent à l'intérieur du cadre, pour qu'il puisse être ramassé par les côtés.~ */
  IF ~~ THEN REPLY #23551 /* ~"Alors ?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 69.0 70.0
  SAY #23552 /* ~Mebbeth observe le cadre d'un œil critique pendant un instant, puis se met à glousser. "Ha ! Assez carré ! Bon travail, mon enfant, bon travail." Elle ramasse le cadre et l'examine. "Ça suffira amplement."~ */
  IF ~~ THEN REPLY #23553 /* ~"Et c'est pour ça que tu le voulais ?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 68.0 71.0
  SAY #23554 /* ~"Ouais, bon, ça suffit…" Elle renifle. "Mais j'ai oublié de te dire de ramener quelque chose quand tu es parti la dernière fois, et ça t'renverra au Square des marchands… cherche le marchand d'habits, Giscorl. Il a des chiffons qui m'appartiennent et qu'il est censé laver, et il y a longtemps que je le lui ai demandé."~ */
  IF ~~ THEN REPLY #23556 /* ~"Je… vois. Écoute, j'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23558 /* ~"Tu aurais pu *parler de cela* avant que je parte… très bien, je reviendrai."~ */ EXIT
  IF ~~ THEN REPLY #23559 /* ~"Je vais le chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 2.2 17.9 87.0
  SAY #23561 /* ~Elle prend la pile de chiffons amidonnés de tes mains et les examine d'un œil critique. "Au moins ils ne pourront pas se déchirer." Elle soupire. "Ou se plier."~ */
  IF ~~ THEN REPLY #23562 /* ~"Ce marchand d'étoffes, Giscorl, que lui est-il arrivé ? Ses mains étaient toutes balafrées et il avait l'air… lent."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #23563 /* ~Mebbeth continue à retourner le tissu dans ses mains, le tapotant du doigt. "Bien, mon enfant, quelquefois on peut brûler avec l'Art, et d'autres fois l'Art peut nous brûler."~ */
  IF ~~ THEN REPLY #23564 /* ~"C'est ce qui lui est arrivé ?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #23565 /* ~Mebbeth claque la langue. "Peut-être. Il y en a pour qui utiliser l'art est comme respirer. Ils déambulent avec des chapeaux pointus et des pipes puantes… et il y a aussi les apprentis sorciers, les gitans aplanis, les diseuses de bonne aventure, les moitié prophétesses, moitié sages-femmes qui trifouillent avec l'Art… ils ont plus de mal avec ça."~ */
  IF ~~ THEN REPLY #23567 /* ~"Et Giscorl en faisait partie ?"~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #23568 /* ~Mebbeth acquiesce. "Ouais… si on peut dire. Par certains côtés, il est pas différent de c'qu'il était. Fana des habitudes et des rituels, qu'il était." Elle dépose les chiffons durcis ; ils *claquent* en touchant le sol. "Ouais, maintenant, il y a une dernière chose dont j'aurais besoin, mon enfant…"~ */
  IF ~~ THEN REPLY #23569 /* ~"J'espère que j'aurai pas besoin de retourner au marché, Mebbeth."~ */ GOTO 77
  IF ~~ THEN REPLY #23570 /* ~"Bien sûr. De quoi as-tu besoin ?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #23571 /* ~"Oh ? Et si c'était le cas, mon enfant ?!" Mebbeth se dresse et te regarde d'un œil mauvais. Même dressée, le haut de sa tête dépasse à peine tes épaules.~ */
  IF ~~ THEN REPLY #23572 /* ~"Mebbeth, c'est une perte de temps d'aller au marché pour toutes ces choses ; en plus, tu aurais pu prendre le temps de faire une liste au lieu de m'envoyer faire la même course *trois* fois."~ */ GOTO 78
  IF ~~ THEN REPLY #23574 /* ~"Tout ce que je veux dire, c'est que si t'arrives pas à savoir ce qu'il te faut au marché, je sais pas si tu pourras m'enseigner beaucoup de magie."~ */ GOTO 78
  IF ~~ THEN REPLY #23575 /* ~"Peu importe. Qu'est-ce qu'il te faut ?"~ */ GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #23577 /* ~Mebbeth souffle, son visage devenant rouge pivoine. "Ah, oui ? C'est ce que tu penses ? Si c'est le cas, alors fiche le camp ! J'te jure, au moins je ne perdrai pas mon temps à essayer de mettre un peu de lumière dans ta tête de mule !"~ */
  IF ~~ THEN REPLY #23578 /* ~"Non, je ferai les courses… mais dis-moi : as-tu besoin d'autre chose pendant que j'y suis ?"~ */ GOTO 79
  IF ~~ THEN REPLY #23580 /* ~"Très bien, très bien. J'ai parlé à la hâte. Que veux-tu ?"~ */ GOTO 79
  IF ~~ THEN REPLY #23581 /* ~"Très bien, je m'en vais. Au revoir."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.1 77.2 78.0 78.1
  SAY #23583 /* ~"Juste ceci : j'ai besoin d'encre pour écrire des ingrédients dans l'un de mes livres de cuisine. Il faut que tu ailles en chercher chez l'une des marchandes - son nom est Kossah-Jai."~ */
  IF ~~ THEN REPLY #23584 /* ~"Très bien. Je vais voir si je peux la trouver, mais j'ai des questions d'abord…"~ */ JOURNAL #23587 /* ~Mebbeth a besoin que je lui rende un *autre* service… retour au marché pour lui rapporter de l'encre. Elle m'a dit de demander à une femme dénommée Kossah-Jai sur la place du marché. Ça doit être le seul marchand à qui je *n'ai pas* encore parlé.~ */ GOTO 17
  IF ~~ THEN REPLY #23585 /* ~"Très bien… j'y vais. Au revoir."~ */ JOURNAL #23587 /* ~Mebbeth a besoin que je lui rende un *autre* service… retour au marché pour lui rapporter de l'encre. Elle m'a dit de demander à une femme dénommée Kossah-Jai sur la place du marché. Ça doit être le seul marchand à qui je *n'ai pas* encore parlé.~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 17.10 88.0
  SAY #23589 /* ~"Tu peux pas trouver une tasse, un bol ou une chope chez l'un des autres marchands ?"~ */
  IF ~~ THEN REPLY #23590 /* ~"Pourquoi pas. Je demanderai à un des autres marchands, mais j'ai d'autres questions à te poser d'abord…"~ */ GOTO 17
  IF ~~ THEN REPLY #23592 /* ~"Oui, je suppose… bon, j'y vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 17.11 88.1
  SAY #23595 /* ~Mebbeth prend la chope d'encre de tes mains et la renifle. "Première qualité, et bien fraîche…" Elle te fait signe de la tête. "Bien joué, mon enfant. Tout ce que j'ai demandé. Maintenant, j'te demande une dernière fois : après tout ce que tu as vu, veux-tu encore apprendre l'art ?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23596 /* ~"Après tout ce que j'ai vu ? Qu'est-ce que tu veux dire ?"~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #23597 /* ~"Oui."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23598 /* ~"Oui. Après tout, l'objectif principal de tes courses était de tester ma ténacité, n'est-ce pas ?"~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23600 /* ~"Oui. Après tout, l'objectif principal de tes courses était de tester ma ténacité, n'est-ce pas ?"~ */ GOTO 82
  IF ~~ THEN REPLY #23601 /* ~"Non, je crois pas que cet Art me convienne. Au revoir, Mebbeth."~ */ DO ~SetGlobal("Mebbeth_Teach","GLOBAL",4)
SetGlobal("Mebbeth_Quest","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.2 81.3
  SAY #23604 /* ~Mebbeth sourit, puis acquiesce. "Oui… peut-être, mon enfant, peut-être."~ */
  IF ~~ THEN REPLY #23605 /* ~"Et c'est pas tout, tu savais qui je devais voir pour accomplir chaque course, n'est-ce pas ?"~ */ GOTO 83
  IF ~~ THEN REPLY #23607 /* ~"Très bien. Je désire encore apprendre l'Art."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #23609 /* ~Mebbeth acquiesce à nouveau, plus lentement cette fois-ci. "Peut-être, mon enfant, peut-être… si c'est le cas, que t'ont dit tes sens ?"~ */
  IF ~~ THEN REPLY #23611 /* ~"Deuils-pour-Arbres m'a montré que mes croyances affectaient le monde qui m'entoure, Giscorl m'a enseigné que tout rituel est inutile si son but est ignoré, Meir'am m'a appris que malgré tout ce que je pense savoir, j'ai encore beaucoup de choses à apprendre dans les yeux des autres."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #23612 /* ~Mebbeth reste silencieuse pendant un instant, puis marche vers toi et te touche la joue. "Oh, mon enfant…" Elle soupire. "Tu seras un grand maître de la sorcellerie un jour. Tu as la connaissance, et pourtant… tu es venu jusqu'à Mebbeth pour demander de l'aide. Qu'est-ce qu'une sage-femme peut bien t'apprendre ?"~ */
  IF ~~ THEN REPLY #23613 /* ~"Beaucoup, Mebbeth. Je veux apprendre tout ce que tu peux m'enseigner."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 89
END

IF ~~ THEN BEGIN 85 // from: 81.0
  SAY #23614 /* ~"Après tout ce que tu as vu… as-tu appris quelque chose ?"~ */
  IF ~~ THEN REPLY #23615 /* ~"J'ai appris que je dois être prêt à faire beaucoup de trajets si je veux obtenir quelque chose de toi."~ */ GOTO 86
  IF ~~ THEN REPLY #23616 /* ~"Et bien, certaines choses. Rien de bien particulier… sauf que je veux apprendre l'Art."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23619 /* ~Mebbeth rit. "Et il en est ainsi avec l'Art, mon enfant, il en est ainsi. Tu parcourras de nombreux chemins en son nom, certains te paraîtront n'avoir aucun sens. Sachant cela, veux-tu toujours apprendre ?"~ */
  IF ~~ THEN REPLY #23621 /* ~"Oui."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",1)
~ GOTO 89
END

IF WEIGHT #2 /* Triggers after states #: 88 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",3)
GlobalLT("Mebbeth_Quest","GLOBAL",6)
Global("Mebbeth_Fail","GLOBAL",0)
~ THEN BEGIN 87 // from:
  SAY #23623 /* ~Mebbeth semble être entièrement occupée à tordre le cadre de branches noires que tu as fait pour elle avec une grande attention… elle arrange les coins et coupe quelques graines épineuses sur les branches. Elle te remarque soudainement et pose le cadre. "Oui, mon enfant ?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",5)
PartyHasItem("MebRags")
~ THEN REPLY #23624 /* ~"Je t'ai apporté ta lessive… je pense que Giscorl y est allé un peu lourdement sur le rituel du nettoyage."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",6)
DestroyPartyItem("MebRags",TRUE)
AddexperienceParty(500)
~ GOTO 73
  IF ~~ THEN REPLY #23626 /* ~"J'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23627 /* ~"Je pourrais avoir besoin de certains soins…"~ */ GOTO 12
  IF ~~ THEN REPLY #23628 /* ~"Est-ce que je pourrais t'acheter des remèdes ?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23629 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 41
  IF ~~ THEN REPLY #23630 /* ~"Pas de question aujourd'hui. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 123 even though they appear after this state */
~  GlobalGT("Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Quest","GLOBAL",5)
GlobalLT("Mebbeth_Quest","GLOBAL",11)
~ THEN BEGIN 88 // from:
  SAY #23632 /* ~Mebbeth tire sur la masse de chiffons vert-jaune amidonnés que tu as ramenés de chez Giscorl… elle semble vouloir user les coins, comme pour les peler. Elle se tourne en t'entendant approcher. "Oui, mon enfant ?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #23633 /* ~"J'ai trouvé Kossah-Jai. Elle n'a pas d'encre, mais une autre poissonnière en a… le truc c'est qu'il me faut quelque chose pour la mettre dedans."~ */ GOTO 80
  IF ~  Global("Mebbeth_Quest","GLOBAL",10)
PartyHasItem("TankardF")
~ THEN REPLY #23635 /* ~"Voici l'encre que tu voulais."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",11)
DestroyPartyItem("TankardF",TRUE)
AddexperienceParty(1000)
~ GOTO 81
  IF ~~ THEN REPLY #23636 /* ~"J'ai des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #23638 /* ~"Je pourrais avoir besoin de certains soins…"~ */ GOTO 12
  IF ~~ THEN REPLY #23639 /* ~"Que vends-tu ici, Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #23641 /* ~"Est-ce que je pourrais t'acheter des remèdes ?"~ */ DO ~StartStore("Mebbeth",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23642 /* ~"Est-ce que je peux me reposer ici ?"~ */ GOTO 41
  IF ~~ THEN REPLY #23643 /* ~"Rien. Je voulais juste voir ce que tu faisais."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 81.1 82.1 84.0 85.1 86.0
  SAY #23644 /* ~"Alors tu prendras cette voie…" Mebbeth s'arrête. "Bien, autant commencer par le commencement : avoir le coup avec l'Art ne suffit pas. Il faut utiliser certains moyens pour le concentrer : habituellement des 'sorts'. Les sorts sont généralement dans un livre. Alors il est nécessaire pour l'Art que tu aies un livre de sorts. Tu sais lire ?"~ */
  IF ~~ THEN REPLY #23647 /* ~"Je ne sais pas."~ */ GOTO 90
  IF ~~ THEN REPLY #23648 /* ~"Oui."~ */ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #23649 /* ~"Vérifions ça, alors. Est-ce que tu peux lire ça ?" Mebbeth tire une petite carte en lambeaux… elle ressemble à une formule.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #23651 /* ~Examine la recette.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #23652 /* ~Examine la recette.~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #23654 /* ~Les écritures sur la formule semblent nager devant tes yeux, chaque symbole devenant trouble lorsque tu essaies de le lire. Presque instinctivement, tu relaxes tes yeux, en leur permettant de voir la page entière… et les symboles s'assemblent alors : la formule contient des doses, des ingrédients… on dirait une divination mineure.~ */
  IF ~~ THEN REPLY #23674 /* ~"C'est une divination mineure, n'est-ce pas ? On dirait un sort qui permet de voir la 'nature' d'un objet… de voir s'il est magique ou non."~ */ GOTO 96
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #23675 /* ~"Là, est-ce que tu peux lire ça ?" Mebbeth tire une petite carte en lambeaux… elle ressemble à une formule. Bizarrement, les écritures sur la formule semblent nager devant tes yeux, chaque symbole devenant trouble lorsque tu essaies de le lire.~ */
  IF ~~ THEN REPLY #23676 /* ~Étudie les symboles, vois si tu peux les déchiffrer.~ */ GOTO 93
  IF ~~ THEN REPLY #23677 /* ~"Je renonce, Mebbeth… que signifie ce qui est écrit ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #23678 /* ~Tu étudies les symboles avec attention. Mais quoi que tu fasses, les écritures sur la formule semblent devenir floues, se tordant et tournoyant comme un nid de serpents. Tu as mal aux yeux à essayer de suivre les mouvements.~ */
  IF ~~ THEN REPLY #23679 /* ~Continue à étudier les symboles, essaie de deviner leur signification.~ */ GOTO 94
  IF ~~ THEN REPLY #23680 /* ~"Je renonce, Mebbeth… que signifie ce qui est écrit ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.0 94.0
  SAY #23681 /* ~Tu continues à étudier les symboles pendant plusieurs minutes, Mebbeth te regarde silencieusement.~ */
  IF ~~ THEN REPLY #23682 /* ~Continue à étudier les symboles, essaie de deviner leur signification.~ */ GOTO 94
  IF ~~ THEN REPLY #23683 /* ~"Je renonce, Mebbeth… que signifie ce qui est écrit ?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 92.1 93.1 94.1
  SAY #23684 /* ~Alors que tu t'apprêtes à abandonner et tourner les talons, tu relaxes tes yeux, et regardes la page entière… et les symboles s'assemblent alors : la formule contient des doses, des ingrédients… on dirait une divination mineure.~ */
  IF ~~ THEN REPLY #23685 /* ~"C'est une divination mineure, n'est-ce pas ? On dirait un sort qui permet de voir la 'nature' d'un objet… de voir s'il est magique ou non."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 91.0 95.0
  SAY #23686 /* ~Les yeux de Mebbeth s'écarquillent. "Qui es-tu pour vouloir tester ainsi la vieille Mebbeth ?! T'es un fiélon ?"~ */
  IF ~~ THEN REPLY #23687 /* ~"Qu'est-ce qui ne va pas ?"~ */ JOURNAL #23690 /* ~Mebbeth m'a fait passer un test… une courte recette, une illusion mineure, écrite dans la langue de l'Art. J'ai pu la déchiffrer sans hésitation. J'ai dû apprendre à lire la magie par le passé.~ */ GOTO 97
  IF ~~ THEN REPLY #23688 /* ~"Non… enfin, pas à ma connaissance. Qu'est-ce qui ne va pas ?"~ */ JOURNAL #23690 /* ~Mebbeth m'a fait passer un test… une courte recette, une illusion mineure, écrite dans la langue de l'Art. J'ai pu la déchiffrer sans hésitation. J'ai dû apprendre à lire la magie par le passé.~ */ GOTO 97
  IF ~~ THEN REPLY #23689 /* ~"Certains m'ont appelé ainsi, mais pas en ma présence. Quelque chose ne va pas ?"~ */ JOURNAL #23690 /* ~Mebbeth m'a fait passer un test… une courte recette, une illusion mineure, écrite dans la langue de l'Art. J'ai pu la déchiffrer sans hésitation. J'ai dû apprendre à lire la magie par le passé.~ */ GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0 96.1 96.2
  SAY #23691 /* ~"Bien… j'm'y attendais pas, hein…" Elle indique la formule d'un signe de tête, puis te l'arrache des mains. "Ce que tu vois est écrit dans la langue de l'*Art*. Quand t'es pas encore un mage, tu n'vois qu'un méli-mélo qui tourbillonne." Elle claque du doigt. "Mais aussi clair que du cristal, tu en déchiffres le sens en un clin d'œil. Tu peux dire à la vieille Mebbeth comment ça se fait ?"~ */
  IF ~~ THEN REPLY #23692 /* ~"Je ne sais pas… Je *savais* juste ce que ça disait."~ */ GOTO 98
  IF ~~ THEN REPLY #23693 /* ~"Je crois que je l'ai su autrefois, mais j'ai oublié… la vue des symboles a juste ébranlé mes souvenirs."~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0 97.1
  SAY #23694 /* ~"Ou peut-être que t'as un don naturel… c'est pas grave, tu viens de réduire ton apprentissage de quelques saisons, c'est tout." Mebbeth s'éclaircit la gorge. "Et j'ai besoin d'quelqu'un pour s'occuper des corvées, ici…"~ */
  IF ~~ THEN REPLY #23695 /* ~"C'est peut-être pas plus mal finalement."~ */ GOTO 99
  IF ~~ THEN REPLY #23696 /* ~"Si t'as besoin d'aide, tu peux me demander… c'est le moins que je puisse faire en échange de ce que tu m'apprends."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mebbeth_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #23697 /* ~"Pouah ! Quand je pense que je t'ai accueilli…" Elle fronce les sourcils. "Bon, tu peux lire les sorts, mais ils te serviront à rien sans livre dans lequel les mettre…"~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23698 /* ~"Tu en as un ?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23699 /* ~"Tu en as un ?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #23700 /* ~"Non, non, t'en fais pas pour ça…" Elle fronce les sourcils. "Bon, tu peux lire les sorts, mais ils te serviront à rien sans livre dans lequel les mettre…"~ */
  IF ~  Global("Mebbeth_Fail","GLOBAL",1)
~ THEN REPLY #23701 /* ~"Tu en as un ?"~ */ GOTO 102
  IF ~  Global("Mebbeth_Fail","GLOBAL",0)
~ THEN REPLY #23702 /* ~"Tu en as un ?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99.1 100.1
  SAY #23703 /* ~Mebbeth regarde autour d'elle et aperçoit le cadre aux épines noires que tu as fait. Elle le ramasse et l'étudie avec attention. "Ça devrait aller."~ */
  IF ~~ THEN REPLY #23704 /* ~"Cette chose ? C'est juste un cadre."~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 99.0 100.0
  SAY #23705 /* ~Mebbeth regarde autour d'elle et aperçoit le cadre aux épines noires que tu as fait. Elle le ramasse et l'étudie avec attention. "Ça devrait aller."~ */
  IF ~~ THEN REPLY #23706 /* ~"Cette chose ? C'est juste un cadre."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 101.0 102.0
  SAY #23707 /* ~"Ah, mais toi aussi, mon enfant…" Tenant toujours le cadre, elle ramasse l'un des chiffons amidonnés que tu as ramenés de chez Giscorl. D'un coup sec, elle retire le film verdâtre. Il flotte en l'air, comme un fin voile. "J'sais pas ce que Giscorl utilise pour laver, mais c'est plus efficace que de tremper, étirer et racler les chiffons. J'peux pas m'permettre un parchemin, peux pas…"~ */
  IF ~~ THEN REPLY #23708 /* ~"Un parchemin… ?"~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #23709 /* ~Elle prend le film amidonné et le dépose sur le cadre aux épines noires, accrochant les coins du chiffon aux crochets autour du cadre, jusqu'à ce qu'il ressemble à une petite toile de peintre verdâtre. "Il manque quelque chose…"~ */
  IF ~~ THEN REPLY #23710 /* ~"Et bien, il faut qu'il y ait quelque chose de peint dessus."~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #23711 /* ~Elle fait un signe de tête. "Ouais, ou écrit…" Elle prend la chope d'encre que tu lui as donnée et la place à ses côtés. Elle y trempe un de ses ongles, puis le retire, murmurant pour elle-même. Elle commence à dessiner des symbole sur le cadre, un par un, murmurant toujours pour elle-même.~ */
  IF ~~ THEN REPLY #23712 /* ~Attends…~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #23713 /* ~"Fini." Mebbeth se dresse et essuie son ongle taché par l'encre sur sa robe. Elle incline la tête et regarde l'étrange page encadrée en face d'elle. "C'est une page pour ton livre de sorts." Elle t'indique de le ramasser.~ */
  IF ~~ THEN REPLY #23714 /* ~Prends-le…~ */ GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0 108.1
  SAY #23715 /* ~"À l'intérieur de ton livre de sorts se trouvent tes formules… tes 'sorts'… si tu préfères. Tant qu'ils sont dans le livre, ce ne sont que des mots." Elle se tapote la tête. "L'Art veut qu'tu sortes les sorts du livre et qu'tu les mettes dans ton grenier… ta tête, avant qu'tu puisses utiliser leur pouvoir."~ */
  IF ~~ THEN REPLY #23716 /* ~"Continue…"~ */ GOTO 108
  IF ~~ THEN REPLY #23717 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #23718 /* ~"Tu les mets dans ton grenier en les étudiant, en les *mémorisant*. Mais faut normalement qu'tu te reposes avant d'faire ça. Des questions ?"~ */
  IF ~~ THEN REPLY #23719 /* ~"Non, Mebbeth."~ */ GOTO 109
  IF ~~ THEN REPLY #23720 /* ~"Oui… explique-moi encore."~ */ GOTO 107
  IF ~~ THEN REPLY #23721 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #23722 /* ~"Oh, pas de questions, hein ? Allons, tu *dois* avoir des questions ! Tu crois savoir comment mémoriser les sorts, hein ? T'es futé ! T'as sûrement plus besoin des ragots de Mebbeth qui te font perdre ton temps… t'es déjà un maître de la sorcellerie !"~ */
  IF ~~ THEN REPLY #23723 /* ~"Excuse-moi, Mebbeth. Je *voulais dire* pas de questions sur ce que tu as dit. Explique-moi comment mémoriser les sorts."~ */ GOTO 110
  IF ~~ THEN REPLY #23724 /* ~"Ton attitude met ma patience à bout, Mebbeth…"~ */ GOTO 111
  IF ~~ THEN REPLY #23725 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 111.1
  SAY #23726 /* ~"Hmmph. D'accord. Voilà comment mémoriser les sorts : choisis ceux que tu veux mettre dans ta tête *avant* de dormir. Quand tu t'réveilleras le matin, ils bourdonneront dans ta tête comme des mouches, prêts à être utilisés."~ */
  IF ~~ THEN REPLY #23727 /* ~"Combien de sorts je peux jeter ?"~ */ GOTO 112
  IF ~~ THEN REPLY #23728 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #23729 /* ~"Ouais, je fais comme je veux avec toi, mon enfant, comme je veux, et tu f'rais bien d'faire attention si tu veux connaître les bases de l'Art !"~ */
  IF ~~ THEN REPLY #23730 /* ~"Excuse-moi, Mebbeth. Explique-moi comment mémoriser les sorts."~ */ GOTO 110
  IF ~~ THEN REPLY #23731 /* ~"Si tu en as *fini* avec ton sermon, continue."~ */ GOTO 110
END

IF ~~ THEN BEGIN 112 // from: 110.0
  SAY #23732 /* ~"Tu peux jeter un seul sort, peut-être deux avant d'avoir besoin de te reposer… comme t'es un débutant, y'a pas encore beaucoup d'place dans ton grenier. Alors utilise tes sorts sagement, jusqu'à ce que tu aies une meilleure connaissance de l'Art. Plus ton pouvoir grandira, plus tu auras d'place pour les sorts dans ton grenier."~ */
  IF ~~ THEN REPLY #23733 /* ~"Très bien… continue…"~ */ GOTO 113
  IF ~~ THEN REPLY #23734 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #23735 /* ~"Tu peux seulement jeter les sorts que tu as mémorisés. Alors si tu veux utiliser l'Art pour, disons, réparer quelque chose deux fois, t'as besoin de mémoriser le sort… combien de fois ?"~ */
  IF ~~ THEN REPLY #23736 /* ~"Une fois."~ */ GOTO 114
  IF ~~ THEN REPLY #23737 /* ~"Deux fois."~ */ GOTO 115
  IF ~~ THEN REPLY #23738 /* ~"Euh…"~ */ GOTO 114
  IF ~~ THEN REPLY #23739 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.2
  SAY #23740 /* ~"Deux fois ! Pour jeter *deux fois* un sort, il faut que tu mémorises *deux fois* le sort."~ */
  IF ~~ THEN REPLY #23741 /* ~"Compris. Comment je peux avoir plus de sorts ?"~ */ GOTO 116
  IF ~~ THEN REPLY #23742 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 115 // from: 113.1
  SAY #23743 /* ~Mebbeth acquiesce. "Ouais, deux fois, tout juste."~ */
  IF ~~ THEN REPLY #23744 /* ~"Comment je peux avoir plus de sorts ?"~ */ JOURNAL #23746 /* ~Mebbeth m'a enseigné les règles fondamentales de l'Art. Elle dit qu'avant de me reposer, il faut que je choisisse les sorts que j'ai envie de mémoriser en consultant le livre de sorts et en les sélectionnant. Si je veux être capable de lancer un sort plusieurs fois, il faut que je le mémorise plusieurs fois. Chaque fois que je me reposerai, je me réveillerai le lendemain matin en ayant mémorisé les sorts, prêt à les lancer. Elle m'a expliqué que je ne pourrai lancer qu'un petit nombre de sorts par jour, jusqu'à ce que je maîtrise bien leur utilisation. Je pourrai peut-être rencontrer d'autres maîtres dans la Ruche susceptibles eux aussi de m'apprendre à lancer des sorts.~ */ GOTO 116
  IF ~~ THEN REPLY #23745 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 116 // from: 114.0 115.0
  SAY #23747 /* ~Mebbeth hausse les épaules. "Garde les yeux et les oreilles grands ouverts pour apprendre - même les gens ordinaires peuvent t'apprendre de la magie. Y'a aussi les parchemins, les formules, les livres et même d'étranges objets qui ont des sorts inscrits dessus. Si t'en trouves un, examine-le et copie-le dans ton livre, si tu l'veux."~ */
  IF ~~ THEN REPLY #23748 /* ~"Compris."~ */ GOTO 117
  IF ~~ THEN REPLY #23749 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #23750 /* ~"J'pourrai aussi t'montrer d'autres sorts si tu r'viens, surtout quand les plans seront un peu plus présents en toi."~ */
  IF ~~ THEN REPLY #23751 /* ~"J'aimerais bien. Merci."~ */ GOTO 118
  IF ~~ THEN REPLY #23752 /* ~"Je pense avoir compris les principes de base, Mebbeth. Au revoir."~ */ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 107.1 108.2 109.2 110.1 112.1 113.3 114.1 115.1 116.1 117.0 117.1
  SAY #23753 /* ~"Avant qu'tu partes, gamin, tu vas avoir b'soin d'un peu d'magie pour l'appétit…" Mebbeth fouille dans sa robe, et en tire trois petites recettes, qu'elle te tend. "Tu d'vrais les copier dans ton livre, pour qu'elles puissent aller tout d'suite dans ton grenier. Pour l'troisième, faudra attendre d'avoir fait quelques progrès…"~ */
  IF ~~ THEN REPLY #23754 /* ~"Merci, Mebbeth."~ */ DO ~GiveItemCreate("Recipe01",Protagonist,1,1,0)
GiveItemCreate("Recipe02",Protagonist,1,1,0)
GiveItemCreate("Recipe03",Protagonist,1,1,0)
GiveExperience(Protagonist,5000)
~ JOURNAL #23759 /* ~Mebbeth m'a donné trois 'recettes' qu'elle m'a conseillé d'inclure dans mon livre de sorts. Elle m'a dit de les examiner dans mon inventaire, puis de les 'copier' dans mon livre de sorts.~ */ GOTO 138
END

IF ~~ THEN BEGIN 119 // from: 138.0
  SAY #23755 /* ~"Bien, mon enfant - traîne pas ici plus longtemps. Les gens comme toi ont mieux à faire que passer leur temps avec la vieille Mebbeth."~ */
  IF ~~ THEN REPLY #23756 /* ~"Allez, Mebbeth, tu n'es pas vieille."~ */ GOTO 120
  IF ~~ THEN REPLY #23757 /* ~"Tu n'es pas si vieille."~ */ GOTO 120
  IF ~~ THEN REPLY #23758 /* ~"Oui, c'est vrai. J'ai déjà passé trop de temps ici."~ */ GOTO 121
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #23760 /* ~"Pouah, espèce de flatteur ! Ta langue est tellement fourchue qu'elle ferait honte à un baatezu ! Fiche-moi le camp !"~ */
  IF ~~ THEN REPLY #23761 /* ~"Merci pour tout, Mebbeth."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_1","GLOBALGood",1)
~ GOTO 122
  IF ~~ THEN REPLY #23762 /* ~"Au revoir, Mebbeth."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 119.2
  SAY #23763 /* ~"T'as le tempérament d'un sorcier d'envergure." Mebbeth grogne. "Tout de même… J'te souhaite bonne chance, mon enfant. J'te souhaite bonne chance."~ */
  IF ~~ THEN REPLY #23764 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.0
  SAY #23765 /* ~"Pouah ! Tu peux m'remercier en ne faisant pas l'idiot avec ce que je t'ai appris. L'Art a perdu plus d'un idiot qui a essayé de l'utiliser comme il aurait pas dû. Maintenant, débrouille-toi tout seul !"~ */
  IF ~~ THEN REPLY #23766 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Ravel")
~ THEN BEGIN 123 // from:
  SAY #23767 /* ~À ton entrée, Mebbeth lève la tête, le visage livide… elle paraît malade. Alors que tu la regardes, des plis se dessinent sur son visage, comme des craquelures, et ses yeux gris clignent, comme s'ils avaient du mal à se fixer sur toi.~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #64215 /* ~"Mebbeth, tu vas bien ?"~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23768 /* ~"Je pensais que tu serais peut-être encore là, Mebbeth."~ */ GOTO 124
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23769 /* ~"Tu n'es pas encore morte, 'Mebbeth' ?"~ */ GOTO 125
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #23770 /* ~"Mebbeth… est-ce que tu *savais* que tu étais Ravel ?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 123.0 123.1
  SAY #23771 /* ~"Ouais…" Elle sourit faiblement. Sa voix est rauque, comme si elle traversait plusieurs couches de poussière. "Il me reste… encore un peu de temps…"~ */
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",1)
~ THEN REPLY #23772 /* ~"Mebbeth… est-ce que tu *savais* que tu étais Ravel ?"~ */ GOTO 126
  IF ~  GlobalLT("Ravel_Shape","GLOBAL",2)
~ THEN REPLY #64216 /* ~"Mebbeth… ta voix… tu parles avec la voix de *Ravel*. Qui *es-tu* ?!"~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 123.2
  SAY #23773 /* ~"Nan…" Elle sourit faiblement. "Il me reste… encore un peu de temps…"~ */
  IF ~~ THEN REPLY #23774 /* ~"Mebbeth… est-ce que tu *savais* que tu étais Ravel ?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 123.3 124.0 124.1 125.0
  SAY #23775 /* ~Elle respire profondément… ses mots sortent doucement, sa voix racle dans sa gorge. "Peut-être que… Mebbeth s'est oubliée de nombreuses fois… J'ai rêvé que j'étais quelqu'un d'autre…" Chaque mot est plus chargé que le précédent, comme si le poids des siècles pesait sur eux. Son corps semble se déplacer légèrement, comme pour se *relaxer*, pour se laisser aller.~ */
  IF ~~ THEN REPLY #23776 /* ~"Comment peux-tu ne pas savoir qui tu es ?"~ */ GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #23777 /* ~"Comment peux-tu ne pas savoir toi-même ?" Mebbeth se lèche les lèvres. "Beaucoup de choses… même des morceaux de soi… ils passent à travers les craquelures de la mémoire, les ombres de choses oubliées, ces morceaux de mémoire, peut-être mauvaises… peut-être bonnes."~ */
  IF ~~ THEN REPLY #23778 /* ~"Mais pourquoi Mebbeth ? Pourquoi ce déguisement alors que tu aurais pu être Ravel de nouveau ?"~ */ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY #23779 /* ~"Ici, à cet endroit, tout ce que j'ai fait c'est réparer les choses et les corps, mettre au monde les bébés… de toutes ces choses j'étais satisfaite." Elle soupire. "Pour ce qui est d'être cette *autre*, cette Ravel…" Elle lèche à nouveau ses lèvres. "Je pense… on croit fort que c'est facile d'oublier quelquefois un souvenir ou deux."~ */
  IF ~~ THEN REPLY #23780 /* ~"Après ce qui s'est passé, je ne savais pas trop si tu serais là, Mebbeth…"~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #23781 /* ~Mebbeth acquiesce - chaque mouvement est douloureux. "Ah, mon tout précieux…" Elle tressaille en prenant sa respiration. "Te voir ici… c'est comme un écho. Il reste peu de temps… les fils, ces Ravel… ils se défont alors même que nous parlons."~ */
  IF ~~ THEN REPLY #23782 /* ~"Est-ce que tu souffres ?"~ */ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #23783 /* ~Elle acquiesce. "Oui… pourtant c'est l'ironie qui fait le plus mal…" Elle sourit avec peine. "Un geste de bonté, trois fois remboursé… les plans ont voulu que mes rares actes de bonté provoquent ma mort." Elle rit doucement. "Pourtant je n'ai pas de regrets…"~ */
  IF ~~ THEN REPLY #23784 /* ~"J'ai des questions, Mebbeth. Je dois savoir qui t'a *fait* ça. Est-ce que tu peux me d-"~ */ GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #23785 /* ~Elle lève la main pour t'indiquer de te taire. "Homme précieux… J'aimerais que tu m'écoutes une dernière fois…"~ */
  IF ~~ THEN REPLY #23786 /* ~"Mebbeth, on n'a pas beaucoup de *temps*…"~ */ GOTO 132
  IF ~~ THEN REPLY #23788 /* ~"Très bien…"~ */ GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0 131.1
  SAY #23792 /* ~"Homme précieux…" Elle soupire. "Tout ce que je voulais faire était sortir la Dame de sa Cage… pour toi, tout c'que j'voulais était que tu *vives*… et pour ma fille, je…" Elle soupire. "Il y a un dicton dans les Plans… que la bonté d'une guenaude est plus cruelle… que sa haine, et qu'elle empoisonne tout ce qu'elle touche…"~ */
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23793 /* ~"On est bien placés pour savoir que c'est vrai."~ */ GOTO 133
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #23794 /* ~"Désolé pour la tournure des événements. Si j'avais pu te sauver, je -"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 133
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23795 /* ~"On est bien placés pour savoir que c'est vrai."~ */ GOTO 134
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #23796 /* ~"Désolé pour la tournure des événements. Si j'avais pu te sauver, je -"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mebbeth_2","GLOBALGood",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #23797 /* ~Elle sourit légèrement. "Je ne regrette pas ce qui s'est passé, mon précieux…" Son sourire s'efface. "Et tu ne devrais pas non plus." Elle cligne des yeux, et son regard devient flou. "Ah… Je… peux pas rester ici… plus longtemps."~ */
  IF ~~ THEN REPLY #23798 /* ~"Bon débarras, Ravel. Puisse-tu vivre dans un endroit plus sombre que celui-ci."~ */ DO ~DestroySelf()
IncrementGlobalOnceEx("GLOBALEvil_Mebbeth_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #23799 /* ~"Au revoir, Ravel."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 132.2 132.3
  SAY #23800 /* ~"Je me meurs…" Elle cligne de ses yeux mouillés. "Ma fin… elle arrive de toutes les directions du temps, tous les fils de Ravel se démêlent…" Elle tousse. "Pourtant…" Ses yeux gris se fixent sur toi. "Peut-être que tout n'est pas perdu… les graines de noirépine du labyrinthe… tu en as une sur toi ?"~ */
  IF ~~ THEN REPLY #23801 /* ~"Oui. Ici."~ */ DO ~AddexperienceParty(12000)
DestroyPartyItem("BBSeed",FALSE)
~ GOTO 135
  IF ~~ THEN REPLY #23802 /* ~"Je l'ai, mais je ne vais pas te le donner."~ */ GOTO 136
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #23803 /* ~"Ah…" Elle prend la graine avec précaution et la glisse dans ses boucles grisonnantes. "Ainsi l'Unité des Anneaux est servie…" Le regard vacillant, elle lève la main et t'invite à t'approcher.~ */
  IF ~~ THEN REPLY #23804 /* ~Approche-toi d'elle, agenouille-toi.~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 137
  IF ~~ THEN REPLY #23805 /* ~"Non… peu importe ton apparence, tu es bien Ravel et je ne te fais pas confiance. Je pleure pour Mebbeth, pas pour toi."~ */ DO ~SetGlobal("BD_UNITYRINGS","GLOBAL",1)
~ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 134.1 135.1
  SAY #23806 /* ~Elle fait un signe de tête, comme si elle allait dire quelque chose, puis sourit et ferme les yeux.~ */
  IF ~~ THEN REPLY #23807 /* ~"Au revoir."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 135.0
  SAY #23809 /* ~Elle murmure quelque chose doucement, dans un souffle, puis serre ta tête dans ses mains et place un léger baiser sur ton front. Tu fermes les yeux alors que ses lèvres touchent ta peau…~ */
  IF ~~ THEN REPLY #23810 /* ~"Que les plans te reçoivent avec bonté, Mebbeth."~ */ DO ~SetGlobal("Ravel_Death_Kiss","GLOBAL",1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 118.0
  SAY #66278 /* ~"Attends, ce n'est pas tout…" Mebbeth tire une boule de tissu noir de son tablier, la déroule et te présente une paire de boucles d'oreille en ambre. "Elles te protègeront au cours de tes voyages, mon enfant. Vas-y, prends-les… je ne les mets plus, de toute façon…"~ */
  IF ~~ THEN REPLY #66279 /* ~"Encore merci…"~ */ DO ~GiveItemCreate("AmbEar",Protagonist,1,0,0)
~ GOTO 119
END
