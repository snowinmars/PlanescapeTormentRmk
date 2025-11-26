// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNEML.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNEML~

IF ~  Global("Nemelle","GLOBAL",0)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #35996 /* ~This tall, slender woman, sipping wine from a small ceramic cup, appears to be looking for someone. Her facial features are elegantly exotic and the woman's ears, though partially covered by her long hair, can be seen to come to sharp points.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #35998 /* ~"Greetings."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #43924 /* ~"Greetings."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #43925 /* ~"Greetings."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43926 /* ~Leave the woman be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43927 /* ~The woman turns to face you, violet eyes flashing like flawless chips of amethyst. Her speech is as music; you can hear a faint, musical tinkling, a hundred tiny crystal bells, as she speaks. Each word lingers in your ears, as if they were unwilling to relinquish the exquisite sound. "Nemelle turned to face the scarred, dour stranger. She asked what he wished of her."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43928 /* ~"You're Nemelle? I was told you know the command word for this decanter."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43929 /* ~"Nemelle? Your friend, Aelwyn, is looking for you."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~I told Nemelle her friend, Aelwyn, was looking for her. She rewarded me with a magical kiss, which increased my maximum hit points by three.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43930 /* ~"Are you looking for someone?"~ */ GOTO 14
  IF ~~ THEN REPLY #43931 /* ~"I had some questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #43932 /* ~"Nothing, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #43933 /* ~The woman turns to face you, violet eyes flashing like flawless chips of amethyst. Her speech is as music; you can hear a faint, musical tinkling, a hundred tiny crystal bells, as she speaks. Each word lingers in your ears, as if they were unwilling to relinquish the exquisite sound. "Nemelle turned to face the scarred, dour stranger. She asked what he wished of her."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 467
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #43934 /* ~The woman turns to face you, violet eyes flashing like flawless chips of amethyst. Her speech is as music; you can hear a faint, musical tinkling, a hundred tiny crystal bells, as she speaks. Each word lingers in your ears, as if they were unwilling to relinquish the exquisite sound. "Nemelle turned to face the scarred, dour stranger. She asked what he wished of her."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 468
END

IF ~~ THEN BEGIN 4 // from: 1.0 17.0 18.0 19.0
  SAY #43935 /* ~The woman makes no move to touch or examine the decanter, but only speaks. "Nemelle took it from the stranger, turning it in her hands. Had she seen its like before, she thought? Perhaps... yes, she remembered now. She returned the decanter, whispering into his ear as she did so..."~ */
  IF ~~ THEN REPLY #43936 /* ~"Uh..."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",2)
DestroyPartyItem("Decant",FALSE)
GiveItemCreate("Decant2",Protagonist,1,0,0)
~ JOURNAL #39492 /* ~A mysterious woman named Nemelle gave me the command word for the magical decanter I had found: 'Nildennosaj.'~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43937 /* ~You realize you know the word, now - 'Nildenosaj' - though you're certain the woman never whispered to you, but merely said she did. She blinks at you. "Would the stranger leave her, now, satisfied with what she had told him?"~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
!Global("Aelwyn","GLOBAL",2)
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43938 /* ~"Not yet. I found Aelwyn."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~I told Nemelle I found her friend, Aelwyn, for her. She rewarded me with a magical kiss, which increased my maximum hit points by three.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43939 /* ~"Not yet. Your friend, Aelwyn, is looking for you."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~I told Nemelle her friend, Aelwyn, was looking for her. She rewarded me with a magical kiss, which increased my maximum hit points by three.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43940 /* ~"Not just yet. Are you looking for someone?"~ */ GOTO 14
  IF ~~ THEN REPLY #43941 /* ~"No... I had some questions."~ */ GOTO 11
  IF ~~ THEN REPLY #43942 /* ~"Yes, I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 5.1 15.0 17.1 18.1
  SAY #43943 /* ~Nemelle's lips form a perfect smile; an infectious happiness radiates from her, clinging to you like sweet-smelling warmth. "Nemelle was overjoyed to hear of her friend. Was Aelwyn close by?"~ */
  IF ~~ THEN REPLY #43944 /* ~"She's at another cafe east of here, across this part of the Ward."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43945 /* ~"Nemelle thanked the man for his wondrous news. Soon, she would go to visit her oldest friend, Aelwyn. Now, though, she would reward the stranger..."~ */
  IF ~~ THEN REPLY #43946 /* ~"No, that's all right... I need no reward."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #43947 /* ~Wait for her to reward you.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43948 /* ~Nemelle touches her index finger to her lips, making a faint hushing noise.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #43949 /* ~"She would draw the stranger close, laying her hand upon his chest and kissing the pale, leathery skin of his cheek. Life would flow into him, invigorating him... this, then, was to be his reward."~ */
  IF ~~ THEN REPLY #43950 /* ~Wait.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
