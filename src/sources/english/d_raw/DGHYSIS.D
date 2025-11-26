// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHYSIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHYSIS~

IF ~~ THEN BEGIN 0 // from: 69.0 69.1
  SAY #2947 /* ~"Right! Now lissen up... this is th' seminar on th' *War.* If ye're 'ere ta lissen 'bout th' Blood War, take root. If ye're not, ye're in th' wrong 'all and ye'd best 'ump yer soft, comfort-lovin' Sigilian limberstembs outta 'ere."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 320
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2948 /* ~Listen.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32707 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32708 /* ~The man suddenly throws a dark eye over the audience, as if looking for something. "An' further, if ye're tanar'ri or baatezu, 'ump yer scaly 'ides out th' door. I's not lettin' ye ornery bastards bend an ear ta this an' then lissen ta yer barmy arguments..."~ */
  IF ~~ THEN REPLY #32709 /* ~Keep listening.~ */ GOTO 2
  IF ~~ THEN REPLY #32710 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32711 /* ~"...'cause this is no discussion on who's right." Behind you, you hear the sounds of something large leaving the lecture hall. "It just tells the Blood War from the 'uman point o' view. I's not promotin' one side or another, 'cause they *both* stink in different ways."~ */
  IF ~~ THEN REPLY #32712 /* ~Keep listening.~ */ GOTO 3
  IF ~~ THEN REPLY #32713 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32714 /* ~The speaker becomes somber. "So... what's left o' ye're wantin' ta lissen ta some Blood War stories... tales about th' *War.* 'Ere ta 'ear the *'orror* of it all, no doubt. Th' floatin' fortresses wove and weaved o' 'uman skin! Th' planes-wide battlegrounds th' Blood War be fought on!"~ */
  IF ~~ THEN REPLY #32716 /* ~Keep listening.~ */ GOTO 4
  IF ~~ THEN REPLY #32717 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32718 /* ~He bares his yellowed teeth: "Tales o' fiends lockin' fangs with other fiends! Grar! Snrarrrr!" His snarl fades, and he looks suddenly bored.~ */
  IF ~~ THEN REPLY #32719 /* ~Keep listening.~ */ GOTO 5
  IF ~~ THEN REPLY #32720 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32721 /* ~"Well, lemme peel back yer lids an' crack yer bone-boxes: 'tis all a steamin' 'eap o' barmy nonsense ta be dwellin' on that forge-dung." He spits in derision, rolling his eyes wildly.~ */
  IF ~~ THEN REPLY #32722 /* ~Keep listening.~ */ GOTO 6
  IF ~~ THEN REPLY #32723 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32724 /* ~"I'll tell ye *this,* though: Ye can't *imagine* th' scale th' Blood War is fought on. Nothin' ye've seen, 'eard, or participated in - *nothin'* compares: time, numbers of 'legions,' sheer bloodshed... nothin' compares, berks. Ta try an' imagine it - forget it. My advice? Simple: Stay away from th' big bloody mess all together."~ */
  IF ~~ THEN REPLY #32725 /* ~Keep listening.~ */ GOTO 7
  IF ~~ THEN REPLY #32726 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32727 /* ~"Th' only thing ye needs ta know is this: fiends are killin' fiends. Baatezu are slaughterin' tanar'ri, tanar'ri are butcherin' baatezu. Right now." He spits again. "Neither's winnin'. Don't think either *can* win. Biggest stalemate this side o' eternity... thank the powers."~ */
  IF ~~ THEN REPLY #32728 /* ~Keep listening.~ */ GOTO 8
  IF ~~ THEN REPLY #32729 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #32730 /* ~"That's it." He shrugs. "That's it. I'll be answerin' any questions ye gots fer me, now..."~ */
  IF ~~ THEN REPLY #32731 /* ~Ask a question.~ */ GOTO 11
  IF ~~ THEN REPLY #32732 /* ~Remain silent.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 11.10 12.2 13.2 14.3 15.2 16.2 17.2 18.3 19.3 20.2 21.2 22.2 23.2 24.3 25.2 26.2 27.5 28.2 29.2 30.2 31.5 32.2 33.2 34.2 35.2 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.2 45.2 46.3 47.2 48.7 49.2 50.2 51.2 52.2 54.2 55.2 56.1 57.2 58.1 59.2 60.4 61.1 62.2 64.2 70.1 74.3 75.1 76.1 77.1 79.1 80.1 81.1 82.0
  SAY #32733 /* ~"Right... this is th' last bit, then. Some o' ye are Sensates, so's I got one thing ta say ta ye: don't sign up ta see 'what th' pikin' Blood War is about.' Don't be a barmy idiot. Use a sensory stone if ye gots ta know, but stay the 'ells away from anythin' ta do with th' Blood War fer real."~ */
  IF ~~ THEN REPLY #32734 /* ~Keep listening.~ */ GOTO 10
  IF ~~ THEN REPLY #32735 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32736 /* ~"'Tis just not worth it. 'Tis..." For a moment, a look a great pain crosses the man's face; it looks as if he is going to weep. "...not worth it, at all. That's the end o' this session, so farewell."~ */
  IF ~~ THEN REPLY #32737 /* ~Leave.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.1 13.1 14.2 15.1 16.1 17.1 18.2 19.2 20.1 21.1 22.1 23.1 24.2 25.1 26.1 27.4 28.1 29.1 30.1 31.4 32.1 33.1 34.1 35.1 36.1 37.1 38.0 39.1 40.0 41.1 42.1 43.1 44.1 45.1 46.2 47.1 48.6 49.1 50.1 51.1 52.1 54.1 55.1 56.0 57.1 58.0 59.1 60.3 61.0 62.1 64.1 70.0 74.2
  SAY #32738 /* ~"What's yer question, cutter?"~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49564 /* ~"How'd you survive the Blood War again?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49565 /* ~"How'd you survive the Blood War again?"~ */ GOTO 70
  IF ~~ THEN REPLY #32739 /* ~"Can't you give me a little more on the Blood War itself?"~ */ GOTO 32
  IF ~~ THEN REPLY #32740 /* ~"What started the Blood War?"~ */ GOTO 41
  IF ~~ THEN REPLY #32741 /* ~"How does one get hired into the Blood War?"~ */ GOTO 59
  IF ~~ THEN REPLY #32742 /* ~"Where is the Blood War fought?"~ */ GOTO 55
  IF ~~ THEN REPLY #32743 /* ~"How does one survive the Blood War?"~ */ GOTO 12
  IF ~~ THEN REPLY #32744 /* ~"Describe the tanar'ri."~ */ GOTO 57
  IF ~~ THEN REPLY #32745 /* ~"Describe the baatezu."~ */ GOTO 45
  IF ~~ THEN REPLY #32746 /* ~"So you'll tell us no tales of the Blood War?"~ */ GOTO 39
  IF ~~ THEN REPLY #33088 /* ~"No questions, actually."~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.6
  SAY #32747 /* ~"Ye wanna know 'ow ta survive th' Blood War? Three things, cutter:" He holds up a maimed hand with only two fingers.~ */
  IF ~~ THEN REPLY #32748 /* ~"Go on..."~ */ GOTO 13
  IF ~~ THEN REPLY #32749 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32750 /* ~"Actually, never mind. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #32751 /* ~"First off, ye stay th' pike out o' it. Secondly, keep yerself th' pikin' 'ells out o' it. An' lastly... ye stay the bloody, pikin' sod-pike out o' it."~ */
  IF ~~ THEN REPLY #32752 /* ~"Go on..."~ */ GOTO 14
  IF ~~ THEN REPLY #32753 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32754 /* ~"Actually, never mind. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #32755 /* ~"If any part o' th' War rolls yer way, let yer imagination give yer bum a kick an' run as far an' fast as ye can. If ye can't run, then lies *really* still an' pray it passes ye by." He pauses for a moment. "'Cept, there's no place it don't touch an' there's almost nowheres ye can run ta get away from it."~ */
  IF ~~ THEN REPLY #32756 /* ~"If there's nowhere to run, why aren't there fiends fighting in Sigil?"~ */ GOTO 21
  IF ~~ THEN REPLY #32757 /* ~"Anything else?"~ */ GOTO 15
  IF ~~ THEN REPLY #32758 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32759 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 14.1 29.0
  SAY #32760 /* ~"Aye: whatever ye does, don't *talk* about th' Blood War with *any* fiend... or any deva or archon fer that matter. Just don't talk about it, period, 'cause ye never know who in the 'ells ye're really chattin' with. And all o' them get mighty touchy when ye bring up th' War. It's their reason fer livin'."~ */
  IF ~~ THEN REPLY #32761 /* ~"Anything else?"~ */ GOTO 16
  IF ~~ THEN REPLY #32762 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32763 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #32764 /* ~He nods. "Don't go through any portal unless ye're pikin' sure ye know where it goes. Maybe ye 'aven't 'eard tales o' clueless planewalkers steppin' through a portal an' endin' up smack-dab in the middle o' a Blood War skirmish. Know why ye 'aven't 'eard o' them? 'Cause those sods are dead, dead, *dead.*"~ */
  IF ~~ THEN REPLY #32765 /* ~"Anything else?"~ */ GOTO 17
  IF ~~ THEN REPLY #32767 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32768 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #32769 /* ~"An' whatever ye does, never sign on fer a tour o' duty, no matter 'ow much jink they flash in yer mug. Certain death an' signin' on fer a tour in th' Blood War are th' same thing, cutter."~ */
  IF ~~ THEN REPLY #32770 /* ~"Why's that?"~ */ GOTO 18
  IF ~~ THEN REPLY #32771 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32772 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #32773 /* ~"Chances are when ye sign up, they peel ye so yer tour o' duty is till time itself grinds ta a 'alt. Even death wouldn't be a release, 'cause then ye sink inta th' Lower Planes an' get dredged back up as somethin' worse'n ye were before. Then they got their talons on ye fer all eternity."~ */
  IF ~~ THEN REPLY #32774 /* ~"How would you get *out* of a tour contract?"~ */ GOTO 30
  IF ~~ THEN REPLY #32775 /* ~"So dying in the Blood War would be an especially bad thing?"~ */ GOTO 19
  IF ~~ THEN REPLY #32776 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32777 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1 31.0
  SAY #32778 /* ~"If ye were evil, sure. If ye're good, ye'd go ta another plane ta spend yer afterlife. But ye'd still be a deader. Now fer me, I still got a lot o' evil ta wash from me soul, so if I'd died in th' Lower Planes, they would've had me lock, stock an' barrel."~ */
  IF ~~ THEN REPLY #32779 /* ~"You go to another plane when you die? Can you explain that?"~ */ GOTO 20
  IF ~~ THEN REPLY #32780 /* ~"How would you get *out* of a tour contract?"~ */ GOTO 30
  IF ~~ THEN REPLY #32781 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32782 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32783 /* ~"Go talk ta that other death lecturer if ye want th' dark on that. I can't explain it as well as 'e, though 'e's twice th' fool an' might scald ye with th' hot air roarin' from 'is mouth."~ */
  IF ~~ THEN REPLY #32784 /* ~"How would you get *out* of a tour contract?"~ */ GOTO 30
  IF ~~ THEN REPLY #32785 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32786 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 14.0
  SAY #32788 /* ~"Aw, now, cutter, look: they 'ave fought here... a few times. Sometimes we get a lil' spillover from the Blood War. Our Lady of Pain, bless 'er steel-ridden heart, puts out th' fires..."~ */
  IF ~~ THEN REPLY #32789 /* ~"Go on..."~ */ GOTO 22
  IF ~~ THEN REPLY #32790 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32791 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32792 /* ~"...*some* o' th' time." He sneers. "There's been times, some horrifyin' drizzle-on-yerself-ye're-so-sodddin'-scared-times, when they've smashed an' burnt an' clawed their way through whole soddin' city blocks in Sigil afore she decides ta clean house." He clucks his tongue and winks cynically. "So she ain't always as keen on stoppin' the Blood War as it might seem, see?"~ */
  IF ~~ THEN REPLY #33089 /* ~"Why don't the fiends just take Sigil?"~ */ GOTO 23
  IF ~~ THEN REPLY #32794 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32805 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #32806 /* ~He laughs, but it turns into a sputtering cough. "Don't get me wrong now: both th' tanar'ri an' th' baatezu want Sigil fierce. 'Tis th' most precious stagin' ground in th' pikin' multiverse - th' Cage is th' City o' Doors an' connects *everywhere.* Ye can't ignore it, an' if ye're servin' in th' Blood War an' wanna win, ye *gotta* have it."~ */
  IF ~~ THEN REPLY #32807 /* ~"Go on..."~ */ GOTO 24
  IF ~~ THEN REPLY #32808 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32809 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #32810 /* ~The man coughs again. "'Tis just th' fiends aren't goin' ta *get* it while th' Lady's in charge, 'tis all. She's tough as nails, 'er blades'll cut ye deeper than any fiend's fang. An' that knots th' fiends' stems like ye wouldn't believe. One quiet Lady, 'er 'ands tucked in 'er sleeves, 'oldin' back th' Blood War all by 'erself." He laughs bitterly.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 134
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32811 /* ~"But fiends are still allowed in Sigil?"~ */ GOTO 25
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32812 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32813 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #32814 /* ~"Oh, damnably certain. They can't brawl in th' streets... too much. So as neutral ground, Sigil allows them ta rattle their bone-boxes without tryin' ta murder each other. Sometimes they'll chat it up with each other 'ere. The peace don't stay that way fer long, though..."~ */
  IF ~~ THEN REPLY #32815 /* ~"Go on..."~ */ GOTO 26
  IF ~~ THEN REPLY #32816 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32817 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #32818 /* ~"Also, just 'cause they can't butcher each other in th' streets don't means spies, recruitment an' back-stabbin' don't still go on 'ere. They fight battles with lies an' words, berk. Sometimes 'tis all in th' bluster an' blather. An' there's safe houses about, too. Places where they can cool their talons afore th' next skirmish..."~ */
  IF ~~ THEN REPLY #32819 /* ~"Go on..."~ */ GOTO 27
  IF ~~ THEN REPLY #32820 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32821 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32822 /* ~"An' they like ta recruit 'ere, too. Lookin' fer boys fresh off th' planes with a little greed in their 'earts that they can make part o' their glorious army." He stops speaking to peer closely at you. "Mayhap they recruited ye once, eh, cutter? Ye look like ye've tasted th' War."~ */
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32823 /* ~"I doubt it."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32824 /* ~"Perhaps."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32825 /* ~"I doubt it."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32884 /* ~"Perhaps."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32885 /* ~"Maybe. Let me ask you about something else..."~ */ GOTO 11
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32886 /* ~"Perhaps. In any case, I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.3
  SAY #32887 /* ~"The War leaves a scar on ye, cutter. Ye'd *know.* And ye'd know ye *never* want ta go back."~ */
  IF ~~ THEN REPLY #32888 /* ~"Do they recruit often?"~ */ GOTO 29
  IF ~~ THEN REPLY #32889 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32890 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 29 // from: 28.0 64.0
  SAY #32891 /* ~He nods grimly. "Ye can be sure o' that. Sigil's th' best source o' fodder on th' planes. Beats milkin' planets o' all their prime inhabitants... too much work."~ */
  IF ~~ THEN REPLY #32892 /* ~"So, any more advice on surviving the War?"~ */ GOTO 15
  IF ~~ THEN REPLY #32893 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32894 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 30 // from: 18.0 19.1 20.0
  SAY #32895 /* ~"Unless they don't want ye, ye don't 'ave much chance. I never heard o' it bein' done with mean-spirited recruits, or somebody they really wanted ta keep their talons on. Outwittin' a tanar'ri is risky but can be done... the baatezu are much more dangerous with their contracts. Ye sign one o' those, ye're dammed fer life..."~ */
  IF ~~ THEN REPLY #32896 /* ~"Go on..."~ */ GOTO 31
  IF ~~ THEN REPLY #32897 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32898 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #32899 /* ~"Ye might try a little garnish, try an' dawb them, an' they might let ye make a run for it... but where would ye go? There are so many 'ells..."~ */
  IF ~~ THEN REPLY #32900 /* ~"And dying in the Blood War would be an *especially* bad thing?"~ */ GOTO 19
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #32901 /* ~"So, how'd you escape the Blood War?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49558 /* ~"So, how'd you survive the Blood War again?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49559 /* ~"So, how'd you survive the Blood War again?"~ */ GOTO 70
  IF ~~ THEN REPLY #32902 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32903 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 32 // from: 11.2
  SAY #32904 /* ~"If I were ta boil it down, it'd be this: th' Blood War's been goin' on damn-near-forever, an' will keep goin' on until damn-near-forever itself gets penned in th' dead-book. Th' tanar'ri, th' champions o' *chaos* an' evil are tryin' ta stomp th' green-colored dung out o' th' baatezu, the champions o' *law* an' evil. They butcher each other over 'ow each o' them thinks evil *should* be, if ye can believe that. Hah!"~ */
  IF ~~ THEN REPLY #32905 /* ~"What do you think would happen if someone stopped the Blood War?"~ */ GOTO 33
  IF ~~ THEN REPLY #32906 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32907 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #32908 /* ~"Ye can't make any pikin' difference in the War! It's too soddin' *big.* Ye're a stone, a pebble in an ocean that's a pebble in another ocean which is a pebble in another ocean an' so on and so forth till th' stenchkows come 'ome. As a pebble, yer goal is ta be not noticed an' sink ta th' bottom with th' rest o' the dregs..."~ */
  IF ~~ THEN REPLY #32909 /* ~"Go on..."~ */ GOTO 34
  IF ~~ THEN REPLY #32910 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32911 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32912 /* ~"If ye could make a difference - which ye *can't* - ye shouldn't *try,* 'cause then th' planes would tumble on down."~ */
  IF ~~ THEN REPLY #32913 /* ~"The planes would tumble down? Why?"~ */ GOTO 35
  IF ~~ THEN REPLY #32914 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32915 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #32916 /* ~He holds up his hands like pillars. "Th' Blood War's like a big, bloody support beam proppin' up th' planes... kick it down, an' a lot o' th' planes'd come tumblin' down with it. Lot o' baggage rests on th' back o' th' War." He suddenly brays like a donkey, laughing bitterly. "Th' biggest, nastiest pack animal on th' planes..."~ */
  IF ~~ THEN REPLY #32917 /* ~"Go on..."~ */ GOTO 36
  IF ~~ THEN REPLY #32918 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32919 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #32920 /* ~He grins cynically. "Besides, as some say, war's *great* fer business." He laughs hollowly, then looks as if he could suddenly cry. "Eh... never ye mind that... another question?"~ */
  IF ~~ THEN REPLY #32921 /* ~"Are you all right? You seem pained..."~ */ GOTO 37
  IF ~~ THEN REPLY #32922 /* ~"Yes, I had another question..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ghysis_1","GLOBALGood",1)
