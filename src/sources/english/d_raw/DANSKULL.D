// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31732 /* ~A hiss escapes this skull's teeth: "You mean you're a wizard, an assassin, and a poisoner."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 8
END

IF ~  Global("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 1 // from:
  SAY #31733 /* ~This skull's voice is low and raspy, the sound of flint and steel. "I... I think I've seen you before, stranger."~ */
  IF ~~ THEN REPLY #31734 /* ~"Where have you seen me?"~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31743 /* ~"Quite possibly, but I don't have time for that."~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  GlobalGT("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31744 /* ~"You again, eh? What do you want of me now?"~ */
  IF ~~ THEN REPLY #31745 /* ~"You said you'd seen me before. Where?"~ */ GOTO 3
  IF ~~ THEN REPLY #31746 /* ~"Tell me of yourself."~ */ GOTO 4
  IF ~~ THEN REPLY #31747 /* ~"How did you get here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31748 /* ~"Tell me about Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31749 /* ~"Tell me about the other skulls here."~ */ GOTO 7
  IF ~~ THEN REPLY #31750 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 10.0 11.0
  SAY #31751 /* ~"Curst. Gate town to Carceri."~ */
  IF ~~ THEN REPLY #31752 /* ~"Curst? Gate town? Carceri?"~ */ GOTO 8
  IF ~~ THEN REPLY #31753 /* ~"What was I doing there?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.0 6.2 7.0
  SAY #31754 /* ~"Me? I'm Grimscalp. Used to be an Anarchist - one of the Revolutionary League. We had secrets and cells; we were going to topple the nature of the planes so everyone could live in freedom. We had the dark on some of the factols and were ready to make a move. But then we were betrayed by another faction. I wound up dead, and Lothar wound up collecting me for my secrets. Good thing most of them are out of date by now - there ain't no resisting Lothar's charms."~ */
  IF ~~ THEN REPLY #31755 /* ~"What can you tell me of the Anarchists?"~ */ GOTO 12
  IF ~~ THEN REPLY #31756 /* ~"Tell me about Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31757 /* ~"Tell me about the other skulls here."~ */ GOTO 7
  IF ~~ THEN REPLY #31758 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 6.3 7.1
  SAY #31759 /* ~"Betrayal. I should have expected it, given who I am - or rather, who I was."~ */
  IF ~~ THEN REPLY #31760 /* ~"Who were you?"~ */ GOTO 4
  IF ~~ THEN REPLY #31761 /* ~"Probably. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 4.1 7.2
  SAY #31762 /* ~"I've spilled the dark of many secrets, but that's not one I'm willing to sacrifice. I've seen horrors in Lothar's hand that would put the Harmonium's rigid rules to shame. He knows my secrets far better than I know his, and I'll be damned if I'm giving them up for anyone. Even you. Especially you."~ */
  IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31763 /* ~"Why? What do you know about me?"~ */ GOTO 10
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31764 /* ~"Why? What do you know about me?"~ */ GOTO 11
  IF ~~ THEN REPLY #31765 /* ~"Then tell me of yourself."~ */ GOTO 4
  IF ~~ THEN REPLY #31766 /* ~"How did you get here, then?"~ */ GOTO 5
  IF ~~ THEN REPLY #31767 /* ~"What can you tell me of the other skulls?"~ */ GOTO 7
  IF ~~ THEN REPLY #31768 /* ~"Fair enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 4.2 6.4
  SAY #31769 /* ~"Them? They are all tools, though they do not know it. Their dreams are small and personal. They do not see a larger picture in their schemings. They do not see beyond themselves. They are worthless. I do not speak to them."~ */
  IF ~~ THEN REPLY #31770 /* ~"I see. Tell me of yourself, then."~ */ GOTO 4
  IF ~~ THEN REPLY #31771 /* ~"So then how did you come here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31772 /* ~"What of Lothar, then?"~ */ GOTO 6
  IF ~~ THEN REPLY #31773 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 9.0
  SAY #31774 /* ~"What are you, clueless? It's a gate town, on the rim of the Outlands, the doorway to the prison plane of Carceri. It's a place of backstabbers and traitors, and it's full of schemes as a baatezu's undergarments. Being right next door to Carceri's apt to change a burg's nature; I wouldn't be surprised if the town were about to slide over."~ */
  IF ~~ THEN REPLY #31775 /* ~"Slide over? What do you mean?"~ */ GOTO 16
  IF ~~ THEN REPLY #31776 /* ~"What was I doing there?"~ */ GOTO 9
  IF ~~ THEN REPLY #31777 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 8.1
  SAY #31778 /* ~"What were you doing there? You were babbling something about some berk trying to kill you and wandering into all the wrong places. Well, you were obviously barmy and all, so me and some of my friends rolled you. Stuck a shiv in you and divvied up your stuff. It was right after that that I was betrayed, but not before I hid some of that stuff."~ */
  IF ~~ THEN REPLY #31779 /* ~"What can you tell me of Curst?"~ */ GOTO 8
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #31780 /* ~"Where is it?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN REPLY #31781 /* ~"Where is it?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31782 /* ~"Where is it?"~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #31783 /* ~"Oh. Well, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #31784 /* ~"I know you're important to Lothar somehow, and there's something about you that he wants to understand. You're like some puzzle. He's interested in you, boyo, and he wants his questions answered. He'll be keeping an eye on you. And I know that you're a far traveler - you've been seen before."~ */
  IF ~~ THEN REPLY #31734 /* ~"Where have you seen me?"~ */ GOTO 3
  IF ~~ THEN REPLY #31794 /* ~"I'll keep that in mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #31795 /* ~"I've already told your friend there most of it. You're important to Lothar somehow, and there's something about you that he wants to understand. You're like some puzzle. He's interested in you, boyo, and he wants his questions answered. He'll be keeping an eye on you. I also know you're a far traveler - you've been seen before."~ */
  IF ~~ THEN REPLY #31734 /* ~"Where have you seen me?"~ */ GOTO 3
  IF ~~ THEN REPLY #31797 /* ~"I'll keep that in mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 16.0
  SAY #31798 /* ~"We are a secret society, cells of members who work alone or through directives passed through the network of informants and leaders-who-remain-hidden. Our goal is to tear down the power structure, to free people from the lies of politicians and powers, to let all lead their own lives of their own volition. We work in secrecy - worked in secrecy - and changed our routines constantly to avoid infiltration. My time was decades ago, and so all the secrets I knew are no longer valid, except for the faces I can remember - and even those must have been changed by now."~ */
  IF ~~ THEN REPLY #31799 /* ~"You sound like a paranoid bunch."~ */ GOTO 13
  IF ~~ THEN REPLY #31800 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31801 /* ~"If a society you belonged to thrived on intrigue, infiltration, and the hatred of the established power-mongers, you'd be careful too. It's not paranoia when they really are out to get you. In our line of belief, someone involved in a triple-cross is an amateur." The skull regards you evenly for a moment. "I think I'm done speaking with you. Farewell."~ */
  IF ~~ THEN REPLY #31802 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1 9.2
  SAY #31803 /* ~"I ain't telling. Maybe someday I'll get a body back and go for it myself, and maybe I won't, but right now it gives me great joy to see you wondering. Good luck finding it." The skull falls silent, and no amount of cajoling can convince it to speak again.~ */
  IF ~~ THEN REPLY #31804 /* ~"Bastard."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #31805 /* ~You get the feeling the skull is measuring you carefully. "You're one of the brethren, ain't you? I've got a nose for these things - at least, I used to - and I think you're one of us. All right, then. It's in the warehouse. Talk to the owner of the place and tell him I sent you. Don't tell him I'm dead and he should surrender it to you willingly enough."~ */
  IF ~~ THEN REPLY #31806 /* ~"I'll remember that. Thanks, though I'm not too happy about having been killed by you then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #31807 /* ~"When a gate town's beliefs get too much like the plane it borders, the force of that belief is enough to make its bordering plane swallow it whole. Happens all the time - at least when the Anarchists are involved." He speaks this last with a kind of grim pride.~ */
  IF ~~ THEN REPLY #31808 /* ~"Tell me about the Anarchists."~ */ GOTO 12
  IF ~~ THEN REPLY #31809 /* ~"Thanks. Farewell."~ */ EXIT
END
