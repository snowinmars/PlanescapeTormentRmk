// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~SO YOU HAVE COME.~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~YOU ARE UNWELCOME HERE, BROKEN ONE. ~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~"What have you done to my friends?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~"What have you done to my friend?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~"What have you done to my companions?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~"What have you done to my companion?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~"I know you for what you are - you are my mortality. Your armor - it is twisted like tree branches. Such things speak of Ravel's magicks."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~"I know you for what you are - you are my mortality. Your armor - it is twisted like tree branches. Such things speak of Ravel's magicks."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~"Who are you?"~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~THEY DIED FOR YOU AS THEY ALWAYS HAVE. SUCH IS THE WAY OF ALL MORTAL THINGS.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~HE DIED FOR YOU AS THEY ALWAYS HAVE. SUCH IS THE WAY OF ALL MORTAL THINGS.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~SHE DIED FOR YOU AS THEY ALWAYS HAVE. SUCH IS THE WAY OF ALL MORTAL THINGS.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~IT IS THE FATE OF ALL THAT FOLLOW YOU, BROKEN ONE. YOU HAVE FORGOTTEN MUCH. ~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~"Why did you do it?"~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~"Why did you do it?"~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~"Why did you do it?"~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~"Why did you do it?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~THEY TRIED TO HARM ME. *HERE,* OF ALL PLACES. I DEFENDED MYSELF. IN SO DOING, MORTALITY CLAIMED THEM. THEIR DEATHS WERE BY THEIR OWN HAND. ~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~HE TRIED TO HARM ME. *HERE,* OF ALL PLACES. I DEFENDED MYSELF. IN SO DOING, MORTALITY CLAIMED HIM. HIS DEATH WAS BY HIS OWN HAND. ~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~SHE TRIED TO HARM ME. *HERE,* OF ALL PLACES. I DEFENDED MYSELF. IN SO DOING, MORTALITY CLAIMED HER. HER DEATH WAS BY HER OWN HAND. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~SHE TRIED TO HARM ME. *HERE,* OF ALL PLACES. I DEFENDED MYSELF. IN SO DOING, MORTALITY CLAIMED HER. HER DEATH WAS BY HER OWN HAND. ~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~I GAVE THEM THE OPPORTUNITY TO DEPART THIS PLACE, BUT THEY SEEMED DETERMINED TO HELP YOU, DESPITE THE COST TO THEMSELVES.~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~"So you *killed* them."~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~"So you *killed* them."~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~"So you *killed* them."~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~"So you *killed* them."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~I GAVE HIM THE OPPORTUNITY TO DEPART THIS PLACE, BUT HE SEEMED DETERMINED TO HELP YOU, DESPITE THE COST TO HIMSELF.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~I GAVE HER THE OPPORTUNITY TO DEPART THIS PLACE, BUT SHE SEEMED DETERMINED TO HELP YOU, DESPITE THE COST TO HERSELF.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~I GAVE HER THE OPPORTUNITY TO DEPART THIS PLACE, BUT SHE SEEMED DETERMINED TO HELP YOU, DESPITE THE COST TO HERSELF.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~SHE WAS ESPECIALLY FIERCE IN YOUR DEFENSE. HER FEELINGS FOR YOU BURNED BRIGHTER THAN ELYSIUM'S FIRES. ~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~SHE WAS QUITE STRONG. HER TOLERANCE FOR PAIN WOULD HAVE KILLED THREE GREATER DEMONS.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~I TOOK NO PLEASURE IN THEIR DEATHS.~ */
  IF ~~ THEN REPLY #64051 /* ~"Then why did you *do* it?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~THE TIEFLING GIRL WAS ESPECIALLY FIERCE IN YOUR DEFENSE. HER FEELINGS FOR YOU BURNED BRIGHTER THAN ELYSIUM'S FIRES. ~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~THE TIEFLING GIRL WAS ESPECIALLY FIERCE IN YOUR DEFENSE. HER FEELINGS FOR YOU BURNED BRIGHTER THAN ELYSIUM'S FIRES. ~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~AND THE TANAR'RI... SHE WAS QUITE STRONG. HER TOLERANCE FOR PAIN WOULD HAVE SHAMED THE BAATEZU THEMSELVES.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~THE TANAR'RI WAS QUITE STRONG. HER TOLERANCE FOR PAIN WOULD HAVE SHAMED THE BAATEZU THEMSELVES.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~I TOOK NO PLEASURE IN HIS DEATH.~ */
  IF ~~ THEN REPLY #64049 /* ~"Then why did you *do* it?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~I TOOK NO PLEASURE IN HER DEATH.~ */
  IF ~~ THEN REPLY #64050 /* ~"Then why did you *do* it?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~IT WAS NOT MY WILL. IT WAS NOT I THAT BROUGHT THEM HERE.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~IT WAS NOT MY WILL. IT WAS NOT I THAT BROUGHT HIM HERE.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~IT WAS NOT MY WILL. IT WAS NOT I THAT BROUGHT HER HERE.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~ALL OF THEM HAD A CHOICE. AND THEY CHOSE TO DIE FOR YOU.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~HE HAD A CHOICE. AND HE CHOSE TO DIE FOR YOU.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~SHE HAD A CHOICE. AND SHE CHOSE TO DIE FOR YOU.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~IT HAS ALWAYS BEEN THE WAY OF ALL THAT FOLLOW YOU. FOR THEY ARE TORMENTED SOULS, SEEKING A RELEASE. BUT THEY KNOW NOT WHY.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~YOU HAVE FORGOTTEN THIS. AND YOU SHALL AGAIN.~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~"I know you for what you are - you are my mortality. Your armor - it is twisted like tree branches. Such things speak of Ravel's magicks."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~"I know you for what you are - you are my mortality. Your armor - it is twisted like tree branches. Such things speak of Ravel's magicks."~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~"Who are you?! Why have you done this?!"~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~CAN IT BE THAT YOU HAVE COME ALL THIS WAY AND KNOW NOT WHAT LIES AT THE END? ~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~"No, I know what you are - you are my mortality. Your armor - it is twisted like tree branches. Such things speak of Ravel's magicks."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~"No, I know what you are - you are my mortality. Your armor - it is twisted like tree branches. Such things speak of Ravel's magicks."~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~"What do you mean?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~I AM THAT WHICH WALKS WITH ALL LIFE. MY VOICE IS A DEATH RATTLE, A LAST BREATH IN THE THROAT, THE WHISPER OF A DYING MAN.~ */
  IF ~~ THEN REPLY #64065 /* ~"You... are my mortality."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~YES. I AM THAT WHICH WAS SPLIT FROM YOU BY THE HAG'S POWER. FREED FROM THE PRISON OF YOUR FLESH.~ */
  IF ~~ THEN REPLY #64066 /* ~"Freed from me?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~YES. I AM THAT WHICH WAS SPLIT FROM YOU BY THE HAG'S POWER. ~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~I AM THAT WHICH WALKS WITH ALL LIFE. MY VOICE IS A DEATH RATTLE, A LAST BREATH IN THE THROAT, THE WHISPER OF A DYING MAN.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~I HAVE BEEN FREED FROM THE PRISON OF YOUR FLESH.~ */
  IF ~~ THEN REPLY #64068 /* ~"Freed from me?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~THE MOMENT I WAS SPLIT FROM YOUR CANCEROUS SHELL, I KNEW LIFE. I KNEW FREEDOM. I SHALL NOT SURRENDER IT TO YOU.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~"We were not meant to be separated. And the planes have suffered because of our separation."~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~"You have proven quite troublesome to me and my previous incarnations, spirit. We were not meant to be separated."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~YOU KNOW *NOTHING* OF MEANING AND SEPARATION. BEFORE YOUR MEMORY DIES AGAIN, KNOW THAT WE WERE NEVER MEANT TO BE AS *ONE.* ~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~THIS SHALL BE THE LAST TIME YOU AND I SPEAK, BROKEN ONE.~ */
  IF ~~ THEN REPLY #64074 /* ~"Then there is something I would know, spirit - I have traveled far, and there are many questions you can answer."~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~"I will not surrender to you. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~I WILL INDULGE YOU THIS ONE LAST TIME. THEN THIS FORTRESS SHALL BE SILENT AGAIN.~ */
  IF ~~ THEN REPLY #65848 /* ~"Then my questions are these..."~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~"I will not surrender to you. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(This is a placeholder.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~DO YOU THINK I *FEAR* TO FACE YOU, BROKEN ONE? I DO NOT.~ */
  IF ~~ THEN REPLY #65852 /* ~"Is that why you send shadows to kill me rather than trying to defeat me yourself? They've never succeeded in killing me, nor *will* they."~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~"An iron golem, forged from the weapons of war, told me this once: When one kills from a distance and does not show himself, it speaks of weakness. It is how a *coward* fights."~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~"Is that why you send shadows after me rather than confronting me yourself? They've never succeeded in killing me... but that was never their *purpose,* was it? They only 'kill' me to make me forget."~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~"If you do not fear me yet, then you have one thing left to learn. For now, there are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~I SEND SHADOWS BECAUSE THEIR REACH IS LONG. YET IT IS *MY* EYES THAT GUIDE THEM.~ */
  IF ~~ THEN REPLY #65857 /* ~"So the shadows can travel distances you cannot."~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~THERE IS *NOTHING* I CANNOT DO.~ */
  IF ~~ THEN REPLY #65860 /* ~"Yet you never traveled beyond these walls to fight me... only sent shadows. That is how a *coward* fights."~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~MY ENERGIES ARE NEEDED TO SUSTAIN THIS PLACE, BROKEN ONE, ELSE IT WOULD BE *MY* HAND ON YOUR THROAT WITH EACH OF YOUR DEATHS. I MAY NOT TRAVEL BEYOND THESE FORTRESS WALLS FOR LONG.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~"I don't believe you. I think you're *afraid* to confront me... or else you are lying to me, and there is another reason you remain here..."~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~"I don't believe you. I think you're *afraid* to confront me... or else you are lying to me, and there is another reason you remain here..."~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~"I don't believe you. I think you're *afraid* to confront me... or else you are lying to me, and there is another reason you remain here..."~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~"Yet, even when I was within the Fortress walls, you sent Vhailor to try and stop me, when you could have stopped me yourself."~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~"Yet, even when I was within the Fortress walls, you sent that hollow suit of armor to try and stop me, when you could have stopped me yourself."~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~"Yet, even when I was within the Fortress walls, you sent Ignus to try and stop me, when you could have stopped me yourself."~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~"Yet, even when I was within the Fortress walls, you sent that insane burning sorcerer to try and stop me, when you could have stopped me yourself."~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~"Then that crystal you set up to try and segment me and trap me - you didn't want to kill me, you only wanted to imprison me."~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~THE MERCYKILLER SPIRIT WAS... CONVENIENT. MANY ARE THE INJUSTICES YOU HAVE COMMITTED, AND MANY ARE THE SCARS THEY HAVE LEFT ON THE PLANES. I GAVE THE SPIRIT ARMOR THE CHANCE TO *RECTIFY* THEM.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~"What did you tell him that turned him against me? He was my ally, and he followed me h-"~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~"Then you set up that crystal to try and trap me, and *that* failed."~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~I TOLD HIM OF YOUR *CRIMES.* I TOLD HIM HOW OTHERS DIE IN YOUR PLACE SO THAT YOU MIGHT LIVE. IT LENT HIM STRENGTH.~ */
  IF ~~ THEN REPLY #65875 /* ~"But that's YOUR crime, too. As long as we are separated, others will continue to die in our place. So Vhailor should have tried to kill *you.*"~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~"Then you set up that crystal to try and trap me, and *that* failed."~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~*I* HAVE COMMITTED NO CRIME. ~ */
  IF ~~ THEN REPLY #65878 /* ~"*You're* the one who keeps killing me, *you're* the one who's stacked the bodies of others so high the galleries of this Fortress are FILLED with shadows, and you DARE to say you've committed no crime? You're fortunate Vhailor's dead, or else *you* would be split upon his axe."~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~DO NOT SPEAK TO *ME* OF JUDGMENT. SOON THE PLANES SHALL JUDGE YOU, AND THERE SHALL BE AN ENDING OF THINGS BETWEEN US, BROKEN ONE.~ */
  IF ~~ THEN REPLY #65880 /* ~"But even after Vhailor failed, you *didn't* confront me, even though you claim you could have. You put that crystal in my path to try and imprison me."~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~THE SORCERER WAS... CONVENIENT. HIS RAGE FOR YOU RUNS DEEP. I THOUGHT IT FITTING HE BE ALLOWED *VENGEANCE* UPON YOU. IF THE PLANES CANNOT TEACH YOU MERCY, PERHAPS *PAIN* CAN.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~"He wanted revenge? For my teaching him the way of the Art and making him suffer?"~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~"He wanted revenge? For what?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~YES. AS PAIN TAUGHT HIM, I THOUGHT PAIN MIGHT TEACH YOU. BUT THE SORCERER WAS WEAKER THAN I THOUGHT, AND NOW YOU ARE HERE. SOON, THERE SHALL BE AN ENDING OF THINGS BETWEEN US, BROKEN ONE.~ */
  IF ~~ THEN REPLY #65885 /* ~"So you sent Ignus to try and stop me... but when he failed, then you *still* didn't confront me, even when you could have - instead, you put that crystal in my path to imprison me."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~IT IS NO MATTER. YOU HAVE *FORGOTTEN* SUCH THINGS. AND YOU SHALL AGAIN.~ */
  IF ~~ THEN REPLY #65887 /* ~"So you sent him to try and stop me... but when he failed, you *still* didn't confront me - you put that crystal in my path to imprison me."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~YES, THE CRYSTAL IS A PRISON, PERHAPS ONE OF THE GREATEST EVER DEVISED. ~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~I USED IT, FOR I TIRE OF TRACKING YOU ACROSS THE PLANES, NAMELESS ONE. YOU ARE... *DIFFICULT* TO FIND. I PREFER YOU BE KEPT CLOSE, WHERE I MAY WATCH YOU. THE CRYSTAL IS SUCH A PLACE WHERE YOU MAY BE KEPT.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~I WOULD KNOW *HOW* YOU FREED YOURSELF FROM THE CRYSTAL.~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~"Why am I difficult to find?"~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~"I had help. The woman I brought here long ago, Deionarra, freed me."~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~"My ways are my own. Know that that prison cannot hold me - just as you cannot stop me now."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~IT IS OF NO CONSEQUENCE. ~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~"Why not tell me, then? I will forget this anyway, and I would know this last time."~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~"Then there can be no harm in telling me."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~JUST AS THERE IS POWER IN NAMES, THERE IS POWER IN *NOT* HAVING A NAME. THE EYES OF THE PLANES SLIDE OFF SUCH A ONE. ONE SUCH AS YOU - AND ONE SUCH AS I.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~AH... THE LOVE-TORN SPIRIT. THERE ARE TIMES I HAVE FELT HER ECHO IN THE HALLS OF THIS FORTRESS. SHE SHALL *NOT* FREE YOU AGAIN.~ */
  IF ~~ THEN REPLY #65899 /* ~"She won't *need* to. There are others things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~SUCH ARROGANCE. WE SHALL TEST THAT ARROGANCE THIS DAY, BROKEN ONE.~ */
  IF ~~ THEN REPLY #65901 /* ~"We shall see. There are others things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~YOU KNOW *NOTHING.* ~ */
  IF ~~ THEN REPLY #65903 /* ~"Why is sustaining this place so important for you? If you are truly as powerful as you say, why would you want to remain here? There is NOTHING here."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~IT IS MY FORTRESS. IT IS MY HOME.~ */
  IF ~~ THEN REPLY #65905 /* ~"And what a home it is, too. Mortared from my regrets, with nothing but the shades of those we've murdered filling its halls, abandoned relics of the past languishing beneath dust, and the life-draining energies of the Negative Material Plane to feast the eyes on. There are words for places like that - they're called *prisons.*"~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~EVERY WORD BETRAYS YOUR IGNORANCE, BROKEN ONE. THE FORTRESS IS *SILENT.* ALL THAT COMES HERE *DIES* BEFORE INTRUDING INTO MY PRESENCE. AND THE SHADOWS ARE QUIET CREATURES.~ */
  IF ~~ THEN REPLY #65907 /* ~"I think you *have* to remain here, along with the shadows and the ghosts, because that's what you've become. I don't think you sustain this place at all. I think it sustains *you.*"~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~I REMAIN HERE BY *CHOICE.* ~ */
  IF ~~ THEN REPLY #65909 /* ~"*Really?* So when you said you can't journey beyond this Fortress for long, you were lying? And how is it possible that a Fortress built from MY regrets needs YOU to sustain it?"~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~I WILL SEE YOU DIE A *THOUSAND* DEATHS FOR YOUR INSOLENCE, BROKEN ONE. YOU ARE AN INTRUDER WITHIN THESE HALLS, AND I SHALL SEE TO IT YOU *NEVER* RETURN.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~"Consider this: you say we are linked. So when I suffer, you must suffer as well. Perhaps you are trapped here *because* you suffer, but differently than I do."~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~"I tire of your idle threats. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~WHAT IS THIS FOOLISHNESS YOU SPEAK OF?~ */
  IF ~~ THEN REPLY #65916 /* ~"Is it possible that as I die the death of the mind with each of my deaths, you die the death of the body? As I lose spirit, you lose substance. That's why you find it harder and harder to leave this Fortress and travel beyond this plane. This Fortress is not only your prison, it's going to become your tomb."~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~IMPOSSIBLE.~ */
  IF ~~ THEN REPLY #65919 /* ~"Is it? You said we were linked. Surely, you've felt your body wane over the past century - you even carry the branchings of Ravels' frame over yourself, and you *detest* her - but you need the frame over your spectral form to prevent yourself from decaying faster."~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~EVEN IF THERE WERE TRUTH IN YOUR WORDS, THERE IS NOTHING TO BE DONE. I WOULD SOONER DIE THE DEATH OF THE BODY HERE IN THIS FORTRESS THAN SUFFER EXISTENCE WITH YOU.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~"But why choose that slow, crawling oblivion when we have another solution? If you and I were to be re-united, both of us would cease suffering; we would become whole."~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~"But why die slowly when we could become one again? We'd stop torturing each other at last."~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~YOUR WORDS ARE *POISON* TO ME. I NO LONGER WISH TO BE A PART OF YOU AND SHARE YOUR *WRETCHED* EXISTENCE. LOOK AT YOU. YOUR SHELL IS BROKEN AND SCARRED. I WOULD RATHER DIE FREE THAN ENCASED IN YOUR SICKLY SHELL.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~"And look at *you.* A spectral creature that postures and boasts, but whose life and his power are figments of what life once was. Is that how you wish the planes to remember you after you fade into oblivion?"~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~"Very well. Then there are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~I DO NOT WISH TO TRADE ONE OBLIVION FOR ANOTHER. AND I DO NOT WISH TO INHABIT YOUR SHELL, BROKEN ONE.~ */
  IF ~~ THEN REPLY #65929 /* ~"It doesn't *have* to be oblivion. Who knows what will happen if we become whole? Perhaps you shall be yourself, and I shall be the one who dies. Or perhaps the two of us will become something *greater* than the parts."~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~"Very well. Then there are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~YOU KNOW NOT WHAT YOU SPEAK OF. IF WE ARE RE-UNITED, THEN IT SHALL BE AN ENDING. THERE SHALL BE NO *FUTURE* FOR US. WE SHALL GO ON TO FURTHER TORMENTS. I KNOW THIS.~ */
  IF ~~ THEN REPLY #65932 /* ~"Then we shall confront these torments together, as one being. And we shall defeat them."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~KNOW THAT IF WE BECOME ONE, WE SHALL SUFFER. THERE IS TOO *MUCH* OF THE NATURE OF THE FIRST ONE IN US FOR US TO BE SAVED. WE SHALL BE DAMNED. ~ */
  IF ~~ THEN REPLY #65934 /* ~"Then we shall take the battle to damnation itself, and we will become free again."~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~KNOW THAT I HAVE ALWAYS *HATED* YOU, BROKEN ONE. WHEN WE ARE ONE, I WILL CONTINUE TO *HATE* YOU. WHEN YOUR SHELL DIES AT LAST, KNOW THAT I SHALL TAKE *PLEASURE* IN YOUR DEATH. ~ */
  IF ~~ THEN REPLY #65936 /* ~"I can live with that - and so can the planes. If we are cast low, then you shall know pleasure in my suffering. But it is better that you join with me and hate me than we die slowly apart, with nothing but oblivion awaiting us."~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~KNOW THAT MY HATRED FOR YOU WILL *UNMAKE* THE PLANES. PREPARE YOURSELF. WE SHALL BE AS ONE AGAIN - UNTIL YOUR LAST MOMENTS OF LIFE.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~"Before we do, what of my friends? Is it possible to save them?"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~"Before we do, what of my companions? I would see their lives become their own again."~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~"Before we become one, I want the life of my friend returned to-"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~"Before we do, I demand you resurrect my companion."~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~I AM MORTALITY ITSELF. THE NATURE OF LIFE AND DEATH IS SOMETHING I KNOW... WELL. WHEN WE ARE ONE, MY KNOWING SHALL BE YOURS. ~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~"Very well. I am ready to become mortal again."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~THERE IS *NOTHING* IN YOUR SHELL OF A MIND THAT IS OF CONSEQUENCE, BROKEN ONE.~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~"Except one thing - now I know where you are and what you are, I could tell others, or find you again myself. One day I might remember how to reach you, and you will have to face me again. That's why you want me to forget, isn't it?"~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~"Except that - from what the Pillar of Skulls told me, there were three that knew where you could be found and how to reach you - one is Trias, one's you, and the other is me. If you kill Trias and I, there'll be no one who knows who you are and how to find you."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~"Except one thing - from what the Pillar of Skulls told me, there were three that knew where you could be found and how to reach you - one was Trias, but he's dead. One's you, and the other is me. Once I forget, there's no one in all of existence who knows who you are and how to reach you."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~YES, THE ANGEL THAT SHIELDS ITSELF WITH GOLDEN LIES. YOU LED ME TO HIM AT LAST. LIKE YOU, THE BETRAYER WAS DIFFICULT TO FIND. HE WILL DIE THE FINAL DEATH.~ */
  IF ~~ THEN REPLY #65949 /* ~"So you used me to find him? You wanted me to kill him, didn't you, so his knowledge would die - then you tried to kill me, so *I* would forget where to find you."~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~I SEE TIME'S BLADE HAS NOT BLED YOUR MIND OF ALL REASON. MY PURPOSE WAS ALWAYS SUCH: TO MAKE YOU FORGET. ~ */
  IF ~~ THEN REPLY #65951 /* ~"But *why?* Why do-"~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~BECAUSE I NEVER AGAIN WISH TO SUFFER YOUR *PRESENCE,* BROKEN ONE. YOU ARE AN IRRITATION, A REMINDER OF WHAT LIFE ONCE WAS, AND I DETEST SUCH REMINDERS. I WISH TO BE LEFT IN PEACE IN MY FORTRESS. ~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~AS YOU HAVE FORGOTTEN ME, I WISH TO FORGET YOU. FOREVER.~ */
  IF ~~ THEN REPLY #65955 /* ~"Then that is acceptable to me. But know that I will suffer your attacks no longer. You will keep the shadows here and allow me to live MY life, and I will allow you to live YOURS."~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~"I don't think that's the reason, either. I think you make me forget you because you FEAR me."~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~"But I no longer forget when I die. Perhaps once, but no longer."~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~YOU LIE. YOU HAVE ALWAYS FORGOTTEN. AND I HAVE ALWAYS REMEMBERED. IT WAS ALWAYS SUCH.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~"'Always' doesn't mean what it once did. I have already died once, and my memories returned to me, intact."~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~"'Always' doesn't mean what it once did. I have died, time and again, and my memories have returned to me."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~YOUR DECEPTIONS WILL NOT *SHIELD* YOU HERE, BROKEN ONE.~ */
  IF ~~ THEN REPLY #65962 /* ~"It is the truth. Killing me won't stop me - because killing me doesn't make me *forget* anymore. I'll know you always, I'll remember everything you've done, how to reach here, and eventually, how to destroy you."~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~THEN I SHALL IMPRISON YOU, NAMELESS ONE. IF YOU WILL NOT FORGET, THEN I SHALL NOT ALLOW YOU TO BE FREE.~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~"But I already escaped from 'the greatest prison ever devised.' You can't kill me, you can't hold me, and you can't make me forget myself any longer."~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~"But I already escaped from that crystal prison you threw in my path. You can't kill me, you can't hold me, and you can't make me forget myself any longer."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~YES... BUT IT WAS NOT YOUR DOING. THE LOVE-TORN SPIRIT FREED YOU. SHE SHALL NOT DO IT AGAIN. ONCE I CRUSH THE BONES FROM YOUR BODY, I WILL TAKE YOUR LIMP SHELL AND SEAL IT WITHIN THE CRYSTAL. YOU SHALL NEVER WALK THE PLANES AGAIN.~ */
  IF ~~ THEN REPLY #65967 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~"You can try. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~THEN I WILL FEED YOU TO THE SHADES. I WILL DEFEAT YOU HERE, THEN CAST YOU INTO THE SHADOW GALLERIES, WHERE THEY MAY FEED ON YOU. THEY WILL KILL YOU ACROSS THE SPAN OF SEVERAL ETERNITIES. YOU SHALL *NEVER* WALK THE PLANES AGAIN.~ */
  IF ~~ THEN REPLY #65970 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~"You can try. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~YOU HAVE NO *CHOICE,* BROKEN ONE. WHEN YOU LEAVE HERE, YOU WILL FORGET ALL THAT HAS TRANSPIRED. I NO LONGER WISH YOU TO KNOW HOW TO FIND ME. YOU WILL DIE THE DEATH OF THE MIND, AGAIN AND AGAIN, BECAUSE IT IS MY WILL.~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~"But I no longer forget when I die. Perhaps once, but no longer."~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~IT IS OF NO MATTER. YOU CANNOT DIE. YOUR MIND MAY BE LOST, BUT YOUR FLESH WILL LIVE ON.~ */
  IF ~~ THEN REPLY #65976 /* ~"Mind may be lost? What do you mean?"~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~I HAVE FELT YOUR SPIRIT ERODE. YET YOU LIVE ON. THAT IS ALL THAT IS NEEDED.~ */
  IF ~~ THEN REPLY #65978 /* ~"'Needed'? Why?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~IT IS OF NO MATTER. YOU CANNOT DIE. YOUR MIND MAY BE LOST, BUT YOUR FLESH WILL LIVE ON. THAT IS ALL THAT IS NEEDED.~ */
  IF ~~ THEN REPLY #65980 /* ~"'Needed'? Why?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~WE SHARE A LINK, YOU AND I, HOWEVER SMALL. I DO NOT WISH YOU DESTROYED, ONLY FAR FROM ME.~ */
  IF ~~ THEN REPLY #65982 /* ~"Then why have you been trying to *kill* me all this time?"~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~"If we're linked, then when I suffer, you must suffer as well."~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~"So you didn't want to kill me because if I were to die, that link would be broken..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~IT IS OF *NO* CONSEQUENCE. ~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~"Wait... those shadows you sent against me - they never succeeded in killing me... but that was never their *purpose,* was it? They only 'kill' me to make me forget."~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~"Wait... those shadows you sent against me - they never succeeded in killing me... but that was never their *purpose,* was it? They only 'kill' me to make me forget."~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~"Wait... those shadows you sent against me - they never succeeded in killing me... but that was never their *purpose,* was it? They only 'kill' me to make me forget."~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~"Is it? Maybe you didn't want to kill me because if I were to die, the link between us would be broken... and you would be destroyed as well."~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~THE WEAK SUFFER. I *ENDURE.* ~ */
  IF ~~ THEN REPLY #65991 /* ~"So if I were to die, that link would be broken..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~YOU CANNOT DIE. ~ */
  IF ~~ THEN REPLY #65993 /* ~"Well, if I cannot die, then you can't exist. You're my *mortality.*"~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~PERHAPS ONCE. NO LONGER. I HAVE CHANGED. I HAVE TRANSCENDED AND BECOME SOMETHING GREATER.~ */
  IF ~~ THEN REPLY #65995 /* ~"Perhaps so - but at your core, you are *still* my mortality. If I die, you die."~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~"So you concede a creature *can* change its nature?"~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~"But nothing can change the nature of a man. You said so yourself."~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~YOU KNOW *NOTHING* OF WHAT YOU SPEAK. YOUR WORDS ARE HOLLOW - AS IS YOUR SHELL.~ */
  IF ~~ THEN REPLY #66000 /* ~"I think I know exactly what I'm saying. If I were to be destroyed, you would be destroyed."~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~"We shall see. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~YOU LISTEN, BUT YOU DO NOT *HEAR.* KNOW THAT YOU CANNOT DIE.~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~"Actually, I can - now. I had a golem forge a weapon that can kill even me. All it needed was to be brought to a place cut off from the rest of the planes so my immortality could not draw upon other lives. And here I am."~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~"Perhaps not. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~YOU *LIE.*~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~Hold up blade: "Do I? Look upon this blade - see its nature. If you are as all-knowing and as-powerful as you CLAIM, then you will know this is the weapon that can unmake me."~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~Hold up blade: "Do I? Look upon this blade - see its nature. If you are as all-knowing and as-powerful as you CLAIM, then you will know this is the weapon that can unmake me. And since we share a link, it is the blade that can unmake YOU."~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~As you speak the words, holding the blade, you feel it twist in your hands, becoming something else. Something deadly beyond ANYTHING the planes have known.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~YOU WOULD NOT DARE SUCH A THING.~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~"You *know* I would. After all the misery you've put me through, I would gladly stab this right through your spectral hide."~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~"I will use the blade on myself if you do not surrender to me. You and I will both be destroyed."~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~Use the blade on yourself.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~IF I PERISH, *YOU* SHALL PERISH. OUR LINK SHALL BE BROKEN. YOU SHALL DIE THE FINAL DEATH.~ */
  IF ~~ THEN REPLY #66015 /* ~"Then as I see it, I have two choices - either we both die, or I let you kill me again and again, losing what few pieces of my mind I have left. I think I'd prefer the quick death - UNLESS you have a THIRD solution."~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~Use the blade on yourself.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~IT WOULD BE A FOOL'S GESTURE. YOUR DEATH WOULD HAVE NO MEANING.~ */
  IF ~~ THEN REPLY #66017 /* ~"As I see it, I have two choices - either I kill myself with this blade, or I let you kill me again and again, losing what few pieces of my mind I have left. I think I'd prefer the quick death - UNLESS you have a THIRD solution."~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~Use the blade on yourself.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~THERE IS NO RESOLUTION TO THIS MATTER. YOU WILL SURRENDER THE BLADE, THEN YOU WILL SUBMIT. YOU WILL LEAVE THIS FORTRESS, AND YOU WILL LEAVE WITHOUT YOUR MEMORY. THERE IS NO *OTHER* SOLUTION.~ */
  IF ~~ THEN REPLY #66020 /* ~"There is one other one. Re-unite with me. We will become one again, as we were meant to be."~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~YOU KNOW NOT WHAT YOU DO. IF WE ARE RE-UNITED, THEN IT SHALL BE AN ENDING. THERE SHALL BE NO *FUTURE* FOR US. WE SHALL GO ON TO FURTHER TORMENTS.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~"It is better *that* happen than the multiverse continues to suffer because of us."~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~"I am willing to risk such torments. I tire of fighting you across the planes and across time. It ends now."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~IF WE BECOME ONE, WE SHALL SUFFER. THERE IS TOO *MUCH* OF THE NATURE OF THE FIRST ONE IN US FOR US TO BE SAVED. WE SHALL BE DAMNED. YOU KNOW NOT WHAT YOU DO.~ */
  IF ~~ THEN REPLY #66025 /* ~"No, I know very well what I do. And I think this is the only answer. Prepare yourself."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~KNOW THAT I HAVE ALWAYS *HATED* YOU, BROKEN ONE. WHEN WE ARE ONE, I WILL CONTINUE TO *HATE* YOU. WHEN YOUR SHELL DIES AT LAST, KNOW THAT I SHALL TAKE *PLEASURE* IN YOUR DEATH. ~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~"I can live with that - and so can the planes."~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~"You shall know no pleasure, creature. You shall be my servant, and all you have accumulated across lifetimes shall be mine."~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~A NAME IS A THING EARNED BY A MAN THROUGH HIS ACTIONS. BY THE NATURE OF THAT, THE NAME WE ONCE HAD IS MEANINGLESS.~ */
  IF ~~ THEN REPLY #66031 /* ~"You don't *know* what our name was, do you?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~A NAME IS A THING GIVEN TO A MAN BY THOSE THAT SEE HIM FOR WHAT HE IS. BY THE NATURE OF THAT, THE NAME WE ONCE HAD IS MEANINGLESS.~ */
  IF ~~ THEN REPLY #66033 /* ~"You don't *know* what our name was, do you?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~A NAME IS A CLOAK OF LETTERS THROWN UPON A MAN. IT MEANS NOTHING.~ */
  IF ~~ THEN REPLY #66035 /* ~"You don't *know* what our name was, do you?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~YOU WILL NEVER KNOW YOUR NAME, BROKEN ONE.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~"Our name is known to me, creature. In knowing, I have become strong."~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~"You don't *know* what our name was, do you?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~THERE IS NO ONE IN ALL EXISTENCE THAT KNOWS OUR NAME. THIS IS OUR SHIELD. NAMES CARRY POWER. WHEN ONE IS *NAMELESS* AS WE ARE, THEN ONE IS STRONG. WE CANNOT BE HUNTED. WE CANNOT BE TRACKED. WE CANNOT BE HARMED.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~"Our name is known to me, creature. In knowing, I have become strong."~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~"Why was that ever important? Were we being hunted?"~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~YOU *LIE.* OUR NAME IS LOST, FORGOTTEN, AND SO IT SHALL REMAIN UNTIL ETERNITY DIES. ~ */
  IF ~~ THEN REPLY #66043 /* ~"Do I lie? If you are of me, you *know* when I deceive you. I do not lie now."~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~EVEN WITH SUCH KNOWING, YOU DO NOT HAVE THE POWER TO DEFEAT ME. ~ */
  IF ~~ THEN REPLY #66045 /* ~"Yes, I do - and I shall not allow you to trick me into a battle that is not even necessary. For in knowing my name, my true name, I know yours. There is nothing more you can do to me."~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~"We shall see, spirit. Prepare yourself, and we shall see if my mortality can die..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~I WILL *UNMAKE* YOU.~ */
  IF ~~ THEN REPLY #66048 /* ~"No, I will unmake *you.* I no longer wish you to inhabit the planes... farewell, and know that oblivion welcomes you."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~"No, you will not - you will rejoin with me, and we shall become as one again, as we were meant."~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~ALL THAT LIVES IS HUNTED. THE PREDATOR IS DEATH. IT HUNTS US NO LONGER.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~"Then know it hunts us now. Our name is known to me, creature. In knowing it, I have become strong."~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~"No, it now hunts for *others* in our place. Countless others are dying because you and I are separated. We cannot continue to live like this, or else we will continue killing others in our place."~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~EVERYTHING THAT LIVES DIES. THE SHADES HERE SUFFER, BUT FOR THEM, IT IS IMMORTALITY OF A SORT. I AM THE LIGHT IN THE DARKNESS OF THIS FORTRESS, AND THEIR HATRED IS FOR YOU, NOT I.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~"So you will allow innocents to suffer in our place?"~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~IF YOU WOULD END THEIR SUFFERING, SUBMIT TO ME. ALLOW YOURSELF TO BE KEPT IN THIS FORTRESS WITHIN THE CRYSTAL, AND INNOCENTS NEED NOT SUFFER. THEY SUFFER BECAUSE *YOU* DIE, NOT I.~ */
  IF ~~ THEN REPLY #66058 /* ~"I will not allow myself to be held prisoner... prepare yourself, spirit. We shall see if my mortality can die."~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~"Very well. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~THE QUESTION IS MEANINGLESS.~ */
  IF ~~ THEN REPLY #66061 /* ~"Nonetheless, before there is an ending between us, I will hear your answer."~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~THEN THIS IS MY ANSWER, AND YOU ARE THE PROOF. *NOTHING* CAN CHANGE THE NATURE OF A MAN.~ */
  IF ~~ THEN REPLY #66063 /* ~"Then that is all I wished to know. I shall prove you wrong... prepare yourself, spirit. We shall see if my mortality can die."~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~"If there is anything I have learned in my travels across the planes, it is that many things may change the nature of a man. Whether regret, or love, or revenge or fear - whatever you *believe* can change the nature of a man, can."~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~"You're wrong. Belief can change the nature of a man. I was able to unmake Vhailor with belief - I wonder if I could unmake myself."~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~"You're wrong. Belief can change the nature of a man. Once, long ago, I was able to make a man with belief - I wonder if I could unmake one, too."~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~"Then that is your answer. There is something else I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~THEN YOU LEARNED A FALSE LESSON, BROKEN ONE.~ */
  IF ~~ THEN REPLY #66069 /* ~"Have I? I've seen belief move cities, make men stave off death, and turn an evil hag's heart half-circle. This entire Fortress has been constructed from belief. Belief damned a woman, whose heart clung to the hope that another loved her when he did not. Once, it made a man seek immortality and achieve it. And it has made a posturing spirit think it is something more than a part of me."~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~YOUR DEFIANCE WILL HURT YOU MORE THAN ANY WOUND IN THIS PLACE. BELIEF CANNOT CHANGE THE NATURE OF A MAN.~ */
  IF ~~ THEN REPLY #66071 /* ~"I think it can. I think belief could even unmake me, if I believed it *enough.*"~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~"Perhaps I shall put it to the test later... for now, there are other things I would know."~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~YOU DO NOT POSSESS THE FORCE OF WILL FOR SUCH A THING.~ */
  IF ~~ THEN REPLY #66074 /* ~"So you admit it's possible."~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~"We shall see... perhaps I should try."~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~"Or if we share the link you say, perhaps I could unmake *you.*"~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~"Perhaps I shall put it to the test later... for now, there are other things I would know."~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~DO NOT TRY MY *PATIENCE,* BROKEN ONE. ~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~Focus your will inwards, center yourself.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~Try to focus, center yourself.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~"Perhaps I shall put it to the test later... for now, there are other things I would know."~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~YOU ARE A *FOOL* TO THINK YOU CAN ACHIEVE SUCH A THING. YOU CAN BARELY KEEP YOUR OWN TATTERED MIND INTACT. THERE IS NOWHERE LEFT FOR YOU TO FALL, BROKEN ONE.~ */
  IF ~~ THEN REPLY #66083 /* ~Keep focusing.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~As you focus, delving into the core of your being, you find little to latch onto, only fragments and pieces... and you realize that you cannot unmake yourself; you simply do not possess the will.~ */
  IF ~~ THEN REPLY #66085 /* ~"Perhaps not *this* time, spirit. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~*STOP.* YOU KNOW *NOT* WHAT YOU DO. ~ */
  IF ~~ THEN REPLY #66087 /* ~"I know what I do. You have tormented me enough, and now it ends."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~IF YOU DO THIS THING, *WE* SHALL BE UNDONE. THERE IS NO ONE FATE HERE. YOU DESTROY US BOTH.~ */
  IF ~~ THEN REPLY #66089 /* ~"As I see it, I have two choices - either I kill us both, or I let you kill me again and again, losing what few pieces of my mind I have left. I think I'd prefer we both die - UNLESS you have a THIRD solution."~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~"Then we shall both die. I shall unmake us both, creature."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~THERE IS NO OTHER RESOLUTION TO THIS MATTER. ~ */
  IF ~~ THEN REPLY #66092 /* ~"I think there is - we can become one again, as we were meant."~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~"Then we shall both die. I shall unmake us both, creature."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~NO. THEY ARE *DEAD.* DEAD THEY SHALL REMAIN.~ */
  IF ~~ THEN REPLY #66095 /* ~"Why? *Can't* you save them? Don't you have the power?"~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~"So you don't have the power to save them? So your powers *are* limited..."~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~"Then I shall see you JOIN them. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~DO NOT *QUESTION* MY POWER HERE, IN THIS PLACE. THERE IS NOTHING I CANNOT DO, NOW THAT I AM FREE OF YOU.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~"Then where's the harm in-?"~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~BUT IT IS NOT MY *WILL* THAT THEY BE SAVED. THEY CHALLENGED ME IN MY HOME, AND THEIR DEATHS SHALL BE REMINDERS TO ALL THAT CHALLENGE ME. ~ */
  IF ~~ THEN REPLY #66101 /* ~"You *can't* resurrect them, can you?"~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~"I don't think you have a choice. I don't think you *can* resurrect them."~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~"Perhaps you will join them soon enough. I had other things I would know..."~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~"Then I shall see you lying dead with them. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~BROKEN ONE, IN THE SPAN OF YOUR FORGOTTEN LIFETIMES, I HAVE OBSERVED, LEARNED, AND GATHERED POWER WITHIN THE VAULTS OF MY BODY. ~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~WHEN YOU FOUGHT IN THE BLACK DECADE WAR, ALL YOUR MILITARY KNOWLEDGE WAS CARVED IN MY MIND. WHEN YOU DANCED SORCERIES WITH LUM THE MAD, I LEARNED WITH YOU. ALL YOU HAVE FORGOTTEN, I HAVE *NOT.* THE POWER OVER LIFE AND DEATH IS BUT A MINOR DISPLAY OF MY POWER.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~"You say you learned *with* me; what I experienced, you experienced. Are you saying we share a link, you and I...?"~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~"So that link we share... it allows you to experience what I experience, learn what I learn..."~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~IT IS A SMALL THING, OF *NO* CONSEQUENCE. ~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~"No, I don't think so - if you claim *you* have the power, maybe I do, too."~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~"Deionarra told me that I could reverse death only when the victim had died close to me. But what she awakened in me - are you saying that was only a fraction of my power over life and death?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~YOUR MIND IS A BROKEN STONE, ITS EDGES DULL FROM MISUSE AND NEGLECT. EVEN IF YOU KNEW POWER, YOU WOULD NOT KNOW HOW TO HARNESS IT. ~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~"No, I don't think so - I think that link could work both ways. If you claim *you* have the power, maybe I do, too."~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~"If you claim *you* have the power, then I must have the power, too - even if I wasn't there at the moment of death."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~YOU DO NOT HAVE THE YEARS NEEDED TO LEARN THE ARTS OF LIFE AND DEATH. YOU WILL FALL BEFORE ME. ~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~You feel a stirring in your mind, and you suddenly realize you *do* possess the years needed to learn - for you knew it all once, across multiple incarnations. But the process will take time, and you know your mortality will *not* allow you the time you need. You may have the time to resurrect one companion, but no more than that.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~"You know, as I made my way here, I opened that inner vault. Those greater shadows are running free in the Fortress - they're no longer locked in that chamber."~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~Resurrect one of your companions...~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~Resurrect your companion...~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~"Then I shall leave them where they lie. There are other things I would know..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~Time seems to slow as you reach out, slowly, and you can feel the soul of your companion, faintly, and you know that you can draw it back into its body. ~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~Resurrect Morte.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~Resurrect Annah.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~Resurrect Dak'kon.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~Resurrect Fall-from-Grace.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~Resurrect Nordom.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~Resurrect Ignus.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~Resurrect Vhailor.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~"Then I shall leave them where they lie... there are other things I would know."~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~YOU *LIE.*~ */
  IF ~~ THEN REPLY #66128 /* ~"Then see for yourself, if you don't believe me - I'm not going anywhere."~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~I SHALL RETURN AND THEN TAKE YOUR MEASURE, BROKEN ONE. IF YOU HAVE FREED THE SHADOWS, I SHALL *FEED* YOU TO THEM.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~"Very well... I'll be here. IF you make it back."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~ASK YOUR QUESTIONS. BUT KNOW YOU SHALL NEVER REMEMBER THE ANSWERS.~ */
  IF ~~ THEN REPLY #66132 /* ~"You have done everything you can to prevent us from meeting face to face. Why?"~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~"Why did you send Vhailor after me when you knew he could kill me?"~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~"Why did you send Ignus after me when you knew he could kill me?"~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~"You said we share a link, you and I."~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~"I may be immortal, but Ravel told me the ritual was flawed: Whenever I die, I lose a fraction of my mind. In time, after many deaths, I shall lose the ability to even think for myself."~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~"We were not meant to be divided, spirit; our separation is unnatural. I cannot continue to live and die like this."~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~"If we are linked as you say, I would know my name."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~"If we are linked as you say, I would know my name."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~"If we are linked as you say, I would know my name."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~"If we are linked as you say, I would know my name."~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~"If we are linked as you say, then speak our name."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~"If we are linked as you say, then speak our name."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~"If we are linked as you say, then speak our name."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~"If we are linked as you say, then speak our name."~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~"My friends... I want their lives returned to them, and I want them to have free passage from this place."~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~"My companions... their lives are mine to take, not yours. I want them resurrected. Now."~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~"Resurrect my friend and give them free passage from this place. *If* you have that power."~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~"I demand you resurrect my companion and give them free passage from this place. *If* you have that power."~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~"Then this is my final question: What can change the nature of a man?"~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~"There is nothing more I wish to know. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~THEN PREPARE YOURSELF TO DIE AGAIN, BROKEN ONE. ~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~"Even if I die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~"Even if I die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Even if I die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Even if I die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~THIS WILL *NOT* HELP YOU. YOU HAVE RAISED YOUR COMPANION TO DIE A SECOND DEATH.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Even if we die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~"Even if we die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~"Even if we die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Even if we die, I'll come back for you. I *swear* it. I'll track you down again, no matter how long it takes."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~IT IS NOT MY *WILL* THAT YOUR COMPANION BE SAVED. YOUR MORTAL... *DOG* CHALLENGED ME IN MY HOME, AND ITS DEATH SHALL BE A REMINDER TO ALL THAT CHALLENGE ME. ~ */
  IF ~~ THEN REPLY #68453 /* ~"You *can't* resurrect my companion, can you?"~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~"I don't think you have a choice. I don't think you *can* resurrect my companion."~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~"Perhaps you will follow them to death's door soon enough. I had other things I would know..."~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~"Then you shall die as well. Prepare yourself, spirit. We shall see if my mortality can be slain." ~ */ GOTO 141
END
