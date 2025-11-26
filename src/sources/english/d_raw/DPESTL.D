// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42050 /* ~This man closely resembles Pestle Kilnn, though without the crawling skin and constant, subtle mutations. "Greetings again, sir, and well met. And what is it I, Pestle, can do for ye?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42051 /* ~"I was hoping to get some healing concoctions."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42052 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #42053 /* ~"I wanted to buy something..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42054 /* ~"Just passing by, actually. Farewell, Pestle."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #42055 /* ~"Yes, of course; yer reward, aye? Let's see, now... I'll manufacture them for ye for nothing, of course... but I'll need the proper ingredients. Hmmm... an oni's heart, or powdered hematite, or the hair of a deva, or a thread from an aasimon's robe, or the blood of a regenerating creature, such as a troll or..."~ */
  IF ~~ THEN REPLY #42056 /* ~"Actually, my wounds heal *very* quickly."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42057 /* ~Pestle raises an eyebrow. "Do they, now? Well, then, your own blood just might do. Here... give me a sample, if you would."~ */
  IF ~~ THEN REPLY #42058 /* ~Give him a bit of your blood.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveItemCreate("ClotChrm",Protagonist,10,0,0)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42059 /* ~After drawing a small quantity of your blood and retreating to the back of the store, Pestle returns with a number of what appear to be hardened drops of blood. "Placed upon one's tongue, these Clot Charms will heal existing wounds and aid in the prevention of new ones, for a time."~ */
  IF ~~ THEN REPLY #42060 /* ~"Thanks, Pestle. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #42061 /* ~"My thanks. I wanted to buy something, now..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42062 /* ~"Farewell, Pestle, and thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.0 6.1
  SAY #42063 /* ~"My humblest apologies, sir, but I only speak of the store. Besides, I rarely leave the place, ye see? Ye'd be better off finding another to answer yer questions."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42064 /* ~"The old engineer in the Foundry tells me I need to get a sample of my blood and skin for his machine to work. I need you to do that for me."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 5
  IF ~~ THEN REPLY #42065 /* ~"I wanted to buy something, then..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42066 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42067 /* ~"A scraping? Very well." He takes up a razor blade and a wide-mouthed bottle. Pestle then removes a small section of skin from your forearm, placing it into the bottle along with a small quantity of your blood. He then places some gauze over your wound and hands you the bottle. "Ye need anything more, sir?"~ */
  IF ~~ THEN REPLY #42068 /* ~"Yes... I wanted to purchase something."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42069 /* ~"No, that's all. Thanks, and farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #42070 /* ~You see Pestle, the alchemist. "Greetings again, sir, and well met. And what is it I can do for ye?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42071 /* ~"I was hoping to get some healing concoctions."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42072 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #42073 /* ~"I wanted to buy something..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42074 /* ~"Just passing by, actually. Farewell, Pestle."~ */ EXIT
END
