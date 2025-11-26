// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10146 /* ~You see a young woman wearing a cheap dress. Her bodice is definitely tighter than it has to be, causing her large bosom to overflow the garment. ~ */
  IF ~~ THEN REPLY #10147 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #10148 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10149 /* ~She gives you the once over and adopts a bored expression. "You look a bit rough for my tastes. I think you should move on, cutter."~ */
  IF ~~ THEN REPLY #10150 /* ~"What are you talking about?"~ */ GOTO 2
  IF ~~ THEN REPLY #10151 /* ~"I just want to ask you some questions."~ */ GOTO 6
  IF ~~ THEN REPLY #10152 /* ~"Uh... Yeah. Farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10153 /* ~She gives you a sly look and leans toward you. "Think about it, berk. Just what kind of business do you think I engage in?" She looks down at her bosom then winks at you. "See anything you like?"~ */
  IF ~~ THEN REPLY #10154 /* ~"If you don't think I fit your tastes then why are you displaying your 'wares' so..." You can't seem to put your finger on the word you want to use.~ */ GOTO 3
  IF ~~ THEN REPLY #10155 /* ~"I just wanted to ask you a couple of questions."~ */ GOTO 6
  IF ~~ THEN REPLY #10156 /* ~"Yeah, what will it cost me?"~ */ GOTO 23
  IF ~~ THEN REPLY #10157 /* ~"Not really. I'll be leaving now."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10158 /* ~She giggles, then straightens up. "Just having a little fun, that's all. You want something?"~ */
  IF ~~ THEN REPLY #10159 /* ~"I just wanted to ask you a couple of questions."~ */ GOTO 6
  IF ~~ THEN REPLY #10160 /* ~"Yeah, what will it cost me?"~ */ GOTO 23
  IF ~~ THEN REPLY #10161 /* ~"Not really. I'll be leaving now."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #10162 /* ~She gives you an angry look. "Hey! Pike it, berk. I'm the best you'll ever find on the streets."~ */
  IF ~~ THEN REPLY #10163 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #10164 /* ~She smiles at you. "Good day to you then."~ */
  IF ~~ THEN REPLY #10166 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 2.1 3.0 7.1 8.1 9.2 10.0 11.0 15.1 16.0 20.0 22.0 23.0 25.0 26.0
  SAY #10165 /* ~She sighs and gives you a bored look. "What do you want to know?"~ */
  IF ~~ THEN REPLY #10167 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 7
  IF ~~ THEN REPLY #10168 /* ~"What's the latest news?"~ */ GOTO 12
  IF ~~ THEN REPLY #10169 /* ~"Who's in charge around here?"~ */ GOTO 20
  IF ~~ THEN REPLY #10170 /* ~"What can you tell me about Curst?"~ */ GOTO 21
  IF ~~ THEN REPLY #10171 /* ~"What's your name?"~ */ GOTO 25
  IF ~~ THEN REPLY #10172 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10173 /* ~She pouts her lips and furrows her brow in thought. After a moment she smiles. "Yes, I remember. He's in prison." She frowns again. "Strange place for a deva to be, don't you think?"~ */
  IF ~~ THEN REPLY #10174 /* ~"Prison? Are you sure about this?"~ */ DO ~SetGlobal("Know_Deva_Prison","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #10175 /* ~"I see. Can I ask you another question?"~ */ GOTO 6
  IF ~~ THEN REPLY #10176 /* ~"You've been most helpful. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10177 /* ~She frowns at you. "Of course I'm sure. I heard it from one of the guards. That deva's locked up real good. The diggers have been expanding the prison area. They opened up a stone bubble not long ago and there he was. He's well-bound indeed."~ */
  IF ~~ THEN REPLY #10178 /* ~"Hmm. That will make it difficult to see him."~ */ GOTO 9
  IF ~~ THEN REPLY #10179 /* ~"Another question."~ */ GOTO 6
  IF ~~ THEN REPLY #10180 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10181 /* ~She holds out her hand and smiles slyly at you. "Jink? Jink?"~ */
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10182 /* ~Give her a couple of coins.~ */ DO ~TakePartyGold(2)
~ GOTO 10
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10183 /* ~Lie: "I'm sorry, I have no money."~ */ GOTO 11
  IF ~~ THEN REPLY #10184 /* ~"Let me ask you another question."~ */ GOTO 6
  IF ~~ THEN REPLY #10185 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10186 /* ~She smiles sweetly then leans forward allowing you another view of her ample bosom. "Go to the Traitor's Gate bar and ask around. There's people there that can help you." She drops the coins into her bodice.~ */
  IF ~~ THEN REPLY #10187 /* ~"Thank you, I shall. Let me ask you something else though."~ */ GOTO 6
  IF ~~ THEN REPLY #67907 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #10188 /* ~She sighs and gives you a pouting look. "I must be barmy but I'll help you anyway. Go to the Traitor's Gate bar and ask around. There's people there that can help you."~ */
  IF ~~ THEN REPLY #10189 /* ~"Thank you, I shall. Let me ask you something else though."~ */ GOTO 6
  IF ~~ THEN REPLY #67908 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY #10190 /* ~"Well... The plague is finally under control. Several areas of the city have been sealed off to prevent it from spreading. They even had to close the gate to Carceri in the town square." She pauses to think.~ */
  IF ~~ THEN REPLY #10191 /* ~"Go on."~ */ GOTO 13
  IF ~~ THEN REPLY #10192 /* ~"Excuse me. Plague?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #10193 /* ~"I am grateful for your help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 17.0 24.0
  SAY #10194 /* ~"Tainted Barse's daughter turned up missing. He's out of sorts because of it and is looking for some basher willing to help him find her."~ */
  IF ~~ THEN REPLY #10195 /* ~"Go on."~ */ GOTO 14
  IF ~~ THEN REPLY #10196 /* ~"Who is Tainted Barse and where can I find him?"~ */ GOTO 18
  IF ~~ THEN REPLY #10197 /* ~"You have my thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #10198 /* ~"Some poor sod's going to lose his head today. He's scheduled for the chopper in the town square. Disgusting, really." She frowns and looks away from you.~ */
  IF ~~ THEN REPLY #10199 /* ~"Go on."~ */ GOTO 15
  IF ~~ THEN REPLY #10200 /* ~"What did he do?"~ */ GOTO 19
  IF ~~ THEN REPLY #10201 /* ~"I thank you, lady. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 19.0
  SAY #10202 /* ~She seems lost in thought for a moment. "I can't think of anything more." She shrugs her shoulders.~ */
  IF ~~ THEN REPLY #10203 /* ~"You seem very well informed. I'm impressed."~ */ GOTO 16
  IF ~~ THEN REPLY #10204 /* ~"If I may, I would ask you something else."~ */ GOTO 6
  IF ~~ THEN REPLY #10205 /* ~"You have my gratitude. Farewell, lady."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10206 /* ~She smiles, leans forward, and bats her eyes at you rather enticingly. "People just seem to open up to me. I don't understand why." She straightens up and giggles.~ */
  IF ~~ THEN REPLY #10207 /* ~"Uh... Yes, I wonder why. Anyway, I wanted to ask you something else."~ */ GOTO 6
  IF ~~ THEN REPLY #10208 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #10209 /* ~"Yes, but don't worry. It's under control now that the infected areas have been sealed off."~ */
  IF ~~ THEN REPLY #10210 /* ~"I see. Go on."~ */ GOTO 13
  IF ~  Global("Know_Deva_Prison","Global",1)
