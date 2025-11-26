// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~This broad-shouldered woman is shuffling about amongst the huge beams lying on the street. She kicks at the beams with iron-shod boots; every once in a while, she bends down and wrenches a nail from one of the boards with her bare hands. She holds each one up, appraising it, then drops it into a leather sling bag.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~"Greetings..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~"Greetings..."~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~Leave her to her work.~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~Iron Nalls straightens up and puts her hands on her hips. "Back again, eh? What need ye this time?"~ */
  IF ~~ THEN REPLY #13097 /* ~"I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~"Nothing. Farewell."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~Iron Nalls straightens up and puts her hands on her hips. "Back again, eh? What need ye this-" She suddenly notices Annah beside you. "Well, cutter... who's yer new friend?"~ */
  IF ~~ THEN REPLY #64412 /* ~"Her name's Annah."~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~"She's Annah - but I'm not sure I'd call her a friend."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~Iron Nalls straightens up and puts her hands on her hips. "Back again, eh?" She looks past you, apparently confused. "Say, cutter... where's the pretty young chit that was walkin' with ye before?"~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~"She's... dead."~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~Lie: "I'm not sure. I had some questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~"I'm not sure. I had some questions..."~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~Lie: "I'm not sure. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~"I'm not sure. Farewell."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~Iron Nalls straightens up and puts her hands on her hips. Seeing Annah, she smiles broadly. "Yer back, eh? Nice ta see yer lovely face again, lass." She turns to you. "What need ye, cutter?"~ */
  IF ~~ THEN REPLY #13105 /* ~"I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~"Nothing. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~"Fare ye well too then, cutter."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~Leave.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~Leave.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~She straightens up, hearing your approach. She's smiling politely, but from her stance and the way her hand rests close to the hilt of her weapon, you can tell she's ready for trouble. You notice one of her eyes has a milky film over it. "That's close enough there, cutter... what do ye need from me?"~ */
  IF ~~ THEN REPLY #13109 /* ~"I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~"Nothing, never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~She straightens up, hearing your approach. Her weapon is sheathed, but you can tell she's ready for trouble. You notice one of her eyes has a milky film over it. Noticing Annah, she smiles and nods a greeting at the tiefling before returning her gaze to you. "That's close enough there, cutter... what do ye need from me?"~ */
  IF ~~ THEN REPLY #13111 /* ~"I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~"Nothing, never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~She nods. "Ask away, then."~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~"I was told to ask a woman named Nalls, whom I'd find around here rooting about in a pile of lumber, about the trash-filled archway in Ragpicker's Square. Can you help me?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~A woman named Iron Nalls told me that the trash-filled archway in Ragpicker's Square is actually a portal that she accidentally discovered. Its 'key' is merely a handful of junk that the first person in the archway - myself, in this case - has to have on them. Nalls said it led to a small, open space with a gate leading below ground, but that she left well enough alone and didn't press on any further.~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~"Who are you?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~"Who are you?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~"Who are you again?"~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~"Who are you again?"~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~"What are you doing?"~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~"Can you tell me about this place?"~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~"Can you tell me about this place?"~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~"I'm looking for a man named Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~"I'm looking for a journal I've lost. Have you seen one?"~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~She pulls three nails from her sling bag, tossing them spinning into the air and catching them in her palm. "Iron Nalls, they call me." She drops them back into the bag with a muffled *clink.*~ */
  IF ~~ THEN REPLY #13123 /* ~"Why are you collecting the nails?"~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~"What happened to your eye?"~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~"Well met. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~"An appropriate name. Farewell, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~Nalls' face turns hard. "None a' yer business, berk. Why? Would ye like a matchin' wound for yer collection?"~ */
  IF ~~ THEN REPLY #13127 /* ~"No, not really. I had some other questions..."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~"No, that particular one's not quite 'me.'"~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~"Are you threatening to add it? Because I'd love to see you try..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~"No, I wouldn't. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~She rolls her eyes. "What did it look I was doin', berk? Collectin' nails!" She laughs gently, shaking her head.~ */
  IF ~~ THEN REPLY #13131 /* ~"Why?"~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~"Where's all this wood come from?"~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~"I had other questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~"I sell 'em to a man, name a' Hamrys, in the Lower Ward. Maker of coffins, he is."~ */
  IF ~~ THEN REPLY #13135 /* ~"Tell me more of this Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~"Where's the Lower Ward?"~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~"Does anyone else here scavenge nails?"~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~"Where's all this wood come from?"~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~"That's all I needed to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~She shrugs. "Here an' there, I suppose. Sometimes dabus drop the stuff off, an' I go through it before another pack comes to fetch it away. Probably rubble from buildin's or walls they're puttin' up or tearin' down."~ */
  IF ~~ THEN REPLY #13140 /* ~"Dabus?"~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~"I had other questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~"That's all I needed to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~"Aye, dabus - the Lady's servants." She looks at you, puzzled. "Ye must be new to Sigil."~ */
  IF ~~ THEN REPLY #13143 /* ~"Tell me more about these dabus."~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~"The Lady?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~"I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~"That's all I wished to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~"They work all over the city, doin' the Lady's will. Always buildin' an' rebuildin', they are, usin' what's fallen or torn down to make somethin' new."~ */
  IF ~~ THEN REPLY #13147 /* ~"The Lady?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~"I had other questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~Nalls frowns at you. "Oh, no ye don't! I won't be sayin' anythin' more about her than I already have..." She traces a semi-circle over her heart with a finger. "Take my advice, berk... don't go askin' around about the Lady."~ */
  IF ~~ THEN REPLY #13150 /* ~"Very well. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~"Farewell, then."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~"There's not much to say... he's a bit chatty - he'll rattle his bone-box till ye're barmy, if ye let him - but a fair bargainer. He needs the nails, I need the jink, an' that's about as far is it goes."~ */
  IF ~~ THEN REPLY #13152 /* ~"Where's the Lower Ward?"~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~"Does anyone else here scavenge nails?"~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~"I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~"That's all I wished to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~"Eh... I used to know the way, I did, but the dabus have changed the streets 'round again. Don't know how to get there, now - I'll need to chart a new path - but I figure the dabus'll straighten things out eventually."~ */
  IF ~~ THEN REPLY #13156 /* ~"Dabus?"~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~"Tell me more about Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~"Does anyone else here scavenge nails?"~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~"Hmm. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~"Perhaps I'll get better directions somewhere else. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~She grins and shakes her head. "No one was clever enough or had the will to do it before me, an' I've shoved off anyone who's tried to jump me claim since." She pats the long-bladed dagger hanging at her side lovingly.~ */
  IF ~~ THEN REPLY #13161 /* ~"Your 'claim'?"~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~"Tell me more about Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~"Where's the Lower Ward?"~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~"I see. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~"That's good. Farewell, then."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~"Aye, that's what I call it! Honest labor's hard to come by in the Hive, an' I'm not about to let some soddin' piker peel me of me work. I've sent more than one berk runnin' an' howlin', holdin' their guts in... or off with the Collectors, if they were unlucky." Her dead eye gleams maliciously. "The Hive knows this spot is Iron Nalls', it does."~ */
  IF ~~ THEN REPLY #13166 /* ~"Is that how your eye was ruined?"~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~"Tell me more about Hamrys."~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~"Where's the Lower Ward?"~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~"I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~"I see. Farewell, then."~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~She laughs heartily. "Aye, an' I don't think ye have much room for another scar, besides!"~ */
  IF ~~ THEN REPLY #13171 /* ~"Heh... I had some other questions."~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~"You could be right. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~"Look, cutter, I've a lot of work to do - the nails aren't findin' their way into me bag while I'm spillin' chant with ye. Why don't ye pick another cutter's brain-box about that for a time?"~ */
  IF ~~ THEN REPLY #13175 /* ~"Let me ask you about something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~"Perhaps I will. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~She nods. "Aye, heard the name, I have. Head of a pack of Collectors, or so I hear it. Not sure where a body'd find him, though. Ye may want to try Ragpicker's Square - it's north an' west a' here. A whole mess of Collectors call kip there..."~ */
  IF ~~ THEN REPLY #13173 /* ~"I see. I have some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~"I'll look for him there, then. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~"Nay, I have not." She pauses for a moment. "Ye know, that's a good idea, it is... a journal. Mayhap I should start one of me own."~ */
  IF ~~ THEN REPLY #13177 /* ~"Yes, it is. It's amazing how much one can forget... a journal can help you hold on to your memories."~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~"Perhaps... I had another question..."~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~"Maybe so. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~She mulls over what you've said. "Heh. Ye're right. Ye're right indeed, cutter! I'll do it. I thank ye for the idea." She smiles.~ */
  IF ~~ THEN REPLY #13180 /* ~"Of course. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~"It's nothing. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~Nalls looks genuinely saddened. "Eh... ah... I see. 'Tis a sad thing, it is. All too common in the Hive, I say." She shakes her head briefly, as if to rid herself of the melancholy. "Well then, what was it ye needed?"~ */
  IF ~~ THEN REPLY #13182 /* ~"I said I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~"Nothing, never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~"Oh?" She finally turns her attention back to you, frowning. "That's too bad, it is. Now, what was it ye needed again?"~ */
  IF ~~ THEN REPLY #13184 /* ~"I had said I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~"Nothing, never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~She pulls three nails from her sling bag, tossing them spinning into the air and catching them in her palm. "Iron Nalls, they call me." She drops them back into the bag with a muffled *clink.* She glances at Annah to see if she's caught her display and, seeing that the tiefling's already turned away, looks to you again.~ */
  IF ~~ THEN REPLY #13186 /* ~"Why are you collecting the nails?"~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~"How'd you lose your eye?"~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~"Well met. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~"An appropriate name. Farewell, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~Nalls is put off by the remark, but quickly regains her composure. She smiles a bit sadly at you: "Surely I can, cutter. What is it ye're lookin' for?"~ */
  IF ~~ THEN REPLY #13190 /* ~"I'm looking for work."~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~"I'm looking to enjoy myself."~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~"Anything I should watch out for around here?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~"Anything I should watch out for around here?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~"I'm looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~"Nothing, actually. Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~"Never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~Nalls scratches her head. "Really only two kinds a' work in the Hive... ye can catch brain vermin an' ye can go collectin' deaders."~ */
  IF ~~ THEN REPLY #13196 /* ~"Catch brain vermin?"~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~"Collecting... deaders?"~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~"What if I was looking to enjoy myself?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~"Anything I should watch out for around here?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~"Anything I should watch out for around here?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~"Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~"Aye. The city a' Sigil pays ye for bringin' in the little pikers' tails. The local office is south a' here - a man inside'll tell ye more."~ */
  IF ~~ THEN REPLY #13203 /* ~"What was it you said about collecting 'deaders'?"~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~"What if I was looking to enjoy myself?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~"Anything I should watch out for around here?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~"Anything I should watch out for around here?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~"Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~"Maybe I'll go see him, then. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~ "The Dustmen give a cutter jink if they bring 'em deaders... keeps the streets clean, an' such. The berks that do it for a livin' are known as Collectors... scavengers, like me - but nails don't stink like deaders." She smirks.~ */
  IF ~~ THEN REPLY #13209 /* ~"What was it you said about catching brain vermin?"~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~"What if I was looking to enjoy myself?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~"Anything I should watch out for around here?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~"Anything I should watch out for around here?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~"True enough. Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~"Well, it depends on what ye find enjoyable, then. Couple a' the better pubs around here'd be the Gatherin' Dust an' the Smolderin' Corpse. Decent enough company there, but again - it all depends on what kind a' company ye're lookin' for." She glances over at Annah, but the tiefling pays her no notice.~ */
  IF ~~ THEN REPLY #13215 /* ~"How do I find these places?"~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~"What about work here?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~"Anything I should watch out for around here?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~"Anything I should watch out for around here?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~"Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~"Pretty much everyone's trouble in the Hive... an' judgin' from the looks of ye, ye're included in the lot of 'em! Just watch who ye're talkin' to close, that's all." She appraises you once more. "I'm sure ye can handle yerself... yer lovely friend looks right hard too, she does." Nall looks at Annah expectantly, but the younger woman ignores the comment.~ */
  IF ~~ THEN REPLY #13221 /* ~"What about work here?"~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~"What if I was looking to enjoy myself?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~"Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~She nods at Annah. "Yer fair companion looks to be a Hiver herself, she does... have ye asked her about it much?" Nalls smiles at the tiefling, though her ruined eye somewhat dulls the effect.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~Nalls thinks for a moment, scratching her chin. "The Gatherin' Dust Bar is near the Mortuary - head southwest from its front gate. The Smolderin' Corpse - me own pick a' the two - is east a' here. I'd walk there with ye to get meself a drink, but I've got too much work, I do."~ */
  IF ~~ THEN REPLY #13226 /* ~"What about work here?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~"Anything I should watch out for around here?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~"Anything I should watch out for around here?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~"Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~"Pretty much everyone's trouble in the Hive... an' judgin' from the looks of ye, ye're included in the lot of 'em! I hear there's a real dangerous blood wanderin' about, though, lookin' to make trouble an' get his sword red. Noble, too, from his looks." She appraises you once more. "I'm sure ye can handle yerself... yer lovely friend looks right hard too, she does." Nall looks at Annah expectantly, but the younger woman ignores the comment.~ */
  IF ~~ THEN REPLY #13260 /* ~"What about work here?"~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~"What if I was looking to enjoy myself?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~"Let me ask you something else..."~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~Nalls nods slowly. "It's a portal, ye know. Stumbled on it quite by chance, I did... alls ye need ta do is have a handful o' junk on ye when ye walks up ta it, an' ye'll be able ta pass right through. There's a small open space past the portal, an' a gate leadin' underground, but I figured no sense in askin' fer trouble so's I just turned around an' went right back. Here..." She hands you a handful of junk. "Use this, if ye likes. I was gonna toss it away, anyhow."~ */
  IF ~~ THEN REPLY #48401 /* ~"Thanks. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~"Thanks, Nalls. Farewell."~ */ GOTO 5
END
