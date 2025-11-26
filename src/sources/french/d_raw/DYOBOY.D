// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~Bien qu'armé jusqu'aux dents et assez large d'épaules pour être dangereux, ce jeune homme musclé a la mise trop soignée pour être un vrai dur des rues. Il porte une grosse hache dans une main et une boîte en acier dans l'autre. Il bombe le torse et t'adresse un rictus en te voyant approcher. "Qu'est-ce que tu regardes, pauvre mec ? Va caguer si tu veux pas que j'te garrotte sur le pavé !"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~"Tu m'as l'air un peu trop propre sur toi pour être un vrai dur."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~"Du calme… j'ai juste quelques questions à te poser…"~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~Il lance un regard assassin à Annah mais garde le silence.~ */
  IF ~~ THEN REPLY #46043 /* ~"Tu m'as l'air un peu trop propre sur toi pour être un vrai dur."~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~"Du calme… j'ai juste quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~"Arrête de branler ton râtelier, crâne de piaf ! Ici, c'est *mon* territoire, et tu as intérêt à filer sans attendre si tu veux pas que mes 'sanguinaires' te découpent en morceaux !"~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~"Je me demande ce qu'il peut bien y avoir dans ta boîte."~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~"Non, je crois que je vais rester dans le coin."~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~"Très bien, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~Il grince des dents et rougit de colère. "Bon, d'accord, tu l'as cherché, tu vas caguer ! On se le fait, les affranchis !" Il brandit sa hache et se rue à l'attaque !~ */
  IF ~~ THEN REPLY #46052 /* ~Bats-toi.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~Fuis.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~Interloqué, il hausse les épaules en regardant la boîte. "Je sais pas, et j'arrive pas à l'ouvrir, cette saleté. Je crois que c'est une sorte de tête parlante, mais elle s'est tue quand je l'ai laissé tomber. Je voulais la vendre à la brocante, mais cette crétine de Vris en a pas voulu. T'es intéressé ? Pour cent pièces de cuivre, elle est à toi."~ */
  IF ~~ THEN REPLY #46055 /* ~"Attends ! Où as-tu trouvé ça ?"~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~"C'est bien la tête du cadavre de la Salle des Fêtes, pas vrai ?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~"D'accord, je la prends."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~Le jeune homme a l'air penaud, ce qui est proprement risible compte tenu de sa musculature. "Je l'ai… euh, trouvée, explique-t-il enfin. Et ça te regarde pas, de toute façon ! Tu la veux ou quoi ? Si tu la veux, c'est cent pièces. Sinon, je la garde, cette saleté."~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~"C'est bien la tête du cadavre de la Salle des Fêtes, pas vrai ?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~"D'accord, je la prends."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~"J'en sais foutre rien !" s'emporte-t-il. "Et qu'est-ce que j'en ai à caguer, hein ? Je l'ai trouvée, c'est tout, et ce que je trouve, je le garde. Elle m'appartient de droit, maintenant. Tu la veux, tu payes le prix fixé ! Cent pièces de cuivre ! Sors ton jonc, bige !"~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~"D'accord, je la prends."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~"Et si on le jouait dans un concours ?"~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~"Et si je me contentais de te mettre KO et de la prendre ?"~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~"Hein ?"~ */
  IF ~~ THEN REPLY #46069 /* ~"Un duel, hein ? Bon, je te propose de procéder de la façon suivante : prends ta hache et frappe-moi une fois, où tu veux. Après ça, si je suis encore capable de prendre la boîte, elle m'appartient. Sinon, tu gagnes tout ce que j'ai sur moi."~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~"Peu importe, je vais plutôt te l'acheter."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~"Laisse tomber. Je vais plutôt t'assommer et te la prendre."~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~Il observe sa hache puis te regarde, l'air sceptique.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~"Qu'est-ce qu'il y a ? Tu as peur que je sois une sorte d'immortel à qui ta hache ne peut faire aucun mal ? Tu m'as bien regardé ?"~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~"Qu'est-ce qu'il y a ? Tu as peur que je sois une sorte d'immortel à qui ta hache ne peut faire aucun mal ? Tu m'as bien regardé ?"~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~"Peu importe, je vais plutôt te l'acheter."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~"Laisse tomber. Je vais plutôt t'assommer et te la prendre."~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~Le malfrat plante sa hache dans ton corps. D'un seul coup, la lourde lame déchire tes chairs et pulvérise tes os. Te voilà mort.~ */
  IF ~~ THEN REPLY #46080 /* ~Tu sombres dans l'obscurité…~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~Le malfrat plante sa hache dans ton corps. D'un seul coup, la lourde lame déchire tes chairs et pulvérise tes os. Tu craches une belle gerbe de sang avant de dédier ton plus beau sourire à ton agresseur. Il te fixe, éberlué, alors que tu lui fais signe de te donner la boîte.~ */
  IF ~~ THEN REPLY #46082 /* ~"Allez, donne-moi cette boîte. Dommage que tu n'aies pas compris plus tôt que j'étais immortel et ta hache ne pouvait pas me faire de mal, hein ? Au revoir."~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~Prends la boîte et abandonne-le là, hébété.~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~Le jeune malfrat s'empare de tes pièces de cuivre et te jette la boîte en acier. "Et maintenant, dégage. Que je te voie plus sur mon chemin, bige."~ */
  IF ~~ THEN REPLY #46085 /* ~"Oui, oui, si tu le dis… allez, au revoir."~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~Pars.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~Le jeune malfrat te regarde approcher d'un air moqueur. "Encore toi ? Va caguer, bige !"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~"Tu m'as l'air un peu trop propre sur toi pour être un vrai dur."~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~"Du calme… j'ai juste quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~Pars.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~Le jeune malfrat te regarde approcher d'un air moqueur. "Branle ton satané râtelier autant que ça te plaira, bige ! Compte pas sur moi pour te jouer la chansonnette."~ */
  IF ~~ THEN REPLY #46092 /* ~"Si tu le dis. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~Pars.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~Le jeune dur trapu grimace en te voyant approcher. "Encore toi ?! Va cag…" Il se tait soudain et te dévisage en se grattant la tête. "Dis… Ne t'aurais-je pas… mais…"~ */
  IF ~~ THEN REPLY #61593 /* ~"Oui, oui, je sais. J'ai quelques questions…"~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~"Oui, en effet - et tu vas le payer cher."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~Pars.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END