AddexperienceParty(8000)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43951 /* ~As you wait, there is a light tingling sensation upon your cheek and chest. The feeling spreads across the whole of your body, and you begin to feel stronger, more animated.~ */
  IF ~~ THEN REPLY #43952 /* ~"Thanks. I had some questions."~ */ GOTO 11
  IF ~~ THEN REPLY #43953 /* ~"My thanks, Nemelle. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 5.3 10.0 17.3 18.2
  SAY #43954 /* ~"Nemelle listened to the stranger's questions, but could answer none. He would have to seek his answers elsewhere."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67835 /* ~"Fine. But... are you looking for someone?"~ */ GOTO 14
  IF ~~ THEN REPLY #43955 /* ~"But... I haven't even asked..."~ */ GOTO 12
  IF ~~ THEN REPLY #43956 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #43957 /* ~Nemelle smiles at you, slowly shaking her head, your face reflected in her shimmering eyes. "Frustrated, confused, he at last gave up. It was clear this woman possessed no more knowledge that was of use to him - or if she did, she could not be persuaded to share it."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67830 /* ~"Fine. But... are you looking for someone?"~ */ GOTO 14
  IF ~~ THEN REPLY #43958 /* ~"What? No... just let me ask you something..."~ */ GOTO 13
  IF ~~ THEN REPLY #43959 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #43960 /* ~You open your mouth, but no words come out. Try as you might, you cannot question her. Nemelle shakes her head sadly.~ */
  IF ~~ THEN REPLY #43961 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2 5.2 11.0 12.0 17.2
  SAY #43962 /* ~"'Where could she be?' Nemelle wondered. Her companion, Aelwyn, was supposed to have met her here days ago." The woman sighs miserably; the air around her grows chill with her sadness. "How long must she search this vast, foreign city before she finds her dearest friend?"~ */
  IF ~~ THEN REPLY #43963 /* ~"I could help you find your friend. What does she look like?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_2","GLOBALGood",1)
SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #43964 /* ~"I could find her for you - for a price, of course."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nemelle_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #43965 /* ~"I hope you find her. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #43966 /* ~Nemelle clasps her hands together and bows her head to you. "She would be so pleased to hear news of her friend! She told the kind stranger what Aelwyn looked like, so that he would know her should he come across her." An image forms in your mind - a woman who resembles Nemelle, but with golden eyes and hair of fiery crimson.~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43967 /* ~"I've actually met that woman."~ */ JOURNAL #39493 /* ~I offered to find a woman for a mysterious woman I met, Nemelle. As it turns out, I already knew where this woman, Aelwyn, was. Nemelle rewarded me with a magical kiss, which increased my maximum hit points by three.~ */ GOTO 6
  IF ~~ THEN REPLY #43968 /* ~"I'll return if I find her. Farewell."~ */ JOURNAL #39491 /* ~I offered to find someone named Aelwyn for a mysterious woman I met, Nemelle. I understand Aelwyn to be a tall, beautiful woman with golden eyes and crimson hair.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #43969 /* ~Nemelle speaks slowly, her eyes downcast: "She knew, as the stranger soon would, the she had nothing to give. Whatever the man's price, she could not meet it."~ */
  IF ~~ THEN REPLY #43970 /* ~"I'll do it as a favor, then."~ */ DO ~SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43971 /* ~"Forget it, then. Farewell."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43972 /* ~"Forget it, then. Farewell."~ */ EXTERN ~DMORTE~ 471
END

IF ~  Global("Nemelle","GLOBAL",1)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #43973 /* ~The woman smiles as she greets you, her beauty no less breathtaking than the first time you saw her. "Again she met the stranger. 'Why,' she wondered, 'could he have come to me once more?'"~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43974 /* ~"Nemelle... I was told you know the command word for this decanter."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43975 /* ~"Your friend, Aelwyn, is looking for you."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~I told Nemelle her friend, Aelwyn, was looking for her. She rewarded me with a magical kiss, which increased my maximum hit points by three.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43976 /* ~"Are you looking for someone?"~ */ GOTO 14
  IF ~~ THEN REPLY #43977 /* ~"I had some questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #43978 /* ~"Nothing, actually. Farewell."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",2)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 18 // from:
  SAY #43979 /* ~The woman smiles as she greets you, her beauty no less breathtaking than the first time you saw her. "Nemelle held her breath as the stranger approached her. 'Had he found Aelwyn?' she wondered."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43980 /* ~"I was told you know the command word for this decanter."~ */ GOTO 4
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43981 /* ~"I found Aelwyn. She was looking for you, too."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~I told Nemelle I found her friend, Aelwyn, for her. She rewarded me with a magical kiss, which increased my maximum hit points by three.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43982 /* ~"I haven't found her. I had some questions..."~ */ GOTO 11
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43983 /* ~"No, I was just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",3)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 19 // from:
  SAY #43984 /* ~Nemelle clasps her hands together and bows her head. When she finally looks up and smiles at you, a wave of pleasure washes over your body - the effect is almost dizzying. "Nemelle thanked the stranger once more; she only hoped he knew how happy she felt to be reunited with Aelwyn."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #68508 /* ~"Not... a problem. I... I was told you know the command word for this decanter."~ */ GOTO 4
  IF ~~ THEN REPLY #68510 /* ~"I... think I do. Farewell, Nemelle."~ */ EXIT
END

IF ~  Global("Attack_Nemelle","AR0600",1)
~ THEN BEGIN 20 // from:
  SAY #43986 /* ~The woman snarls at you, her violet eyes flashing like burning points of pure hatred. She speaks as if reading from a book: "'You fool,' she cried. 'How dare you attack a daughter of Asaharm so! A dog you are...' She narrowed her eyes at him. '...and like a dog, you shall die!'" She then regards you coolly, sipping from her cup of wine.~ */
  IF ~~ THEN REPLY #43987 /* ~"Huh...?"~ */ GOTO 21
  IF ~~ THEN REPLY #43988 /* ~Ignore her, press your attack.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #43989 /* ~You drop to the ground, howling in agony... your insides seem to churn and you begin to cough up great gouts of steaming, black blood. At last you collapse to the street, quivering, the last shreds of life fading from your body...~ */
  IF ~~ THEN REPLY #43990 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END
