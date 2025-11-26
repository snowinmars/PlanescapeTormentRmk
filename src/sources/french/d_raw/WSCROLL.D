// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~WSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~Le parchemin porte des runes occultes auxquelles tu ne comprends goutte. Peut-être un mage saurait-il les déchiffrer.~ */
  IF ~~ THEN REPLY #62360 /* ~Range le parchemin.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~Le parchemin porte des runes magiques. Tandis que tu suis du regard leurs volutes scintillants, un sentiment de puissance et d'urgence te remplit. Hélas, les concepts inscrits sur ce parchemin échappent pour l'instant à ton entendement. ~ */
  IF ~~ THEN REPLY #62362 /* ~Range le parchemin.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~Le parchemin porte des runes magiques. Tandis que tu suis du regard leurs volutes scintillants, un sentiment de puissance et d'urgence te remplit. Tu vois clairement qu'il s'agit d'un parchemin de 'Souhait'… Hélas, tu n'as pas encore acquis l'expérience nécessaire pour l'utiliser.~ */
  IF ~~ THEN REPLY #62364 /* ~Range le parchemin.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~Le parchemin porte des runes magiques. Tandis que tu suis du regard leurs volutes scintillants, un sentiment de puissance et d'urgence te remplit. Tu vois clairement qu'il s'agit d'un parchemin de 'Souhait'… Que concerne ton souhait ?~ */
  IF ~~ THEN REPLY #62366 /* ~"Je souhaite une augmentation de mes caractéristiques…"~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~"Je souhaite avoir un objet de pouvoir en ma possession…"~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~"Je souhaite une fortune qui me permettra de m'offrir mes rêves…"~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~"Je souhaite du savoir et de l'expérience, car c'est là que réside le vrai pouvoir…"~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~"Je souhaite que mes compagnons et moi-même retrouvions la pleine santé…"~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 9
  IF ~~ THEN REPLY #62371 /* ~"Je souhaite plus de savoir magique et le pouvoir qu'il entraîne…"~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~Range le parchemin.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~Les runes brillent et clignotent. Une image de toi-même emplit ton esprit, une image que tu peux modeler à ton gré. Quelle caractéristique désires-tu augmenter ?~ */
  IF ~~ THEN REPLY #62374 /* ~Force.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~Intelligence.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~Sagesse.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~Dextérité.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~Constitution.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~Charisme.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~Range le parchemin.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~En esprit, tu te représentes tel que tu es et que tu te voudrais. Le pouvoir du parchemin coule en toi, et la réalité se gauchit pour se conformer à ton image mentale. Le parchemin se consume dans un flamboiement d'énergie.~ */
  IF ~~ THEN REPLY #62382 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~En esprit, tu serres le poing. Tu as à ta portée un objet qui te rendra meilleur. Le pouvoir du parchemin coule en toi, et la réalité se gauchit pour se conformer à ton image mentale. Le parchemin se consume dans un flamboiement d'énergie.~ */
  IF ~~ THEN REPLY #62384 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~En esprit, tu te vois couvert de richesses, un trésor à tes pieds. Le pouvoir du parchemin coule en toi, et la réalité se gauchit pour se conformer à ton image mentale. Le parchemin se consume dans un flamboiement d'énergie.~ */
  IF ~~ THEN REPLY #62386 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~En esprit, tu te vois faire toutes sortes d'expériences. Les visions sont fugaces, à peine si tu les entrevois, et pourtant instructives. Le pouvoir du parchemin coule en toi, et la réalité se gauchit pour se conformer à ton image mentale. Le parchemin se consume dans un flamboiement d'énergie.~ */
  IF ~~ THEN REPLY #62388 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~En esprit, tu vois ton groupe souffrir des blessures qui vous ont été infligées. Soudain, ces blessures se referment et la pleine santé vous revient. Le pouvoir du parchemin coule en toi, et la réalité se gauchit pour se conformer à ton image mentale. Le parchemin se consume dans un flamboiement d'énergie.~ */
  IF ~~ THEN REPLY #62390 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~En esprit, tu vois l'antique bibliothèque d'un archimage. Tu tends la main pour saisir plusieurs parchemins sur les rayonnages. Le pouvoir du parchemin coule en toi, et la réalité se gauchit pour se conformer à ton image mentale. Le parchemin se consume dans un flamboiement d'énergie.~ */
  IF ~~ THEN REPLY #62392 /* ~Terminé.~ */ EXIT
END
