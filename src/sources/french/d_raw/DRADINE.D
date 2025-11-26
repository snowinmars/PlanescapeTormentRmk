// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRADINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRADINE~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20209 /* ~La femme pousse un cri aigu en te voyant. Elle se détourne pour fuir, le tatouage autour de son cou semblant légèrement se contorsionner tandis qu'elle s'enfuit.~ */
  IF ~~ THEN REPLY #20210 /* ~"Reste où tu es…"~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20211 /* ~Laisse-la partir.~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #20212 /* ~Son visage s'effondre lorsqu'elle te revoie. "Il a refusé de nouveau, n'est-ce pas ? Et tu es revenu prendre ce qui m'appartient de plein droit."~ */
  IF ~~ THEN REPLY #20213 /* ~"Ce qui t'appartient de plein droit ? Tu n'as aucun droit sur ce nom et ce numéro. Tu les as volés."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Radine_1","GLOBALLaw",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20214 /* ~"Tu n'as pas besoin de numéro pour vivre. Lui, si. Même si ça te fait mal, tu dois l'abandonner. Au bout du compte, ce sera mieux pour vous deux."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Radine_1","GLOBALGood",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20215 /* ~"Rends-les-lui ou j'les prendrai moi-même."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #20216 /* ~"Tu n'as pas besoin de son numéro pour vivre. Choisis-toi ton propre numéro, si ça te fait plaisir d'en avoir un."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Radine_1","GLOBALLaw",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20217 /* ~"Laisse tomber. Ça m'est bien égal."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.3 9.1 13.1
  SAY #20218 /* ~"Je suppose que tu as raison. J'ai été une mauvaise personne, c'est vrai. Et je ne peux pas le garder. Tiens." Elle détache le tatouage ondulant de son cou et te le tend. Elle tremble en le faisant. "Et tu peux lui dire son nom maintenant. Il était et il sera Ku'u Yin. Laisse-moi partir maintenant."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #20219 /* ~"Voilà un peu de jonc en dédommagement. Achète-toi ce qui te fera plaisir."~ */ DO ~TakePartyGold(30)
