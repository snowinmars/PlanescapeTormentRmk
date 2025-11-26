// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CIRCLEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~CIRCLEZ~

IF ~  Global("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #30106 /* ~This small round stone appears to be a religious "text" that Dak'kon carries. It is made up of a series of interlocking circles that fold out from one another; the complexity of the plates and the intricacy of their links prove the text was constructed by a master artisan. You can't figure out how to unlock the plates, however.~ */
  IF ~~ THEN REPLY #60450 /* ~Leave the stone alone.~ */ EXIT
END

IF ~  GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 1 // from: 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.2 11.0 12.5 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.2 23.0 24.1 25.1 26.1 27.2 28.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.0 38.1 39.1 40.1 41.2 42.0 43.1 44.1 45.1 46.1 47.1 48.2 49.0 50.0 51.1 52.1 53.1 54.1 55.2 56.0 57.1 58.1 59.2 60.0
  SAY #60451 /* ~This small round stone is the Unbroken Circle of Zerthimon. It is made up of a series of interlocking circles that fold out from one another; the complexity of the plates and the intricacy of their links prove the text was constructed by a master artisan. ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60452 /* ~Unlock the first plate as Dak'kon showed you.~ */ GOTO 2
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60453 /* ~Unlock the Second Circle of Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60454 /* ~Unlock the Third Circle of Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60455 /* ~Unlock the Fourth Circle of Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60456 /* ~Unlock the Fifth Circle of Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60457 /* ~Unlock the Sixth Circle of Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60458 /* ~Unlock the Seventh Circle of Zerthimon. ~ */ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60459 /* ~Unlock the Eighth Circle of Zerthimon. ~ */ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",13)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #60460 /* ~Examine the plates, see if you can puzzle out any new combinations.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",14)
GiveExperience(Protagonist,3000)
~ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",16)
CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #60461 /* ~Examine the plates, see if you can puzzle out any new combinations.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",17)
GiveExperience(Protagonist,6000)
~ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #60462 /* ~Examine the plates, see if you can puzzle out any new combinations.~ */ GOTO 50
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60463 /* ~Re-read the First Circle of Zerthimon.~ */ GOTO 3
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60464 /* ~Re-read the Second Circle of Zerthimon.~ */ GOTO 13
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60465 /* ~Re-read the Third Circle of Zerthimon.~ */ GOTO 24
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60466 /* ~Re-read the Fourth Circle of Zerthimon.~ */ GOTO 29
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60467 /* ~Re-read the Fifth Circle of Zerthimon.~ */ GOTO 38
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60468 /* ~Re-read the Sixth Circle of Zerthimon.~ */ GOTO 43
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60469 /* ~Re-read the Seventh Circle of Zerthimon.~ */ GOTO 53
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60470 /* ~Re-read the Eighth Circle of Zerthimon.~ */ GOTO 57
  IF ~~ THEN REPLY #60471 /* ~Leave the Unbroken Circle of Zerthimon alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60472 /* ~You mirror the motions that Dak'kon made upon the Circle, and the plates give way at your touch, the rings sliding into a new configuration. Upon the rings are a series of symbols; the script is like no writing you have ever seen: it is a series of interlocking geometries, with circles pre-dominating. Just looking at it, you *know* the symbols and *know* you can read them.~ */
  IF ~~ THEN REPLY #60473 /* ~Read the First Circle of Zerthimon.~ */ GOTO 3
  IF ~~ THEN REPLY #60474 /* ~Leave the Unbroken Circle of Zerthimon alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.11 2.0
  SAY #60475 /* ~"*Know* that we are the First People."~ */
  IF ~~ THEN REPLY #60476 /* ~Continue reading the symbols...~ */ GOTO 4
  IF ~~ THEN REPLY #60477 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60479 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #60480 /* ~"Once all was chaos. The First People were thought drawn from chaos. When the First People came to *know* themselves, they were chaos no longer, and became flesh."~ */
  IF ~~ THEN REPLY #60481 /* ~Continue reading the symbols...~ */ GOTO 5
  IF ~~ THEN REPLY #60482 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60483 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60484 /* ~"With their thoughts and *knowing* of matter, the People shaped the First World and dwelled there with their *knowing* to sustain them."~ */
  IF ~~ THEN REPLY #60485 /* ~Continue reading the symbols...~ */ GOTO 6
  IF ~~ THEN REPLY #60486 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60487 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #60488 /* ~"Yet the flesh was new to the People and with it, the People came not to *know* themselves. The flesh gave rise to new thoughts. Greed and hates, pains and joys, jealousies and doubts. All of these fed on each other and the minds of the People were divided. In their division, the People were punished."~ */
  IF ~~ THEN REPLY #60489 /* ~Continue reading the symbols...~ */ GOTO 7
  IF ~~ THEN REPLY #60490 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60491 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #60492 /* ~"The emotions of the flesh were strong. The greed and hates, the pains and joys, the jealousies and doubts, all of these served as a guiding stone to enemies. In becoming flesh, the First People became enslaved to those who *knew* flesh only as tools for their will. *Know* these beasts were the *illithids.*"~ */
  IF ~~ THEN REPLY #60493 /* ~Continue reading the symbols...~ */ GOTO 8
  IF ~~ THEN REPLY #60494 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60495 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60496 /* ~"The *illithids* were a race that had come not to *know* themselves. They had learned how to make other races not *know* themselves."~ */
  IF ~~ THEN REPLY #60497 /* ~Continue reading the symbols...~ */ GOTO 9
  IF ~~ THEN REPLY #60498 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60499 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60500 /* ~"They were the tentacled ones. They lived in flesh and saw flesh as tools for their will. Their blood was as water and they shaped minds with their thoughts. When the *illithids* came upon the People, the People were a people no more. The People became slaves."~ */
  IF ~~ THEN REPLY #60501 /* ~Continue reading the symbols...~ */ GOTO 10
  IF ~~ THEN REPLY #60502 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60503 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60504 /* ~"The *illithids* took the People from the First World and brought them to the False Worlds. As the People labored upon the False Worlds, the *illithids* taught them the Way of the Flesh. Through them, the People came to *know* loss. They came to *know* suffering. They came to *know* death, both of the body and mind. They came to *know* what it is to be the herd of another and have their flesh consumed. They came to *know* the horror of being made to feel joy in such things."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60505 /* ~Finish reading the Circle.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",2)
