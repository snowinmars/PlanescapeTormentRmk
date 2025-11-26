// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNENNY~

IF ~  Global("Nenny","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2964 /* ~This petite, attractive young woman is smiling blissfully and humming to herself. Her wide, pale blue eyes seem to constantly drink in her surroundings as she looks about.~ */
  IF ~~ THEN REPLY #2965 /* ~"Greetings..."~ */ DO ~SetGlobal("Nenny","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #39865 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39866 /* ~The smiling young woman curtseys gracefully and looks up to you, smiling. "Well *met,* good sir! I'm Nenny! And how are *you* this fine d-?" She suddenly notices your scars and places a gloved hand over her mouth. "Oh my! You're hurt!" She blinks. "All over!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 421
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #39867 /* ~"They're all old scars. I'm fine."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #39868 /* ~"Only slightly; I'll be all right in moments."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #39869 /* ~"Yes, but the wounds will heal in little time."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39870 /* ~"Pay it no mind. I had some questions..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39871 /* ~"Don't worry about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #39872 /* ~She nods quietly, lowering her hand.~ */
  IF ~~ THEN REPLY #39873 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #39874 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 4.0 7.1 9.2 10.2 11.3 12.2 13.3 14.2 15.1 18.0 19.2 21.0 21.1 22.3 23.1 24.3 25.2 26.0 27.0 28.0 29.1 30.0 31.0 32.0 33.1 35.1 36.1 37.1 38.1 47.0 52.0 53.0 54.0 55.0
  SAY #39875 /* ~"Please, ask!" She smiles giddily.~ */
  IF ~~ THEN REPLY #39876 /* ~"What are you doing here?"~ */ GOTO 32
  IF ~~ THEN REPLY #39877 /* ~"Can you tell me about this place?"~ */ GOTO 33
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39878 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 31
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67847 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 31
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39879 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ JOURNAL #66743 /* ~I asked one of the prostitutes if she knew whether or not Kesai-Serris was truly Ravel's daughter, and she suggested I ask Juliette about it. Apparently, they were good friends before Juliette met Montague.~ */ GOTO 30
  IF ~  Global("Nenny_Hint2","AR0605",2)
~ THEN REPLY #39880 /* ~"Kimasxi said someone's been taking things from her room, too. Have you seen anything odd?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",3)
~ JOURNAL #39526 /* ~Nenny told me that she saw a man sneaking out of Kimasxi Addertongue's room, but never saw the man leave the Brothel. If he was the thief, could he somehow still be here?~ */ GOTO 54
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39881 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint","AR0605",0)
Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39882 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",1)
~ JOURNAL #39525 /* ~Nenny told me that she saw Marissa sneaking out of Vivian's chambers... perhaps she took Vivian's scent, or at least has some clue as to where it might be found.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39883 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint2","AR0605",0)
Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39884 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",1)
~ JOURNAL #39524 /* ~Nenny told me that she saw Kimasxi Addertongue sneaking out of Marissa's chambers... perhaps she took Marissa's Crimson Veil, or at least has some clue as to where it might be found.~ */ GOTO 53
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39885 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~I asked one of the Brothel's prostitutes about Ravel, and she suggested I speak to Yves about it. I'm told that Yves collects all sorts of tales, and will likely have one about Ravel in her repertoire.~ */ GOTO 4
  IF ~~ THEN REPLY #39886 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.10
  SAY #39887 /* ~"No, sorry. That's a *great* name, though, huh? I'll bet she's a really interesting person! Hey... you should ask Yves about her. Yves collects all *kinds* of stories!"~ */
  IF ~~ THEN REPLY #39888 /* ~"I'll say. I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39889 /* ~"That's all I wished to know. Farewell, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39890 /* ~"Huh?" She can't seem to tear her eyes from your scars. "Oh, how shameful of me! Don't mind my rude staring! I am named Nenny." She makes a little curtsy. "And it is my great pleasure to welcome you to our Brothel for the Slating of Intellectual Lusts." She returns to staring at your body. "You have tattoos under those scars, too! What's that one?" She points to one of your tattoos.~ */
  IF ~~ THEN REPLY #39891 /* ~"That one's-"~ */ GOTO 6
  IF ~~ THEN REPLY #39892 /* ~"Never mind it, I-"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #39893 /* ~"Looks fascinating! Look at the way the lines of ink... I think that's ink..." She squints at the tattoo, then reaches out to touch it.~ */
  IF ~~ THEN REPLY #39894 /* ~Allow her to touch you.~ */ GOTO 7
  IF ~~ THEN REPLY #39895 /* ~Don't let her touch you.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39896 /* ~"I *think* that's ink." She traces a finger around the edge of the tattoo. "Is it ink? And what a pattern! Look at the way the lines intersect here." She touches the center of the tattoo. "That's simply amazing..." She purses her lips and frowns in disappointment. "I could make it out better if there weren't so many scars..."~ */
  IF ~~ THEN REPLY #39897 /* ~"There's nothing to be done about the scars; they're permanent."~ */ GOTO 10
  IF ~~ THEN REPLY #39898 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39899 /* ~"I'll be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39900 /* ~Nenny looks up at you as you prevent her from touching your skin. "Sorry, sorry, good sir! No harm meant by it, I just wanted to trace the tattoo and get a feel for its pattern. It's most fascinating!" She pouts for a moment, then slaps her head lightly. "Too forward! I'm too forward! My many apologies, good sir! Please don't be upset!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 422
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39901 /* ~"No problem."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39902 /* ~"See that it doesn't happen again."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.2
  SAY #39903 /* ~Nenny nods, then smiles sweetly at you. "I'm sorry, I'm sorry... but I *have* to know... are you absolutely *sure* you're all right? I'm looking at you, and I can't help but believe that you're not in *some* pain."~ */
  IF ~~ THEN REPLY #39904 /* ~"None of the physical variety, really."~ */ GOTO 11
  IF ~~ THEN REPLY #39905 /* ~"I have amnesia, but that is all."~ */ GOTO 20
  IF ~~ THEN REPLY #39906 /* ~"Forget it. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39907 /* ~"Don't worry about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #39908 /* ~"Oh, I'm sorry, I'm sorry... pox on me for even mentioning them!" She cringes. "But I *have* to know... are you absolutely *sure* you're all right? I'm looking at you, and I can't help but believe that you're not in *some* pain."~ */
  IF ~~ THEN REPLY #39909 /* ~"None of the physical variety, really."~ */ GOTO 11
  IF ~~ THEN REPLY #39910 /* ~"I have amnesia, but that is all."~ */ GOTO 20
  IF ~~ THEN REPLY #39911 /* ~"Forget it. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39912 /* ~"Don't worry about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #39913 /* ~"Oh! Are you hurt inside? In the head?" She clasps her hands eagerly. "Mayhap I can help! In fact, I know I can! Part of a Sensate's training is to learn how to draw hurt from others... my mistress says a Sensate may draw pain from a wound and bring it into one's self... but nonetheless, I *can* help! May I try?! Please say yes!"~ */
  IF ~~ THEN REPLY #39914 /* ~"Sensate?"~ */ GOTO 26
  IF ~~ THEN REPLY #39915 /* ~"Yes, please do."~ */ GOTO 16
  IF ~~ THEN REPLY #39916 /* ~"Your mistress?"~ */ GOTO 12
  IF ~~ THEN REPLY #39917 /* ~"No. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39918 /* ~"No, I'm in no pain. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #39919 /* ~"Oh, yes," Nenny says brightly. "Mistress Grace. She's the most wonderful person I've ever known!"~ */
  IF ~~ THEN REPLY #39920 /* ~"Tell me about Mistress Grace."~ */ GOTO 13
  IF ~~ THEN REPLY #39921 /* ~"I understand. Go ahead; try and help me."~ */ GOTO 16
  IF ~~ THEN REPLY #39922 /* ~"I really don't need your help, but I had questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39923 /* ~"I see. I don't really your help, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39924 /* ~"She's so beautiful, isn't she? It's hard to believe she's from the Lower Planes, she's so nice and smart!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 14
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39925 /* ~"What do the Lower Planes have to do with anything?"~ */ GOTO 15
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39926 /* ~"I understand. Go ahead; try and help me."~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39927 /* ~"I really don't need your help, but I had questions..."~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39928 /* ~"I see. I don't really your help, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39929 /* ~Nenny suddenly notices Fall-from-Grace beside you. "Oh! Mistress Grace!" She curtseys; Grace nods, smiling, in response.~ */
  IF ~~ THEN REPLY #39930 /* ~"What do the Lower Planes have to do with anything?"~ */ GOTO 15
  IF ~~ THEN REPLY #39931 /* ~"I understand. Go ahead; try and help me."~ */ GOTO 16
  IF ~~ THEN REPLY #39932 /* ~"I really don't need your help, but I had questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39933 /* ~"I see. I don't really your help, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #39934 /* ~"Well, they're all so *evil* down there. Who would have thought Mistress Grace could come from such a place?"~ */
  IF ~~ THEN REPLY #39935 /* ~"I understand. Go ahead; try and help me."~ */ GOTO 16
  IF ~~ THEN REPLY #39936 /* ~"I really don't need your help, but I had questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39937 /* ~"I see. I don't really your help, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 12.1 13.2 14.1 15.0
  SAY #39938 /* ~Nenny clasps her hands and makes to rest them lightly on your forehead.~ */
  IF ~  HPPercent(Protagonist,100)
~ THEN REPLY #39939 /* ~Allow her to touch you.~ */ GOTO 17
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #39940 /* ~Allow her to touch you.~ */ DO ~Damage(Protagonist,RAISE,1)
~ GOTO 17
  IF ~~ THEN REPLY #39941 /* ~Don't let her touch you.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 19.1 29.0
  SAY #39942 /* ~As she draws near, you notice Nenny's skin is lightly perfumed with the scent of lilacs. She rests her gloved hands gently upon your forehead and closes her eyes. She hums lightly to herself, and you feel a faint warmth spreading throughout your body.~ */
  IF ~~ THEN REPLY #39943 /* ~"Uh... thanks. That felt nice."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39944 /* ~"Sure! So glad I could help!" Nenny beams at you; she seems ready to burst with joy.~ */
  IF ~~ THEN REPLY #39945 /* ~"I had a question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39946 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #39947 /* ~Nenny freezes, looking surprised, then a little hurt. "I'm sorry! Sorry! Do you not like to be touched? I should have told you! That's how the Sensory Touch works... I place my hands on your body - usually near the wound, to help focus the power - and then draw the pain out."~ */
  IF ~~ THEN REPLY #39948 /* ~"Sensory Touch...?"~ */ GOTO 29
  IF ~~ THEN REPLY #39949 /* ~"It's fine. Go ahead, then."~ */ GOTO 17
  IF ~~ THEN REPLY #39950 /* ~"I had a question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39951 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.1 10.1
  SAY #39952 /* ~"Amnesia?" Nenny blinks, then brightens. "Loss of memory! You are *so* lucky," she chimes perkily. "Everything must be so *new* to you."~ */
  IF ~~ THEN REPLY #39953 /* ~"There is truth in that, but the newness is... unwelcome."~ */ GOTO 21
  IF ~~ THEN REPLY #39954 /* ~"I care little for it."~ */ GOTO 22
  IF ~~ THEN REPLY #39955 /* ~"That's... an angle I hadn't considered."~ */ GOTO 23
  IF ~~ THEN REPLY #39956 /* ~"I'd prefer for a number of things to be much more familiar."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39957 /* ~She blinks. "That sounds so *sad.*"~ */
  IF ~~ THEN REPLY #39958 /* ~"Yes, it is... but I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39959 /* ~"Not really. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39960 /* ~"Perhaps... in any case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #39961 /* ~"Really? Why?"~ */
  IF ~~ THEN REPLY #39962 /* ~"Because I don't. How can one explain a feeling?"~ */ GOTO 25
  IF ~~ THEN REPLY #39963 /* ~"I don't like losing memories, and death is not a pleasant experience."~ */ GOTO 28
  IF ~~ THEN REPLY #39964 /* ~"Without a foundation to build upon - some sense of who I am - I can't progress."~ */ GOTO 28
  IF ~~ THEN REPLY #39965 /* ~"Just... never mind. I had a question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39966 /* ~"I don't wish to speak of it any longer. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #39967 /* ~Nenny claps her hands delightedly. "I'm so pleased I could open your mind to that idea! I've heard that's what being a Sensate is all about... bringing new experiences to others."~ */
  IF ~~ THEN REPLY #39968 /* ~"Sensate?"~ */ GOTO 26
  IF ~~ THEN REPLY #39969 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39970 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY #39971 /* ~"Like who?" She smiles, then giggles at herself. "I mean, like what?"~ */
  IF ~  GlobalGT("Know_Player_Killer","GLOBAL",0)
~ THEN REPLY #39972 /* ~"My murderer, for one."~ */ GOTO 28
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #39973 /* ~"Not Morte. He's too familiar."~ */ EXTERN ~DMORTE~ 424
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #39974 /* ~"I'd like to know if I knew any of my companions before."~ */ GOTO 28
  IF ~~ THEN REPLY #39975 /* ~"Just... never mind. I had a question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39976 /* ~"I don't wish to speak of it any longer. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #39977 /* ~"Oh, one can try!" Nenny says brightly. "Try! Go on, I know you can."~ */
  IF ~~ THEN REPLY #39978 /* ~"I don't like losing memories, and death is not a pleasant experience."~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~"Without a foundation to build upon - some sense of who I am - I can't progress."~ */ GOTO 28
  IF ~~ THEN REPLY #39980 /* ~"Just... never mind. I had a question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39981 /* ~"I don't wish to speak of it any longer. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.0 23.0
  SAY #39982 /* ~"Sensates! Oh, they're so *dreamy.* They believe that you achieve understanding only through experiencing as much of the multiverse as possible! Taste this, listen to that, feel this, look at that... and there's *so* much out there, it's *such* a big place, that it's difficult to take it all in sometimes."~ */
  IF ~~ THEN REPLY #39983 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39984 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #39985 /* ~Nenny giggles.~ */
  IF ~~ THEN REPLY #39986 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39987 /* ~"Farewell, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1 22.2 24.0 24.2 25.0 25.1
  SAY #39988 /* ~"Huh." Nenny furrows her brow, thinking hard. "I guess that makes sense. I sure wish I could help!"~ */
  IF ~~ THEN REPLY #39989 /* ~"Well, you *could* answer a question for me..."~ */ GOTO 3
  IF ~~ THEN REPLY #39990 /* ~"So do I. Farewell, Nenny..."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.0
  SAY #39991 /* ~"Yes! All Sensates can do it, but I'm not quite a Sensate yet, so I'm not very good at it. When I get it right, I'll be able to take the hurt out from other people into myself - to help them out and everything!"~ */
  IF ~~ THEN REPLY #39992 /* ~"Go ahead, then."~ */ GOTO 17
  IF ~~ THEN REPLY #39993 /* ~"I had a question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39994 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.4
  SAY #39995 /* ~"Beats me! Sorry. Hmmm. Maybe you could ask Juliette. She and Kesai used to be really good friends. Then Juliette met Montague, and now they don't talk so much."~ */
  IF ~~ THEN REPLY #39996 /* ~"I had another question, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #39997 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 3.2 3.3
  SAY #39998 /* ~"Oh, Ecco! Yes, she's a mysterious one, *isn't* she?! Do you know that she never speaks? Truly!" Nenny leans in and lowers her voice. "I think she was emotionally wounded, so badly that she may never speak again! I bet Dolora knows, because she sometimes talks to the last lover Ecco had when she still spoke!"~ */
  IF ~~ THEN REPLY #39999 /* ~"I had another question, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40000 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.0
  SAY #40001 /* ~"I'm talking to *you,* silly!" She giggles and pokes you in the belly. "Just like I talk to *all* the patrons here. All the prostitutes do; that's what the Brothel's about! Learning new ways to talk and share experiences and understand other people."~ */
  IF ~~ THEN REPLY #40002 /* ~"I had another question, Nenny..."~ */ GOTO 3
  IF ~~ THEN REPLY #40003 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.1
  SAY #40004 /* ~"Um... sure I can! The Brothel of Slating Intellectual Lusts is a school that was started by Mistress Fall-from-Grace. The prostitutes here - like me! - are taught the ins and outs of talking to people, all to help us learn more about ourselves and others. I love it here... it's a non-stop wave of experiences, crashing into me, filling my head with fresh new ideas!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 425
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40006 /* ~"I had another question, Nenny..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40007 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.6 3.8
  SAY #40008 /* ~"Hmm." Nenny frowns deeply. "I... uh..."~ */
  IF ~~ THEN REPLY #40009 /* ~"What?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #40010 /* ~"Oh, I just can't! I can't say anything bad about anyone! I'm just no good at it!"~ */
  IF ~~ THEN REPLY #40011 /* ~"It's not bad to point out a thief, Nenny."~ */ GOTO 36
  IF ~~ THEN REPLY #40012 /* ~"Forget it... I have another question."~ */ GOTO 3
  IF ~~ THEN REPLY #40013 /* ~"Never mind, Nenny. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #40014 /* ~"Oh, but I don't know if she's a thief..." Nenny bites her lip and looks at you with pleading eyes, as if she just wishes you'd leave the topic alone.~ */
  IF ~~ THEN REPLY #40015 /* ~"Look, why don't you *try* and say something not nice about her."~ */ GOTO 37
  IF ~~ THEN REPLY #40016 /* ~"Forget it... I have another question."~ */ GOTO 3
  IF ~~ THEN REPLY #40017 /* ~"Never mind, Nenny. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #40018 /* ~"Oh, all right." Nenny puts her hands on her hips and frowns deeply, almost exaggeratedly. You resist the temptation to laugh. "Ooooooh, I dislike her very, *very* much." She pauses for a moment, then looks at you out of the corner of her eye, as if gauging your reaction. "Was that convincing?"~ */
  IF ~~ THEN REPLY #40019 /* ~"No, not really..."~ */ GOTO 38
  IF ~~ THEN REPLY #40020 /* ~"No. Just forget it... I have another question."~ */ GOTO 3
  IF ~~ THEN REPLY #40021 /* ~"Never mind, Nenny. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #40022 /* ~Nenny frowns. "I knew I wouldn't be any good at this!" She looks up at you, depressed. "Do you know how *hard* it is to say bad things about someone?! It feels so wrong."~ */
  IF ~~ THEN REPLY #40023 /* ~"Why don't you practice on me, Nenny?"~ */ GOTO 39
  IF ~~ THEN REPLY #40024 /* ~"Forget it... I have another question."~ */ GOTO 3
  IF ~~ THEN REPLY #40025 /* ~"Never mind, Nenny. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40026 /* ~"I suppose I could try..." She looks dubious. "You big mean nasty brute!" She puts her hands on her hips. "Meanie!" She looks at you. "How was that?"~ */
  IF ~~ THEN REPLY #40027 /* ~"Put more accent on 'brute.'"~ */ GOTO 40
  IF ~~ THEN REPLY #40028 /* ~"Try hitting me."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40029 /* ~"You big mean nasty *brute!*"~ */
  IF ~~ THEN REPLY #40030 /* ~"Better. Now hit me."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #40031 /* ~Nenny clamps her hands over her mouth, looking shocked. "Oh, I couldn't! I musn't!" She blinks. "How does one hit somebody, anyway?"~ */
  IF ~~ THEN REPLY #40032 /* ~"Go ahead. Do it lightly, if you have to. Remember: I'm a mean, nasty brute. I deserve it."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #40033 /* ~Nenny slaps you; you barely feel it. She still looks shocked and frightened she hurt you. "Oh, I'm sorry! Did that hurt? Tell me you're okay!"~ */
  IF ~~ THEN REPLY #40034 /* ~"Don't break character, Nenny. Come on; show me what you've got. You can say something bad... just let it all out."~ */ GOTO 43
  IF ~~ THEN REPLY #40035 /* ~"Ow! Damn, never have I been hit so hard!"~ */ GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #40036 /* ~"Oh... I mean, oh!" Nenny draws her tiny frame to its full height, balls her hands into fists, puts them on her hips, and scrunches up her face in a cute scowl. "Oh, damned be you! You deserved that for all the indignities you put me through! Going out late at night..." Her eyes roam up and down your body. "Getting into fights and getting all scarred up! What are the kids going to think, hmm?!"~ */
  IF ~~ THEN REPLY #40037 /* ~"Excellent."~ */ GOTO 44
  IF ~~ THEN REPLY #40038 /* ~"Uh... kids?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0 51.0
  SAY #40039 /* ~"Oh, don't you 'excellent' me, like I'm some backlicker looking for your approval! I am my own woman, and this woman is about to walk out of your life unless I get some solid commitment!"~ */
  IF ~~ THEN REPLY #40040 /* ~"All right... that's enough out of you, Nenny."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK2)
~ GOTO 45
  IF ~~ THEN REPLY #40041 /* ~"Eh... calm down. Time to let go of the anger."~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #40042 /* ~Nenny punches you. You barely feel it. "Take this." She punches you again. "And this!" She punches you again, promptly turning into a little fist-flailing whirlwind.~ */
  IF ~~ THEN REPLY #40043 /* ~"Okay, okay... time to let go of the anger."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0 48.0
  SAY #40044 /* ~Nenny sighs tiredly. "Whew. That was easier than I thought!"~ */
  IF ~~ THEN REPLY #40045 /* ~"No kidding."~ */ DO ~SetGlobal("Nenny_Angry","AR0605",1)
AddexperienceParty(5000)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #40046 /* ~"And I'm sure I'll do better next time! I'm so excited to have learned something new... thank you!"~ */
  IF ~~ THEN REPLY #40047 /* ~"Sure. I have a question, now..."~ */ GOTO 3
  IF ~~ THEN REPLY #66337 /* ~"No problem. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.1
  SAY #40048 /* ~"What?!" Nenny's fury rises another notch. "Have you forgotten our children?! Are you so sodden with drink that you can't even remember that we have *children?!*" Nenny throws up her hands in exasperation. "You're hopeless, clueless, and a lot of other 'lesses' I won't mention right now."~ */
  IF ~~ THEN REPLY #40049 /* ~"Eh... calm down. Time to let go of the anger."~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 42.1
  SAY #40050 /* ~Nenny's eyes widen further as you wince in mock pain. "Oh, my! Oh, I didn't mean to hit you so hard! I'm sorry! Sorry!"~ */
  IF ~~ THEN REPLY #40051 /* ~"Don't ever say sorry. Say 'Better get used to it.'"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #40052 /* ~Nenny looks up at you. "Oh... uh, better get used to it."~ */
  IF ~~ THEN REPLY #40053 /* ~"Frown when you say it. Say it sternly, with conviction."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #40054 /* ~Nenny draws her tiny frame to its full height, balls her hands into fists, puts them on her hips, and scrunches up her face in a cute scowl. "Better get used to it!"~ */
  IF ~~ THEN REPLY #40055 /* ~"Excellent."~ */ GOTO 44
END

IF ~~ THEN BEGIN 52 // from: 3.7
  SAY #40056 /* ~"Maybe... I saw that mean, mean Marissa sneaking out of Vivian's room one night. Now I'm not saying she took it, but I know Marissa's not a very nice person, and that sure sounds suspicious, huh? I'd go ask her about it." Nenny nods at you.~ */
  IF ~~ THEN REPLY #40057 /* ~"Thanks, Nenny. I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #40058 /* ~"That's all I wished to know. Farewell, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.9
  SAY #40059 /* ~"I'll bet I do! I saw that nasty Kimasxi Addertongue sneaking out of Marissa's room one night. They're both meanies, you know, but Kimasxi's really awful! Anyway, I'd talk to her, first."~ */
  IF ~~ THEN REPLY #40060 /* ~"Thanks, Nenny. I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #40061 /* ~"That's all I wished to know. Farewell, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 3.5
  SAY #40062 /* ~Nenny's eyes suddenly go wide. "Oh! That's right! You know, once I saw a man sneaking out of Kimasxi's room while she was out talking to a patron... I watched the front doors all that day, but he never, ever left! Isn't that odd? I don't think he could have made it out a window, and so I never figured out where he went. And then I totally forgot about it! Weird, huh?"~ */
  IF ~~ THEN REPLY #40063 /* ~"Yes, it is... I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #40064 /* ~"That it is. Farewell, Nenny."~ */ EXIT
END

IF ~  Global("Nenny","GLOBAL",1)
~ THEN BEGIN 55 // from:
  SAY #40065 /* ~"Well *met,* good sir! I'm Nenny! And how are *you* this fine d-? Oh! We've met before!" Nenny giggles and smiles gleefully at you. "I'm sorry! I *knew* you looked familiar, though..."~ */
  IF ~~ THEN REPLY #40066 /* ~"That's all right, Nenny. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #40067 /* ~"I was just passing by. Farewell, Nenny."~ */ EXIT
END
