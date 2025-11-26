// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DWSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~The scroll is filled with flowing, cryptic runes that you can make neither heads nor tails of. Perhaps a mage could decipher the meaning behind them.~ */
  IF ~~ THEN REPLY #62360 /* ~Put the scroll away.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~The scroll is filled with flowing, magical runes. As your eyes trace their glowing outlines, a sense of urgency and power fills your being. Unfortunately the concepts portrayed in the scroll are beyond your current intellect. ~ */
  IF ~~ THEN REPLY #62362 /* ~Put the scroll away.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~The scroll is filled with flowing, magical runes. As your eyes trace their glowing outlines, a sense of urgency and power fills your being. Clearly within your mind you see that this is a 'Wish' scroll... unfortunately, you have not acquired the experience to use it.~ */
  IF ~~ THEN REPLY #62364 /* ~Put the scroll away.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~The scroll is filled with flowing, magical runes. As your eyes trace their glowing outlines, a sense of urgency and power fills your being. Clearly within your mind you see that this is a 'Wish' scroll... what do you wish for?~ */
  IF ~~ THEN REPLY #62366 /* ~"I wish for an increase in my attributes..."~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~"I wish for an item of power in my possession..."~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~"I wish for wealth so that I may afford my dreams..."~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~"I wish for knowledge and experience, for therein lies true power..."~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~"I wish for my companions and myself to be at full health..."~ */ DO ~FullHeal(Player1)
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
  IF ~~ THEN REPLY #62371 /* ~"I wish for more arcane knowledge and the power that it brings with it..."~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~Put the scroll away.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~The runes begin to glow and pulse with power. Your mind is filled with an image of yourself, an image that you can mold to your desire... What attribute would you raise?~ */
  IF ~~ THEN REPLY #62374 /* ~Strength.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~Intelligence.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~Wisdom.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~Dexterity.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~Constitution.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~Charisma.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~Put the scroll away.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~Within your mind's eye you envision yourself as you are and as you wish to be. The power of the scroll flows through your being and reality bends to match the mental image you created. The scroll is consumed in a blaze of energy.~ */
  IF ~~ THEN REPLY #62382 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~Within your mind's eye you clench your fist tightly. Within your grasp is power in the form of an item to make you better than you are. The power of the scroll flows through your being and reality bends to match the mental image you created. The scroll is consumed in a blaze of energy.~ */
  IF ~~ THEN REPLY #62384 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~Within your mind's eye you see yourself showered in riches, the wealth of a king lying at your feet. The power of the scroll flows through your being and reality bends to match the mental image you created. The scroll is consumed in a blaze of energy.~ */
  IF ~~ THEN REPLY #62386 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~Within your mind's eye you see yourself experiencing many things. The visions are fleeting, always just beyond recognition, but still you learn from them. The power of the scroll flows through your being and reality bends to match the mental image you created. The scroll is consumed in a blaze of energy.~ */
  IF ~~ THEN REPLY #62388 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~Within your mind's eye you see your party suffering from the many wounds that have been inflicted upon you. Suddenly the wounds begin to mend and health returns to you all. The power of the scroll flows through your being and reality bends to match the mental image you created. The scroll is consumed in a blaze of energy.~ */
  IF ~~ THEN REPLY #62390 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~Within your mind's eye you see an ancient library filled with the knowledge of the arch-mage. You reach out and pluck several scrolls from amongst the shelves. The power of the scrolls flows through your being and reality bends to match the mental image you created. The scroll is consumed in a blaze of energy.~ */
  IF ~~ THEN REPLY #62392 /* ~Done.~ */ EXIT
END
