// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVOORSHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVOORSHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57956 /* ~You see a middle aged man in shoddy clothes. He frowns at your approach and looks about warily.~ */
  IF ~~ THEN REPLY #57957 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57959 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57961 /* ~His frown deepens as he examines you. "Uh... hello. What do you want?"~ */
  IF ~~ THEN REPLY #57963 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57965 /* ~"Never mind. I must be going, farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.1 8.1 10.3 11.2 12.2 13.2 14.0 15.0 16.0 19.1 20.0 21.0
  SAY #57966 /* ~"Like what?"~ */
  IF ~~ THEN REPLY #57967 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #57968 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #57969 /* ~"What can you tell me about this place?"~ */ GOTO 16
  IF ~~ THEN REPLY #57970 /* ~"I'm looking for a deva. I've heard he's in Curst."~ */ GOTO 17
  IF ~~ THEN REPLY #68251 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57971 /* ~He hesitates before answering. "Name's Voorsha." He doesn't elaborate on his answer.~ */
  IF ~~ THEN REPLY #57972 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57973 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #57974 /* ~He stares at you blankly then shrugs. "I'm a... trader. This is my storage area."~ */
  IF ~~ THEN REPLY #57975 /* ~"What do you store here?"~ */ GOTO 5
  IF ~~ THEN REPLY #57976 /* ~"I have some more questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57977 /* ~He frowns. "I don't see that that's any concern of yours."~ */
  IF ~~ THEN REPLY #57978 /* ~"I'm just curious..."~ */ GOTO 6
  IF ~~ THEN REPLY #57979 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57980 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57981 /* ~He shrugs. "Well..." He gestures vaguely. "Ale, mead, and... other goods." He looks somewhat nervous.~ */
  IF ~~ THEN REPLY #57982 /* ~"What are you so nervous about?"~ */ GOTO 7
  IF ~~ THEN REPLY #57983 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57984 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57985 /* ~He begins to fidget. "Nothing..." He gives you a defiant look. "Can we change the subject?"~ */
  IF ~~ THEN REPLY #57986 /* ~"No, I think you're up to something and I want to know what."~ */ GOTO 8
  IF ~~ THEN REPLY #57987 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57988 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #57989 /* ~He glares at you then sighs. "I'm... bringing the stuff in through... alternate channels. The guards don't know..."~ */
  IF ~~ THEN REPLY #57990 /* ~"You're a smuggler."~ */ GOTO 9
  IF ~~ THEN REPLY #57991 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57992 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57993 /* ~He frowns. "I'm a bootlegger. Sounds better than smuggler, don't you think?" He gives you a crafty look. "Say... how'd you like to help me out... for a piece of the business?"~ */
  IF ~~ THEN REPLY #57995 /* ~"What kind of help?"~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #57997 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.1
  SAY #57999 /* ~He thinks for a moment. "There's a gehreleth near here. It's been trying to kill me and that makes it hard to get my stuff out. I need someone to take care of it."~ */
  IF ~~ THEN REPLY #58002 /* ~"What's a gehreleth?"~ */ GOTO 11
  IF ~~ THEN REPLY #58003 /* ~"Why don't you deal with it yourself?"~ */ GOTO 12
  IF ~~ THEN REPLY #58004 /* ~"What do I get if I take care of it for you?"~ */ GOTO 13
  IF ~~ THEN REPLY #58005 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58006 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #58008 /* ~He shrugs. "It's just some dumb creature intent on eating everything it sees..." He looks at you anxiously.~ */
  IF ~~ THEN REPLY #58011 /* ~"Why don't you deal with it yourself?"~ */ GOTO 12
  IF ~~ THEN REPLY #58013 /* ~"What do I get if I take care of it for you?"~ */ GOTO 13
  IF ~~ THEN REPLY #58015 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58018 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #58020 /* ~"I'm not a warrior, it would kill me outright." He glances at your scars. "Anyone who can survive what you obviously have should be able to deal with it."~ */
  IF ~~ THEN REPLY #58023 /* ~"What's a gehreleth?"~ */ GOTO 11
  IF ~~ THEN REPLY #58026 /* ~"What do I get if I take care of it for you?"~ */ GOTO 13
  IF ~~ THEN REPLY #58028 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58032 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1 22.0
  SAY #58036 /* ~He smiles. "I can use a partner. Business is good and I can't distribute everything by myself. We'll split the profits down the middle. What do you say?"~ */
  IF ~~ THEN REPLY #58039 /* ~"Sure, why not."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #58041 /* ~"I don't think so."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #58047 /* ~"I'll think about it. I have some other questions..."~ */ GOTO 2
  IF ~  Dead("Ghrist")