IncrementGlobalOnceEx("GLOBALGood_Radine_2","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #20220 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #20221 /* ~"Merci. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 7.0 19.0
  SAY #20222 /* ~Elle se rapetisse sous ta menace. "Il m'a dit alors que le numéro me protégerait des hommes mauvais. Prends cette foutue chose et fais-en ce que tu veux !" Elle arrache le tatouage ondulant de sa gorge, enlevant un bon morceau de peau avec, te le jette et s'enfuit.~ */
  IF ~~ THEN REPLY #20223 /* ~Poursuis-la.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20224 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #20225 /* ~"Mes remerciements, matois." Elle empoche l'argent, paraissant plus terne maintenant que la magie du tatouage la quitte. "J'ai intérêt à quitter cet endroit maintenant… et avec l'aide du jonc que tu m'as donné, peut être qu'on se reverra dans des circonstances plus heureuses pour tous les deux."~ */
  IF ~~ THEN REPLY #20226 /* ~"Oui. Au revoir, Radine."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20227 /* ~"Ne vole plus de noms, Radine. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #20228 /* ~Elle tourne la tête et s'en va en traînant, paraissant inanimée sans le numéro tatoué pour lui donner cet air de mystère. C'est la dernière vision que tu as d'elle.~ */
  IF ~~ THEN REPLY #20229 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #20230 /* ~Elle te regarde revenir d'un air déconcerté puis se sort de sa stupéfaction. Le tatouage autour de son cou se contorsionne. "Toi encore, eh, matois ? Je t'ai dit que je rendrai pas le nom et le numéro. Je vais te dire quelque chose - ce nom et ce numéro m'ont porté chance. Je suis prête à payer un bon prix, il pourra s'en acheter un tout nouveau, ça marche ?"~ */
  IF ~~ THEN REPLY #20231 /* ~"Combien est-ce que tu veux donner ?"~ */ GOTO 7
  IF ~~ THEN REPLY #20232 /* ~"Inutile. Donne-moi le nom et le numéro."~ */ GOTO 7
  IF ~~ THEN REPLY #45386 /* ~"Et si je te l'achetais ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 8.3
  SAY #20233 /* ~"Vingt belles pièces par exemple ? Cela devrait dépanner ce cher petit jusqu'à ce qu'il en achète un nouveau ? Sois un amour et va lui demander si le prix lui convient."~ */
  IF ~~ THEN REPLY #20234 /* ~"Donne-moi juste le nom et le numéro ou je te les arrache de force. Crois-moi, c'est pas dans ton intérêt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #20235 /* ~"Bien. Je vais voir ça avec lui. Réponds d'abord à quelques questions."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #20236 /* ~"Bien. Je vais voir ça avec lui."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #45387 /* ~"Et si je te l'achetais ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.1 9.3 10.2 11.2 12.1 13.2 14.1 15.0 16.1 17.0 19.1
  SAY #20237 /* ~"Peut-être que j'ai des réponses pour toi, peut-être que j'en ai pas."~ */
  IF ~~ THEN REPLY #20238 /* ~"Parle-moi de toi."~ */ GOTO 9
  IF ~~ THEN REPLY #20239 /* ~"Parle-moi de cet endroit."~ */ GOTO 11
  IF ~~ THEN REPLY #20240 /* ~"Parle-moi de ce tatouage."~ */ GOTO 10
  IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN REPLY #20241 /* ~"Combien tu proposais déjà ?"~ */ GOTO 7
  IF ~~ THEN REPLY #20242 /* ~"Bon, laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 11.0
  SAY #20243 /* ~"Moi ? J'ai deux noms maintenant et je ne vais t'en montrer qu'un - je ne veux pas que tu me voles le nouveau, eh, eh ! Tu peux m'appeler Radine, l'ami, et je ne lâcherai pas cet autre nom, ça c'est sûr."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20244 /* ~"L'homme à qui ce nom et ce numéro appartenaient veut les récupérer, sinon il en mourra."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20245 /* ~"Je sais que ce sera un sacrifice pour toi, je sais que ce sera dur d'abandonner ce que tu as, mais… aurais-tu la gentillesse de lui rendre son nom et son numéro ?"~ */ DO ~AddexperienceParty(250)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20246 /* ~"Deux noms, hein ? Ça doit être bien."~ */ GOTO 13
  IF ~~ THEN REPLY #20247 /* ~"J'en suis sûr. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #20248 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2 11.1
  SAY #20249 /* ~"Cette chose qui se tortille ? C'est un numéro d'identification. C'est mon numéro, il m'a été donné par un homme brave qui a vu que j'étais vulnérable sans la protection de numéros. Maintenant je l'ai et je n'ai jamais été aussi heureuse."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20250 /* ~"Cet homme veut le récupérer."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20251 /* ~"Intéressant. Comment ça marche ?"~ */ GOTO 14
  IF ~~ THEN REPLY #20252 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #20253 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY #20254 /* ~"Le Village Enseveli ? Un endroit assez plaisant, je suppose, si on n'est pas rebuté par la puanteur des cadavres déchiquetés, des immondices qui s'entassent sur le toit et la ruade incessante des rats. C'est beaucoup moins plaisant si tu n'as qu'un nom et aucun numéro pour te protéger, ça c'est sûr."~ */
  IF ~~ THEN REPLY #20255 /* ~"Parle-moi de ton nom."~ */ GOTO 9
  IF ~~ THEN REPLY #20256 /* ~"Parle-moi du numéro."~ */ GOTO 10
  IF ~~ THEN REPLY #20257 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #20258 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.0 14.0 16.0
  SAY #20259 /* ~Sa voix devient stridente. "Non, il ne peut pas les avoir ! Il me les a donnés et je les ai gardés. Il n'a jamais parlé de *prêt* et il n'a jamais dit qu'il les reprendrait ! Il ne les aura pas ! Tu peux aller le lui dire ! S'il a vraiment besoin d'un nom, tu peux lui dire qu'il peut prendre le mien… le nom 'Radine' devrait suffire à n'importe qui !"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20260 /* ~"S'il n'était pas assez bien pour toi… pourquoi le serait-il pour lui ?"~ */ GOTO 15
  IF ~~ THEN REPLY #20261 /* ~"Je vais lui dire. Donne-moi d'autres réponses…"~ */ GOTO 8
  IF ~~ THEN REPLY #20262 /* ~"Je vais lui dire. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45389 /* ~"Et si je te l'achetais ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY #20263 /* ~"Ouais, mon mignon, c'est ça."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20264 /* ~"L'homme à qui ce nom et ce numéro appartenaient veut les récupérer, sinon il en mourra."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20265 /* ~"Je sais que ce sera un sacrifice pour toi, je sais que ce sera dur d'abandonner ce que tu as, mais… aurais-tu la gentillesse de lui rendre son nom et son numéro ?"~ */ DO ~AddexperienceParty(250)
SetGlobal("KYName","GLOBAL",6)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20266 /* ~"Tu peux me donner d'autres réponses ?"~ */ GOTO 8
  IF ~~ THEN REPLY #20267 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #20268 /* ~"Les nombres apportent la sécurité, et avec la sécurité la chaleur, et avec la chaleur le réconfort. Les nombres peuvent faire tout ça pour toi, chéri, si tu respectes leur pouvoir."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20269 /* ~"L'homme qui t'a donné ce numéro veut le récupérer…"~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20270 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #20271 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #20272 /* ~"Il y a une grande différence entre grandir avec un nom et avoir le nom de quelqu'un d'autre, chéri. Une nouvelle attitude derrière un vieux nom peut tout changer. Tu as vu ce que j'ai fait avec celui-ci ?"~ */
  IF ~~ THEN REPLY #20273 /* ~"Je vais lui en parler. Mais d'abord, réponds à d'autres questions."~ */ GOTO 8
  IF ~~ THEN REPLY #20274 /* ~"Très bien. Je vais lui en parler. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #20275 /* ~Cette femme a repris son regard distant mais son esprit ne s'est pas autant éloigné cette fois - elle n'est pas aussi étonnée de te revoir. "Encore toi, hein ?"~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20276 /* ~"Tu es Radine? L'homme dont tu as pris le nom veut le récupérer." ~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20277 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 8
  IF ~~ THEN REPLY #20278 /* ~"Non, désolé. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #20279 /* ~Tu aperçois une femme au visage ridé vêtue de façon terne. Ses yeux sont distants et on dirait qu'une nouvelle vitalité se dégage de sa peau, comme si on lui avait donné une nouvelle vie. Elle porte un tatouage autour du cou. Elle sursaute lorsque tu lui parles. "Eh ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #20280 /* ~"Je voulais juste te poser quelques questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #20281 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 7.3 12.3
  SAY #45388 /* ~Elle te regarde comme si tu avais perdu l'esprit. "T'es complètement azimuté, ou quoi ? Évidemment que je refuse de monnayer mon nom !"~ */
  IF ~~ THEN REPLY #45391 /* ~"Pourquoi pas ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #45390 /* ~"Parce que c'est le mien, bige ! Et ça, ça se vend pas !"~ */
  IF ~~ THEN REPLY #45392 /* ~"Donne-moi juste le nom et le numéro ou je te les arrache de force. Crois-moi, c'est pas dans ton intérêt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,0,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #45393 /* ~"Bien. Je vais voir ça avec lui. Réponds d'abord à quelques questions."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #45394 /* ~"Bien. Je vais voir ça avec lui."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
END