~ GOTO 11
  IF ~~ THEN REPLY #32923 /* ~"No, no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #32924 /* ~The man smiles sadly. "Aye, aye... listen, cutter: I'm no priest, nor would I want ta be one, but 'ear this: keep evil out o' yer heart. When ye die with evil in yer heart, yer spirit falls inta th' Lower Planes, where ye become a petitioner..."~ */
  IF ~~ THEN REPLY #32925 /* ~"Go on..."~ */ GOTO 38
  IF ~~ THEN REPLY #32926 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32927 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #32928 /* ~"Any guesses as ta what 'appens then? Petitioners in th' Abyss an' Baator get twisted inta footsoldiers... an' get ta fight in th' Blood War fer all eternity." He chuckles, shaking his head. "So that's th' dark as ta why th' baatezu an' tanar'ri try an' corrupt all they touch; 'cause they need more troops. 'Eed this: keep evil far from yer 'eart, berk."~ */
  IF ~~ THEN REPLY #32929 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32930 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 39 // from: 11.9
  SAY #32931 /* ~"All right, one: let me give ye an example of what 'meat' means ta them. They'll get some mean-spirited mortal mercenaries together, maybe a drop o' a few million strong an' let them slaughter each other for no real reason at all - a pointless battle over some powers-forsaken piece o' land. Guess where *all* those souls go?"~ */
  IF ~~ THEN REPLY #32932 /* ~"Where?"~ */ GOTO 40
  IF ~~ THEN REPLY #32933 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32934 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #32935 /* ~"Their souls sink inta th' planes o' evil they fight on, where they can be ripped from th' soup o' th' plane an' set ta fight again as lemures or manes or whatever the pikin' sod those little fiendish dung-heaps become. The more of those soddin' petitioners they get, the more troops they 'ave."~ */
  IF ~~ THEN REPLY #32936 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32937 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 41 // from: 11.3
  SAY #32938 /* ~"Ye got a right ta be curious what started this big ol' soddin' soupy mess in th' first place: what set th' fiends ta lockin' 'orns in the first place, bitin' an' clawin' at each other until that was the only reason they were alive..."~ */
  IF ~~ THEN REPLY #32939 /* ~"Go on..."~ */ GOTO 42
  IF ~~ THEN REPLY #32940 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32941 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #32942 /* ~"Simple: they met." He sighs. "Tanar'ri an' baatezu crossed each other one day an' like two drunken bigots, they set ta fightin'. That simple." He frowns. "Well..."~ */
  IF ~~ THEN REPLY #32943 /* ~"Go on..."~ */ GOTO 43
  IF ~~ THEN REPLY #32944 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32945 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #32946 /* ~"Naw, pike that: imagine two drunken *priests* who believe each knows th' *only* way ta live. Now make those priests ripped with scales an' fangs an' horns an' a cruel streak seven leagues wide an' put them in an itty-bitty soddin' cell... an' ye 'ave a good idea o' th' love that can spring forth. An' there ye 'ave it! The origin o' th' Blood War."~ */
  IF ~~ THEN REPLY #32947 /* ~"Why are two *evil* races fighting?"~ */ GOTO 44
  IF ~~ THEN REPLY #32948 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32949 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #32950 /* ~"One believes evil should be nice an' orderly. One believes evil should be chaos, runnin' rampant across th' planes. Both evil, but doesn't mean they can agree on anythin'. Bad blood, bad blood... each wants ta exterminate th' other so only their 'brand' o' evil remains. They hate each other, like... like..."~ */
  IF ~~ THEN REPLY #32951 /* ~"Go on..."~ */ GOTO 61
  IF ~~ THEN REPLY #32952 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32953 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 45 // from: 11.8
  SAY #32954 /* ~The man nods. "They don't usually pay as much as th' tanar'ri, but they don't break their written word. They're smart, though - several hundred, hundred, *hundred* fold smarter an' they been makin' contracts since time began. They know 'ow ta peel someone with words, they do. Sign, an' most likely ye'll be peeled an' hung ta dry in their legions..."~ */
  IF ~~ THEN REPLY #32955 /* ~"Go on..."~ */ GOTO 46
  IF ~~ THEN REPLY #32956 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32957 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32958 /* ~"They plan like bastards. They put more thought an' preparation into a single, strategic skirmish than most 'uman armies devote to an entire campaign." He sniffs, and scratches at his chin. "They usually assemble their forces on Avernus, the first layer of Baator."~ */
  IF ~~ THEN REPLY #32960 /* ~"What's Avernus like?"~ */ GOTO 47
  IF ~~ THEN REPLY #32961 /* ~"What sort of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32962 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32963 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32964 /* ~"Avernus? Hrm..." The man grimaces, as if recalling the place caused physical anguish. "'Tis inhabited by th' damned an' those that prey on th' damned. Th' red-flecked lands, of noxious sands and blisterin' fires that scream across the landscape. That was my taste o' Baator, th' layer o' Avernus. Terrible place."~ */
  IF ~~ THEN REPLY #32965 /* ~"What sort of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32966 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32967 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.0 49.0 50.0 51.0 52.0 54.0
  SAY #32968 /* ~"All sorts, aside from various mortal berks from across th' planes. Abishai an' cornugons, lemures an' nupperibo, succubi... th' list goes on an' on."~ */
  IF ~~ THEN REPLY #32969 /* ~"Tell me about abishai."~ */ GOTO 49
  IF ~~ THEN REPLY #32970 /* ~"Tell me about cornugons."~ */ GOTO 50
  IF ~~ THEN REPLY #32971 /* ~"Tell me about lemures."~ */ GOTO 51
  IF ~~ THEN REPLY #32972 /* ~"Tell me about nupperibo."~ */ GOTO 52
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #32973 /* ~"Tell me about succubi."~ */ GOTO 53
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32974 /* ~"Tell me about succubi."~ */ GOTO 54
  IF ~~ THEN REPLY #32975 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32976 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #32977 /* ~"They're th' grunts in most baatezu armies. There's different sorts, black-scaled ones bein' the weakest an' most common."~ */
  IF ~~ THEN REPLY #32978 /* ~"What other sorts of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32979 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32980 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #32981 /* ~"Cornugons are *dead* 'ard, cutter. It's rare ta see more than a few o' them together, though sometimes they form bands o' elite troops. Usually they lead lesser forces, like abishai an' mortal mercenaries, inta battle."~ */
  IF ~~ THEN REPLY #32982 /* ~"What other sorts of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32983 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32984 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY #32985 /* ~"Lemures are these... things... that look like melted people. Annoyin' lil' sods that regenerate, even as ye're killin' them. They're oblivious ta danger or pain, an' so'll never run away from a fight. Mostly good fer dyin' on the front lines an' not much else."~ */
  IF ~~ THEN REPLY #32986 /* ~"What other sorts of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32987 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32988 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 52 // from: 48.3
  SAY #32989 /* ~"Fat lil' pikers that have these tiny, tiny 'eads. Deaf, dumb an' blind, they exist ta die on th' front line. Hard ta kill, too... even th' most wee bit o' them'll grow back ta a whole one if ye let it."~ */
  IF ~~ THEN REPLY #32990 /* ~"What other sorts of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32991 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #32992 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 53 // from: 48.4
  SAY #32993 /* ~"Tanar'ri - lovely but dead evil, they are. They seduce mortals ta try an' drag them inta th' Abyss." He nods to Fall-from-Grace. "No offense, m'lady."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 135
