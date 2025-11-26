// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~You see a spindly-looking merchant with a brush of gray and red stubble across his chin. He wears several layers of brightly colored robes, so much so that he looks like a flag with arms and legs. He is shaking slightly as you watch.~ */
  IF ~~ THEN REPLY #20656 /* ~"Greetings."~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~"Are you Giscorl?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~Ignore the merchant, walk around the rest of the market.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~"I, Giscorl." He bows and spreads his trembling hands. As he does, you notice his hands and forearms are a twisted mass of black scar tissue... as if they were once badly burned.~ */
  IF ~~ THEN REPLY #21070 /* ~"Uh, what are you selling?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~"Uh... how did you hurt your hands?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~"I'm here to pick up someone's wash... Mebbeth... the midwife... Ragpicker's Square?"~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~Giscorl turns to you. "I, Giscorl." He bows and spreads his trembling, scarred hands. "I, Giscorl."~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~"Can I see what you have?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~"Uh, what do you do?"~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~"Uh... how did you hurt your hands?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~"I'm here to pick up someone's wash... Mebbeth... the midwife... Ragpicker's Square?"~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~"Nothing today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~"Giscorl buy cloth." Giscorl voice ticks like a clock, flat and measured. "Giscorl sell cloth, wash cloth, mend cloth and..." He gestures at his layers of clothing with his shaking hands. "...wear cloth."~ */
  IF ~~ THEN REPLY #21079 /* ~"Can I see what you have?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~"Uh... how did you hurt your hands?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~"I see. Look, I'm here to pick up someone's wash... Mebbeth... the midwife... Ragpicker's Square?"~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~"Nothing today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~Giscorl doesn't seem to have heard you; he answers only with his spiel, delivered in the same flat monotone: "Giscorl buy cloth, sell cloth, wash cloth, mend cloth and..." He gestures at his layers of clothing with his shaking hands. "...wear cloth."~ */
  IF ~~ THEN REPLY #21083 /* ~"Can I see what you have?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~"I asked: how did you hurt your hands?"~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~"I see. Look, I'm here to pick up someone's wash... Mebbeth... the midwife... Ragpicker's Square?"~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~"Nothing today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~Giscorl's monotone breaks. "Giscorl b-buy cloth, s-sell cloth, w-wash cloth, m-mend cloth, and..." He gestures at himself again, but his hands are shaking so badly that he cannot even finish. ~ */
  IF ~~ THEN REPLY #21087 /* ~"Never mind. Can I see what you have?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~"Uh... never mind. Look, I'm here to pick up someone's wash... Mebbeth... the midwife... Ragpicker's Square?"~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~Giscorl blinks. "Wash cloth?"~ */
  IF ~~ THEN REPLY #21090 /* ~"Yes, Mebbeth... Ragpicker's Square?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~"Eh... rag? Picker?" He taps his fingers, as if counting something. "I know. I remember." He holds up a trembling finger, as if telling you to wait.~ */
  IF ~~ THEN REPLY #21091 /* ~Wait for him to fetch the wash.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~He comes back with a flattened mass of green rags, thin as paper, yet so stiff they look like they could double as wooden boards. The rags are so caked with a greenish-lime starch that they look like it would take years of soaking to relax them.~ */
  IF ~~ THEN REPLY #21092 /* ~"Uh... how many times did you clean these?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~"Giscorl wash cloth, starch cloth every fifth-day, wash cloth, starch cloth every fifth-day." His eyes flicker. "Giscorl wash many years. Always starch cloth on fifth-day. Giscorl's ritual."~ */
  IF ~~ THEN REPLY #21093 /* ~"But they're ruined."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~"Wash cloth. Is Giscorl's ritual." His voice is flat, almost zombie-like. "*Must* starch cloth every fifth-day."~ */
  IF ~~ THEN REPLY #3014 /* ~"What's the point of doing it every five days when they don't need... oh, never mind, just hand them over."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~"Give cloth." He nods, then hands you the rags. They're heavy... it's like carrying an armload of bricks.~ */
  IF ~~ THEN REPLY #21095 /* ~"I'll take them back to Mebbeth now. Farewell."~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~You finish perusing Giscorl's selection, and he nods. "I, Giscorl."~ */
  IF ~~ THEN REPLY #21097 /* ~"Actually, I'd like to take another look at what you're selling..."~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~"Uh... how did you hurt your hands?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~"I see. Look, I'm here to pick up someone's wash... Mebbeth... the midwife... Ragpicker's Square?"~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~"Nothing more today. Farewell."~ */ EXIT
END