~ THEN REPLY #68272 /* ~"I've already dealt with the gehreleth, it's dead. So, are we partners now?"~ */ GOTO 23
  IF ~~ THEN REPLY #68273 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58053 /* ~His smile broadens. "Great. Take care of the gehreleth and get back to me."~ */
  IF ~~ THEN REPLY #58056 /* ~"All right. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58060 /* ~"I must be going, farewell..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58063 /* ~He frowns. "All right, but if you change your mind my offer still stands. I'm out of business if I can't get that gehreleth taken care of."~ */
  IF ~~ THEN REPLY #58065 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58066 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #58067 /* ~He glances about. "Nothing to tell really." He shrugs. "Look around for yourself."~ */
  IF ~~ THEN REPLY #58068 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58069 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #58070 /* ~He frowns. "A deva... I've heard rumors..." He pauses.~ */
  IF ~~ THEN REPLY #58071 /* ~"What rumors?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58072 /* ~He shrugs and looks away. "Some digging was going on down here to expand the prison. Word is they broke into an unknown chamber by accident..." He turns back to you. "Found *something* or *someone* there, imprisoned."~ */
  IF ~~ THEN REPLY #58073 /* ~"Go on."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58074 /* ~"Some say it was a deva that was found. Others say if was baatezu, and others say it was a tanar'ri." He shrugs. "Don't care myself. Whatever it is, I intend to stay away from it."~ */
  IF ~~ THEN REPLY #58075 /* ~"Where is this chamber?"~ */ GOTO 20
  IF ~~ THEN REPLY #58076 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #68252 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #58077 /* ~"I have no idea. Keep poking around down here and you're likely to find it... not that that would be a good thing, mind you."~ */
  IF ~~ THEN REPLY #58078 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58079 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #58080 /* ~You see Voorsha, the bootlegger. He glances about nervously at your approach. "Hello... again. What can I do for you?"~ */
  IF ~  Global("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #57963 /* ~"I have some questions..."~ */ GOTO 2
  IF ~  Global("Snuff_Ghrist","GLOBAL",1)
~ THEN REPLY #58082 /* ~"You mentioned needing some help. What do you need?"~ */ GOTO 10
  IF ~  Global("Snuff_Ghrist","GLOBAL",2)
~ THEN REPLY #58083 /* ~"You asked me to take care of some gehreleth for you."~ */ GOTO 22
  IF ~  Global("Snuff_Ghrist","GLOBAL",3)
Dead("Ghrist")
~ THEN REPLY #58084 /* ~"I've killed that gehreleth for you."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",4)
~ GOTO 23
  IF ~~ THEN REPLY #58085 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #58086 /* ~He stares at you for a moment. "Yes. Will you do it?"~ */
  IF ~~ THEN REPLY #58087 /* ~"What do I get if I do?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 13.3 21.3
  SAY #58088 /* ~He looks surprised but quickly recovers. He glances at you to see if you noticed. "Uh... that's great. Good job."~ */
  IF ~~ THEN REPLY #58089 /* ~"You said you'd make me your partner. I'm ready to collect."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58090 /* ~He nods. "Yes... I did say that." He stares at you for a moment then begins to fidget. ~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #58091 /* ~"So we're partners now. Right?"~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #58092 /* ~"You didn't think I could kill the gehreleth, did you?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58093 /* ~He stares at you a moment longer then sighs. "No, I don't think so..." He sighs. "It seems you've exceeded my expectations... I was hoping the gehreleth would deal with you and save me the trouble. Now I guess I have to take care of you myself." He suddenly draws a weapon and attacks.~ */
  IF ~~ THEN REPLY #58094 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #58095 /* ~He stares at you a moment longer then sighs. "No, I didn't... It seems you've exceeded my expectations... I was hoping the gehreleth would deal with you and save me the trouble. Now I guess I have to take care of you myself." He suddenly draws a weapon and attacks.~ */
  IF ~~ THEN REPLY #58097 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