END

IF ~~ THEN BEGIN 54 // from: 48.5
  SAY #32997 /* ~"Tanar'ri - lovely but dead evil, they are. They seduce mortals ta try an' drag them inta th' Abyss... more petitioners, more fodder for the War."~ */
  IF ~~ THEN REPLY #32998 /* ~"What other sorts of forces serve in the Blood War?"~ */ GOTO 48
  IF ~~ THEN REPLY #32999 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33000 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 55 // from: 11.5
  SAY #33001 /* ~"Plenty o' places... *usually* th' Lower Planes. Anywhere along th' River Styx... the nine layers o' Baator, th' four furnaces o' Gehenna, the Gray Waste, cold, red Carceri - the prison plane - an' the pikin' near-endless well o' evil that's th' Abyss." Somehow, the Gray Waste sounds familiar to you...~ */
  IF ~~ THEN REPLY #33002 /* ~"Tell me about the Gray Waste."~ */ GOTO 56
  IF ~~ THEN REPLY #33003 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33004 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #33005 /* ~"Also called th' 'Glooms.'" He shrugs, then shivers, as if by reflex. "Gray in every sense o' th' word. Colors burn yer eyes there; they shout, are too loud, and yer dreams are pulled ta th' surface an' poured on th' ground, lost forever. Only th' night hags rule there... the Gray Ladies o' th' Waste."~ */
  IF ~~ THEN REPLY #33006 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33007 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 11.7
  SAY #33008 /* ~The man nods. "The tanar'ri pay better than baatezu, but ye need ta be two or three-faced an' have a bunch o' eyes sprinkled all over yer body, 'cause ye can't ever turn yer back on them: they're chaos, the ones with whim an' whimsy in their hearts. Trust, or upholdin' their word, aren't high on their list..."~ */
  IF ~~ THEN REPLY #33009 /* ~"Go on..."~ */ GOTO 58
  IF ~~ THEN REPLY #33010 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33011 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #33012 /* ~He sniffs, then shrugs. "They don't care what happens, so long as *somethin'* happens an' 'tis evil. Mostly they attack th' baatezu ta keep from killin' each other."~ */
  IF ~~ THEN REPLY #33013 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33014 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 59 // from: 11.4
  SAY #33015 /* ~"Ye know, every once-a-when some leather-headed berk comes 'round askin' about a job in th' Blood War. They want some jink, they want a quick stint an' then ta get along with their lives. Mayhap I was one o' these leatherheads. Mayhap I was a sellsword, an' 'eard there was a little jink ta be made in th' War. Got me interested..."~ */
  IF ~~ THEN REPLY #33016 /* ~"Go on..."~ */ GOTO 60
  IF ~~ THEN REPLY #33017 /* ~"Wait... let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33018 /* ~"Never mind, actually. No more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #33019 /* ~"Taught me a lesson, it did: we're like ants runnin' around th' heels of dancin', sod-pike gods. I saw big men, who claimed ta be big soldiers..." He shakes his head. "*Paper* soldiers. War's a *furnace* fer them. Makes them wake up or *burn.*"~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #33020 /* ~"So, how'd you survive the Blood War?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49556 /* ~"So, how'd you survive the Blood War again?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49557 /* ~"So, how'd you survive the Blood War again?"~ */ GOTO 70
  IF ~~ THEN REPLY #33021 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33022 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 44.0
  SAY #33023 /* ~He wrings his hands together, trying to find the right words. "Ye see, they don't hate like *we* hate. We don't even know what hate *is.* We have one, *one* word fer 'hate.' They 'ave..." His voice drops. "...thousands, upon thousands, their meanin's twisted an' piled like... bodies. *That's* why they fight."~ */
  IF ~~ THEN REPLY #33024 /* ~"Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33025 /* ~"I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 62 // from: 11.0 31.1 31.2 60.0 60.1
  SAY #33026 /* ~The man's face darkens. "I... well, that's th' one thing I won't speak of, cutter. Suffice ta say a man does what 'e 'as ta do ta escape the War."~ */
  IF ~  Global("CW_Vrischika_Ghysis","GLOBAL",1)
