// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUATRAA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUATRAA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45430 /* ~Moving from box to box, this man seems to be totally immersed in counting boxes and scribbling results down on a piece of parchment. He looks annoyed as you interrupt him. "What is it now? Can't you see I'm busy taking inventory? Go bother someone else."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45085 /* ~"I was told to deliver this box to you."~ */ GOTO 2
  IF ~~ THEN REPLY #45431 /* ~"I didn't mean to interrupt. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45432 /* ~"You again! I thought I told you not to bother me."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45433 /* ~"I was told to deliver this box to you."~ */ GOTO 2
  IF ~~ THEN REPLY #45434 /* ~"I didn't mean to interrupt. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #45435 /* ~"Well, why didn't you say so in the first place? Let's see what you got for me. I'm sure it'll need to be inventoried."~ */
  IF ~~ THEN REPLY #45437 /* ~"Mar told me to give this to you."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45438 /* ~As you hold the box out for him to take, Ku'atraa's expression turns from one of interest to that of intense horror. "No! Please... get it away from me!"~ */
  IF ~~ THEN REPLY #45439 /* ~"I don't understand... why are you afraid of this box?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45440 /* ~"I said... g-get back! Death... evil... had to d-dupe Mar... couldn't take it anymore. Please... take to Brasken... lives southwest... Hive... me... noooooo!" Apparently the sight of the box is just too much for him as he runs screaming from the building.~ */
  IF ~~ THEN REPLY #45441 /* ~"Wait! What am I supposed... to... do... with..." ~ */ DO ~SetGlobal("FedEx","Global",2)
SetGlobal("Alpha","Global",2)
SetGlobal("Beta","Global",1)
AddexperienceParty(250)
StartCutSceneMode()
StartCutSceneEx("3009cut1",FALSE)
~ JOURNAL #39488 /* ~I had a strange encounter with Ku'atraa, who I was entrusted by Mar to deliver this strange box to. Ku'atraa seemed to be afraid of whatever lies within it. When I showed it to him he became so frightened that he began to babble and then took flight. From what I could make out from the man's ramblings, he wanted me to take the box to someone named Brasken, who lives somewhere in the southwestern section of the Hive. I can only hope that this Brasken fellow will clear things up and take this box off my hands. I can't but feel a little bit uneasy every time I look at it.~ */ EXIT
END
