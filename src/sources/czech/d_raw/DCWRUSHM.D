// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #4513 /* ~Tenhle čistý, dobře oblečený muž má zřejmě někam namířeno.~ */
  IF ~~ THEN REPLY #25733 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #25734 /* ~Nechej ho jít.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25735 /* ~Zastavil se a zírá na tebe. Óóó Já... hm... znám tě, pane?"~ */
  IF ~~ THEN REPLY #25736 /* ~"Ne, ale mám otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #25737 /* ~"Něco špatného na mém vzezření?"~ */ GOTO 23
  IF ~~ THEN REPLY #25738 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #25739 /* ~"Opravdu nemám čas, pane -- Musím někam jít. Tak pokud nevadí..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25740 /* ~"Jen jednu otázku, ano?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25741 /* ~"Jen jednu otázku, ano?"~ */ GOTO 20
  IF ~~ THEN REPLY #25742 /* ~"VADÍ. Teď mi odpověz..."~ */ GOTO 6
  IF ~~ THEN REPLY #25743 /* ~"Sbohem, později."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25744 /* ~Kousl se do rtu, pak přikývl. "To ti nemůžu upřít. Ale žádám tě, ptej se rychle!"~ */
  IF ~~ THEN REPLY #25745 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #25746 /* ~"Co je zde zajímavého?"~ */ GOTO 8
  IF ~~ THEN REPLY #25747 /* ~"Kde tady můžu najít práci?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25748 /* ~"Jen potřebuju poradit směr..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25749 /* ~"Co víš o Ravelině záhadě?"~ */ GOTO 21
  IF ~~ THEN REPLY #25750 /* ~"To nic. Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25751 /* ~Zvláštně se na tebe podíval. "Proč, toto je - Úřednická čtvrť. Možná... ses ztratil? Och, to se stane. Musím běžet! Sbohem..."~ */
  IF ~~ THEN REPLY #25752 /* ~"Počkat... Mám víc otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #25753 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25754 /* ~"Já měl ale čas jen na jednu otázku. Možná v pouličních kavárnách najdeš někoho, kdo bude mít na tebe více času. Nyní sbohem..."~ */
  IF ~~ THEN REPLY #25755 /* ~"Stát. Zůstaneš tady a zodpovíš mou otázku."~ */ GOTO 6
  IF ~~ THEN REPLY #25756 /* ~"Sbohem, později."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25757 /* ~"Pane! Nemám nyní ani čas, ani náladu na to být obtěžován! Teď se tě ptám: necháš mě jít, nebo mám začít volat o pomoc?"~ */
  IF ~~ THEN REPLY #25758 /* ~"Slibuju, že tě nikdo zachránit nestihne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25759 /* ~"Nikoho nezavoláš, víš-li co je pro tebe dobrý."~ */ GOTO 7
  IF ~~ THEN REPLY #25760 /* ~"Pardón. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #25761 /* ~"Sbohem, později."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25762 /* ~Začal couvat a volat o pomoc jak nejsilněji dokázal: "Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #25763 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25764 /* ~Odejdi, než někdo přijde.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25765 /* ~"Tady v Úřednické čtvrti je toho k vidění spoustu... a v této její části víc, než kde jinde! Městská hala, samozřejmě, Galerie umění a kuriozit a Nevěstinec duševních rozkoší..." Slastně si oddychnul, ztrácejíc se v myšlenkách.~ */
  IF ~~ THEN REPLY #25766 /* ~"Ještě něco?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25767 /* ~Zamyslel se. "Hmm. Dobře, je zde krejčí, lékárna, advokátův dům. Ááá a katakomby pod čtvrtí. A ještě ten malý divný obchod kuriozit." Pokrčil rameny. "Myslím, že víc než dost pro zabavení kohokoliv. Užij si to a sbohem!"~ */
  IF ~~ THEN REPLY #25768 /* ~"Měl bych otázku o jednom zmiňovaném místě ..."~ */ GOTO 5
  IF ~~ THEN REPLY #25769 /* ~"Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25770 /* ~"Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25771 /* ~Chvíli přemýšlel. "Můžeš zkusit lékárnu. Nebo advokáta. A samozřejmě, můžeš zkusit Radnici... možná mají nějakou příležitostnou práci. Hodně štěstí, pane... sbohem."~ */
  IF ~~ THEN REPLY #25772 /* ~"Měl bych otázku o jednom zmiňovaném místě ..."~ */ GOTO 5
  IF ~~ THEN REPLY #25773 /* ~"Můžu se zeptat na něco jiného..." ~ */ GOTO 5
  IF ~~ THEN REPLY #25774 /* ~"Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25775 /* ~"A jaký místo hledáš?"~ */
  IF ~~ THEN REPLY #25776 /* ~"Advokátův dům."~ */ GOTO 12
  IF ~~ THEN REPLY #25777 /* ~"Lékárnu."~ */ GOTO 13
  IF ~~ THEN REPLY #25778 /* ~"Obchod s uměním."~ */ GOTO 14
  IF ~~ THEN REPLY #25779 /* ~"Nevěstinec."~ */ GOTO 15
  IF ~~ THEN REPLY #25780 /* ~"Katakomby pod čtvrtí."~ */ GOTO 16
  IF ~~ THEN REPLY #25781 /* ~"Městskou halu."~ */ GOTO 17
  IF ~~ THEN REPLY #25782 /* ~"Obchod kuriozit."~ */ GOTO 18
  IF ~~ THEN REPLY #25783 /* ~"Krejčího."~ */ GOTO 19
  IF ~~ THEN REPLY #25784 /* ~"To nic. Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25785 /* ~"Dům Iannise je jižně od brány do Dolní čtvrti -- tam, kudy jsi sem nejspíš poprvé přišel. Mělo by to být na východní straně cesty."~ */
  IF ~~ THEN REPLY #25786 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25787 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25788 /* ~"Jdi po cestě, co vede východně od brány do Dolní čtvrti - je to tam, kudy jsi sem nejspíš poprvé přišel. Když cesta zatočí severovýchodně a jihovýchodně, běž do jižní čtvrti... najdeš ho tam, západně od cesty. Je otočený do jižní čtvrti poznáš ho podle tří oken z barevného skla."~ */
  IF ~~ THEN REPLY #25789 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25790 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25791 /* ~"Jdi po cestě, co vede východně od brány do Dolní čtvrti - je to tam, kudy jsi sem nejspíš poprvé přišel, aspoň doufám. Když cesta zatočí severovýchodně a jihovýchodně, běž do jižní čtvrti... najdeš ho tam západně od cesty. Je otočený do jižní čtvrti a má střechu, jejíž tašky jsou podepřeny velkými kameny."~ */
  IF ~~ THEN REPLY #25792 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25793 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25794 /* ~"Nevěstinec duševních rozkoší, ech?" Vědoucně se usmál. "Je to jednoduše východně od brány do Dolní Čtvrti - tam, kudy jsi sem nejspíš poprvé přišel. Je to velká, kruhová budova, jejíž vchod je otočen na jih."~ */
  IF ~~ THEN REPLY #25795 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25796 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25797 /* ~Zamračil se. "Hmm. Je zde víc než jeden vchod, vím to... ale vím ještě trochu víc. Varuju tě, ačkoli nic z těchto katakomb doposud nevylezlo... nevyšel ani nikdo, kdo do nich vstoupil."~ */
  IF ~~ THEN REPLY #25798 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25799 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25800 /* ~"Najít halu je velice jednoduchý, pane. 'Je to ta masivní stavba v jihovýchodní části této oblasti.~ */
  IF ~~ THEN REPLY #25801 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25802 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25803 /* ~"Nikdy jsem tam nebyl, ale vím, jak se tam dostat - je to v jihovýchodní části této čtvrti. Zvláštní budova, s řadou strmých schodů až nahoru. Opravdu těžké ji minout."~ */
  IF ~~ THEN REPLY #25804 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25805 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25806 /* ~"Obchod krejčího jednoduše najdeš severovýchodně od brány do Dolní čtvrti - tam, kudy jsi sem pravděpodobně poprvé přišel. Je to ta široká budova s vchodem směrem k jižní čtvrti."~ */
  IF ~~ THEN REPLY #25807 /* ~"Díky. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25808 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25809 /* ~"Možná někdo v pouličních kavárnách bude mít na vás více času. Nyní, sbohem..."~ */
  IF ~~ THEN REPLY #25810 /* ~"Stůj. Zůstaneš tady a zodpovíš mé otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #25811 /* ~"Sbohem, později."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25812 /* ~"Ech?" Chvíli vypadal zmatený... pak se jeho oči rozzářily, jak kdyby si náhle na něco vzpomněl. "Aaa! Noční čarodějnice, ano? Pamatuji si na příběhy, které jsem o ní slyšel jako dítě..."~ */
  IF ~~ THEN REPLY #25813 /* ~"Dětské příběhy?"~ */ GOTO 22
  IF ~~ THEN REPLY #25814 /* ~"Aha. Můžu se zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #25815 /* ~"Díky, to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25816 /* ~Přikývl. "Ano. Ona je mýtus, ne? Čarodějka, co se pokoušela zničit Sigil?" Náhle se zamračil. "Bude nejlepší, když už půjdu... sbohem."~ */
  IF ~~ THEN REPLY #25817 /* ~"Počkej. Mám další otázku..."~ */ GOTO 5
  IF ~~ THEN REPLY #25818 /* ~"Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #25819 /* ~"Ne, pane, to není vše! Dobře... ech..." Ukazujíc na tvé zjizvené, nahé torso. "Jsi, možná, trochu víc... jak to říct, 'divoce-vypadající,' než typičtí obyvatelé, ne? Nic ve zlém, pane."~ */
  IF ~~ THEN REPLY #25820 /* ~"Nic se neděje. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #25821 /* ~"Nic dalšího nepotřebuji. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25822 /* ~"Znovu se setkáme, pane. Jestli mě omluvíš, trochu pospíchám. Sbohem..."~ */
  IF ~~ THEN REPLY #25823 /* ~"Počkej. Mám otázku..."~ */ GOTO 25
  IF ~~ THEN REPLY #25824 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25825 /* ~"Jak jsem řek, pane, mám hrozně naspěch. Možná najdeš někoho, kdo má víc času v jedné z pouličních kaváren. Nyní sbohem..."~ */
  IF ~~ THEN REPLY #25826 /* ~"Stůj. Zůstaneš tady a odpovíš na moje otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #25827 /* ~"Sbohem, později."~ */ EXIT
END
