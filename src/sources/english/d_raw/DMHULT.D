// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHULT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHULT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2802 /* ~This man appears less dour and wary of passersby than the people around him. He moves with an upbeat gait, casually scanning the ground to either side of him as he goes. As you approach him, he nods a friendly greeting.~ */
  IF ~~ THEN REPLY #18030 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #18031 /* ~Nod in return, pass him by.~ */ EXIT
  IF ~~ THEN REPLY #18032 /* ~Pass him by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2803 /* ~"'Allo, cutter! Say... ye seen any deaders about?"~ */
  IF ~~ THEN REPLY #18033 /* ~"None nearby, no. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #18034 /* ~"No, not nearby. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.4 4.3 5.3 6.3 7.4 8.3 9.4 10.3 11.1 12.4 13.3 14.3 15.3 16.1
  SAY #18015 /* ~"An' farewell to ye too, cutter!" He waves and walks off.~ */
  IF ~~ THEN REPLY #18035 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #18016 /* ~"Too bad, too bad." He shrugs. "Had some questions, did ye? Ask away, then!"~ */
  IF ~~ THEN REPLY #18036 /* ~"What are you looking for?"~ */ GOTO 4
  IF ~~ THEN REPLY #18037 /* ~"Can you tell me about this area?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18038 /* ~"I'm looking for a man named Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18039 /* ~"I'm searching for a journal I've lost."~ */ GOTO 15
  IF ~~ THEN REPLY #18040 /* ~"Never mind. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18017 /* ~"Deaders, a' course! Don't ye recognize the robes of a Collector?" He grabs a hold of the cloth and holds it up for your inspection.~ */
  IF ~~ THEN REPLY #18427 /* ~"No..."~ */ GOTO 5
  IF ~~ THEN REPLY #18428 /* ~"Collectors?"~ */ GOTO 5
  IF ~~ THEN REPLY #18429 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18430 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 12.0 13.0 14.0 15.0
  SAY #18018 /* ~"Aye, Collectors!" He indicates his ragged brown robes. "These here are a Collector's robes, cutter. Any poor sod ye see wearin' these... me, for instance, ha! ...is most likely lookin' for deaders. Bodies, ta sell at the Mortuary." He shrugs. "Whatever it takes ta get by in the Hive, right? Ha ha!"~ */
  IF ~~ THEN REPLY #18431 /* ~"Do the Collectors work together?"~ */ GOTO 6
  IF ~~ THEN REPLY #18432 /* ~"Why does the Mortuary pay for corpses?"~ */ GOTO 11
  IF ~~ THEN REPLY #18433 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18434 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #18019 /* ~He laughs heartily. "Hells, no! We all dress the same, but there's only so many deaders ta go around. We band up, usually... an' competin' bands, packs, gangs... whatever ya like ta call 'em... aren't none too friendly with one another."~ */
  IF ~~ THEN REPLY #18435 /* ~"Are there rival packs of Collectors near here?"~ */ GOTO 7
  IF ~~ THEN REPLY #18436 /* ~"Why does the Mortuary pay for corpses?"~ */ GOTO 11
  IF ~~ THEN REPLY #18437 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18438 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #18020 /* ~He nods. "Sure as Sigil's round! Most Collectors in the Hive call kip in Ragpicker's Square, a dump just north a' here through the large gate. It's mostly run by Sharegrave's laddos, now, since we fought most a' Pharod's boys off."~ */
  IF ~~ THEN REPLY #18439 /* ~"Tell me about Sharegrave."~ */ GOTO 8
  IF ~~ THEN REPLY #18440 /* ~"Tell me about Pharod."~ */ GOTO 9
  IF ~~ THEN REPLY #18441 /* ~"Why does the Mortuary pay for corpses?"~ */ GOTO 11
  IF ~~ THEN REPLY #18442 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18443 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 10.0
  SAY #18021 /* ~"Sharegrave? He's my boss. I never speak with him, though... never even seen him too close-like. Keeps ta himself, mostly, an' runs things through a few underlin's. Ye can find him in his case at Ragpicker's Square, but I'd stay away unless ye got good reason ta talk ta him. He's a bit peery a' strangers, he is."~ */
  IF ~~ THEN REPLY #18444 /* ~"Tell me about Pharod."~ */ GOTO 9
  IF ~~ THEN REPLY #18445 /* ~"Why does the Mortuary pay for corpses?"~ */ GOTO 11
  IF ~~ THEN REPLY #18446 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18447 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #18022 /* ~"Don't know much about the man, myself. We spent a lot a' time fightin' his boys, but they've all suddenly disappeared... along with Pharod. We still catch the occasional straggler in Ragpicker's Square, but we've no idea where the rest are hidin' at."~ */
  IF ~~ THEN REPLY #18448 /* ~"Does he have many men left?"~ */ GOTO 10
  IF ~~ THEN REPLY #18452 /* ~"Tell me about Sharegrave."~ */ GOTO 8
  IF ~~ THEN REPLY #18453 /* ~"Why does the Mortuary pay for corpses?"~ */ GOTO 11
  IF ~~ THEN REPLY #18454 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18456 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #18023 /* ~ "He must, cause we hear his lot's been real successful of late. Findin' lots a' deaders, makin' lots a' jink off the Dusties at the Mortuary. Don't know how, either, as we've been havin' trouble findin' corpses of late." He shrugs.~ */
  IF ~~ THEN REPLY #18457 /* ~"Tell me about Sharegrave."~ */ GOTO 8
  IF ~~ THEN REPLY #18459 /* ~"Why does the Mortuary pay for corpses?"~ */ GOTO 11
  IF ~~ THEN REPLY #18460 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18461 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.1 6.1 7.2 8.1 9.2 10.1
  SAY #18024 /* ~"Keeps the streets a' the Hive a bit cleaner, I guess. Keeps plague from spreadin' an' the like. Though the Dusties like ta keep the dead in their place, too... seein' to it they all get properly buried, melted down, or what not. Part a' their beliefs an' such."~ */
  IF ~~ THEN REPLY #18463 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18464 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.2 5.2 6.2 7.3 8.2 9.3 10.2 11.0
  SAY #18025 /* ~"Ask away, cutter! Mayhap I'll get lucky an' someone'll keel over an' die while we're chattin'. Ha ha!"~ */
  IF ~~ THEN REPLY #18466 /* ~"Tell me about Collectors."~ */ GOTO 5
  IF ~~ THEN REPLY #18467 /* ~"Can you tell me about this area?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18469 /* ~"I'm looking for a man named Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18471 /* ~"I'm searching for a journal I've lost."~ */ GOTO 15
  IF ~~ THEN REPLY #18472 /* ~"Never mind. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 3.1 12.1 14.1 15.1
  SAY #18026 /* ~"This is the Hive, cutter - what we Hivers like ta call the arse-end a' Sigil. Not that Sigil's got an end, bein' round an' all, but ye know what I mean. Ha! Anyway, north an' west a' here, through the big gate, is Ragpicker's Square, where Collectors like me call kip. Don't know much about the rest a' Sigil, I'm afraid."~ */
  IF ~~ THEN REPLY #18473 /* ~"Can you tell me about Collectors?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18474 /* ~"I'm looking for a man named Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18475 /* ~"I'm searching for a journal I've lost."~ */ GOTO 15
  IF ~~ THEN REPLY #18476 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 3.2 12.2 13.1 15.2
  SAY #18027 /* ~"The Collector boss? Don't know much about the man, myself. We spent a lot a' time fightin' his boys, but they've all suddenly disappeared... along with Pharod. We still catch the occasional straggler in Ragpicker's Square, but we've no idea where the rest are hidin' at."~ */
  IF ~~ THEN REPLY #18477 /* ~"Can you tell me about Collectors?"~ */ GOTO 5
  IF ~~ THEN REPLY #18478 /* ~"Can you tell me about this area?"~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18479 /* ~"I'm also searching for a journal I've lost."~ */ GOTO 15
  IF ~~ THEN REPLY #18480 /* ~"That's all I wished to know. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 3.3 12.3 13.2 14.2
  SAY #18028 /* ~"Hmm... no, haven't run across one. Tell ye what, though - if I do, I hold on to it for ye."~ */
  IF ~~ THEN REPLY #18481 /* ~"Thanks. Can you tell me about Collectors?"~ */ GOTO 5
  IF ~~ THEN REPLY #18482 /* ~"Thanks. Can you tell me about this area?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18483 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 14
  IF ~~ THEN REPLY #18484 /* ~"Thanks, I'd appreciate that. Farewell."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #18029 /* ~"'Allo, there, cutter. Say, I've seen ye afore, no? Sure, I have! Now I remember. Say... seen any deaders about?"~ */
  IF ~~ THEN REPLY #18485 /* ~"None nearby, no. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #18486 /* ~"No, not nearby. Farewell."~ */ GOTO 2
END