~ THEN REPLY #10211 /* ~"Did this plague hit right around the time they dug open the deva's prison?"~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #10212 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY #10213 /* ~"He's the barkeep at the Traitor's Gate. It's off that way I think." She points down the street.~ */
  IF ~~ THEN REPLY #10214 /* ~"Go on."~ */ GOTO 14
  IF ~~ THEN REPLY #10215 /* ~"I thank you for your help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #10216 /* ~She frowns for a moment and looks away from you. After a moment she shrugs her shoulders. "I can't rightly say. None of my... contacts have given me a reason."~ */
  IF ~~ THEN REPLY #10217 /* ~"Go on."~ */ GOTO 15
  IF ~~ THEN REPLY #10218 /* ~"You have been a great help to me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.2
  SAY #10219 /* ~She giggles. "That would be Tovus, Tovus Giljaf. He can be rather... intense at times, but he's always sweet to me and he pays well." She hesitates and seems to think better of what she is doing. "I shouldn't talk about Tovus though. You can find him at the administration office in the town square."~ */
  IF ~~ THEN REPLY #10220 /* ~"Very well, another question."~ */ GOTO 6
  IF ~~ THEN REPLY #10221 /* ~"I must leave you now."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3
  SAY #10222 /* ~"Curst..." She sighs and looks a little forlorn. "The city's a cage for the lonely. The sods you see here got where they are through treachery and betrayal. Now they live day to day always looking over their shoulders, never knowing who they can trust and call a friend." ~ */
  IF ~~ THEN REPLY #10223 /* ~"Does that include you?"~ */ GOTO 22
  IF ~~ THEN REPLY #10224 /* ~"Interesting. I think I should go now."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #10225 /* ~She looks away wistfully. "I've done my share and I've come to regret it. Now..." She turns to face you once again. "If I could give you a free piece of advice it would be: Whatever you do in life, make sure you can forgive yourself."~ */
  IF ~~ THEN REPLY #10226 /* ~"I'll keep that in mind. Can I ask you something else?"~ */ GOTO 6
  IF ~~ THEN REPLY #10227 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2 3.1
  SAY #10228 /* ~She looks you up and down again. "Well... if you promise to treat me right and not hurt me... ten coppers."~ */
  IF ~~ THEN REPLY #10229 /* ~"I'm very tempted... but I can't right now. Can I ask you something else?"~ */ GOTO 6
  IF ~~ THEN REPLY #10230 /* ~"I'm sorry, but I have to pass. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY #10231 /* ~She wrinkles her brow in thought, then looks away into the distance for a while. Finally she returns her attention to you. "You know, I never thought about it before but I think you're right. It wasn't long after finding him that the plague hit."~ */
  IF ~~ THEN REPLY #10232 /* ~"I see. Go on."~ */ GOTO 13
  IF ~~ THEN REPLY #10233 /* ~"You have been very helpful. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.4
  SAY #10234 /* ~She gives you a sweet smile. "I'm Sharlene, but all of my friends call me Shar."~ */
  IF ~~ THEN REPLY #10235 /* ~"Shar's a nice name. Let me ask you something else."~ */ GOTO 6
  IF ~~ THEN REPLY #10236 /* ~"You have been very helpful. Farewell, Shar."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #63238 /* ~You see Sharlene, the harlot. She gives you a sweet smile. "Hello again, cutter. What can I do for you?"~ */
  IF ~~ THEN REPLY #63239 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63240 /* ~"Nothing, farewell."~ */ EXIT
END
