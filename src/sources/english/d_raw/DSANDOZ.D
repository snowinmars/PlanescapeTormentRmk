// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSANDOZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSANDOZ~

IF ~~ THEN BEGIN 0 // from:
  SAY #46769 /* ~A muffled voice comes out from behind the door. "Go away!"~ */
  IF ~~ THEN REPLY #46770 /* ~"Are you Sandoz?"~ */ GOTO 2
  IF ~~ THEN REPLY #46915 /* ~"All right, I'm leaving. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46916 /* ~Sandoz' voice is muffled by the thick door. "What do you want?" The voice sounds desperate and lonely.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46917 /* ~"I'm here to talk to you, Sandoz."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46918 /* ~"I'm here to tell you what your daughter said."~ */ GOTO 4
  IF ~~ THEN REPLY #46919 /* ~"I'm here to tell you that you might as well end it all."~ */ GOTO 6
  IF ~~ THEN REPLY #46920 /* ~"They said I should come talk to you. I guess they don't want you dead?"~ */ GOTO 8
  IF ~~ THEN REPLY #46921 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #46922 /* ~The voice snaps, "Who else would I be? These are my rooms, this is my faction." It laughs bitterly. "This is where I'm going to die."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46923 /* ~"Tell me about yourself, Sandoz."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46924 /* ~"Would you like to hear what your daughter said?"~ */ GOTO 4
  IF ~~ THEN REPLY #46925 /* ~"Well, good luck with it, then. No one really cares."~ */ GOTO 6
  IF ~~ THEN REPLY #46926 /* ~"They said I should come talk to you. I guess they don't want you dead?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #46927 /* ~"You want to talk? Is that what you want? How about you listen?" The voice pauses, and then gathers steam. "What's the point of it, that's what I want to know. Why do we do the things we do? What's the thing that keeps us driving, hm?"~ */
  IF ~~ THEN REPLY #46928 /* ~Wait for him to continue.~ */ GOTO 15
  IF ~~ THEN REPLY #46929 /* ~"I'd say it's life that keeps us driving."~ */ GOTO 11
  IF ~~ THEN REPLY #46930 /* ~"I don't know, what?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #46931 /* ~There is a pause. The voice comes, more brittle than before. "You talked to my daughter?"~ */
  IF ~~ THEN REPLY #46932 /* ~"Yes. This is what she said: 'All life is a test. One cannot expect to skip to the end directly. That is not the answer. Only the Doomguard and the Dustmen believe in utter decay - and you have always held them in contempt. Remember this.'"~ */ GOTO 5
  IF ~~ THEN REPLY #46933 /* ~"Yes, and she said that you might as well kill yourself."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46934 /* ~He laughs, hollowly. "She said all that, did she? Give me a minute."~ */
  IF ~~ THEN REPLY #46935 /* ~"Take all the time you need."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 4.1 9.2 10.4 13.1 15.1
  SAY #46936 /* ~You hear a muffled sob, a curse, and a pause. You hear the scraping of wood on the floor, a sudden flurry of movement, and the unmistakable snap of breaking bone.~ */
  IF ~~ THEN REPLY #46937 /* ~"That's that, then..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
SetGlobal("G_Test3","GLOBAL",7)
MoveToPoint([337.740])
PlaySoundNotRanged("SPE_11")
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0 14.0
  SAY #46938 /* ~When it speaks again, the voice sounds a little more balanced. "Go down and tell Keldor you've talked some sense into me. I'll want to see him eventually... but you've done your job. Go on now."~ */
  IF ~~ THEN REPLY #46939 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("G_Test3","GLOBAL",6)
