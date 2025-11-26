// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10124 /* ~Tu vois une vieille femme aux habits bon marché. Elle paraît s'être donné beaucoup de mal pour avoir l'air plus jeune et plus séduisant qu'elle ne l'est réellement. En t'approchant, tu détectes une odeur de piquette.~ */
  IF ~~ THEN REPLY #10125 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #10126 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10127 /* ~Elle se tourne vers toi, le visage rougeaud à la suite d'un excès de boisson. "Et bien, bonjour ! Tu cherches de la… compagnie ?" Elle te sourit et semble alors te voir vraiment pour la première fois. "Oh, tu m'as l'air en piteux état, toi. Que… qu'est-ce qui t'es arrivé, hein ?"~ */
  IF ~~ THEN REPLY #10128 /* ~"J'espérais te poser des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10129 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #10130 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10131 /* ~Elle se penche vers toi et pose les mains à plat sur ton torse. "Pas… b'soin d'questions. Si t'as l'jonc… j'ai tout ce qu'y t'faut. Ma guitoune est just' là. On y va."~ */
  IF ~~ THEN REPLY #10132 /* ~"Ça ne m'intéresse pas. Il faut que tu me donnes quelques informations."~ */ GOTO 3
  IF ~~ THEN REPLY #10133 /* ~"Combien ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10134 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10135 /* ~Elle met les mains sur ses hanches. "Heu… 'coute un peu, bige. Faut que j'gagne ma vie, tu vois ? Bon, t'es p't'êt' un peu dans les vapes, mais… tu trouves qu'j'ai l'air d'un sage ? Mes réponses, elles sont là." Elle t'ouvre ses bras.~ */
  IF ~~ THEN REPLY #10136 /* ~"Peu importe. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #10137 /* ~"Combien ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #10138 /* ~Elle sourit et glousse. "Ooooh, j'préfère ça… Cinq piécettes et j'crie, mais j'dis rien…" Elle te dévisage, attendant ta réponse.~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10140 /* ~"Allons-y…"~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 5
  IF ~  PartyGoldLT(5)
~ THEN REPLY #10139 /* ~"Excuse-moi, je n'ai pas l'argent."~ */ EXIT
  IF ~~ THEN REPLY #10141 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10142 /* ~Elle t'emmène à sa guitoune et te raccompagne dans la rue une heure plus tard. "R'passe quand tu veux… J'suis à ton service." Elle sourit et te salue de la main.~ */
  IF ~~ THEN REPLY #10143 /* ~"Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #10144 /* ~Elle fronce les sourcils. "Hé… pas la peine d'êt' impoli. Si tu sais pas êt' gentil, rest' pas avec moi. Tire-toi!" Elle se détourne et s'éloigne.~ */
  IF ~~ THEN REPLY #10145 /* ~Laisse-la tranquille.~ */ EXIT
END