~ GOTO 11
  IF ~  !Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #67271 /* ~Finish reading the Circle.~ */ GOTO 11
  IF ~~ THEN REPLY #60506 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60507 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #60508 /* ~"The Unbroken Circle is the *knowing* of how the People lost themselves. And how they came to *know* themselves again."~ */
  IF ~~ THEN REPLY #60509 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60510 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #60511 /* ~You slide the plates into the configuration Dak'kon showed you, and a new ring is revealed. The ring carries the same script as you read before, with the same geometries... you *know* the symbols and *know* you can read them.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60512 /* ~Read the Second Circle of Zerthimon.~ */ GOTO 13
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60513 /* ~Read the Third Circle of Zerthimon.~ */ GOTO 24
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60514 /* ~Read the Fourth Circle of Zerthimon.~ */ GOTO 29
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60515 /* ~Read the Fifth Circle of Zerthimon.~ */ GOTO 38
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60516 /* ~Read the Sixth Circle of Zerthimon.~ */ GOTO 43
  IF ~~ THEN REPLY #60517 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60518 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.12 12.0
  SAY #60519 /* ~"*Know* that flesh cannot mark steel. *Know* that steel may mark flesh. In *knowing* this, Zerthimon became free."~ */
  IF ~~ THEN REPLY #60520 /* ~Continue reading the symbols...~ */ GOTO 14
  IF ~~ THEN REPLY #60521 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60522 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #60523 /* ~"*Know* that the tentacled ones were of flesh. They relied on the flesh and used it as tools for their will. One of the places where flesh served their will was the Fields of Husks on the False Worlds of the *illithids.*"~ */
  IF ~~ THEN REPLY #60524 /* ~Continue reading the symbols...~ */ GOTO 15
  IF ~~ THEN REPLY #60525 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60526 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60527 /* ~"The Fields were where the bodies of the People were cast after the *illithids* had consumed their brains. When the brain had been devoured, the husks came to be fertilizer to grow the poison-stemmed grasses of the *illithids.* Zerthimon worked the Fields with no *knowing* of himself or what he had become. He was a tool of flesh, and the flesh was content."~ */
  IF ~~ THEN REPLY #60528 /* ~Continue reading the symbols...~ */ GOTO 16
  IF ~~ THEN REPLY #60529 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60530 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60531 /* ~"It was upon these Fields that Zerthimon came to *know* the scripture of steel. During one of the turnings, as Zerthimon tilled the Fields with his hands, he came across a husk whose brain remained within it. It had not been used as food. Yet it was dead."~ */
  IF ~~ THEN REPLY #60532 /* ~Continue reading the symbols...~ */ GOTO 17
  IF ~~ THEN REPLY #60533 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60534 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60535 /* ~"The thought that one of the husks had died a death without serving as food for the *illithids* was a thought Zerthimon had difficulty understanding. From that thought, came a desire to *know* what had happened to the husk."~ */
  IF ~~ THEN REPLY #60536 /* ~Continue reading the symbols...~ */ GOTO 18
  IF ~~ THEN REPLY #60537 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60538 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60539 /* ~"Embedded in the skull of the husk was a steel blade. It had pierced the bone. Zerthimon realized that was what had killed the husk. The steel had marked the flesh, but the flesh had not marked the steel."~ */
  IF ~~ THEN REPLY #60540 /* ~Continue reading the symbols...~ */ GOTO 19
  IF ~~ THEN REPLY #60541 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60542 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #60543 /* ~"Zerthimon took the blade and studied its surface. In it, he saw his reflection. It was in the reflection of the steel that Zerthimon first *knew* himself. Its edge was sharp, its will the wearer's. It was the blade that would come to be raised against Gith when Zerthimon made the Pronouncement of Two Skies."~ */
  IF ~~ THEN REPLY #60544 /* ~Continue reading the symbols...~ */ GOTO 20
  IF ~~ THEN REPLY #60545 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60546 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #60547 /* ~"Zerthimon kept the blade for many turnings, and many were the thoughts he had about it. He used it in the fields to aid his work. In using it, he thought about how it was not used."~ */
  IF ~~ THEN REPLY #60548 /* ~Continue reading the symbols...~ */ GOTO 21
  IF ~~ THEN REPLY #60549 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60550 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60551 /* ~"The *illithids* were powerful. Zerthimon had believed that there was nothing that they did not *know.* Yet the *illithids* never carried tools of steel. They only used flesh as tools. Everything was done through flesh, for the tentacled ones were made of flesh and they *knew* flesh. Yet steel was superior to flesh. When the blade had killed the husk, it was the flesh that had been weaker than the steel."~ */
  IF ~~ THEN REPLY #60552 /* ~Continue reading the symbols...~ */ GOTO 22
  IF ~~ THEN REPLY #60553 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60554 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #60555 /* ~"It was then that Zerthimon came to *know* that flesh yielded to steel. In *knowing* that, he came to *know* that steel was stronger than the *illithids.*"~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60556 /* ~Finish reading the symbols.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",4)
