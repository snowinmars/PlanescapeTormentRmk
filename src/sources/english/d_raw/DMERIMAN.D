// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERIMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERIMAN~

IF ~  NumTimesTalkedTo(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49920 /* ~This man looks like a bitter, cantankerous old codger. His mouth is twisted into a frown that becomes even more severe as he notices you coming his way. "Merriman my name may be, but merry I am not! Off with you, young one! No time for the likes of you!" He goes into a fit of coughing from the exertion of shooing you away so loudly.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49921 /* ~"Wait... Dolora wanted me to speak with you."~ */ GOTO 2
  IF ~~ THEN REPLY #49922 /* ~"Fine... farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #49923 /* ~Merriman gives you a sour, withering look. "Go away," he hisses.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49924 /* ~"Wait... Dolora wanted me to speak with you."~ */ GOTO 2
  IF ~~ THEN REPLY #49925 /* ~"Fine... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49926 /* ~Merriman eyes you suspiciously. "That so? About *what,* eh? Hmm? Well?"~ */
  IF ~~ THEN REPLY #49927 /* ~"She says that you're her first love, and that so long as you hold the keys to her heart, she'll never be free to love another."~ */ GOTO 3
  IF ~~ THEN REPLY #49928 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49929 /* ~"She told you that, eh? I'm surprised. Perhaps leaving her under Mistress Grace's tutelage did what I couldn't... started to develop her *feelings.* In any case..." He pats a pocket on his tunic. "...I won't just *give* the keys to you."~ */
  IF ~~ THEN REPLY #49930 /* ~"Wait - those are literally 'the keys to her heart'?"~ */ GOTO 5
  IF ~~ THEN REPLY #49931 /* ~"What do you want for them, then?"~ */ GOTO 7
  IF ~~ THEN REPLY #49932 /* ~"Then perhaps I'll just *take* them from you..."~ */ GOTO 4
  IF ~~ THEN REPLY #49933 /* ~"We'll talk about them later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 6.1 10.1
  SAY #49934 /* ~"The only way you'll be *taking* my keys, young one, is by prying them from my cold, dead fingers! And I'm uncertain of the wisdom in starting a row in the Civic Festhall..."~ */
  IF ~~ THEN REPLY #49935 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #49936 /* ~"Granted. So - are these literally 'the keys to her heart'?"~ */ GOTO 5
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49937 /* ~"All right. What did you want for them, Merriman?"~ */ GOTO 7
  IF ~~ THEN REPLY #49938 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.1
  SAY #49939 /* ~He nods. "That they are. Dolora's a Construct; didn't you know that? A creature of sorcery and clockwork mechanics she is, and one of my finest creations." Merriman sighs. "But cold, without emotion or character. I brought her to the Brothel and 'set' her so that she could not leave, in the hopes that the constant contact with so many others would begin to develop her own personality. The keys are the tools used to 'set' her; she wants them because she feels that they're limiting her personal growth now, I suspect."~ */
  IF ~~ THEN REPLY #49940 /* ~"Then why don't you just return them to her?"~ */ GOTO 6
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49941 /* ~"What do you want for the keys?"~ */ GOTO 7
  IF ~~ THEN REPLY #49942 /* ~"Perhaps I'll just *take* the keys from you..."~ */ GOTO 4
  IF ~~ THEN REPLY #49943 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49944 /* ~Merriman scowls. "Because I've become a cruel and bitter old man, who sees he can get something out of you."~ */
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49945 /* ~"Go on, then... what do you want?"~ */ GOTO 7
  IF ~~ THEN REPLY #49946 /* ~"Not if I just take the keys, Merriman..."~ */ GOTO 4
  IF ~~ THEN REPLY #49947 /* ~"We'll discuss this later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.2 5.1 6.0
  SAY #49948 /* ~"I want... I want to forget. I've lived almost one hundred and fifty years, now, and I've seen every sensory stone I've cared to in this grand hall. I've little time left to live, and am too weak to go out in search of wholly new experiences... so I need to find a way to forget them all. That way, I can start again in my final days..."~ */
  IF ~~ THEN REPLY #49949 /* ~"So... do I just wallop you in the back of the head, or what?"~ */ JOURNAL #49952 /* ~Merriman wanted me to help him lose his memories before he gave me the keys to Dolora's heart. I suppose I'll have to look for something that'd do that to a person, then bring it back to him... Merriman himself suggested water from the River Styx as one possibility.~ */ GOTO 8
  IF ~~ THEN REPLY #49950 /* ~"How can I help?"~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ JOURNAL #49952 /* ~Merriman wanted me to help him lose his memories before he gave me the keys to Dolora's heart. I suppose I'll have to look for something that'd do that to a person, then bring it back to him... Merriman himself suggested water from the River Styx as one possibility.~ */ GOTO 9
  IF ~~ THEN REPLY #49951 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49953 /* ~"No, you bloodthirsty lummox!"~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #49954 /* ~"I'll need something... some item, some concoction... that will allow me to forget. Like a draught of the River Styx; something like that."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49955 /* ~"Here, take this mug... it holds a Dark Bird of Ocanthus, a sliver of ice from the River Styx. It should wipe your memories clean..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49956 /* ~"Right. I'll return if I find something... farewell."~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ EXIT
END

IF ~  Global("Merriman","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #49957 /* ~Merriman squints up at you. "Well? Have you something that will wipe my mind of these accursed memories? I certainly hope you haven't returned without... you'll never get the keys to Dolora's heart, that way."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49958 /* ~"Here, take this mug... it holds a Dark Bird of Ocanthus, a sliver of ice from the River Styx. It should wipe your memories clean..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49959 /* ~"Perhaps I'll just take the keys, Merriman..."~ */ GOTO 4
  IF ~~ THEN REPLY #49960 /* ~"No, I don't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #49961 /* ~Merriman takes the mug and removes a piece of paper from his pocket. He tilts the mug back and takes the ice into his mouth... it melts instantly, leaving him with a somewhat startled expression...~ */
  IF ~  HasItem("DlraKey",Myself)
~ THEN REPLY #49962 /* ~"Merriman...?"~ */ DO ~GiveItem("DlraKey",Protagonist)
AddexperienceParty(12000)
~ JOURNAL #66580 /* ~I brought back a piece of frozen Styx-ice - a Dark Bird of Ocanthus - to Merriman. Upon consuming it, he lost all his memories. It's what he wanted, though I can't say I envy the fellow.~ */ GOTO 12
  IF ~  !HasItem("DlraKey",Myself)
~ THEN REPLY #49963 /* ~"Merriman...?"~ */ DO ~AddexperienceParty(12000)
~ JOURNAL #66580 /* ~I brought back a piece of frozen Styx-ice - a Dark Bird of Ocanthus - to Merriman. Upon consuming it, he lost all his memories. It's what he wanted, though I can't say I envy the fellow.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49964 /* ~Merriman looks at you, confused, then at the paper in his hands. He reads aloud: "Congratulations, Merriman: you've begun again. Thank the man in front of you and give him the key in your pocket. Speak to Splinter, the man at the door to this building, for more information." He looks to you again. "Well... it would seem I owe you thanks, good sir. Here... take this key. I'd best find this 'Splinter' fellow and find out what's going on!"~ */
  IF ~~ THEN REPLY #49965 /* ~"Thanks, Merriman. Good luck."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #49966 /* ~Merriman looks at you, confused, then at the paper in his hands. He reads aloud: "Congratulations, Merriman: you've begun again. Thank the man in front of you and give him the key in your pocket. Speak to Splinter, the man at the door to this building, for more information." He looks to you again. "Well... it would seem I owe you thanks, good sir. Hmm... I don't seem to have a key on me, though. Perhaps someone took it from me. So sorry! Well, I'd best find this 'Splinter' fellow and find out what's going on!"~ */
  IF ~~ THEN REPLY #49967 /* ~"Good luck, Merriman. Farewell."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END
