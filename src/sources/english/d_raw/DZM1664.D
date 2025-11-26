// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1664.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1664~

IF ~  True()
~ THEN BEGIN 0 // from: 5.0
  SAY #47002 /* ~This huge corpse is standing silently in a corner of the room, facing the wall. He looks to have been a heavy-set man in his early years, and judging by the condition of the body, he died only recently. The freshly-stitched number on his forehead reads "1664." This corpse looks like it is serving as a librarian, for it is carrying a huge stack of books in its arms.~ */
  IF ~  Global("Page_Taken","GLOBAL",0)
~ THEN REPLY #47003 /* ~Examine the books.~ */ GOTO 3
  IF ~  Global("Page_Taken","GLOBAL",1)
~ THEN REPLY #47004 /* ~Examine the books again.~ */ GOTO 6
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #47005 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #47006 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #47007 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #47008 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 6.0
  SAY #47009 /* ~The corpse stares blankly at the wall.~ */
  IF ~~ THEN REPLY #47010 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #47011 /* ~The corpse does not stir. Despite the fact it looks recently dead, it does not seem able to answer any of your questions.~ */
  IF ~~ THEN REPLY #47012 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #47013 /* ~The books appear to be old Mortuary ledgers, none of them of any particular interest. As you search through the texts, however, you notice a loose page folded between two of the books. You are suddenly struck with the feeling that someone tucked it there to hide it. ~ */
  IF ~~ THEN REPLY #47014 /* ~Take the page.~ */ DO ~GiveItemCreate("Logpage",Protagonist,1,0,0)
SetGlobal("Page_Taken","GLOBAL",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47015 /* ~The page doesn't look like it belongs with the ledgers... it looks like it belongs in a log book. The tear is clean, as if with a knife, so you suspect the page was removed on purpose.~ */
  IF ~~ THEN REPLY #47016 /* ~Read through it. ~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47017 /* ~You take a moment to read through the page... it's a list of dead bodies brought to the Mortuary and logged in the Receiving Room. All the entries appear to be recent arrivals.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #47018 /* ~Examine the zombie again.~ */ GOTO 0
  IF ~~ THEN REPLY #47019 /* ~Take the page with you and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #47021 /* ~The books appear to be old Mortuary ledgers, none of them of any particular interest. You do another search through the texts, but you find nothing more.~ */
  IF ~~ THEN REPLY #47022 /* ~"So how did you come to be a librarian? All the other jobs taken?"~ */ GOTO 1
  IF ~~ THEN REPLY #47023 /* ~Leave the zombie in peace.~ */ EXIT
END
