// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10146 /* ~Tu vois une jeune femme vêtue d'une robe à bon marché. Son bustier est beaucoup trop étroit, de sorte que son ample poitrine a tendance à en déborder.~ */
  IF ~~ THEN REPLY #10147 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #10148 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10149 /* ~Elle te toise des pieds à la tête et prend un air dédaigneux. "Je préfère les types moins… marqués. Et si tu passais ton chemin, matois ?"~ */
  IF ~~ THEN REPLY #10150 /* ~"De quoi parles-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #10151 /* ~"Je veux juste te poser des questions."~ */ GOTO 6
  IF ~~ THEN REPLY #10152 /* ~"Euh… Ouais. Au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10153 /* ~Elle t'adresse un regard espiègle et se penche vers toi. "Réfléchis, bige. À ton avis ?" Elle baisse les yeux vers sa poitrine, puis te fait un clin d'œil. "Tu vois un truc qui te plaît ?"~ */
  IF ~~ THEN REPLY #10154 /* ~"Si je ne suis pas à ton goût, alors pourquoi étales-tu tes 'marchandises' aussi…" Tu ne trouves pas le mot que tu veux employer.~ */ GOTO 3
  IF ~~ THEN REPLY #10155 /* ~"Je voulais juste te poser des questions."~ */ GOTO 6
  IF ~~ THEN REPLY #10156 /* ~"Ouais, combien ça va me coûter ?"~ */ GOTO 23
  IF ~~ THEN REPLY #10157 /* ~"Pas vraiment. Je m'en vais maintenant."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10158 /* ~Elle glousse, et se redresse. "Je m'amuse un peu, c'est tout. Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #10159 /* ~"Je voulais juste te poser des questions."~ */ GOTO 6
  IF ~~ THEN REPLY #10160 /* ~"Ouais, combien ça va me coûter ?"~ */ GOTO 23
  IF ~~ THEN REPLY #10161 /* ~"Pas vraiment. Je m'en vais maintenant."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #10162 /* ~Elle te foudroie du regard. "Hé! Va caguer, bige, et essaie de trouver mieux que moi dans les rues !"~ */
  IF ~~ THEN REPLY #10163 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #10164 /* ~Elle te sourit. "Bonne journée, alors."~ */
  IF ~~ THEN REPLY #10166 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 2.1 3.0 7.1 8.1 9.2 10.0 11.0 15.1 16.0 20.0 22.0 23.0 25.0 26.0
  SAY #10165 /* ~Elle soupire et t'adresse un regard las. "Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #10167 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 7
  IF ~~ THEN REPLY #10168 /* ~"Quelles sont les dernières nouvelles ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10169 /* ~"Qui est le responsable ici ?"~ */ GOTO 20
  IF ~~ THEN REPLY #10170 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 21
  IF ~~ THEN REPLY #10171 /* ~"Comment t'appelles-tu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #10172 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10173 /* ~Elle fait la moue, plisse le front, puis, au bout d'un moment, elle sourit. "Oui, je me rappelle. Il est en prison." Elle fronce les sourcils. "Drôle d'endroit pour un deva, non ?"~ */
  IF ~~ THEN REPLY #10174 /* ~"En prison ? Tu es sûre ?"~ */ DO ~SetGlobal("Know_Deva_Prison","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #10175 /* ~"Je vois. Puis-je te poser une autre question ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10176 /* ~"Merci de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10177 /* ~Elle se rembrunit. "Bien sûr que j'en suis sûre. Je le tiens d'un des gardes. Il est bien enfermé. En agrandissant la prison, des ouvriers ont ouvert une bulle d'air dans la pierre il n'y a pas longtemps, et ils l'ont trouvé là-dedans. Pris au piège."~ */
  IF ~~ THEN REPLY #10178 /* ~"Hmm. Ça va être difficile de l'approcher."~ */ GOTO 9
  IF ~~ THEN REPLY #10179 /* ~"Une autre question."~ */ GOTO 6
  IF ~~ THEN REPLY #10180 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10181 /* ~Elle tend la main, un sourire espiègle aux lèvres. "Un peu de jonc ?"~ */
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10182 /* ~Donne-lui deux pièces.~ */ DO ~TakePartyGold(2)
~ GOTO 10
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10183 /* ~Mensonge : "Excuse-moi, je n'ai pas d'argent."~ */ GOTO 11
  IF ~~ THEN REPLY #10184 /* ~"Permets-moi de te poser une autre question."~ */ GOTO 6
  IF ~~ THEN REPLY #10185 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10186 /* ~Un sourire, et elle se penche de nouveau pour t'offrir une vue imprenable sur ses appâts. "Va à la Porte du Traître. Il y a là-bas des gens capables de répondre à tes questions." Elle laisse choir les pièces dans son bustier.~ */
  IF ~~ THEN REPLY #10187 /* ~"Merci, c'est ce que je vais faire. Mais permets-moi de te demander autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #67907 /* ~"Il faut que j'y aille, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #10188 /* ~Elle soupire et fait la moue. "Je dois être cinglée, mais je vais tout de même t'aider. Va au bar de la Porte du Traître et pose tes questions. Tu y trouveras des gens qui sauront te répondre."~ */
  IF ~~ THEN REPLY #10189 /* ~"Merci, c'est ce que je vais faire. Mais permets-moi de te demander autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #67908 /* ~"Il faut que j'y aille, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY #10190 /* ~"Et bien, on a fini par maîtriser la peste. Plusieurs quartiers sont en quarantaine pour éviter toute propagation. Même le portail des Carcères sur la grand-place a dû être fermé." Elle marque une pause pour réfléchir.~ */
  IF ~~ THEN REPLY #10191 /* ~"Continue."~ */ GOTO 13
  IF ~~ THEN REPLY #10192 /* ~"Excuse-moi. La peste ?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #10193 /* ~"Merci beaucoup de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 17.0 24.0
  SAY #10194 /* ~"La fille de Barlouche a disparu. Il n'en dort plus, et il cherche un lascar qui accepterait de l'aider à la retrouver."~ */
  IF ~~ THEN REPLY #10195 /* ~"Continue."~ */ GOTO 14
  IF ~~ THEN REPLY #10196 /* ~"Qui est Barlouche et où puis-je le trouver ?"~ */ GOTO 18
  IF ~~ THEN REPLY #10197 /* ~"Je te remercie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #10198 /* ~"Un pauvre bougre va perdre la tête aujourd'hui. Le bourreau doit lui régler son compte sur la grand-place. Écœurant." Elle détourne le regard, les sourcils froncés.~ */
  IF ~~ THEN REPLY #10199 /* ~"Continue."~ */ GOTO 15
  IF ~~ THEN REPLY #10200 /* ~"Qu'est-ce qu'il a fait ?"~ */ GOTO 19
  IF ~~ THEN REPLY #10201 /* ~"Je te remercie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 19.0
  SAY #10202 /* ~Elle se perd dans ses réflexions pendant un instant. "Je ne vois rien d'autre." Et elle hausse les épaules.~ */
  IF ~~ THEN REPLY #10203 /* ~"Tu as l'air bien informé. Ça m'impressionne."~ */ GOTO 16
  IF ~~ THEN REPLY #10204 /* ~"Si je puis me permettre, j'aimerais te demander autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #10205 /* ~"Merci infiniment. Au revoir, madame."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10206 /* ~Elle sourit, se penche, et bat des paupières. "À mon contact, les gens ont tendance à… s'ouvrir. Je me demande bien pourquoi." Elle se redresse avec un petit rire.~ */
  IF ~~ THEN REPLY #10207 /* ~"Euh… Oui, je me demande pourquoi. Bref, je voulais te demander autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #10208 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #10209 /* ~"Oui, mais ne t'en fais pas. Elle est maîtrisée, maintenant qu'on a fermé les quartiers infestés."~ */
  IF ~~ THEN REPLY #10210 /* ~"Je vois. Continue."~ */ GOTO 13
  IF ~  Global("Know_Deva_Prison","Global",1)
