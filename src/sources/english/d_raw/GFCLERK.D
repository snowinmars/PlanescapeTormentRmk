// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~"So you're the one they're making all the fuss about, eh? Can't say I blame 'em... you look a dangerous sort. Go on, git out of here."~ */
  IF ~~ THEN REPLY #5910 /* ~Kill the old man.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~"I'd love to help ye, son, but it'd get me into more trouble than it's worth. Go on, come back some other time when the guards ain't breathing down y'neck."~ */
  IF ~~ THEN REPLY #5913 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~You see a wizened old man with trembling hands and a cunning face. He looks you over, carefully, and speaks: "Hel... uh... have I seen ye before? Ye seem familiar to me somehow."~ */
  IF ~~ THEN REPLY #5915 /* ~"I suppose it's possible."~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~"No chance, old man."~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~"From where? Do you remember where?"~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~"I'm here to pick up an item."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~"I needed some spare rags and forge gear."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~"I'm looking for a disguise."~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~"Who are you?"~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~"I'd like to pick up some gear for the forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~"Interesting. Farewell, old man."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~"Was there something else y'wanted?"~ */
  IF ~~ THEN REPLY #5925 /* ~"You mentioned having seen me before. Do you remember where?"~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~"No, I just wanted to see your smiling face."~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~"I'm here to pick up an item."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~"I needed some spare rags and forge gear."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~"I'm looking for a disguise."~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~"Who are you?"~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~"I'd like to pick up some gear for the forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~"Interesting. Farewell, old man."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~"I never forget a face... it'll come to me... aw, t'Baator with it."~ */
  IF ~~ THEN REPLY #5934 /* ~"Do you remember where? It's important to me."~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~"I'm here to pick up an item."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~"I needed some spare rags and forge gear."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~"I'm looking for a disguise."~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~"Who are you?"~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~"I'd like to pick up some gear for the forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~"Forget it, then. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~"I could swear I've seen ye before. Were y'ever a criminal?" The old man giggles quietly to himself. "Ah, forget it. It'll come to me."~ */
  IF ~~ THEN REPLY #5942 /* ~"Right. Then answer me some questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~"I hope not. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~"Not so fast, lad. Takes a while for the mind to warm up to a task like this. I've lived a long time, and seen a lot more faces in that time, and it ain't so easy to remember. Memory's a fleeting thing, and that's some ye can bank on."

