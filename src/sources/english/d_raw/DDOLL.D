// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~The years have not been kind to this tiny rag doll; it is coming apart at the seams, and it looks like its threads are unraveling. It looks like some strange robed woman with a halo of spikes on her head.~ */
  IF ~~ THEN REPLY #22981 /* ~"Awwww... you're just a cute little dolly, aren't you? Aren't you? Yes, you are!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~Put the doll away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~The doll does not respond to your coaxing, merely stares at you with its button eyes.~ */
  IF ~~ THEN REPLY #22983 /* ~"All right, all right... I was just trying to have a little fun... sheesh."~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~The years haven't been kind to this tiny rag doll; it is coming apart at the seams, and it looks like its threads are unraveling. It is obviously intended to be a replica of the Lady of Pain, but the button eyes and its plush softness don't strike much fear into your heart. ~ */
  IF ~~ THEN REPLY #22984 /* ~"Awwww... you're just a cute little Lady of Pain, aren't you? Aren't you? Yes, you are!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~Joke: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~Joke: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~Put the doll away.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~As you are about to say the words, you suddenly feel a strange crawling sensation in the back of your skull. With it comes a premonition that saying those words will place you in terrible danger... even *feeling* as you do could prove dangerous.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~Put the doll away.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~The doll does not respond to your coaxing, merely stares at you with its button eyes.~ */
  IF ~~ THEN REPLY #22997 /* ~"Awwww... you're just a cute little Lady of Pain, aren't you? Aren't you? Yes, you are!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~Joke: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~Joke: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~Put the doll away.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~As you say the words, you suddenly feel an icy chill come over you... accompanied by a feeling of dread. Something is wrong, and the rag doll doesn't seem as harmless as it once did. For a moment, just a moment, you thought the blades surrounding the doll's head took on a metallic sheen.~ */
  IF ~~ THEN REPLY #23007 /* ~"Awwww... you're just a cute little Lady of Pain, aren't you? Aren't you? Yes, you are!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~Joke: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~Put the doll away.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~The years haven't been kind to this tiny rag doll; it is coming apart at the seams, and it looks like its threads are unraveling. It is obviously intended to be a replica of the Lady of Pain, but the button eyes and its plush softness don't strike much fear into your heart. ~ */
  IF ~~ THEN REPLY #51955 /* ~"Awwww... you're just a cute little Lady of Pain, aren't you? Aren't you? Yes, you are!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~Truth: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~Joke: "Oh, great Lady of Pain, goddess of Sigil, hear my plea for aid and help me in my hour of need."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~Put the doll away.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~The doll does not respond to your coaxing, merely stares at you with its button eyes. Now that you're outside of Sigil, maybe the doll simply doesn't FEEL like being the Lady of Pain right now. ~ */
  IF ~~ THEN REPLY #51961 /* ~Give the doll a quick hug, then put it back in your pack.~ */ EXIT
END
