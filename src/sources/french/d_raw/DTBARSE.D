// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTBARSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTBARSE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Slavers","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #48096 /* ~Un type hâve, à la mine austère. Ses traits usés et émaciés sont ridés, ses yeux cerclés de rouge. À ta vue, il se redresse. "Bienvenue à la Porte du Traître. Je suis Barlouche, le tavernier."~ */
  IF ~~ THEN REPLY #48097 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 1
  IF ~~ THEN REPLY #48098 /* ~"Qu'est-ce que c'est que ce nom ?"~ */ GOTO 2
  IF ~~ THEN REPLY #48101 /* ~"Je voudrais boire quelque chose."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48107 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48108 /* ~"Tant mieux pour toi. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #48109 /* ~"Ce qui ne va pas, c'est que ma fille a été enlevée par des marchands d'esclaves, que je croule sous les dettes et que je vais être obligé d'abandonner cet endroit aux mains d'un de ces salauds de riches." Il te regarde de plus près. "C'est toi qui pose des questions sur le deva, hein ? Eh bien, si tu acceptes de m'aider, moi aussi, je t'aiderai."~ */
  IF ~~ THEN REPLY #48110 /* ~"Qu'est-ce que tu sais sur le deva ?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #48111 /* ~"Qu'est-ce que je dois faire ?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48112 /* ~"On en reparlera plus tard. Pour l'instant, j'ai des questions à te poser…"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #48113 /* ~"Je vais y réfléchir. Je reviendrai te voir. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #48114 /* ~Il te fixe du regard. "Bar, c'est le nom qu'on m'a donné, bige. C'est que plus tard qu'on m'a appelé Barlouche à cause d'anciens amis qui ont fait courir une rumeur sans fondement." Il semble *très* en colère. "Bon sang, mais qu'est-ce que tu veux au juste ? Tu es un aventurier ou quoi ?"~ */
  IF ~~ THEN REPLY #48116 /* ~"Pourquoi ? Qu'est-ce qui ne va pas ?"~ */ GOTO 1
  IF ~~ THEN REPLY #48117 /* ~"Je voulais te poser quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #48118 /* ~"Je voudrais boire quelque chose."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48119 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48120 /* ~"Tant mieux pour toi. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.4 7.1
  SAY #48125 /* ~Il sourit avec malice. "Tu es à sa recherche, pas vrai ? Je peux te dire qu'il est caché bien en dessous de la prison. Je peux aussi te dire comment t'y rendre, mais à toi de te débrouiller pour ne pas te faire arrêter ou devoir corrompre certaines personnes pour y arriver, ce qui, de toute façon, ne marcherait pas."~ */
  IF ~~ THEN REPLY #48127 /* ~"Et qu'est-ce que je dois faire ?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.0 7.3 8.0 12.0 13.0 14.1
  SAY #48128 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #48129 /* ~"Pourquoi est-ce que la cité est si abandonnée ?"~ */ JOURNAL #47843 /* ~Barlouche, aubergiste de la Porte du Traître, m'a dit que les pères de la ville avaient récemment agrandi la prison, ce qui leur a permis de découvrir un deva enfermé sous terre, dans une bulle de pierre. Ils ne l'ont pas délivré, comme de bien entendu. Ils ont juste utilisé son épée pour alimenter les autres cellules en énergie.~ */ GOTO 7
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #48130 /* ~"Pourquoi est-ce que la cité est si abandonnée ?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ JOURNAL #47843 /* ~Barlouche, aubergiste de la Porte du Traître, m'a dit que les pères de la ville avaient récemment agrandi la prison, ce qui leur a permis de découvrir un deva enfermé sous terre, dans une bulle de pierre. Ils ne l'ont pas délivré, comme de bien entendu. Ils ont juste utilisé son épée pour alimenter les autres cellules en énergie.~ */ GOTO 7
  IF ~~ THEN REPLY #48131 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~  Global("Slavers","GLOBAL",1)