~ GOTO 23
  IF ~  !Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #67272 /* ~Finish reading the symbols.~ */ GOTO 23
  IF ~~ THEN REPLY #60557 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60558 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #60559 /* ~"Steel became the scripture of the People. *Know* that steel is the scripture by which the People came to *know* freedom."~ */
  IF ~~ THEN REPLY #60562 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60586 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.13 12.1
  SAY #60587 /* ~"Zerthimon labored many turnings for the *illithid* Arlathii Twice-Deceased and his partnership in the cavernous heavens of the False Worlds. His duties would have broken the backs of many others, but Zerthimon labored on, suffering torment and exhaustion."~ */
  IF ~~ THEN REPLY #60588 /* ~Continue reading the symbols...~ */ GOTO 25
  IF ~~ THEN REPLY #60590 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60591 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #60592 /* ~"It came to pass that the *illithid* Arlathii Twice-Deceased ordered Zerthimon before him in his many-veined galleria. He claimed that Zerthimon had committed slights of obstinance and cowardice against his partnership. The claim had no weight of truth, for Arlathii only wished to *know* if flames raged within Zerthimon's heart. He wished to *know* if Zerthimon's heart was one of a slave or of a rebel."~ */
  IF ~~ THEN REPLY #60593 /* ~Continue reading the symbols...~ */ GOTO 26
  IF ~~ THEN REPLY #60594 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60595 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #60596 /* ~"Zerthimon surrendered to the *illithid* punishment rather than reveal his new-found strength. He *knew* that were he to show the hatred in his heart, it would serve nothing, and it would harm others that felt as he. He chose to endure the punishment and was placed within the Pillars of Silence so he might suffer for a turning."~ */
  IF ~~ THEN REPLY #60597 /* ~Continue reading the symbols...~ */ GOTO 27
  IF ~~ THEN REPLY #60598 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60599 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #60600 /* ~"Lashed upon the Pillars, Zerthimon moved his mind to a place where pain could not reach, leaving his body behind. He lasted a turning, and when he was brought before Arlathii Twice-Deceased, he gave gratitude for his punishment to the *illithid* as was custom. In so doing, he proved himself a slave in the *illithid* eyes while his heart remained free."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60601 /* ~Finish reading the symbols.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",6)
