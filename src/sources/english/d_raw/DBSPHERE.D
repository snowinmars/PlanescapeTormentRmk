// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSPHERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSPHERE~

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #62409 /* ~This simple bronze sphere is about a foot across, but it is surprisingly light, as if hollow inside. ~ */
  IF ~~ THEN REPLY #62412 /* ~Examine the sphere.~ */ GOTO 1
  IF ~~ THEN REPLY #62413 /* ~Put the sphere away. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #62410 /* ~Although its basic appearance is normal enough, this sphere somehow manages to offend the rest of your senses. The texture of the sphere, just the 'feel' of it gives you the impression it's an egg that's just about to burst open - just touching it makes your skin crawl. To make matters worse, the faint smell of rotten custard emanates from it, and it makes your eyes water.~ */
  IF ~~ THEN REPLY #62414 /* ~Put the sphere away. ~ */ EXIT
END

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64916 /* ~As you hold the sphere up this time and examine it, you feel the memories of the first of your incarnations stirring within you, but it is not an insistent or driving force - it is calm, like the thoughts of a man walking across a great distance to speak to a friend he hasn't seen in ages. ~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64917 /* ~As you feel his presence in your mind, you see the sphere in a different light - not as ugly, or hideous, but as something precious, like a newborn child - the sphere is the repository of your last moments, before you met Ravel on the Gray Waste and asked the impossible of her. ~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64918 /* ~You know why you asked her. And you know that all you need to do is touch the surface of the sphere with both hands and *feel* regret, and the stone will open itself to you. ~ */
  IF ~~ THEN REPLY #64919 /* ~Clasp the stone and feel regret. ~ */ DO ~DestroyPartyItem("BSphere",TRUE)
~ GOTO 5
  IF ~~ THEN REPLY #64920 /* ~Let the memories stay where they are, buried in bronze.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64921 /* ~The sphere wrinkles in your hands, the skin of the sphere peeling away into tears and turning into a rain of bronze that encircles you. Each droplet, each fragment that enters you, you feel a new memory stirring, a lost love, a forgotten pain, an ache of loss - and with it, comes the great pressure of regret, regret of careless actions, the regret of suffering, regret of war, regret of death, and you feel your mind begin *buckling* from the pressure - so MUCH, all at once, so much damage done to others... so much so an entire FORTRESS may be built from such pain.~ */
  IF ~~ THEN REPLY #64922 /* ~Try to focus, keep your center.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64923 /* ~And suddenly, through the torrent of regrets, you feel the first incarnation again. His hand, invisible and weightless, is upon your shoulder, steadying you. He doesn't speak, but with his touch, you suddenly remember your name. ~ */
  IF ~~ THEN DO ~GiveExperience(Protagonist,2000000)
FullHealEx(Protagonist)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64924 /* ~...and it is such a *simple* thing, not at all what you thought it might be, and you feel yourself suddenly comforted. In knowing your name, your true name, you know that you have gained back perhaps the most important part of yourself. ~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64925 /* ~In knowing your name, you know yourself, and you know, now, there is very little you cannot do. The first incarnation's hand is gone from your shoulder, and he is watching you with a slight smile.~ */
  IF ~~ THEN REPLY #64927 /* ~"That was my name all along? But if I was-"~ */ DO ~SetGlobal("Know_Nameless_Name","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64926 /* ~The first incarnation holds his finger to his lips, silencing you. He nods at the symbol at your arm, as if indicating you should make use of it.~ */
  IF ~~ THEN REPLY #64929 /* ~Examine your arm.~ */ DO ~GiveItemCreate("SymTorm",Protagonist,0,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64928 /* ~The symbol - the symbol of Torment - seems brittle somehow, as if it is only barely holding itself to your skin. Unconsciously, you reach out and peel it from your arm.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #64931 /* ~As you get halfway through your question, you realize there is a heavy silence within your mind - you can no longer feel the presence of the first incarnation within you.~ */
  IF ~~ THEN REPLY #64935 /* ~Take the symbol of Torment.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #64938 /* ~ It gives way with a slight resistance, like pulling off a scab. As you hold the symbol, you know you can harness its power. It no longer rules you. ~ */
  IF ~~ THEN REPLY #64939 /* ~"I no longer wear the symbol. Does that mean...?"~ */ GOTO 11
END