~ THEN REPLY #49560 /* ~"But a woman named Vrischika told me you had to murder your own men to escape the War."~ */ GOTO 74
  IF ~~ THEN REPLY #33027 /* ~"Let me ask you about something else, then..."~ */ GOTO 11
  IF ~~ THEN REPLY #33028 /* ~"I've no more questions, then."~ */ GOTO 9
END

IF ~~ THEN BEGIN 63 // from: 27.0 27.1
  SAY #33029 /* ~"The War leaves a scar on ye, cutter. Ye'd *know.* And ye'd know ye *never* want ta go back." Your temples begin to throb painfully as you consider the man's words... a memory begins to surface...~ */
  IF ~  CheckStatLT(Protagonist,9,WIS)
~ THEN REPLY #33030 /* ~Try and recall the memory.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,8,WIS)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #33031 /* ~Try and recall the memory.~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33032 /* ~Try and recall the memory.~ */ DO ~GiveExperience(Protagonist,1500)
~ GOTO 65
  IF ~~ THEN REPLY #32996 /* ~Suppress the memory.~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.3 68.0
  SAY #33035 /* ~"Cutter? Ye feelin' all right, there?"~ */
  IF ~~ THEN REPLY #33098 /* ~"Yes... I'm fine. So, do the fiends recruit often?"~ */ GOTO 29
  IF ~~ THEN REPLY #33099 /* ~"I'm alright. Let me ask you about something else..."~ */ GOTO 11
  IF ~~ THEN REPLY #33100 /* ~"I'm fine. I've no more questions for you."~ */ GOTO 9