SetDoorLocked("ar0511d1",FALSE)
OpenDoor("ar0511d1")
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 2.3
  SAY #46940 /* ~"I see... send a concerned stranger to talk me out of it, eh? Ha!" The voice drops to a conspiratorial tone. "Did they tell you you could join 'em if you just came to talk to me? Did they think it would make you care more?"~ */
  IF ~~ THEN REPLY #46941 /* ~Wait for him to continue.~ */ GOTO 9
  IF ~~ THEN REPLY #46942 /* ~"I just wanted to see if I could help."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46943 /* ~"Well? Say something! Or are you suddenly mute? Ha! If you had seen half the things I'd seen... half the things I'd seen..."~ */
  IF ~~ THEN REPLY #46944 /* ~"What have you seen?"~ */ GOTO 10
  IF ~~ THEN REPLY #46945 /* ~"You have no idea what *I* have seen, Sandoz, and you don't see me threatening to kill myself, do you? Get a grip on yourself, man, and grow up."~ */ GOTO 13
  IF ~~ THEN REPLY #46946 /* ~"Probably better for you to try to expunge that with sweet oblivion, then..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46947 /* ~"I have seen horrors beyond imagining. I have seen a twisted, tortured god, bound by laughing fiends. I have seen a layer of the Abyss distill itself into the essence of a single individual... I have seen all the laws of nature perverted and I have seen all the truths of man turned upside-down. None of it makes sense to me anymore, and I cannot bear it any longer! What's the point, I ask you, what's the point?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46948 /* ~"That's the entire basis of the Godsmen philosophy, Sandoz. Just remember that you're going through tests. What's being tested now is your grasp, or perhaps the expanse of your intellect. Look at what you've done, and ask what you're supposed to learn."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #46949 /* ~"That's the entire basis of the Godsmen philosophy, Sandoz. Just remember that you're going through tests. What's being tested now is your grasp, or perhaps the expanse of your intellect. Look at what you've done, and ask what you're supposed to learn."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46950 /* ~"That's the entire basis of the Godsmen philosophy, Sandoz. Just remember that you're going through tests. What's being tested now is your grasp, or perhaps the expanse of your intellect. Look at what you've done, and ask what you're supposed to learn."~ */ GOTO 12
  IF ~~ THEN REPLY #46951 /* ~"I don't know what the point is, but it seems that life itself should be the point."~ */ GOTO 11
  IF ~~ THEN REPLY #46952 /* ~"There is no point."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 3.1 8.1 10.3
  SAY #46953 /* ~He spits scornfully. You hear the saliva hit the door. "Go away until you grow yourself a brain or find someone to give you the answers." He does not answer any further queries you make for now.~ */
  IF ~~ THEN REPLY #46954 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2 16.0 17.1
  SAY #46956 /* ~He barks out a sharp laugh. "They taught you well, at least. Let me think about this. I hope you've got some time."~ */
  IF ~~ THEN REPLY #46957 /* ~"All the time in the world, Sandoz. Think it over."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #46958 /* ~There is a short, sharp breath from behind the door, and then a low, unamused chuckle. "You're not much on tact, are you? What if I told you I had my head in a noose right this instant?"~ */
  IF ~~ THEN REPLY #46959 /* ~"I'd tell you to stop being ridiculous and face reality. Killing yourself won't change anything. It just means you've failed your test."~ */ GOTO 14
  IF ~~ THEN REPLY #46960 /* ~"I'd dare you to do it. Frankly, if you're such a coward that you consider killing yourself, I don't think you're brave enough to follow through on it."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46961 /* ~"You... All right, then... give me a minute to think this out..."~ */
  IF ~~ THEN REPLY #46962 /* ~"Take all the time you need."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.2
  SAY #46963 /* ~"Pride! Pride and ego! We keep telling ourselves that we can be something, that we mean something, that there's a reason we're here, but in the end... in the end it's all just blackness. I've *seen* that final blackness and there's no reason to deny it. Yet we keep pushing on out of foolish pride. There's no reason to it."~ */
  IF ~~ THEN REPLY #46964 /* ~"Did you ever consider that you became a Godsman for a reason?"~ */ GOTO 16
  IF ~~ THEN REPLY #46965 /* ~"Now that you mention it, you're right..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #46966 /* ~"What do you mean?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46967 /* ~"You found a reason once. You believed that all we face is a test. You believed that we're here to push past that final blackness, to overcome it. Don't tell me you've gotten weak now."~ */ GOTO 12
  IF ~~ THEN REPLY #46968 /* ~"Why did you join the Godsmen?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #46969 /* ~"Because I thought there was meaning. I was wrong. There is no meaning. Love, family, wealth, accomplishment... it all means nothing."~ */
  IF ~~ THEN REPLY #46970 /* ~"All of it? Is there anything that could prove you wrong?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46971 /* ~"Except that it all keeps going. You became a Godsman because you don't believe in chance for something this magnificent. Surpass this test, Sandoz, and you become ever stronger."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #46972 /* ~"Find someone who can persuade me otherwise, someone who can tell me differently. You can't, it seems... find someone who can." He walks away from the door, and conversation becomes impossible.~ */
  IF ~~ THEN REPLY #46973 /* ~"I'll be back."~ */ EXIT
END

IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #46974 /* ~"I owe you my life, stranger. I won't forget it. But right now, I have some thinking to do. I hope you'll forgive me for not talking."~ */
  IF ~~ THEN REPLY #46975 /* ~"Sure. Farewell."~ */ EXIT
END