~ GOTO 28
  IF ~  !Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #67275 /* ~Finish reading the symbols.~ */ GOTO 28
  IF ~~ THEN REPLY #60602 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60603 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #60604 /* ~"By enduring and quenching the fires of his hatred, he allowed Arlathii Twice-Deceased to think him weak. When the time of the Rising came, Arlathii was the first of the *illithid* to *know* death by Zerthimon's hand and die a third death."~ */
  IF ~~ THEN REPLY #60605 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60606 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 1.14 12.2
  SAY #60607 /* ~"*Know* that the Rising of the People against the *illithid* was a thing built upon many ten-turnings of labor. Many of the People were gathered and taught in secret the ways of defeating their *illithid* masters. They were taught to shield their minds, and use them as weapons. They were taught the scripture of steel, and most importantly, they were given the *knowing* of freedom."~ */
  IF ~~ THEN REPLY #60608 /* ~Continue reading the symbols...~ */ GOTO 30
  IF ~~ THEN REPLY #60609 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60610 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #60611 /* ~"Some of the People learned the nature of freedom and took it into their hearts. The *knowing* gave them strength. Others feared freedom and kept silent. But there were those that *knew* freedom and *knew* slavery, and it was their choice that the People remain chained. One of these was Vilquar."~ */
  IF ~~ THEN REPLY #60612 /* ~Continue reading the symbols...~ */ GOTO 31
  IF ~~ THEN REPLY #60613 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60614 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #60615 /* ~"Vilquar saw no *freedom* in the Rising, but opportunity. He saw that the *illithid* had spawned across many of the False Worlds. Their Worlds numbered so many that their vision was turned only outwards, to all they did not already touch. Vilquar's eye saw that much took place that the *illithid* did not see. To the Rising, the *illithid* were blinded."~ */
  IF ~~ THEN REPLY #60616 /* ~Continue reading the symbols...~ */ GOTO 32
  IF ~~ THEN REPLY #60617 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60618 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #60619 /* ~"Vilquar came before his master, the *illithid* Zhijitaris, with the *knowing* of the Rising. Vilquar added to his chains and offered to be their eyes against the Rising. In exchange, Vilquar asked that he be rewarded for his service. The *illithid* agreed to his contract."~ */
  IF ~~ THEN REPLY #60620 /* ~Continue reading the symbols...~ */ GOTO 33
  IF ~~ THEN REPLY #60628 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60629 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #60630 /* ~"At the bonding of the contract, a dark time occurred. Many were the betrayals Vilquar committed and many were the People that the *illithids* fed upon to stem the Rising. It seemed that the Rising would die before it could occur, and the *illithid* were pleased with Vilquar's eye."~ */
  IF ~~ THEN REPLY #60631 /* ~Continue reading the symbols...~ */ GOTO 34
  IF ~~ THEN REPLY #60634 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60637 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #60638 /* ~"It was near the end of this dark time when Zerthimon came to *know* Vilquar's treacheries. In *knowing* Vilquar's eye, Zerthimon forced the Rising to silence itself, so that Vilquar might think at last his treacheries had succeeded, and the Rising had fallen. He *knew* that Vilquar's eye was filled only with the reward he had been promised. He would see what he wished to see."~ */
  IF ~~ THEN REPLY #60639 /* ~Continue reading the symbols...~ */ GOTO 35
  IF ~~ THEN REPLY #60640 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60641 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #60642 /* ~"With greed beating in his heart, Vilquar came upon the *illithid* Zhijitaris and spoke to his master of his success. He said that the Rising had fallen, and the *illithids* were safe to turn their eyes outwards once more. He praised their wisdom in using Vilquar's eye, and he asked them for his reward."~ */
  IF ~~ THEN REPLY #60643 /* ~Continue reading the symbols...~ */ GOTO 36
  IF ~~ THEN REPLY #60644 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60645 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #60646 /* ~"In his greed-blindness, Vilquar had forgotten the *knowing* of why the People had sought freedom. He had lost the *knowing* of what slavery meant. He had forgotten what his *illithid* masters saw when they looked upon him. And so Vilquar's betrayal of the People was ended with another betrayal. Vilquar came to *know* that when Vilquar's eye had nothing left to see, Vilquar's eye was useless." ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60647 /* ~Finish reading the symbols.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",8)