Global("Curst_Key","GLOBAL",0)
~ THEN REPLY #48132 /* ~"Tu as dis qu'il fallait que je m'occupe de quelque chose pour toi. Que veux-tu que je fasse ?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48133 /* ~"Qu'est-ce que tu sais sur le deva ?"~ */ GOTO 3
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48134 /* ~"Qu'est-ce que tu vends ici ?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48135 /* ~"Rien, je suppose. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48135 /* ~"Rien, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.0 4.3 6.0
  SAY #48136 /* ~"Va là-bas et parle à Marquez. C'est un ancien de l'Harmonium. Il connaît ces marchands d'esclaves et il détient la première partie de la clé qui te permettra de trouver le deva."~ */
  IF ~~ THEN REPLY #48137 /* ~"Je vais y réfléchir. J'avais d'autres questions."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Barlouche m'a demandé de libérer sa fille, enlevée par des esclavagistes. Il m'a dit de parler à Marquez, l'officier de l'Harmonium qui traîne dans sa taverne.~ */ GOTO 4
  IF ~~ THEN REPLY #48138 /* ~"Je ne ferai pas ça."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ JOURNAL #68074 /* ~Barlouche m'a demandé de libérer sa fille, enlevée par des esclavagistes. Il m'a dit de parler à Marquez, l'officier de l'Harmonium qui traîne dans sa taverne.~ */ GOTO 9
  IF ~~ THEN REPLY #48139 /* ~"Je vais le faire."~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 0.2 0.3 0.4 1.3 2.2 2.3 2.4 4.6 7.4 8.1 12.1 13.1
  SAY #48140 /* ~"Écoute… Bon sang ! Ça ne me plaît pas de demander quoi que ce soit à un inconnu, mais je crois qu'on peut s'entraider toi et moi." Il enchaîne tout aussitôt : "On a enlevé ma fille, on va la vendre et je vais perdre ma taverne si je ne l'ai plus là, avec moi, pour m'aider. Et je possède des informations qui pourraient t'être utiles. Tu me grattes le dos, je te gratte le dos, tu vois le topo ?"~ */
  IF ~~ THEN REPLY #48141 /* ~"Qu'est-ce que tu veux ?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Barlouche m'a demandé de libérer sa fille, enlevée par des esclavagistes. Il m'a dit de parler à Marquez, l'officier de l'Harmonium qui traîne dans sa taverne.~ */ GOTO 5
  IF ~~ THEN REPLY #48142 /* ~"Laisse tomber. Je n'ai pas le temps."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #48143 /* ~"Hé. Il y a des tas de problèmes, comme toujours. Premièrement, ils n'arrêtent pas de creuser des trous pour agrandir la prison - et ils ont découvert ce deva, enveloppé dans une grosse bulle en obsidienne, enchaîné au sol. Ils ont pris son épée et utilisé sa puissance pour garder les criminels dans leurs cages. Ils sont en train de voir ce qu'il faut faire à propos du céleste et ils s'arrachent les cheveux à essayer de trouver un moyen de s'enrichir sur sa découverte et de contrecarrer leurs 'amis'… Et c'est alors que la peste frappe."~ */
  IF ~~ THEN REPLY #48144 /* ~"La peste ?"~ */ JOURNAL #48160 /* ~Barlouche m'a dit que Maudith avait été paralysée par la peste, peu de temps après que les officiels aient ouvert la prison du deva.~ */ GOTO 12
  IF ~~ THEN REPLY #48145 /* ~"Qu'est-ce que tu sais sur le deva ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48146 /* ~"Pourquoi est-ce que le deva a été emprisonné ?"~ */ GOTO 13
  IF ~~ THEN REPLY #48147 /* ~"J'aurais encore quelques questions…"~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48148 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48159 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #48161 /* ~"Cet endroit est plein de rumeurs et d'insinuations. Personne ne fait confiance à personne. Aucune faveur n'est jamais gratuite. Tout le monde déteste tout le monde et tout le monde essaie de prendre le dessus sur tout le monde. Et toi… tu représentes une cible de choix, parce que tu ne connais pas les règles du jeu. Et je peux te garantir que tu vas te faire avoir."~ */
  IF ~~ THEN REPLY #48162 /* ~"J'avais d'autres questions…"~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48163 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48164 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",6)
~ THEN BEGIN 9 // from: 5.1 6.1 14.0
  SAY #48165 /* ~"Si tu refuses de me rendre service, tu n'obtiendras rien de moi. Va-t'en de chez moi."~ */
  IF ~~ THEN REPLY #48166 /* ~"Non. Je voudrais boire quelque chose."~ */ GOTO 11
  IF ~~ THEN REPLY #48167 /* ~"Non. Je voudrais un endroit pour me reposer."~ */ GOTO 11
  IF ~~ THEN REPLY #48168 /* ~"J'ai changé d'avis. Je vais t'aider."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48169 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 9.2
  SAY #48170 /* ~"Marquez te dira ce que tu dois faire et quand tu auras terminé, il te dira à qui t'adresser pour avoir la clé."~ */
  IF ~~ THEN REPLY #48171 /* ~"Au revoir."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Barlouche m'a demandé de libérer sa fille, enlevée par des esclavagistes. Il m'a dit de parler à Marquez, l'officier de l'Harmonium qui traîne dans sa taverne.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.1
  SAY #48172 /* ~"Pour l'avoir, tu vas devoir me tuer - et si tu le fais, tu n'iras nulle part dans cette cité. Tu pourriras ici, bige. Je ne plaisante pas. Tu n'en sortiras jamais."~ */
  IF ~~ THEN REPLY #48173 /* ~Tue-le quand même.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #48174 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY #48175 /* ~"Tout à fait. Quelque chose qui détruit les gens. Ça les rend méchants et de mauvaise humeur - et trop faibles pour s'en défendre. Les gardes ont fermé certaines parties de la cité et elles sont infranchissables. Ils n'hésiteront pas à te jeter en prison sous le moindre prétexte. Je ne sais pas comment tu es arrivé dans cette cité, mais si tu ne trouves pas de portail, tu n'en sortiras pas."~ */
  IF ~~ THEN REPLY #48176 /* ~"J'avais d'autres questions…"~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48177 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48178 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #48179 /* ~Il t'observe attentivement pour voir si tu plaisantes. "Je t'ai dit qu'ils l'avaient découvert enterré, non ? Et je ne vois vraiment pas comment il a pu arriver là. J'aimerais avoir la force de piéger un deva ; ça me donnerait un sacré pouvoir."~ */
  IF ~~ THEN REPLY #48180 /* ~"Bon, réponds encore à quelques questions."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48181 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48182 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Slavers","GLOBAL",6)
