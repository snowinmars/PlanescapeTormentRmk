// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONTAGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONTAGU~

IF ~  Global("Montague","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #43991 /* ~This handsome young man seems lost in thought, his brow furrowed and a slight frown upon his lips.~ */
  IF ~~ THEN REPLY #43992 /* ~"Greetings..."~ */ DO ~SetGlobal("Montague","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #43993 /* ~Leave him to his thoughts.~ */ EXIT
END

IF ~  GlobalGT("Montague","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #43994 /* ~This young man still seems troubled. He greets you as you approach. "Once more I extend to thee my greetings. There is something thou wished of me?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66154 /* ~"Are you Montague? I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66155 /* ~"Are you Montague? I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66156 /* ~"I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66157 /* ~"I need to speak with you about Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #43995 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #43996 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #43997 /* ~"And to thee, sir, hail. What dost thou wish of me?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66152 /* ~"Are you Montague? I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66153 /* ~"Are you Montague? I need to speak with you about Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #43998 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #43999 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.2 4.4 5.1 6.1 7.1 8.2 9.1 10.1 11.1 12.1 13.2 15.0 16.0 17.2 39.0 40.0
  SAY #44000 /* ~"Yes?"~ */
  IF ~  GlobalLT("Montague","GLOBAL",2)
~ THEN REPLY #44001 /* ~"Who are you?"~ */ DO ~SetGlobal("Montague","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Montague","GLOBAL",1)
~ THEN REPLY #44002 /* ~"Who are you again?"~ */ GOTO 4
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #66158 /* ~"Are you Montague? I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  GlobalLT("Montague","GLOBAL",2)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #66159 /* ~"Are you Montague? I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44003 /* ~"I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  GlobalGT("Montague","GLOBAL",1)
Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44004 /* ~"I need to speak with you about Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #44005 /* ~"What are you doing here?"~ */ GOTO 7
  IF ~~ THEN REPLY #44006 /* ~"I had some questions about this place..."~ */ GOTO 39
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #44007 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 40
  IF ~~ THEN REPLY #44008 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #44009 /* ~"I am named Montague, factotum of the Sensates."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #52994 /* ~"Montague... I need to speak with you about Juliette."~ */ GOTO 17
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #52995 /* ~"Montague... I need to speak with you about Juliette."~ */ GOTO 17
  IF ~~ THEN REPLY #44010 /* ~"Factotum?"~ */ GOTO 5
  IF ~~ THEN REPLY #44011 /* ~"The Sensates?"~ */ GOTO 6
  IF ~~ THEN REPLY #44012 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44013 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.0
  SAY #44014 /* ~"Verily, sir. A 'member,' if thou like."~ */
  IF ~~ THEN REPLY #44016 /* ~"You had said 'Sensates'?"~ */ GOTO 6
  IF ~~ THEN REPLY #44017 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44018 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3 5.0
  SAY #44015 /* ~"Verily, sir... the 'Society of Sensation.' A faction of Sigil, sir... the largest. Shouldst thou wish to learn more of the Sensates, speak with Splinter. Thou shall find him just inside the entrance to this building."~ */
  IF ~~ THEN REPLY #44019 /* ~"Did you say 'factotum'?"~ */ GOTO 5
  IF ~~ THEN REPLY #44020 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44021 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.6
  SAY #44022 /* ~"I work as an assistant for one of the faction's administrators. Though, more often now than the past, I find myself perplexed by one of life's strange ways."~ */
  IF ~~ THEN REPLY #44023 /* ~"Such as...?"~ */ GOTO 8
  IF ~~ THEN REPLY #44025 /* ~"I see. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44026 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #44024 /* ~"Problems of the feminine variety."~ */
  IF ~~ THEN REPLY #44027 /* ~"What's the problem, exactly?"~ */ GOTO 10
  IF ~~ THEN REPLY #44028 /* ~"You're a female?"~ */ GOTO 9
  IF ~~ THEN REPLY #44029 /* ~"I see. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44030 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #44031 /* ~The young man gives you a long look. "Nay."~ */
  IF ~~ THEN REPLY #44032 /* ~"What's the problem, exactly?"~ */ DO ~SetGlobal("Montague","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #44033 /* ~"In any case, I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44034 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #44035 /* ~"I don't know what's bothering her. I have tried to cheer her up. I don't know what could be the matter."~ */
  IF ~~ THEN REPLY #44036 /* ~"How are things between you two?"~ */ GOTO 11
  IF ~~ THEN REPLY #44037 /* ~"That's too bad. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44038 /* ~"Good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44039 /* ~"Other than this bout of discontent and humdrums, everything is splendid! All that orbits around us does so with tranquility... our families are more than satisfied with our potential union, and her siblings love me. There is nothing wrong."~ */
  IF ~~ THEN REPLY #44040 /* ~"Hmm. Perhaps that's the problem: no problems."~ */ GOTO 12
  IF ~~ THEN REPLY #44041 /* ~"That's too bad. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44042 /* ~"I hope it works out. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44043 /* ~"How dost thou mean that no problems are problems? 'Tis my desire that thou speak plainly, sir."~ */
  IF ~~ THEN REPLY #44045 /* ~"Perhaps she wants a little more spice in your relationship."~ */ GOTO 13
  IF ~~ THEN REPLY #44046 /* ~"Never mind, I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44047 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44048 /* ~"How wouldst thou know what she wishes?!" He becomes heated. "We love, and we love unconditionally, with none of the sordid or poisonous wrappings that seem to unfold all in young love. I call thee out, sir, and I call thee a recreant knave and a fool!"~ */
  IF ~~ THEN REPLY #44049 /* ~"Hold there... calm yourself."~ */ GOTO 14
  IF ~~ THEN REPLY #44050 /* ~"You're a fool to seek a fight with me, but I'll give it to you..."~ */ DO ~SetGlobal("Montague_Problem","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44051 /* ~"That's enough insults for now, boy. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44052 /* ~"Watch your tongue, or you'll find it torn from your mouth. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44053 /* ~"I am sorry... 'twas the fury of the moment that caused me to speak so. I tender my apologies to thee and thine, good sir."~ */
  IF ~~ THEN REPLY #44054 /* ~"Think nothing of it. It's no matter."~ */ GOTO 15
  IF ~~ THEN REPLY #44055 /* ~"Just watch yourself. Fighting me might have been the worst mistake you've ever made."~ */ GOTO 16
  IF ~~ THEN REPLY #44056 /* ~Ignore him and walk away.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44057 /* ~"Thou art indeed gracious, sir."~ */
  IF ~~ THEN REPLY #44058 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44059 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #44060 /* ~"Then watch myself I shall, sir."~ */
  IF ~~ THEN REPLY #44061 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44062 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.0 1.1 1.2 1.3 2.0 2.1 3.2 3.3 3.4 3.5 4.0 4.1
  SAY #44063 /* ~"Oh?" He gives you a puzzled, slightly suspicious look.~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #44064 /* ~"I overheard her speaking at the Brothel. She's having an affair, you know."~ */ GOTO 18
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #44065 /* ~"I demand her love. And I demand that you withdraw your false protestations of love before I mash you into tiny bits."~ */ GOTO 34
  IF ~~ THEN REPLY #44066 /* ~"Never mind that, actually. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44067 /* ~"We'll speak of her later, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44068 /* ~"Thou speak falsely. I would have thee present me proof, before I took thy claim as true."~ */
  IF ~  PartyHasItem("LoveLtr")
~ THEN REPLY #44069 /* ~"I also found these letters... here, read them."~ */ DO ~TakePartyItemNum("LoveLtr",1)
~ GOTO 20
  IF ~  !PartyHasItem("LoveLtr")
~ THEN REPLY #44070 /* ~Lie: "I... saw her reading letters from him."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Montague_1","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #44071 /* ~"We'll speak of it later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #44072 /* ~"I did not. I refuse to grant credibility to words and accusations... I must feel the weight of such letters in my hand before I may make an appraisal of the situation. Were thou to bring me these letters, I would speak to thee of the matter once more."~ */
  IF ~~ THEN REPLY #44073 /* ~"I'll return when I have them. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #44074 /* ~He takes the letters and reads them over. "Alas! 'Tis true! She has found another who loves her passionately. Ah, heartache is a Sensate's fate, I think. I shall move on to another love and let this other suitor have her, considering the passion of his words."~ */
  IF ~~ THEN REPLY #44075 /* ~"Wait - this was all a ruse."~ */ GOTO 21
  IF ~~ THEN REPLY #44076 /* ~"I wish you luck, then. Farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #44077 /* ~"Eh? What is this thou speak of?"~ */
  IF ~~ THEN REPLY #44078 /* ~"She's trying to trick you into being more passionate."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 22
  IF ~~ THEN REPLY #44079 /* ~"Never mind... farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44080 /* ~"And why did she not simply say something?"~ */
  IF ~~ THEN REPLY #44081 /* ~"I don't think it really occurred to her."~ */ GOTO 23
  IF ~~ THEN REPLY #44082 /* ~"This way may have been easier for her."~ */ GOTO 32
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44083 /* ~"Apparently not. So what should be done?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44084 /* ~"Turnabout is fair play..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44085 /* ~"Turnabout is fair play..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44086 /* ~"Nothing, I think."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.2 25.2 27.1 28.0 31.2 33.2 37.2
  SAY #44087 /* ~"Very well. I shall hold off, then, on making a response."~ */
  IF ~~ THEN REPLY #44088 /* ~"I hope you can work it out. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #44089 /* ~"Whatever you like. Farewell."~ */ GOTO 41
END

IF ~~ THEN BEGIN 25 // from: 23.0 33.0 37.0
  SAY #44090 /* ~"How should I do so, sir?"~ */
  IF ~~ THEN REPLY #44091 /* ~"Say that you're bored with the relationship - that she's not interesting enough anymore."~ */ GOTO 26
  IF ~~ THEN REPLY #44092 /* ~"Say that you're having an affair."~ */ GOTO 27
  IF ~~ THEN REPLY #44093 /* ~"I'm not sure. You should decide."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 25.0 31.0
  SAY #44094 /* ~"Thou art saying that I should feign disinterest so as to peak her interest. Assuredly, that is irony. I shall agree to what thou suggest and observe the results."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44095 /* ~"Good luck - I hope it works out. Farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44096 /* ~"I'll take my leave, now. Farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44097 /* ~"Good luck - I hope it works out. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44098 /* ~"I'll take my leave, now. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 27 // from: 25.1 31.1
  SAY #44099 /* ~"Such advice could be dangerous, but it will no doubt spur her to examine our relationship and fight to keep it. It shall be done. How shall it be committed?"~ */
  IF ~~ THEN REPLY #44100 /* ~"I'll handle it. I'll say that I found you with another woman."~ */ GOTO 28
  IF ~~ THEN REPLY #44101 /* ~"I'm not sure. You should decide."~ */ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44102 /* ~"All right, then. It shall be as thou say."~ */
  IF ~~ THEN REPLY #44103 /* ~"On second thought, I'd best let you handle it."~ */ GOTO 24
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44104 /* ~"I'll be sure to tell her when we next meet. Farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44105 /* ~"I'll be sure to tell her when we next meet. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",5)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 29 // from:
  SAY #44106 /* ~"Truly?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 465
END

IF ~~ THEN BEGIN 30 // from:
  SAY #44107 /* ~"Aye, I like the sound of that very much."~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44108 /* ~"Good luck - I hope it works out. Farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #44109 /* ~"I'll take my leave, now. Farewell."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44110 /* ~"Good luck - I hope it works out. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #44111 /* ~"I'll take my leave, now. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",4)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 31 // from:
  SAY #44112 /* ~"All right... then what, sir?"~ */
  IF ~~ THEN REPLY #44113 /* ~"Say that you're bored with the relationship - that she's not interesting enough anymore."~ */ GOTO 26
  IF ~~ THEN REPLY #44114 /* ~"Say that you're having an affair."~ */ GOTO 27
  IF ~~ THEN REPLY #44115 /* ~"I'm not sure. You should decide."~ */ GOTO 24
END

IF ~~ THEN BEGIN 32 // from: 22.1
  SAY #44116 /* ~"But... I had thought we could talk about everything."~ */
  IF ~~ THEN REPLY #44117 /* ~"Perhaps this was something that, by its very nature, could not be spoken about."~ */ GOTO 33
  IF ~~ THEN REPLY #44118 /* ~"You may have been mistaken."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #44119 /* ~"What wouldst thou recommend me do, sir?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44120 /* ~"Turnabout is fair play..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44121 /* ~"Turnabout is fair play..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44122 /* ~"Nothing, I think."~ */ GOTO 24
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY #44123 /* ~"Thou love her so that thou wouldst fight me?"~ */
  IF ~~ THEN REPLY #44124 /* ~"Yes."~ */ GOTO 35
  IF ~~ THEN REPLY #44125 /* ~"No, I don't love her - but I'll fight for her."~ */ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #44126 /* ~He studies you for a moment. "Thou art passionate about this matter, I see. Passion stems from love. Thou love her, and I could not deny her a love such as thine. I shall from this moment onward hold no claim on her; thou may do as thou wish."~ */
  IF ~~ THEN REPLY #44127 /* ~"Hold a moment... this was all a ruse."~ */ GOTO 36
  IF ~~ THEN REPLY #44128 /* ~"Eh... all right, then. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.0
  SAY #44130 /* ~"A ruse? Of what sort?"~ */
  IF ~~ THEN REPLY #44131 /* ~"She wanted to provoke you into fighting for her."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 37
  IF ~~ THEN REPLY #44132 /* ~"Never mind... farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44133 /* ~"Oh? Did she think my love so boundless that I would engage in fisticuffs with a brutally-scarred man of thy stature? Perhaps she thinks my devotion to her a little high. So... what should be done about this ruse?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44134 /* ~"Turnabout is fair play..."~ */ GOTO 25
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44135 /* ~"Turnabout is fair play..."~ */ EXTERN ~DMORTE~ 464
  IF ~~ THEN REPLY #44136 /* ~"Nothing, I think."~ */ GOTO 24
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY #44137 /* ~"Ah, but you see... that is passion. Passion stems from love. Thou love her, and I could not deny her a love such as thine. I know very well her beauty, her temperance, her virtue, and I know how she may inspire men to greatness. I shall from this moment onward hold no claim on her; thou may do as thou wish."~ */
  IF ~~ THEN REPLY #44138 /* ~"Hold a moment... this was all a ruse."~ */ GOTO 36
  IF ~~ THEN REPLY #44139 /* ~"Eh... all right, then. Farewell."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 3.7
  SAY #44140 /* ~"The Civic Festhall? Thou wouldst do well to speak with Splinter, just inside the entrance to this building."~ */
  IF ~~ THEN REPLY #44141 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44142 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.8
  SAY #44143 /* ~"Hmm... the legendary night hag, no? Thou shouldst speak to Quell, sir - he is most knowledgeable regarding such things. He is within the Festhall, though where, I do not know."~ */
  IF ~~ THEN REPLY #44144 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44145 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.1 21.1 24.1 26.0 26.1 26.2 26.3 28.1 28.2 30.0 30.1 30.2 30.3 35.1 36.1 38.1
  SAY #44146 /* ~"And a farewell to thee as well, sir. Now, I've some things to attend to; should we meet again, we might speak more of the matter." Montague bows and turns to go.~ */
  IF ~~ THEN REPLY #44147 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END