END

IF ~~ THEN BEGIN 65 // from: 63.0 63.1 63.2
  SAY #33036 /* ~The lecture hall begins to fade from view as terrible visions begin to seep up from the base of your mind... visions of a place where seasons are like nothing you've ever felt, or heard, or tried to shut out. A place where prayers go unheard, falling like stones to the earth... vein-colored lightning flashes across things that were once sky, but now boil beneath your feet and scream when you brush against them...~ */
  IF ~~ THEN REPLY #33102 /* ~Continue the memory...~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #33037 /* ~You run at the head of a large band of men, passing through dark canyons where the walls quiver moistly and beat like a heart, wearing only your own blood as clothing. At last you stand in a place where the ashen gray terrain slithers like a mass of snakes, coiling around your ankles and whispering your evil to the earth. You march endlessly, silently, through this colorless land, where fatigue seems to *live* and hunt you like a shade over the wastes, whipping you with despair...~ */
  IF ~~ THEN REPLY #33112 /* ~Continue the memory...~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #33039 /* ~In time, you and the ragged men who follow you come upon a hag sitting upon a mound of gigantic, writhing larvae, poking at one of the slime-covered things with a broken talon. You indicate for one of the men to run forward and speak with her; the hag's grating voice carries to your ears...~ */
  IF ~~ THEN REPLY #33113 /* ~Continue the memory...~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #33056 /* ~"I would speak with him," she said, then cackled. Her eyes gleam as she points you out to the man. "The handsome one that leads your ragged column. I would speak with him." ...and that is all you can recall.~ */
  IF ~~ THEN GOTO 64