~ THEN BEGIN 14 // from:
  SAY #48183 /* ~Il essaie de dissimuler son angoisse quand il s'adresse à toi : "Tu as trouvé des indices sur le sort de ma fille ? Je me fais du souci pour elle. S'il te plaît, avertis Marquez si tu entends dire quoi ce soit."~ */
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48184 /* ~"Je n'ai pas l'intention de partir à sa recherche."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
  IF ~~ THEN REPLY #48185 /* ~"Pas encore. J'avais des questions."~ */ GOTO 4
  IF ~~ THEN REPLY #48186 /* ~"Pas encore. Je voudrais boire quelque chose."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48187 /* ~"Pas encore. Je voudrais un endroit pour me reposer."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
!Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #48188 /* ~"Oui. Elle devrait revenir ici sous peu. Je vais prévenir Marquez."~ */ EXIT
  IF ~  Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66863 /* ~"Elle est morte alors que j'essayais de la sauver. Je vais aller prévenir Marquez."~ */ DO ~SetGlobal("Slavers","GLOBAL",7)
~ EXIT
  IF ~~ THEN REPLY #66864 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",7)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY #48189 /* ~Son chagrin se lit encore dans ses yeux. "Qu'est-ce que tu veux, matois ?"~ */
  IF ~~ THEN REPLY #48190 /* ~"Parle-moi de cette clé."~ */ GOTO 16
  IF ~~ THEN REPLY #48191 /* ~"Je voudrais boire quelque chose."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48192 /* ~"Je voudrais un endroit pour me reposer."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48193 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #48194 /* ~"C'est une clé - mais pas une clé au sens physique du terme, si tu vois ce que je veux dire. Quand tu auras réuni les clés, viens me le dire - elles déverrouillent les connaissances de mon esprit. D'ici là, ça reste secret. Tu dois satisfaire les détenteurs des clés. C'est tout ce que tu voulais ?"~ */
  IF ~~ THEN REPLY #48195 /* ~"Je voudrais boire quelque chose."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48196 /* ~"Je voudrais un endroit pour me reposer."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48197 /* ~"Oui. Au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #48198 /* ~"Où tu en es dans ta recherche de la clé ? Tu as l'air un peu inquiet. Tu la trouveras, j'en suis sûr."~ */
  IF ~~ THEN REPLY #48199 /* ~"Parle-moi de cette clé."~ */ GOTO 16
  IF ~~ THEN REPLY #48200 /* ~"Je voudrais boire quelque chose."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48201 /* ~"Je voudrais un endroit pour me reposer."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48202 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
Global("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #48203 /* ~"Tu as encore quelque chose à faire. Tu vois ce salopard ivre de Chek'ka Plute, dans le coin ? Va le tuer." Il hausse la voix. "Hé, Chek'ka ! Ton heure a sonné !"~ */
  IF ~~ THEN EXTERN ~DCHEKKA~ 4
END

IF WEIGHT #3 ~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
GlobalGT("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #48204 /* ~"Maintenant que tu as tué cet ivrogne stupide, la porte peut être ouverte. Tu es prêt à partir ? Mais attention, tu ne pourras pas faire marche arrière - la porte sera verrouillée, barrée et protégée par la magie une fois que tu l'auras franchie. Tu veux le faire ?"~ */
  IF ~~ THEN REPLY #48205 /* ~"Je suis prêt."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48206 /* ~"Je voudrais d'abord me reposer à l'auberge."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48207 /* ~"Je voudrais d'abord boire quelque chose."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48208 /* ~"Pas encore."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3 21.3
  SAY #48209 /* ~"Bon, eh bien, reviens et fais-moi savoir quand tu seras prêt."~ */
  IF ~~ THEN REPLY #48210 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #5 ~  Global("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #48211 /* ~"Tu es prêt à partir ? Tu ne pourras pas faire marche arrière - la porte sera verrouillée, barrée et protégée par la magie une fois que tu l'auras franchie. Tu veux le faire ?"~ */
  IF ~~ THEN REPLY #48212 /* ~"Je suis prêt."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48213 /* ~"Je voudrais d'abord me reposer à l'auberge."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48214 /* ~"Je voudrais d'abord boire quelque chose."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48215 /* ~"Pas encore."~ */ GOTO 20
END