~ GOTO 37
  IF ~  !Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #67276 /* ~Finish reading the symbols.~ */ GOTO 37
  IF ~~ THEN REPLY #60649 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60651 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #60652 /* ~"The *illithid* gave to Vilquar his reward, opening the cavity of his skull and devouring his brain. Vilquar's corpse was cast upon the Fields of Husks so its blood might water the poison-stemmed grasses."~ */
  IF ~~ THEN REPLY #60653 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60654 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 1.15 12.3
  SAY #60655 /* ~"Zerthimon was the first to *know* the way of freedom. Yet it was not he that first came to *know* the way of rebellion."~ */
  IF ~~ THEN REPLY #60656 /* ~Continue reading the symbols...~ */ GOTO 39
  IF ~~ THEN REPLY #60657 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60658 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #60659 /* ~"The *knowing* of rebellion came to the warrior-queen Gith, one of the People. She had served the *illithids* upon many of the False Worlds as a soldier, and she had come to *know* war and carried it in her heart. She had come to *know* how others might be organized to subjugate others. She *knew* the paths of power, and she *knew* the art of taking from the conquerors the weapons by which they could be defeated. Her mind was focused, and both her will and her blade were as one."~ */
  IF ~~ THEN REPLY #60660 /* ~Continue reading the symbols...~ */ GOTO 40
  IF ~~ THEN REPLY #60661 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60662 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #60663 /* ~"The turning in which Zerthimon came to *know* Gith, Zerthimon ceased to *know* himself. Her words were as fires lit in the hearts of all who heard her. In hearing her words, he wished to *know* war. He *knew* not what afflicted him, but he *knew* he wished to join his blade to Gith. He wished to give his hate expression and share his pain with the *illithid.*"~ */
  IF ~~ THEN REPLY #60664 /* ~Continue reading the symbols...~ */ GOTO 41
  IF ~~ THEN REPLY #60665 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60666 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #60667 /* ~"Gith was one of the People, but her *knowing* of herself was greater than any Zerthimon had ever encountered. She *knew* the ways of flesh, she *knew* the *illithids* and in *knowing* herself, she was to *know* how to defeat them in battle. The strength of her *knowing* was so great, that all those that walked her path came to *know* themselves."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60668 /* ~Finish reading the symbols.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",10)
