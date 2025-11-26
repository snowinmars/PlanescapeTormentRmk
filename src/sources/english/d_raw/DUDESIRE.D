// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUDESIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DUDESIRE~

IF ~  Global("UDesire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2987 /* ~The woman before you is incredibly attractive; there's some intangible aura about her that makes you *want* to speak to her. As you step up to her, she glances at you coyly, then she gives a knowing smile.~ */
  IF ~~ THEN REPLY #2988 /* ~"Greetings..."~ */ DO ~SetGlobal("UDesire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44849 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 21.0
  SAY #44850 /* ~"You *want* something... yesss?" She hisses the 'yes', drawing it out slowly, sensually, from between her teeth. "I can help. Name your desire, and I shall provide it."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 475
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44851 /* ~"I want *you.*"~ */ GOTO 3
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44852 /* ~"I want weapons of power."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44853 /* ~"I want magical items."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44854 /* ~"I want magical spells."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44855 /* ~"I want knowledge. I have some questions..."~ */ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44856 /* ~"I want my memories returned - all of them."~ */ GOTO 17
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44857 /* ~"What do you have that I might want?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44858 /* ~"Maybe later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44859 /* ~The woman ignores Morte, her eyes locked with yours. She smiles, awaiting your response.~ */
  IF ~~ THEN REPLY #44860 /* ~"I want *you.*"~ */ GOTO 3
  IF ~~ THEN REPLY #44861 /* ~"I want weapons of power."~ */ GOTO 10
  IF ~~ THEN REPLY #44862 /* ~"I want magical items."~ */ GOTO 10
  IF ~~ THEN REPLY #44863 /* ~"I want magical spells."~ */ GOTO 10
  IF ~~ THEN REPLY #44864 /* ~"I want knowledge. I have some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #44865 /* ~"I want my memories returned - all of them."~ */ GOTO 17
  IF ~~ THEN REPLY #44866 /* ~"What do you have that I might want?"~ */ GOTO 16
  IF ~~ THEN REPLY #44867 /* ~"Maybe later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #44868 /* ~She moistens her lips and smiles; you feel your chest lurch, as if someone had plunged their hand into you and was pulling at your insides. "A simple request. And I have one for you, traveler: I ask you to tell me, explain to me the way in which you want me. Let me hear your craving... *then* I shall speak my price."~ */
  IF ~~ THEN REPLY #44869 /* ~"I misspoke... I do not want you."~ */ GOTO 4
  IF ~~ THEN REPLY #44870 /* ~"I want you. Is that not enough?"~ */ GOTO 6
  IF ~~ THEN REPLY #44871 /* ~Describe the way you want her.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44872 /* ~Show her - physically - that you want her.~ */ GOTO 7
  IF ~~ THEN REPLY #44873 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44874 /* ~Her smile fades, and she looks saddened by your response. "Is it your desire to tease me, traveler? Desire is not a casual emotion... is there *nothing* that you want?"~ */
  IF ~~ THEN REPLY #44875 /* ~"There is something else I wanted..."~ */ GOTO 5
  IF ~~ THEN REPLY #44876 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0 15.0 16.0
  SAY #44877 /* ~"Yes? Come, now... tell me..."~ */
  IF ~~ THEN REPLY #44878 /* ~"I want *you.*"~ */ GOTO 3
  IF ~~ THEN REPLY #44879 /* ~"I want weapons of power."~ */ GOTO 10
  IF ~~ THEN REPLY #44880 /* ~"I want magical items."~ */ GOTO 10
  IF ~~ THEN REPLY #44881 /* ~"I want magical spells."~ */ GOTO 10
  IF ~~ THEN REPLY #44882 /* ~"I want knowledge. I have some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #44883 /* ~"I want my memories returned - all of them."~ */ GOTO 17
  IF ~~ THEN REPLY #44884 /* ~"What do you have that I might want?"~ */ GOTO 16
  IF ~~ THEN REPLY #44885 /* ~"Maybe later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 7.0
  SAY #44886 /* ~Her smile hardens. "You must give your desire voice and emotion, or it is as dust to me. You must convince me that you truly desire what I can impart, or it shall not be yours."~ */
  IF ~~ THEN REPLY #44887 /* ~Describe the way you want her.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44888 /* ~Show her - physically - that you want her.~ */ GOTO 7
  IF ~~ THEN REPLY #44889 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 6.1
  SAY #44890 /* ~You attempt to grab her by the shoulders, but she takes a quick step back and you grab only air. "It is not enough to simply *want* to enter the palace... a petitioner must speak his desire, and only then will the gates be open. Speak."~ */
  IF ~~ THEN REPLY #44891 /* ~"I want you. Is that not enough?"~ */ GOTO 6
  IF ~~ THEN REPLY #44892 /* ~Describe the way you want her.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44893 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 6.0 7.1
  SAY #44894 /* ~As you speak, her smile fades, and she leans forward attentively, her eyes ravaging your features as you speak. Her presence compels you to speak more than you normally would, and after a few moments, her eyes flutter closed as she gives a sharp intake of breath. Suddenly, your craving for her begins to wane... your desire drains from you completely, leaving only a cold emptiness behind. She opens her eyes again, smiling; there is a certain satisfied look about her, now.

"What is wrong, traveler? Do you no longer want me...?"~ */
  IF ~~ THEN REPLY #44895 /* ~"No... no, I don't. What have you done?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44896 /* ~She seems perplexed. "Whatever do you mean?" Despite her innocent demeanor, you're certain something unnatural has occurred. She has somehow siphoned off your desire for her - stolen it away for some ghastly collection of wants, or perhaps to feed upon - and now it's gone... forever.

"Come, now; is there something else you want, then? Tell me of it..."~ */
  IF ~~ THEN REPLY #44897 /* ~"I'd... best not. Farewell, Unfulfilled-Desire."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 1.3 1.4 2.1 2.2 2.3 5.1 5.2 5.3
  SAY #44898 /* ~She studies your face. "If you truly desire these things, you must first answer this request to satisfy me: You must tell me the ways in which you want these items. Speak to me your craving, and I shall speak to you of the price."~ */
  IF ~~ THEN REPLY #44899 /* ~"I misspoke... I don't want such things."~ */ GOTO 11
  IF ~~ THEN REPLY #44900 /* ~"I want them... is that not enough?"~ */ GOTO 12
  IF ~~ THEN REPLY #44901 /* ~Describe the way in which you want them.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44902 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 17.0 18.0
  SAY #44903 /* ~Her smile fades. "Is it your desire to tease me, traveler? Desire is not a casual emotion... is there *nothing* that you want?" She waits, studying you again.~ */
  IF ~~ THEN REPLY #44904 /* ~"There is something else I wanted..."~ */ GOTO 5
  IF ~~ THEN REPLY #44905 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #44906 /* ~Her smile hardens. "You must give your desire voice and emotion, or is it nothing to me. You must convince me that you truly desire what I can impart, or they shall not be yours."~ */
  IF ~~ THEN REPLY #44907 /* ~"I misspoke... I don't want such things."~ */ GOTO 11
  IF ~~ THEN REPLY #44908 /* ~Describe the way in which you want them.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44909 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 12.1
  SAY #44910 /* ~As you speak, her smile fades, and she leans forward attentively, her eyes ravaging your features as you speak. Her presence compels you to speak more than you normally would, and after a few moments, her eyes flutter closed as she gives a sharp intake of breath. Suddenly, your desire begins to wane... your *want* slowly drains out of you, leaving only a cold emptiness in its wake. She opens her eyes again as you stop speaking.

"What is wrong, traveler? Do you no longer want these things...?"~ */
  IF ~~ THEN REPLY #44911 /* ~"No... I mean, yes... what have you done to me?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 20.0
  SAY #44912 /* ~She seems perplexed. "Whatever do you mean?" Despite her innocent demeanor, you're certain something unnatural has occurred. She has somehow siphoned off some part of your desire - stolen it away for some ghastly collection of wants, or perhaps to feed upon. Had you finished speaking of your desire, you're certain it would have been lost forever to you.

"Come, now; is there something else you want, then? Tell me of it..."~ */
  IF ~~ THEN REPLY #44913 /* ~"I'd... best not. Farewell, Unfulfilled-Desire."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.4 5.4 22.0
  SAY #44914 /* ~She frowns, looking away from you for a moment. "Knowledge... such a thing I do not seek to deal in. Surely you have some *other* want, some *other* need you can speak to me of..."~ */
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44915 /* ~"Yes, there is something else I wanted..."~ */ GOTO 5
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44916 /* ~"Maybe another time. Farewell."~ */ EXIT
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #44917 /* ~"No, I don't think I'll be sharing those with you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7 2.6 5.6
  SAY #44918 /* ~"All that you might want lies within my reach. What little I do not possess, I can obtain. Speak your desire..."~ */
  IF ~~ THEN REPLY #44919 /* ~"There *is* something that I want..."~ */ GOTO 5
  IF ~~ THEN REPLY #44920 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.6 2.5 5.5
  SAY #44921 /* ~She smiles. "Much may be forgotten in a lifetime... and much more, in several lifetimes. I *can* help you." She studies your face closely. "Explain to me the ways in which you want these memories. Speak to me your craving, and I shall speak to you of the price."~ */
  IF ~~ THEN REPLY #44922 /* ~"I misspoke... I don't want them back."~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #44923 /* ~"What proof do you have that you could return them to me?"~ */ GOTO 18
  IF ~~ THEN REPLY #44924 /* ~"I want them back... is that not enough?"~ */ GOTO 19
  IF ~~ THEN REPLY #44925 /* ~Describe the way in which you want your memories back.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44926 /* ~"Maybe another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0
  SAY #44927 /* ~She doesn't seem to move, but suddenly her hand is touching your forehead, a finger dragging along your temple. "Only this..." You feel as if the fog in your head has been peeled away, briefly, enough to catch a glimpse of remembrance... but before you can focus on the memory, the fog rolls back in. "Only this. Only tell me *why* you desire it, speak to me your craving, and I shall speak to you of the price..."~ */
  IF ~~ THEN REPLY #44928 /* ~"I misspoke... I don't want them back."~ */ GOTO 11
  IF ~~ THEN REPLY #44929 /* ~"I want them back... is that not enough?"~ */ GOTO 19
  IF ~~ THEN REPLY #44930 /* ~Describe the way in which you want your memories back.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44931 /* ~"Maybe another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.1
  SAY #44932 /* ~Her smile hardens. "You must give your desire voice and emotion, or it is as dust to me. You must convince me that you truly desire what I can impart, or it shall not be yours."~ */
  IF ~~ THEN REPLY #44933 /* ~"What proof do you have that you could return them to me?"~ */ GOTO 18
  IF ~~ THEN REPLY #44934 /* ~Describe the way in which you want your memories back.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44935 /* ~"Maybe another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.2 19.1
  SAY #44936 /* ~As you speak, her smile fades, and she leans forward attentively, her eyes ravaging your features as you speak. Her presence compels you to speak more than you normally would, and after a few moments, her eyes flutter closed as she gives a sharp intake of breath. Suddenly, the desire for your memories begins to wane... your *want* slowly drains out of you, leaving only a cold emptiness in its wake. She opens her eyes again as you stop speaking.

"What is wrong, traveler? Do you no longer want your memories returned to you...?"~ */
  IF ~~ THEN REPLY #44937 /* ~"No... I mean, yes... what have you done to me?"~ */ GOTO 14
END

IF ~  Global("UDesire","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #44938 /* ~You see Unfulfilled-Desire. As you approach her, she turns to you and smiles.~ */
  IF ~~ THEN REPLY #44939 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #44940 /* ~"I was just passing by; farewell."~ */ EXIT
END

IF ~  Global("UDesire","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #44941 /* ~You see Unfulfilled-Desire, who seems to collect or feed upon the desires of others, removing them forever from their minds. She smiles when she sees you.~ */
  IF ~~ THEN REPLY #44942 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #44943 /* ~"I was just passing by. Farewell."~ */ EXIT
END
