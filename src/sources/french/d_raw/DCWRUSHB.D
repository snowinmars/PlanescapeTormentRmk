// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #26110 /* ~Ce vieil homme élégant marche d'un pas décidé.~ */
  IF ~~ THEN REPLY #26111 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #26199 /* ~Laisse-le passer.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26112 /* ~Il s'arrête brièvement pour regarder dans ta direction et fronce les sourcils en te voyant. Il te regarde enfin dans les yeux. "Mmm ?"~ */
  IF ~~ THEN REPLY #26113 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26198 /* ~"J'ai quelque chose qui cloche ?"~ */ GOTO 23
  IF ~~ THEN REPLY #26206 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #26114 /* ~Il parle sur un ton amer, quelque peu condescendant : "Dommage… vraiment. Je n'ai pas de temps pour tes questions. Au revoir."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #26115 /* ~"Juste une seule question, alors ?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #26188 /* ~"Juste une seule question, alors ?"~ */ GOTO 20
  IF ~~ THEN REPLY #26192 /* ~"Alors, tu *vas trouver* le temps. Maintenant, réponds à mes questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #26193 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26116 /* ~Il ricane légèrement. "Euh ! Si je le dois. Vas-y… pose ta 'question'. Et fais-vite !"~ */
  IF ~~ THEN REPLY #26117 /* ~"Où sommes-nous ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26132 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #26139 /* ~"Où est-ce que je peux trouver du travail par ici ?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #26144 /* ~"J'ai juste besoin qu'on m'indique la bonne direction…"~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26179 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 21
  IF ~~ THEN REPLY #26187 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26118 /* ~"J'aurais dû me douter que tu étais perdu. Tu es dans le Quartier des Gratte-Papier, monsieur. Si tu veux retourner dans le Bas Quartier - ou à l'endroit par lequel tu es venu - la porte se trouve dans la partie nord-ouest de cette zone. Au revoir."~ */
  IF ~~ THEN REPLY #26119 /* ~"Attends… J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #26131 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0 22.1 22.2
  SAY #26120 /* ~"Plus de questions. Trouve un autre pigeon, s'il le faut. Au revoir."~ */
  IF ~~ THEN REPLY #26121 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #26130 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #26122 /* ~Il se rengorge, te fixe et souffle "Je *ne* répondrai *pas* à d'autres questions ! Dégage, manant, avant que j'appelle les officiers de l'Harmonium pour jeter ton cul balafré hors du Quartier !"~ */
  IF ~~ THEN REPLY #26123 /* ~"J'ai bien peur que personne n'arrive à temps pour te sauver."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #26127 /* ~"Si tu sais où est ton intérêt, il vaut mieux que tu n'appelles personne."~ */ GOTO 7
  IF ~~ THEN REPLY #26128 /* ~"Pardon. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #26129 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #26124 /* ~"Gardes ! Gardes !" L'homme commence à reculer.~ */
  IF ~~ THEN REPLY #26125 /* ~Attaque-le.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #26126 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #26133 /* ~Il roule les yeux. "Est-ce que j'ai l'air d'un rabatteur ? J'ai des affaires en instance !" Il marmonne un peu, puis parle à nouveau : "Cherche la Salle des Fêtes. Tu y trouveras peut-être quelque chose d'intéressant."~ */
  IF ~~ THEN REPLY #26134 /* ~"Autre chose ?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26135 /* ~"Non." Il semble réfléchir. "Bon… peut-être. Je ne sais pas si tu apprécierais l'endroit ou non, mais tu peux visiter la Maison de tolérance… des Plaisirs Intellectuels."~ */
  IF ~~ THEN REPLY #26136 /* ~"Parle-moi de cette Maison de tolérance."~ */ GOTO 5
  IF ~~ THEN REPLY #26137 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26138 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #26140 /* ~Il a l'air surpris. "Tu cherches un travail honnête ? C'est bien. Essaie l'apothicaire. Ou l'avocat. Tout le monde devrait travailler, tu sais - trouver une tâche qui le rende utile à la société."~ */
  IF ~~ THEN REPLY #26141 /* ~"J'ai une question à propos d'un de ces endroits dont tu as parlé…"~ */ GOTO 5
  IF ~~ THEN REPLY #26142 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26143 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #26145 /* ~"Pour aller où ? Allez, décide-toi !"~ */
  IF ~~ THEN REPLY #26146 /* ~"Chez l'avocat."~ */ GOTO 12
  IF ~~ THEN REPLY #26150 /* ~"Chez l'apothicaire."~ */ GOTO 13
  IF ~~ THEN REPLY #26154 /* ~"À la boutique d'art."~ */ GOTO 14
  IF ~~ THEN REPLY #26158 /* ~"À la maison de tolérance."~ */ GOTO 15
  IF ~~ THEN REPLY #26162 /* ~"Aux catacombes sous le Quartier."~ */ GOTO 16
  IF ~~ THEN REPLY #26166 /* ~"À la Salle des Fêtes."~ */ GOTO 17
  IF ~~ THEN REPLY #26170 /* ~"Au magasin de brocante."~ */ GOTO 18
  IF ~~ THEN REPLY #26174 /* ~"Chez le tailleur."~ */ GOTO 19
  IF ~~ THEN REPLY #26178 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26147 /* ~"Tu cherches l'avocat ? Hum. Prends la direction sud de la porte du Bas Quartier. Il habite du côté est de la route."~ */
  IF ~~ THEN REPLY #26148 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26149 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #26151 /* ~"Suis la route de l'est à partir de la porte du Bas Quartier. À l'endroit où la route forme une fourche entre le nord-est et le sud-est, prends la direction du sud… tu le trouveras là, à l'est de la route. La boutique est orientée au sud et comporte trois fenêtres de verre teinté."~ */
  IF ~~ THEN REPLY #26152 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26153 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #26155 /* ~"Suis la route de l'est à partir de la porte du Bas Quartier. À l'endroit où la route forme une fourche entre le nord-est et le sud-est, prends la direction sud… tu la trouveras là, à l'ouest de la route. La boutique est orientée au sud et les tuiles de son toit sont maintenues par de grosses pierres."~ */
  IF ~~ THEN REPLY #26156 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26157 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #26159 /* ~"'C'est juste à l'est de la porte du Bas Quartier. C'est un grand bâtiment rond, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #26160 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26161 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #26163 /* ~"Il y a deux entrées - une qui se trouve entre le tailleur et la Salle des Fêtes, à l'est de la porte du Bas Quartier, l'autre au sud de cette même porte."~ */
  IF ~~ THEN REPLY #26164 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26165 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #26167 /* ~"La Salle des Fêtes est un édifice massif situé dans la portion nord-est de cette zone. Il faudrait que tu sois aveugle et stupide pour ne pas la trouver."~ */
  IF ~~ THEN REPLY #26168 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26169 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #26171 /* ~"Hum. Je sais qu'il y a une femme, une importatrice, qui vend des objets provenant d'autres plans… surtout des Plans Inférieurs. Si c'est le genre de chose que tu cherches, sa boutique se trouve dans la partie sud-ouest de cette zone, au sommet d'un grand escalier."~ */
  IF ~~ THEN REPLY #26172 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26173 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #26175 /* ~"Va au nord-est de la porte du Bas Quartier. C'est un grand bâtiment, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #26176 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26177 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #26180 /* ~Il secoue la tête, pour te faire signe de t'éloigner. "Trouve un autre pigeon, s'il le faut. Au revoir."~ */
  IF ~~ THEN REPLY #26181 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #26185 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #26182 /* ~L'homme reste silencieux un moment. "Je sais peu de chose. Seulement ce que j'ai lu dans les livres qui la mentionnaient en passant."~ */
  IF ~~ THEN REPLY #26183 /* ~"Qu'est-ce que ces livres disaient sur elle ?"~ */ GOTO 22
  IF ~~ THEN REPLY #26184 /* ~"Je vois. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #26186 /* ~"Merci, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26189 /* ~"Juste que c'était une créature du mal absolu. Beaucoup pensent que c'est un mythe, mais son existence est établie dans des documents. Des documents rares, mais qui existent. Quant à son sort après sa tentative de destruction de Sigil… je crois qu'elle a été recluse dans un des dédales de la Dame des Douleurs."~ */
  IF ~~ THEN REPLY #26190 /* ~"Parle-moi de la Dame des Douleurs."~ */ GOTO 5
  IF ~~ THEN REPLY #26191 /* ~"Est-ce qu'il est possible d'atteindre ces dédales ?"~ */ GOTO 5
  IF ~~ THEN REPLY #26194 /* ~"J'ai une autre question…"~ */ GOTO 5
  IF ~~ THEN REPLY #26207 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #26195 /* ~"Regarde-toi ! Tu es… tu es… pratiquement nu, couvert de balafres et tu erres dans les rues de Sigil en accostant les citoyens… j'ai vu des fiélons mieux éduqués et plus soucieux de leur apparence. Je ne veux pas t'offenser, mais je ne te cacherai pas la vérité."~ */
  IF ~~ THEN REPLY #26196 /* ~"C'est vrai, c'est moi qui ai demandé. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26197 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #26200 /* ~"Encore toi ! J'ai pas le temps de répondre à tes questions, aujourd'hui. Au revoir !"~ */
  IF ~~ THEN REPLY #26201 /* ~"Attends. J'ai des questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #26205 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26202 /* ~"Non. Pas de questions. Je dois me rendre quelque part et je ne serai pas retardé par la curiosité d'un quidam. Trouve un autre pigeon, s'il le faut. Au revoir."~ */
  IF ~~ THEN REPLY #26203 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #26204 /* ~"Alors, au revoir."~ */ EXIT
END