~ GOTO 42
  IF ~  !Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #67277 /* ~Finish reading the symbols.~ */ GOTO 42
  IF ~~ THEN REPLY #60669 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60670 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #60671 /* ~"Gith was but one. Her strength was such that it caused others to *know* their strength. And Zerthimon laid his steel at her feet."~ */
  IF ~~ THEN REPLY #60672 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60673 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.16 12.4
  SAY #60674 /* ~"Upon the Blasted Plains, Zerthimon told Gith there cannot be two skies. In the wake of his words, came war."~ */
  IF ~~ THEN REPLY #60675 /* ~Continue reading the symbols...~ */ GOTO 44
  IF ~~ THEN REPLY #60676 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60677 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #60678 /* ~"Upon the Blasted Plains, the People had achieved victory over their *illithid* masters. They *knew* freedom."~ */
  IF ~~ THEN REPLY #60679 /* ~Continue reading the symbols...~ */ GOTO 45
  IF ~~ THEN REPLY #60680 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60683 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #60684 /* ~"Yet before the green fires had died from the battlefield, Gith spoke of continuing the war. Many, still filled with the bloodlust in their hearts, agreed with her. She spoke of not merely defeating the *illithids,* but destroying all *illithids* across the planes. After the *illithids* had been exterminated, they would bring war to all other races they encountered."~ */
  IF ~~ THEN REPLY #60685 /* ~Continue reading the symbols...~ */ GOTO 46
  IF ~~ THEN REPLY #60686 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60687 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #60689 /* ~"In Gith's heart, fires raged. She lived in war, and in war, she *knew* herself. All that her eyes saw, she wanted to conquer."~ */
  IF ~~ THEN REPLY #60690 /* ~Continue reading the symbols...~ */ GOTO 47
  IF ~~ THEN REPLY #60694 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60697 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #60698 /* ~"Zerthimon spoke the beginnings of that which was against Gith's will. He spoke that the People already *knew* freedom. Now they should *know* themselves again and mend the damage that had been done to the People. Behind his words were many other hearts of the People who were weary of the war against the *illithid.*"~ */
  IF ~~ THEN REPLY #60699 /* ~Continue reading the symbols...~ */ GOTO 48
  IF ~~ THEN REPLY #60700 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60701 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #60702 /* ~"*Know* that Gith's heart was not Zerthimon's heart on this matter. She said that the war would continue. The *illithid* would be destroyed. Their flesh would be no more. Then the People would claim the False Worlds as their own. Gith told Zerthimon that they would be under the same sky in this matter. The words were like bared steel."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60703 /* ~Finish reading the symbols.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",12)