END

IF ~  True()
~ THEN BEGIN 69 // from:
  SAY #33057 /* ~This squat, hunched old man still has the broad shoulders and scarred, callused hands of a worker or warrior. An aura of weary despair seems to hang about him. He appears to be giving a lecture at the moment.~ */
  IF ~  Global("Ghysis","GLOBAL",0)
~ THEN REPLY #33114 /* ~Stay for the lecture.~ */ DO ~SetGlobal("Ghysis","GLOBAL",1)
SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~  GlobalGT("Ghysis","GLOBAL",0)
~ THEN REPLY #33115 /* ~Stay for the lecture.~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #49551 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 11.1 31.3 60.2
  SAY #33059 /* ~Ghysis' face darkens. "Pike off! I'll be 'avin' no more words with ye on that!"~ */
  IF ~~ THEN REPLY #49554 /* ~"Let me ask you about something else, then..."~ */ GOTO 11
  IF ~~ THEN REPLY #49555 /* ~"In that case, I've no more questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 71 // from:
  SAY #33060 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #33061 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #33062 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 62.0
  SAY #33063 /* ~The man's face becomes red with anger. "Watch yer mouth, cutter! That's a lie! Foul, foul lie! Are ye *barmy,* jawin' with a fiend over th' War and believin' 'er every word o' it?!"~ */
  IF ~~ THEN REPLY #33124 /* ~"That's what she told me. I didn't say I took it as the truth."~ */ GOTO 75
  IF ~~ THEN REPLY #33125 /* ~"What happened, then?"~ */ GOTO 75
  IF ~~ THEN REPLY #33126 /* ~"Forget I mentioned it. I had other questions..."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #49566 /* ~"Never mind. I've no more questions."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #33064 /* ~"I'll tell ye what happened, berk!" He sighs and calms down slightly. "I was part of th' Company o' the Blazin' Effigy... a part of its original number was fifty-three mortal mercenaries, though only nine o' us remained. Camped somewhere in Avernus, we were, awaitin' reinforcements fer th' next battle..."~ */
  IF ~~ THEN REPLY #33127 /* ~"Go on..."~ */ GOTO 76
  IF ~~ THEN REPLY #33128 /* ~"Actually, I'll have to hear the rest another time."~ */ GOTO 9
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #33065 /* ~"Well, my tour was nearly done, then... in fact, I was ta leave after that battle. Th' trouble was, had I died there, I would 'ave been theirs forever - too much blackness, too much evil in my 'eart. I would 'ave ended up a petitioner in Baator, an eternal soldier in th' War." He shudders at the thought.~ */
  IF ~~ THEN REPLY #33129 /* ~"What happened?"~ */ GOTO 77
  IF ~~ THEN REPLY #33130 /* ~"Actually, I'll have to hear the rest another time."~ */ GOTO 9
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #33066 /* ~"Me an' two other lads fled like dogs, that's what 'appened. We scurried across the plane fer a handful o' days afore we came to this great pillar o' livin' 'eads... an awful sight, it was... they jabbered an' hissed at us, callin' fer us ta come closer. That night I stole away from the others an' went ta talk ta th' pillar."~ */
  IF ~~ THEN REPLY #33131 /* ~"And...?"~ */ GOTO 78
  IF ~~ THEN REPLY #33132 /* ~"Actually, I'll have to hear the rest another time."~ */ GOTO 9
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #33067 /* ~Ghysis shuts his eyes and rubs at his temples. "I... I asked this pillar 'ow I might be freed, 'ow I might escape Baator... an' it told me in exchange fer th' two o' my brothers." He is quiet for a moment, biting on his knuckles as if fighting back tears. "Ta me... at th' time... t'was just math."~ */
  IF ~~ THEN REPLY #33133 /* ~"Still sounds like you murdered them, to me."~ */ GOTO 80
  IF ~~ THEN REPLY #33134 /* ~"That's a terrible choice to be forced to make."~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",2)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #33068 /* ~He nods. "Not sure if I'll forgive m'self. Now I'm just a soldier who's lookin' fer a place ta die. Tryin' ta erase th' stain o' evil, cleanse my inner Ghysis afore I die an' return ta th' Blood War. I lecture 'ere ta keep people away from it all, ta prevent them from ever havin' ta make a choice like that."~ */
  IF ~~ THEN REPLY #33136 /* ~"I see... but it still sounds like you murdered those two, to me."~ */ GOTO 80
  IF ~~ THEN REPLY #33137 /* ~"I understand, Ghysis."~ */ GOTO 9
