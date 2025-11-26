// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEF1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1567 /* ~You see a man in tattered clothing. As you approach him, he suddenly stops and begins to look around, frightened.~ */
  IF ~~ THEN REPLY #1569 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #1568 /* ~"You there! Hold a moment!"~ */ GOTO 1
  IF ~~ THEN REPLY #1570 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1571 /* ~The man looks startled, then takes a step back. "Eh? What ye be wantin', cutter?" His voice is shaky, and he seems taken aback by your scars. "I have nothing on me, so's I don't, and my rags are not worth the trouble."~ */
  IF ~~ THEN REPLY #1572 /* ~"Calm yourself. I'm not here to rob you. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #1573 /* ~"Run, and I promise you won't get far. I had some questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1574 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1575 /* ~"Eh?" He doesn't seem thrilled to see you. "What ye be wantin' *now,* cutter?"~ */
  IF ~~ THEN REPLY #1576 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #1577 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0
  SAY #1578 /* ~He keeps a safe distance, and his eyes dart from side to side, as if expecting something to step out of the shadows. "Questions ye said...? An'... eh... what might those questions be?"~ */
  IF ~~ THEN REPLY #1580 /* ~"Can you tell me about this... city?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1579 /* ~"Can you tell me about Sigil?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1581 /* ~"Can you tell me about these slums?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1582 /* ~"Can you tell me about the Hive?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1583 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1584 /* ~"Do you know someone named Pharod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1585 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 27
  IF ~~ THEN REPLY #7126 /* ~"Nothing. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.3 5.2 5.3
  SAY #1586 /* ~"Eh..." He looks at you warily, and his brow furrows in confusion. "What ye wanting ta know 'bout the Hive, cutter?"~ */
  IF ~~ THEN REPLY #1587 /* ~"Why is it called the Hive?"~ */ GOTO 6
  IF ~~ THEN REPLY #1588 /* ~"What's around here of interest?"~ */ GOTO 7
  IF ~~ THEN REPLY #1589 /* ~"Never mind. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1590 /* ~"Nothing. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.1 7.5 8.3 9.0 10.1 11.3 12.0 13.5 14.1 15.1 16.3 17.2 18.1 19.1 20.1 21.3 22.2 23.3 24.2 25.2 26.0 27.0 28.2 29.0 30.0 31.2 32.1 33.1 34.1 35.0 36.2 42.0
  SAY #1591 /* ~"Eh... what might those questions be?"~ */
  IF ~~ THEN REPLY #1592 /* ~"Can you tell me about this... city?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1593 /* ~"Can you tell me about Sigil?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1594 /* ~"Can you tell me about these slums?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1595 /* ~"Can you tell me about the Hive?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1596 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1597 /* ~"Do you know someone named Pharod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1598 /* ~"I'm missing a journal. Have you seen one, or do you know where I might find one?"~ */ GOTO 27
  IF ~~ THEN REPLY #7131 /* ~"Nothing. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #1599 /* ~He looks puzzled. "I... don't know." He looks frightened that he doesn't know the answer. "Mess o' streets, mess o' people, mayhap."~ */
  IF ~~ THEN REPLY #1600 /* ~"What's around here of interest?"~ */ GOTO 7
  IF ~~ THEN REPLY #1601 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1602 /* ~"Never mind then. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #1603 /* ~"It... eh... depenz. Depenz on what ye find interesting, cutter."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1604 /* ~"I'm looking for a good time."~ */ EXTERN ~DMORTE~ 128
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1605 /* ~"I'm looking for a good time."~ */ GOTO 8
  IF ~~ THEN REPLY #1606 /* ~"I'm looking for work."~ */ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1607 /* ~"I'm looking for someone named Pharod."~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1608 /* ~"I'm looking for a missing journal. Do you happen to know where I might find one?"~ */ GOTO 27
  IF ~~ THEN REPLY #1609 /* ~"Forget it. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7132 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1610 /* ~"Well..." He licks his lips. "There's the Smolderin' Corpse bar... n' the Dustie bar... though you don't look the cutter ta be drinkin' bub with the Dusties... any o' the other places 'round here is jest dangerous, so be on yer guard."~ */
  IF ~~ THEN REPLY #1611 /* ~"Where are the places you mentioned?"~ */ GOTO 9
  IF ~~ THEN REPLY #1612 /* ~"What's dangerous around here?"~ */ GOTO 10
  IF ~~ THEN REPLY #1613 /* ~"'Dusties'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1614 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1615 /* ~"I see. Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #1616 /* ~"Well, the Smolderin' Corpse is a few blocks spireward - uh, southward - of the Mortuary - and the Dustie bar is just a little to the south n' west of the Mortuary."~ */
  IF ~~ THEN REPLY #1731 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1732 /* ~"Thanks. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #1617 /* ~"Anywhere in the Hive, once dark falls. Then there's the Angled Alley... ye want ta be keepin' yerself outta there unless ye want ta be in the dead-book."~ */
  IF ~~ THEN REPLY #1618 /* ~"Why is this 'Alley of Angles' so dangerous?"~ */ GOTO 36
  IF ~~ THEN REPLY #1619 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1620 /* ~"Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2 13.4 14.0 15.0 31.1 32.0
  SAY #1621 /* ~He thinks. "Precious little... eh, honest... work ta be found 'round here, cutter. Ye ken hunt some brain vermin fer some coppers, pass them off ta the Branch Office of Vermin fer some jink, ta hear tell, but messin' with the brain vermin's dangerous work, though. Ye ken also gather some deaders around the Hive, take it ta the Mortuary fer some jink."~ */
  IF ~~ THEN REPLY #1623 /* ~"Where's this branch office?"~ */ GOTO 12
  IF ~~ THEN REPLY #1624 /* ~"Brain vermin?"~ */ GOTO 14
  IF ~~ THEN REPLY #1625 /* ~"Gather bodies?"~ */ GOTO 13
  IF ~~ THEN REPLY #1626 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1627 /* ~"I see. Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.1
  SAY #1622 /* ~"It's next to th' Hive market. Go spireward - that's south n' west of the Mortuary - three or four blocks, n' ye'll dead-end into it. The rat catchers mither out in front, can't miss it."~ */
  IF ~~ THEN REPLY #1733 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7133 /* ~"Thanks. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #1628 /* ~"Aye, the Dusties will pay jink for any deaders ye bring ta their gates. Not much jink ta be made, but enough fer the Collectors t'keep makin' their rounds... an' there's always enough deaders ta be found 'round here."~ */
  IF ~~ THEN REPLY #1633 /* ~"Collectors?"~ */ GOTO 31
  IF ~~ THEN REPLY #1629 /* ~"Where was that branch office you mentioned located?"~ */ GOTO 12
  IF ~~ THEN REPLY #1630 /* ~"What were you saying about 'brain vermin'?"~ */ GOTO 14
  IF ~~ THEN REPLY #1631 /* ~"'Dusties'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1632 /* ~"What other work is there in the Hive?"~ */ GOTO 11
  IF ~~ THEN REPLY #7134 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7135 /* ~"I see. Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.2
  SAY #1634 /* ~"Aye, nasty little critters." He bares his teeth like a rat. He looks pretty foolish. "Alone, they're barely nothing at all... it's jest when brain vermin get together, they get all smart the more of them are around each other. They start gettin' as smart as a human..." He shakes his head. "Nobody in their right mind wants that ta happen. Hazard ta everyone's health, it is."~ */
  IF ~~ THEN REPLY #2528 /* ~"What other work is there in the Hive?"~ */ GOTO 11
  IF ~~ THEN REPLY #2527 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7136 /* ~"I've heard enough. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 8.2 13.3 16.0
  SAY #1635 /* ~"Aye... Dusties... Dustmen... the pale-faced Dead, they are, all grim and no humor to speak of. They keep the streets free o' the dead, stack 'em in the Mortuary. That's their job in Sigil, mostly cause no one else wants it."~ */
  IF ~~ THEN REPLY #1638 /* ~"What other work is there in the Hive?"~ */ GOTO 11
  IF ~~ THEN REPLY #1636 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1637 /* ~"I see. Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1639 /* ~"Which o' em?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #1640 /* ~"How about the Dustmen..."~ */ GOTO 15
  IF ~  GlobalGT("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #1641 /* ~"The Chaosmen... they sound interesting."~ */ EXIT
  IF ~  GlobalGT("Know_Indeps","GLOBAL",0)
~ THEN REPLY #1642 /* ~"The Indeps?"~ */ EXIT
  IF ~~ THEN REPLY #1643 /* ~"Never mind. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1644 /* ~"Forget the question. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 17 // from: 3.0 5.0
  SAY #1645 /* ~"What d'ye want t'know 'bout Sigil then?"~ */
  IF ~~ THEN REPLY #1646 /* ~"What *is* this place?"~ */ DO ~SetGlobal(" Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #1647 /* ~"*Where* is Sigil?"~ */ GOTO 26
  IF ~~ THEN REPLY #1648 /* ~"Actually, I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1649 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 3.1 5.1 17.0
  SAY #1650 /* ~"Th'city. City o' Doors, the Cage. Place where all doors lead to, n' from. Center of the planes, and gets most of the backwash from all places, too. Some say this is where everybody ends up at one point or another."~ */
  IF ~~ THEN REPLY #1652 /* ~"'City of Doors'?"~ */ GOTO 19
  IF ~~ THEN REPLY #1651 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1653 /* ~"Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1654 /* ~"Eh, aye... y'see, cutter, th' city is..." He frowns, as if struggling with the words. "The city's got a batch of doors scattered through it... n'... y'see, the doors..." He frowns again, then sighs.~ */
  IF ~~ THEN REPLY #1657 /* ~"The doors...?"~ */ GOTO 20
  IF ~~ THEN REPLY #1658 /* ~"I can see this is going to take a while. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1659 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1655 /* ~"Let me rattle my bone-box with a lil' more sense: Y'see, there's 'doors' all over Sigil, but they don't always look like doors. They're more like portals, see? An' they ken be just about *anything*... a window frame... er, a picture frame, an archway... a barrel hoop, a space between a table's legs... or a statue's legs..." ~ */
  IF ~~ THEN REPLY #1656 /* ~"And... you're saying all of these things are doors?"~ */ GOTO 21
  IF ~~ THEN REPLY #1661 /* ~"I... see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1662 /* ~"Thanks for the information. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1660 /* ~He frowns again. "Doors... portals can be anything that's closed on all sides. It's hard ta tell where they are... unless ye got the key to the door. That how you get here, cutter? Through a door?"~ */
  IF ~~ THEN REPLY #1663 /* ~"What makes you say that?"~ */ GOTO 22
  IF ~~ THEN REPLY #1666 /* ~"What are these 'Keys' you mentioned?"~ */ GOTO 23
  IF ~~ THEN REPLY #1667 /* ~"So there's all these doors in the city... where do they all go to?"~ */ GOTO 25
  IF ~~ THEN REPLY #1668 /* ~"Maybe... look, I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1665 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 22 // from: 21.0 23.2 24.1 25.1
  SAY #1664 /* ~"Eh... well, ye don't act like ye're from 'round Sigil, see?"~ */
  IF ~~ THEN REPLY #7137 /* ~"What are those 'Keys' you mentioned?"~ */ GOTO 23
  IF ~~ THEN REPLY #7138 /* ~"Where do all these doors in the city go to?"~ */ GOTO 25
  IF ~~ THEN REPLY #7139 /* ~"I had some other questions for you..."~ */ GOTO 5
  IF ~~ THEN REPLY #7140 /* ~"That's all I wanted to know. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 25.0
  SAY #1670 /* ~"Each door's got a key, which makes it open, see? Mosttimes, ye won't even *know* a door's around ye, *unless* ye got the key. Then th' door opens, an' ye can step through an' take yer chances. Trick is, ye know how I was saying that doors ken be anything? Well, so ken keys. They could be a tune ye hum to yerself near the door, a thought ye be havin' about pastries, or a lil' jig you do, or maybe the key's an object, like a piece of glass, or a cobblestone, or a broken tooth... anythin'."~ */
  IF ~~ THEN REPLY #1673 /* ~"Sounds pretty confusing."~ */ GOTO 24
  IF ~~ THEN REPLY #1671 /* ~"Where do all these doors in the city go to?"~ */ GOTO 25
  IF ~~ THEN REPLY #1672 /* ~"Before, you asked if I came through one of these doors. What made you say that?"~ */ GOTO 22
  IF ~~ THEN REPLY #7141 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7142 /* ~"All right then... farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1674 /* ~"Ye get used ta it, ye do."~ */
  IF ~~ THEN REPLY #1676 /* ~"Where do all these doors in the city go to?"~ */ GOTO 25
  IF ~~ THEN REPLY #1675 /* ~"Before, you asked if I came through one of these doors. What made you say that?"~ */ GOTO 22
  IF ~~ THEN REPLY #7143 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7144 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 25 // from: 21.2 22.1 23.1 24.0
  SAY #1677 /* ~He shrugs. "Doors ken go *anywhere,* cutter. Some don't even lead ta the same place twice." He sighs. "Y'see, such is the way and number of the doors that they lead to almost anywhere in the planes... *anywhere.* It's jest that there are so damnable many o' em, it's hard finding one that takes ye right where ye want to go."~ */
  IF ~~ THEN REPLY #1678 /* ~"You said these doors have 'keys'...?"~ */ GOTO 23
  IF ~~ THEN REPLY #1679 /* ~"Before, you asked if I came through one of these doors. What made you say that?"~ */ GOTO 22
  IF ~~ THEN REPLY #7145 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7146 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 17.1
  SAY #1680 /* ~"Center of the planes, ta here tell. Don't know from experience." He shrugs. "I imagine everyplace touches here... one way or another. Not all o' a Sigil as ugly as y'see here, neither."~ */
  IF ~~ THEN REPLY #1681 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1682 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 3.6 5.6 7.4
  SAY #1684 /* ~"Ye're missin' a what?" He looks confused. "No idea where ye'd find such a thing, cutter."~ */
  IF ~~ THEN REPLY #2531 /* ~"Never mind then. I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #2532 /* ~"All right... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.4 5.4
  SAY #1683 /* ~"The mistress o' Sigil? Ye've not *heard* o' her? Ye must be blessed or more cluel... eh, know little about Sigil, indeed." He laughs weakly. "Lady's word's law here in Sigil." He thinks for a moment. "'Cept she don't say much. Dead silent she is, actually."~ */
  IF ~~ THEN REPLY #1686 /* ~"Some law."~ */ GOTO 29
  IF ~~ THEN REPLY #1687 /* ~"What else can you tell me about this Lady?"~ */ GOTO 29
  IF ~~ THEN REPLY #1688 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1689 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #1685 /* ~He looks at you warily. "Don't want ta be talkin' too much about her, cutter... ye don't want ta cross her shadow nor be singing her praises, all right? Now, let's say no more about it. Rattlin' yer bone-box about the lady is dim, dim indeed."~ */
  IF ~~ THEN REPLY #1692 /* ~"All right then, I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1693 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1690 /* ~"The Dusties' kip. Grim-lookin' place. Don't even want ta be seein' that place even when they pen me in the dead-book."~ */
  IF ~~ THEN REPLY #1694 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1695 /* ~"I see. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 13.0
  SAY #1691 /* ~"Vultures. Lot of 'em have their kip in Ragpicker's Square. Gather th' deaders, scuttle everythin' worth jink from 'em, then sell the bodies back ta th' Dusties at the Mortuary."~ */
  IF ~~ THEN REPLY #1696 /* ~"Why do they do that?"~ */ GOTO 32
  IF ~~ THEN REPLY #1698 /* ~"What other work is there in the Hive?"~ */ GOTO 11
  IF ~~ THEN REPLY #1697 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7147 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1699 /* ~"Dusties pay jink ta people fer bringin' 'em deaders off the streets and alleys, makes the Dusties' lives a lil' easier ta have a batch of Hivers collecting bodies for 'em. Lot of deaders in the Hive, every day."~ */
  IF ~~ THEN REPLY #1701 /* ~"What other work is there in the Hive?"~ */ GOTO 11
  IF ~~ THEN REPLY #1700 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7148 /* ~"I see. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 3.5 5.5 7.3
  SAY #1702 /* ~"Name's not one I know, cutter. Who's he?"~ */
  IF ~~ THEN REPLY #1703 /* ~"He's a Collector, I think."~ */ GOTO 34
  IF ~~ THEN REPLY #1705 /* ~"I'm trying to find that out myself. Look, I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1669 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1707 /* ~He thinks. "Well, then he most likely has his kip in Ragpicker's Square, then. Ye might want ta look there... during the day, that is. Not a nice place at night."~ */
  IF ~~ THEN REPLY #1708 /* ~"Where is this Ragpicker's Square located?"~ */ GOTO 35
  IF ~~ THEN REPLY #1709 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1710 /* ~"Thanks for the warning. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1711 /* ~"It's a few blocks from here - go west from the Mortuary as far as ye ken go, an' ye'll run right into it. Careful when ye're around there though, cutter... the Collectors there don't always wait fer a body ta die before collectin' on them, aye?"~ */
  IF ~~ THEN REPLY #1704 /* ~"Got it, thanks. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #1706 /* ~"Understood. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 10.0
  SAY #1712 /* ~"Place o' gangers and muggers, cutter. Don't be going there unless ye want yer next stop ta be the Mortuary. Th'alley's a big burnt wreck, used ta be a street 'fore some barmy mage burned it down one night. Hear tell, they caught th'fella, burned 'im in return, then put 'im on display at the Smolderin' Corpse bar. That's th'Hive fer ye."~ */
  IF ~~ THEN REPLY #2533 /* ~"Where's this Alley located?"~ */ GOTO 42
  IF ~  False()
~ THEN REPLY #2529 /* ~"Where's this Alley located?"~ */ GOTO 42
  IF ~~ THEN REPLY #2530 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7149 /* ~"Never mind. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 3.7 4.3 5.7 6.2 7.6 8.4 9.1 10.2 11.4 12.1 13.6 14.2 15.2 16.4 17.3 18.2 19.2 20.2 21.4 22.3 23.4 24.3 25.3 26.1 28.3 29.1 30.1 31.3 32.2 34.2 35.1 36.3 42.1
  SAY #1713 /* ~"Eh..." He licks his lips as you turn to leave. "Cutter, ye might think ye..." He studies you for a moment. "Ye could spare a few coppers fer a blood who helped ye on yer way? Not many'd around here, do that fer a fella... enough fer a man ta wet his tongue after all that talkin'? Eh?"~ */
  IF ~~ THEN REPLY #1714 /* ~"No."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_5","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #1715 /* ~"I'll spare your life. How's that?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_2","GLOBALGood",-2)
~ GOTO 40
  IF ~  PartyGoldGT(0)
~ THEN REPLY #1716 /* ~"Fair enough." Give him a copper piece.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 41
  IF ~  PartyGoldGT(4)
~ THEN REPLY #1717 /* ~Give five coppers.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",2)
TakePartyGold(5)
~ GOTO 41
  IF ~  PartyGoldGT(9)
~ THEN REPLY #1718 /* ~Give ten coppers.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",3)
TakePartyGold(10)
~ GOTO 41
  IF ~  PartyGold(0)
~ THEN REPLY #2534 /* ~"I'm sorry, I don't have any money to spare."~ */ GOTO 38
  IF ~  PartyGoldGT(0)
~ THEN REPLY #2535 /* ~Lie: "I'm sorry, I don't have any money to spare."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_3","GLOBALGood",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.5 37.6
  SAY #1719 /* ~He seems disappointed. "Oh, well, aye... peace, then, cutter..." He grumbles under his breath as he walks off.~ */
  IF ~~ THEN REPLY #1723 /* ~"*What* did you say?"~ */ GOTO 39
  IF ~~ THEN REPLY #1721 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #1722 /* ~The man looks startled and raises his hands. "Nay, nay, nothin', cutter! I was marking the weather, so I was! Nothin' about ye!" He looks ready to run.~ */
  IF ~~ THEN REPLY #1724 /* ~Attack him.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1725 /* ~Let him run.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #1726 /* ~"Eh... that be sittin' well with me, cutter." He smiles uneasily. "Peace, then." He leaves quickly.~ */
  IF ~~ THEN REPLY #1727 /* ~Attack him.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1728 /* ~Let him run.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2 37.3 37.4
  SAY #1729 /* ~He glances around to see if anyone saw the exchange, then tucks the jink in the folds of his robe. "Thank ye kindly, cutter! May the Lady's shadow pass ye by!"~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #1730 /* ~"Wait a minute... Lady? What do you mean?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",0)
~ GOTO 43
  IF ~~ THEN REPLY #7150 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1
  SAY #7127 /* ~"It's just south and west of the Mortuary, n' just south of the Gathering Dust, that Dustie bar."~ */
  IF ~~ THEN REPLY #7151 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #7152 /* ~"Thanks. Farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #7128 /* ~"The mistress o' Sigil? Ye've not *heard* o' her? Ye must be blessed or more cluel... eh, know little about Sigil, indeed." He laughs weakly. "Lady's word's law here in Sigil." He thinks for a moment. "'Cept she don't say much. Dead silent she is, actually."~ */
  IF ~~ THEN REPLY #7153 /* ~"Some law."~ */ GOTO 44
  IF ~~ THEN REPLY #7154 /* ~"What else can you tell me about this Lady?"~ */ GOTO 44
  IF ~~ THEN REPLY #7155 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #7129 /* ~He looks at you warily. "Don't want ta be talkin' too much about her, cutter... ye don't want ta cross her shadow nor be singing her praises, all right? Now, let's say no more about it. Rattlin' yer bone-box about the lady is dim, dim indeed."~ */
  IF ~~ THEN REPLY #7156 /* ~"Farewell then."~ */ EXIT
END