~ GOTO 49
  IF ~  !Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #67278 /* ~Finish reading the symbols.~ */ GOTO 49
  IF ~~ THEN REPLY #60707 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60708 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #60709 /* ~"From Zerthimon came the Pronouncement of Two Skies. In the wake of his words came war." ~ */
  IF ~~ THEN REPLY #60710 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60711 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.10
  SAY #60719 /* ~You examine the Circle carefully, studying the links and trying new patterns, but no new Circles reveal themselves.~ */
  IF ~~ THEN REPLY #60720 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60721 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 1.6 1.8
  SAY #60722 /* ~As you examine the rings of the Second Circle, you find a strange link in the plate that mentions the laboring of the Gith people to achieve the Rising. A new circle emerges from the link, and you unlock it, pulling the plate forth so you can study it.~ */
  IF ~~ THEN REPLY #60724 /* ~Read the symbols...~ */ GOTO 53
  IF ~~ THEN REPLY #60725 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60726 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 1.7 1.9
  SAY #60727 /* ~As you examine the rings of the seven Circles of Zerthimon, you suddenly become aware of a pattern in the way the links are formed... you hook your fingers into the sides of the Circle, and unlock a hidden segment, pulling the plate forth so you can study it.~ */
  IF ~~ THEN REPLY #60728 /* ~Read the symbols...~ */ GOTO 57
  IF ~~ THEN REPLY #60730 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60731 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 1.17 51.0
  SAY #60732 /* ~"*Know* that the Rising of the People against the *illithid* was a thing built upon many turnings. Many were the People who lived and died under time's blade while the Rising was shaped."~ */
  IF ~~ THEN REPLY #60733 /* ~Continue reading the symbols...~ */ GOTO 54
  IF ~~ THEN REPLY #60734 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60735 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #60736 /* ~"The Rising was shaped upon a slow foundation. Steel was gathered so that it might mark *illithid* flesh. A means of *knowing* the movements of the *illithids* was established, at first weak and confused, then stronger, like a child finding its voice. When the movements were *known,* then the *illithids* were observed. In observing them, their ways of the mind were *known.*"~ */
  IF ~~ THEN REPLY #60737 /* ~Continue reading the symbols...~ */ GOTO 55
  IF ~~ THEN REPLY #60738 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60739 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #60740 /* ~"When the ways of the *illithid* were *known,* many of the People were gathered and taught in secret the means to shield their minds, and the way to harness their will as weapons. They were taught the scripture of steel, and most importantly, they were given the *knowing* of freedom."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60741 /* ~Finish reading the symbols.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",15)
~ GOTO 56
  IF ~  !Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #67279 /* ~Finish reading the symbols.~ */ GOTO 56
  IF ~~ THEN REPLY #60743 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60744 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 55.1
  SAY #60745 /* ~"These things were not learned quickly. The *knowing* of much of the ways was slow, and in all these things, time's weight fell upon all. From the *knowing* of one's reflection in a steel blade, to the *knowing* of submerging the will, to the *knowing* of seeing itself. All of these things and more the People built upon. In time, they came to *know* the whole."~ */
  IF ~~ THEN REPLY #60746 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60747 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.18 52.0
  SAY #60748 /* ~"*Know* that a mind divided divides the man. The will and the hand must be as one. In *knowing* the self, one becomes strong."~ */
  IF ~~ THEN REPLY #60749 /* ~Continue reading the symbols...~ */ GOTO 58
  IF ~~ THEN REPLY #60750 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60751 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #60752 /* ~"*Know* that if you *know* a course of action to be true in your heart, do not betray it because the path leads to hardship. *Know* that without suffering, the Rising would have never been, and the People would never have come to *know* themselves."~ */
  IF ~~ THEN REPLY #60753 /* ~Continue reading the symbols...~ */ GOTO 59
  IF ~~ THEN REPLY #60754 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60755 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #60756 /* ~"*Know* that there is nothing in all the Worlds that can stand against unity. When all *know* a single purpose, when all hands are guided by one will, and all act with the same intent, the planes themselves may be moved."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60757 /* ~Continue reading the symbols...~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",18)
~ GOTO 60
  IF ~  !Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #67280 /* ~Continue reading the symbols...~ */ GOTO 60
  IF ~~ THEN REPLY #60764 /* ~Stop reading, examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60769 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #60773 /* ~"A divided mind is one that does not *know* itself. When it is divided, it cleaves the body in two. When one has a single purpose, the body is strengthened. In *knowing* the self, grow strong."~ */
  IF ~~ THEN REPLY #60774 /* ~Examine the Circle again.~ */ GOTO 1
  IF ~~ THEN REPLY #60775 /* ~Slide the plates closed and seal the Circle.~ */ EXIT
END