END

IF ~~ THEN BEGIN 80 // from: 78.0 79.0
  SAY #33069 /* ~He nods. "Not sure if I'll forgive m'self. Now I'm just a soldier who's lookin' fer a place ta die. Tryin' ta erase th' stain o' evil, cleanse my inner Ghysis afore I die an' return ta th' Blood War. I lecture 'ere ta keep people away from it all, ta prevent them from ever havin' ta make a choice like that."~ */
  IF ~~ THEN REPLY #33138 /* ~"Perhaps I should spread the word around, Ghysis - I'm sure people would love to know *exactly* how you made it through the War."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_1","GLOBALGood",-1)
~ GOTO 81
  IF ~~ THEN REPLY #33139 /* ~"That's fine."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #33070 /* ~"I won't say t'was right, berk, but ye can't deny 'tis what just about any man would've done. I call it *survival,* not murder... now leave me be. Ol' Ghysis won't be sharin' words with *ye* no longer."~ */
  IF ~~ THEN REPLY #33140 /* ~"Shall I spell it out, old man? It's blackmail. I'll take something of value in exchange for my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_2","GLOBALGood",-1)
~ GOTO 82
  IF ~~ THEN REPLY #33141 /* ~"Nothing... forget I said anything."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #33071 /* ~Ghysis grimaces, shaking his head. "Ye... ye're disgustin', berk. 'Ere, take what I got, 'tis all yers... just keep yer yap shut. I've a feelin', though, should I end up back in th' Blood War, I know who's gonna be there right along 'side me..." He hands over a sum of coin and handful of other objects.~ */
  IF ~~ THEN REPLY #33142 /* ~"Won't happen anytime soon, Ghysis. Now finish this lecture up."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
GivePartyGold(200)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("BloodFly",Protagonist,1,0,0)
~ GOTO 9
END