~ THEN REPLY #10211 /* ~"Est-ce que cette peste a frappé à peu près au moment où ils ont découvert la prison du deva ?"~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #10212 /* ~"Je dois m'en aller maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY #10213 /* ~"Le barman de la Porte du Traître. Par là, je crois." Elle désigne le bout de la rue.~ */
  IF ~~ THEN REPLY #10214 /* ~"Continue."~ */ GOTO 14
  IF ~~ THEN REPLY #10215 /* ~"Merci de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #10216 /* ~Elle fronce les sourcils, tourne la tête, puis hausse les épaules. "Je l'ignore, à vrai dire. Aucun de mes… contacts ne m'a donné de raison à ce sujet."~ */
  IF ~~ THEN REPLY #10217 /* ~"Continue."~ */ GOTO 15
  IF ~~ THEN REPLY #10218 /* ~"Ton aide m'a été très précieuse. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.2
  SAY #10219 /* ~Elle glousse. "Tovus, Tovus Giljaf. Par moments, il peut se laisser… emporter, mais il a toujours été gentil avec moi et il paye bien." Elle hésite, et paraît ravaler ce qu'elle allait dire. "Je ne devrais pas t'en parler. Tu le trouveras au bureau de l'administration, sur la grand-place."~ */
  IF ~~ THEN REPLY #10220 /* ~"Très bien, une autre question."~ */ GOTO 6
  IF ~~ THEN REPLY #10221 /* ~"Je dois te quitter maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3
  SAY #10222 /* ~"Maudith…" Elle pousse un soupir mélancolique. "C'est une prison pour les esseulés. Les bougres que tu y verras se sont fait une place au soleil à force de trahison. À présent, ils vivent en regardant derrière eux, jour après jour, sans plus savoir à qui se fier."~ */
  IF ~~ THEN REPLY #10223 /* ~"Et c'est valable pour toi ?"~ */ GOTO 22
  IF ~~ THEN REPLY #10224 /* ~"Intéressant. Je crois que je dois partir maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #10225 /* ~Elle porte au loin un regard lourd de remords. "J'ai agi de la sorte, et j'en viens à le regretter. Mais…" Elle se tourne vers toi. "Si je peux me permettre de te donner un conseil, le voici : quoi que tu fasses dans ta vie, tâche de savoir te pardonner."~ */
  IF ~~ THEN REPLY #10226 /* ~"Je m'en souviendrai. Puis-je te demander autre chose ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10227 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2 3.1
  SAY #10228 /* ~Elle te toise une fois de plus. "Si tu jures de bien me traiter, de ne me faire aucun mal, alors… ce sera dix pièces."~ */
  IF ~~ THEN REPLY #10229 /* ~"C'est très tentant… Mais je ne peux pas, pas pour le moment. Puis-je te demander autre chose ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10230 /* ~"Excuse-moi, mais je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY #10231 /* ~Elle plisse le front et regarde au loin pendant un instant. Puis elle reporte son attention sur toi. "Tu sais, je n'y avais jamais songé, mais tu as peut-être raison. La peste s'est déclenchée peu après qu'on l'a trouvé."~ */
  IF ~~ THEN REPLY #10232 /* ~"Je vois. Continue."~ */ GOTO 13
  IF ~~ THEN REPLY #10233 /* ~"Ton aide m'a été très précieuse. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.4
  SAY #10234 /* ~Elle t'adresse un gentil sourire. "Sharlène, mais tous mes amis m'appellent Shar."~ */
  IF ~~ THEN REPLY #10235 /* ~"Shar, c'est un joli nom. Permets-moi de te demander autre chose."~ */ GOTO 6
  IF ~~ THEN REPLY #10236 /* ~"Ton aide m'a été très précieuse. Au revoir Shar."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #63238 /* ~Tu vois Sharlene, la Catin. Elle t'adresse un doux sourire. "Re-bonjour, matois. Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #63239 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #63240 /* ~"Rien, au revoir."~ */ EXIT
END