Before replying, you mutter, "Tell me about it, 'lad'."~ */
  IF ~~ THEN REPLY #5945 /* ~"Then forget it. I'm here to pick up an item."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~"All right, then. I needed some spare rags and forge gear."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~"Fine. I'm looking for a disguise."~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~"Then can you tell me who you are?"~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~"Then I'd like to pick up some gear for the forge."~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~"Fine. So long, 'lad'".~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~"Do y'have a receipt? You need a receipt or I can't give you anything."~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~"I have a pair of them right here."~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~"Sure do. Here you go."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~"Sure do. Here you go."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~"Yes, I do."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~"Sure do. Here you go."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~"No."~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~"Forget it. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~"Y'do, eh? Well, all right. That'll come to... let's see... call it sixty copper."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~"Here you go."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~"I don't have that much."~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~"Forget it. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~"Forget it. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~"A disguise, eh? I can already guess what it might be for, and I'll give it to ye for the low price of sixty copper."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~"Here you go."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~"I don't have that much."~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~"Forget it. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~"Forget it. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~"Me? I'm Nadilin, Godsman fighter extraordinaire!" He sighs. "At least, I used to be. Now I'm a clerk in the Foundry, breathin' in this sooty air and hastenin' my dyin' day along."~ */
  IF ~~ THEN REPLY #5971 /* ~"That's a pity. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~"Right. That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~"Ah, ye're wanting to be a smith now, eh, lad? Very well. Ye'll need an apron - ten copper - some tongs - another ten - and a hammer - which'll be twenty. That comes to, let me see, fifty copper."~ */
  IF ~~ THEN REPLY #5974 /* ~"That comes to forty copper, old man."~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~Pay fifty copper.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~Pay fifty copper.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~"I'm sorry, but that sounds more like forty copper to me."~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~"Forget it. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~"I don't think I need that right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~"Bless ye, son. And now if ye'll excuse me, I have some windows to look out."~ */
  IF ~~ THEN REPLY #5981 /* ~"Err. Right."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~"I'll be right back with these." Minutes pass. He comes scurrying back and presents you with a pair of items: a small, nearly gauzy piece of metalwork and a finely crafted mace. "That first piece of work, that's over a hundred years old! You've been waiting for this for a long time, friend. How'd you come by it?"~ */
  IF ~~ THEN REPLY #5983 /* ~"I left it for myself, but I got busy."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~"It was a hand-me-down."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~"It was in a legacy."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~The old man takes your receipt and compares it to his records. He scurries off for a minute or two and comes back with a fine mace in his hands. "Here you go, lad."~ */
  IF ~~ THEN REPLY #5987 /* ~"Thanks. I had some questions."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~"Thanks. So long."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~The old man takes the receipt from you, and scrutinizes it carefully. "This thing's over a hundred years old! How'd you come by it?"~ */
  IF ~~ THEN REPLY #5990 /* ~"I left it for myself, but I got busy."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~"It was a hand-me-down."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~"It was in a legacy."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~He pauses for a moment. "If ye got a receipt, give it to me. Otherwise, I can't give you anything. Now, go on. I'm sure I can be a busy man without bein' played with by passersby."~ */
  IF ~~ THEN REPLY #5993 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~"Here you go, then. Smuggle that bitch out of here so we don't have to put up with her treachery no more."~ */
  IF ~~ THEN REPLY #5995 /* ~Lie: "What? That's not what I need it for!"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~"How do you know that?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~"Thanks a lot, old man. Farewell."~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~"Then I can't really give it to ye. Sorry."~ */
  IF ~~ THEN REPLY #5999 /* ~"Fine. Then answer me some questions."~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~He scrutinizes the receipt carefully, and looks back up at you. "Ain't this the same item I already gave to ye? I can't give it t'ye twice, y'know." He pockets the receipt. "Now go on. Git!"~ */
  IF ~~ THEN REPLY #6002 /* ~Leave.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~"What am I thinking? Of course it is. I tell you, memory's an insidious thing."~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~"That it is. Give me the stuff."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~"That it is. Give me the stuff."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~"Well, it's still too rich for my taste."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~"Don't forget to pick up some ore from Thildon if ye're wanting to work the forge. He's a miserly bastard, but he's the only person to get ore from."~ */
  IF ~~ THEN REPLY #6008 /* ~"Thanks. I had some other questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~"If ye're wantin' to work the forge, ye'll need to be gettin' some ore. Try out Thildon's replacement. I forget her name, but she should give it to ye with a minimum of fuss."~ */
  IF ~~ THEN REPLY #6011 /* ~"Thanks, old man. I had some questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~"Thank you, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~"That's a good one, lad. I'll just bet ye were busy!" He laughs to himself. He passes over his armload. "Here you go. Treat this work with care, y'hear?"~ */
  IF ~~ THEN REPLY #6014 /* ~"That I will. I had some more questions, though."~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~"I certainly will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~"Passed down through the generations, eh? You're lucky we didn't throw it away - we do, sometimes, or sell it off, when we can prove the customer ain't comin' back for his stuff. Well, here you go. Treat it well, y'hear?"~ */
  IF ~~ THEN REPLY #6017 /* ~"Will do. Answer me a few more questions, will you?"~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~"Will do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~"I see. Quite a catch you've made. Here you go, lad. Treat this metal well, hear?"~ */
  IF ~~ THEN REPLY #6020 /* ~"Sure thing. Answer me a question, will you?"~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~He looks at you disgustedly. "Give me some credit, lad. You've got your stuff. Now get on out of here or I'll change my mind 'bout callin' the guards."~ */
  IF ~~ THEN REPLY #6023 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~"I might be old an' dotty, but that don't mean I can't see what's what. Bedai-Lihn ain't been happy for some time, and she's never liked workin' for the fiends. Now go on. I'm sure I have somethin' t'do."~ */
  IF ~~ THEN REPLY #6025 /* ~Leave.~ */ EXIT
END
