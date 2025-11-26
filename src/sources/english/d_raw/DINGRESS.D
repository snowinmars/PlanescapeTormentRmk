// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINGRESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINGRESS~

IF ~  Global("Ingress","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3408 /* ~You see a haggard woman wrapped in rags. Her hair is disheveled and dirty, and her complexion is extremely dark. Burns cover her arms, and her right hand is a fused lump of flesh... it looks melted, like wax exposed to a great heat.~ */
  IF ~~ THEN REPLY #3409 /* ~"Greetings."~ */ DO ~SetGlobal("Ingress","GLOBAL",1)
~ JOURNAL #28839 /* ~I met a disfigured woman named Ingress in the city outside the Mortuary. She was horribly scarred - no doubt the wounds she suffered affected her mind.~ */ GOTO 1
  IF ~~ THEN REPLY #6167 /* ~Leave the woman in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6168 /* ~"What issit y'wanta me?" The woman's accent is thick, and you are having difficulty making out what she is saying. "Y'wanta me t'leave? NOT leaving this city, so I'm not. I can't, tried, it's not a city, it's a prison t'everywhere."~ */
  IF ~~ THEN REPLY #6169 /* ~"Everywhere?"~ */ DO ~SetGlobal("Ingress","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY #6170 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.1 18.2
  SAY #6171 /* ~"There's Worlds, there's..." Her eyes gleam madly. "...planes that be sinking sands, fields thirsty nettles be, sightless worlds where y'limbs are given life and hate, cities of dust whose people are dust and whisper ash, the house without doors, the Twilit Lands, the singing winds, the singing winds..." She starts to sob quietly, but she seems all out of tears. "And shadows... the terrible shadows there be."~ */
  IF ~~ THEN REPLY #6172 /* ~"Where are these places?"~ */ DO ~SetGlobal("Ingress","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #6173 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #6174 /* ~"Where'z? Where'z them places?" She flings the lump of her right hand in an arc, gesturing at the cityscape. "They'z all HERE be. Doors, doors, here to *everywhere.*"~ */
  IF ~~ THEN REPLY #6175 /* ~"Doors?"~ */ GOTO 4
  IF ~~ THEN REPLY #6176 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 18.3
  SAY #6177 /* ~"You! You're not knowing this?!" She squints at you, and her teeth start chattering. "Tell you, I will: Beware every space you walk through or touch in this thrice-cursed city... Doors, gates, arches, windows, picture frames, the open mouth of a statue, the spaces 'tween shelves... Beware ANY space bounded on all sides. ALL these're doors t'other places."~ */
  IF ~~ THEN REPLY #6178 /* ~"What do you mean?"~ */ DO ~SetGlobal("Ingress","GLOBAL",4)
~ GOTO 5
  IF ~~ THEN REPLY #6179 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.4
  SAY #6180 /* ~"Every door has a KEY it does, and with this key, they show their true nature... an arch becomes a portal, a picture frame becomes a portal, a window becomes a portal... all eager t'take y'someplace ELSE. They steal you away..." She raises the lump of her right hand. "And sometimes what's on th'other side takes part of you as a TITHE."~ */
  IF ~~ THEN REPLY #6181 /* ~"What are these keys?"~ */ GOTO 6
  IF ~~ THEN REPLY #6182 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #6183 /* ~"The keys, the keys number as many as the doors of this city. Every door, a key, every key, a door." Her teeth start chattering again, as if she is cold. "And a key is...? A key is *anything.* It may be an emotion, an iron nail held 'tween y'second and fifth fingers, a thought thought three times, then thought once in reverse, or it may be a glass rose."~ */
  IF ~~ THEN REPLY #6184 /* ~"And these are all keys that open these doors?"~ */ JOURNAL #28838 /* ~Ingress warned me about "doors" within the city... she claimed that any bounded space - a picture frame, an arch, a window - any of these things might become a portal to someplace else if you walked close to them with the proper key. These keys could be almost anything... physical or non-physical: iron nails, a thought thought three times, a glass rose, an emotion... any of these might open a door to someplace else.~ */ GOTO 7
  IF ~~ THEN REPLY #6185 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6186 /* ~"Yes." Her teeth start chattering, and she clenches her mouth closed and squints her eyes. "Y-y-yes. Can't leave... can't leave..."~ */
  IF ~~ THEN REPLY #6187 /* ~"How did you get here?"~ */ DO ~SetGlobal("Ingress","GLOBAL",5)
~ JOURNAL #28837 /* ~Ingress was transported to the city through one of these doors on her home plane... she hummed a tune in a glade by two dead trees that had fallen together, and she opened a portal to this city. She stepped through, and ever since, has not been able to find her way back.~ */ GOTO 8
  IF ~~ THEN REPLY #6188 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 18.5
  SAY #6189 /* ~"From..." She seems to calm slightly, and her eyes take on a thousand-league stare. "Came from a place else from here, almost a life-ago, hummed a tune by a glade with two dead trees that had fallen together. A brilliant door opened in th'space 'tween the crossed trees, showed me this city on th' other side... I'z stepped through, ended here."~ */
  IF ~~ THEN REPLY #6190 /* ~"Why can't you go back?"~ */ GOTO 9
  IF ~~ THEN REPLY #6191 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6192 /* ~"Tried!" She tries to sob again, but no tears come. "Tried! ALL doors here lead to OTHER places." She shudders and grips her melted right hand. "Went through thrice-ten portals, some a-purpose, some a-accident, none a-them right. Can't find way back..."~ */
  IF ~~ THEN REPLY #6193 /* ~"There must be a portal that can take you back."~ */ GOTO 10
  IF ~~ THEN REPLY #6194 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #6195 /* ~"Can't even leave here! This square! And there, th'place of death behind th' gate waits for me!" She points at the Mortuary behind the gate, then turns back to you, her face desperate. "Can't go anywhere in this city!"~ */
  IF ~~ THEN REPLY #6196 /* ~"You can't go anywhere? What do you mean?"~ */ GOTO 11
  IF ~~ THEN REPLY #6197 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #6198 /* ~"Anythin' could be a door. Any arch there, any door here, could be a portal, don't know the key, could get a-sent t'another horrible place..." Her teeth start chattering again. "...got t'stay way from the closed spaces, all could be doors, could have a key on me, an' I not be knowing it..."~ */
  IF ~~ THEN REPLY #6199 /* ~"You... you're afraid to go through ANY door or arch because it *might* be a portal?"~ */ GOTO 12
  IF ~~ THEN REPLY #6200 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #6201 /* ~She nods, her teeth chattering. ~ */
  IF ~~ THEN REPLY #6202 /* ~"How long have you been afraid of this?"~ */ GOTO 13
  IF ~~ THEN REPLY #6203 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #6204 /* ~She squints. "Since the last time I walked through th' last portal, th' place where m'hand..." She stops. "Since m'tenth Turning... I'm in me fourth tenth Turning that, now." Her teeth begin chattering again.~ */
  IF ~~ THEN REPLY #6205 /* ~"Thirty years? You haven't walked through *any* *door* for thirty years?"~ */ GOTO 14
  IF ~~ THEN REPLY #6206 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6207 /* ~Her vision seems to clear slightly. She looks up at you, her teeth still chattering.~ */
  IF ~~ THEN REPLY #6208 /* ~"If you got here, there must be a portal that can take you back. It's only a matter of finding it-"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #6209 /* ~"To be too afraid to walk through *any* door, that's-"~ */ GOTO 15
  IF ~~ THEN REPLY #6210 /* ~"How *mad* are you, woman? You must be a fool to not walk through anything that might be a door-"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #6211 /* ~"I'm sorry, I must go."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #6212 /* ~She smiles. Her teeth aren't chattering because she is cold... they are moving around inside her mouth, her gums twisting as the teeth shift about. They rise and recede as you watch, chattering as they rattle against each other.~ */
  IF ~~ THEN REPLY #6213 /* ~"What...?"~ */ GOTO 16
  IF ~~ THEN REPLY #6214 /* ~"Uh... I better take my leave... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #6215 /* ~She hisses at you. "Only takes ONE portal you steps through a-accident, t'drive th' FEAR into you. I went through thrice-ten, lost m'hand, burned m'flesh, and lost m'sense." She looks at her feet. "N'more, n'more."~ */
  IF ~~ THEN REPLY #6216 /* ~"I'm sorry... if I can find some means to help you, I will. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_1","GLOBALGood",1)
~ JOURNAL #28836 /* ~Ingress is trapped by her fear of portals... her experiences in plane-walking have left her so frightened that she won't step through *anything* that might be a portal. If I could find an experienced plane-walker somewhere in the city, perhaps I could find a way to get her back home.~ */ EXIT
  IF ~~ THEN REPLY #6217 /* ~"Die in a city you're afraid to leave, then. Let your fear rule you. Farewell and good riddance."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_1","GLOBALGood",-1)
~ JOURNAL #28835 /* ~That mad-woman Ingress is so frightened of her shadow and anything that MIGHT be a portal that she lives like a dog on the streets of the city. I have little or no sympathy for her... still, if I can find an experienced planewalker who knows of the portal she traveled through to get here, I may come back and tell her. ~ */ EXIT
  IF ~~ THEN REPLY #6218 /* ~"I'll take your warning to heart. Farewell."~ */ JOURNAL #28836 /* ~Ingress is trapped by her fear of portals... her experiences in plane-walking have left her so frightened that she won't step through *anything* that might be a portal. If I could find an experienced plane-walker somewhere in the city, perhaps I could find a way to get her back home.~ */ EXIT
END

IF ~  GlobalGT("Ingress","GLOBAL",0)
GlobalLT("Ingress","GLOBAL",7)
~ THEN BEGIN 17 // from:
  SAY #6219 /* ~You see Ingress. She is huddled inside her cloak of dirty rags, her teeth chattering. She is glancing furtively about her, as if expecting to be attacked at any moment.~ */
  IF ~~ THEN REPLY #6220 /* ~"Greetings, Ingress."~ */ GOTO 18
  IF ~~ THEN REPLY #6221 /* ~Leave her alone.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #6222 /* ~"Eh? You!" She squints at you. "What issit y'wanta me now?! Y'wanta me t'leave? NOT leaving this city, so I'm not. I can't, tried, it's not a city, it's a prison t'everywhere."~ */
  IF ~  Global("Ingress","GLOBAL",6)
!Dead("Candrian")
~ THEN REPLY #6228 /* ~"Ingress, I found someone who can take you back to your home plane."~ */ DO ~SetGlobal("Ingress","GLOBAL",7)
~ GOTO 19
  IF ~  Global("Ingress","GLOBAL",1)
~ THEN REPLY #6223 /* ~"Prison to everywhere? What do you mean?"~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",2)
~ THEN REPLY #6224 /* ~"Tell me again about those places... those planes you've visited."~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",3)
~ THEN REPLY #6225 /* ~"What were these doors you were talking about?"~ */ GOTO 4
  IF ~  Global("Ingress","GLOBAL",4)
~ THEN REPLY #6226 /* ~"What were those keys you were talking about?"~ */ GOTO 5
  IF ~  Global("Ingress","GLOBAL",5)
~ THEN REPLY #6227 /* ~"How did you get here?"~ */ GOTO 8
  IF ~~ THEN REPLY #28840 /* ~"Sorry to bother you, Ingress. Take care."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #28815 /* ~Ingress falls silent. "I wanta go. Wanta LEAVE this place."~ */
  IF ~~ THEN REPLY #28841 /* ~"His name is Candrian. He should be along shortly to help you... trust him, all right?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #28816 /* ~Ingress says nothing, merely nods quietly, her teeth chattering inside her mouth.~ */
  IF ~~ THEN REPLY #28842 /* ~"I'll go back and meet Candrian at the Smoldering Corpse Bar and make sure everything turned out all right. Be strong, Ingress."~ */ JOURNAL #28834 /* ~I told Ingress that Candrian would come to help guide her back to her home. I'll meet Candrian back at the Smoldering Corpse Bar to make sure that everything turned out all right. ~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",7)
~ THEN BEGIN 21 // from:
  SAY #28817 /* ~Ingress watches you warily as you approach. "Cun - dri- unh?"~ */
  IF ~  !Dead("Candrian")
~ THEN REPLY #28843 /* ~"No, I'm not Candrian... he should be along to help you any time now. I'll meet him back at the Smoldering Corpse Bar and see how things turned out. Be strong, Ingress."~ */ EXIT
  IF ~  Dead("Candrian")
~ THEN REPLY #28844 /* ~"No, I'm not Candrian... Candrian met an unfortunate end and died. Fortunately, it means you and Candrian will meet one day. Farewell."~ */ EXIT
END
