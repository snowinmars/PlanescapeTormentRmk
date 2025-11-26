// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ310.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ310~

IF ~  Global("Oinosian","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6495 /* ~Tato oživená mrtvola má sešité rty a do obočí má vyřezané číslo "310"; pach formaldehydu prostupuje oblast kolem ní. Když jí zastoupíš cestu, otáčí své neživé oči na tebe.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6499 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6500 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6501 /* ~"Vím, že nejsi zombie, jasný? Mě neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6502 /* ~Použij svoji schopnost Kosti vyprávějte na mrtvolu.~ */ DO ~SetGlobal("Oinosian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6503 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6504 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6496 /* ~Mrtvola na tebe stále zírá.~ */
  IF ~~ THEN REPLY #6505 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6498 /* ~Na chvíli si myslíš, že tato mrtvola je příliš stará na to, aby mohla odpovědět... ale náhle rozpoznáváš v jejích rysech skutečné utrpení a tvé smysly za tím vycítily hluboké zoufalství z toho, že se duše musela vrátit zpět do své staré schránky.~ */
  IF ~~ THEN REPLY #6506 /* ~"Rád bych ti položil otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9657 /* ~Nechej ducha odpočívat v pokoji.~ */ GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
  SAY #9642 /* ~Mrtvola promluvila hlubokým jednotvárným hlasem, z něhož čpí zklamání a beznaděj. Dokonce se dá říct, že je k nerozeznání od hlasu zombie. "Co potřebuješ, pane můj?"~ */
  IF ~~ THEN REPLY #9658 /* ~"Kdo vlastně jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #9659 /* ~"Odkud pocházíš?"~ */ GOTO 5
  IF ~~ THEN REPLY #9660 /* ~"Jak ses sem dostal? Teda myslím tvé tělo?"~ */ GOTO 6
  IF ~~ THEN REPLY #9661 /* ~"Kde jsi... kde tvá duše spočívá... teď?"~ */ GOTO 7
  IF ~~ THEN REPLY #9662 /* ~"Proč propadáš takovéto beznaději?"~ */ GOTO 8
  IF ~~ THEN REPLY #9663 /* ~"Co všechno víš o tomto místě?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9664 /* ~"Neznáš náhodou muže jménem Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9665 /* ~"Vlastně nic. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9643 /* ~Duch mluví tak tiše, že musíš napínat své uši, abys ho vůbec slyšel; mrtvolná ústa se jen stěží pohybují, aby vyprodukovala slova. "Jsem nikdo, pane můj; jen troska hmyzu, zoufale oddaná Pusté věži v Oinosu. Jednou jsem byl nazýván Arabhiemem, ale to bylo, pane můj... to bylo. Před dlouhou, velmi dlouhou dobou."~ */
  IF ~~ THEN REPLY #9666 /* ~"Říkal jsi Pustá věž?"~ */ GOTO 13
  IF ~~ THEN REPLY #9667 /* ~"Oinos?"~ */ GOTO 7
  IF ~~ THEN REPLY #9668 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9669 /* ~"Teď už vlastně nic nepotřebuju. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #9644 /* ~"Žil jsem v Sigilu, pane můj. V Úlu. Nebylo to tak hrozné místo, jak jsem dříve myslil, avšak teď je mým domovem... Oinos." Mrtvola mrkla tak pomalu, až ti připadalo, že pouze zavřela své oči.~ */
  IF ~~ THEN REPLY #9670 /* ~"V Úlu?"~ */ GOTO 12
  IF ~~ THEN REPLY #9671 /* ~"Oinos?"~ */ GOTO 7
  IF ~~ THEN REPLY #9672 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9673 /* ~"Tak to je prozatím vše. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #9645 /* ~"Byl jsem zavražděn, pane můj, zavražděn lupiči. Pln alkoholu jsem klopýtal ulicemi Úlu, až jsem se ztratil a padl jsem za oběť bandě pobudů. Avšak přesto; můj život pravděpodobně nebyl cennějším, než těch několik měděných, které za mě mohl Sběrač dostat."~ */
  IF ~~ THEN REPLY #9674 /* ~"Proč svým životem tak opovrhuješ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9675 /* ~"Sběrač?"~ */ GOTO 15
  IF ~~ THEN REPLY #9676 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9677 /* ~"Tak to je prozatím vše. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 8.0 12.0
  SAY #9646 /* ~Duch na okamžik zavřel své oči, jeho mrtvé tělo se jemně chvělo. "V úděsném Oinosu, pane můj. V Šedé pustině. Tam byla upoutána má mysl, ve stínu Khin-Oin, Pusté věže."~ */
  IF ~~ THEN REPLY #9678 /* ~"Pověz mi více o tom... Oinosu."~ */ GOTO 11
  IF ~~ THEN REPLY #9679 /* ~"Khin-Oin?"~ */ GOTO 13
  IF ~~ THEN REPLY #9680 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9681 /* ~"Teď už vlastně nic nepotřebuju. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #9647 /* ~"Tady už pro mě nic není, pane můj. Jsem uvězněn v pusté šedi zničeného Oinosu. Pro takového, jako jsem já, už není naděje." Zdá se, že se duch propadl do ještě větší beznaděje, pod tíhou zármutku se mu podlamují kolena.~ */
  IF ~~ THEN REPLY #9682 /* ~"Oinos?"~ */ GOTO 7
  IF ~~ THEN REPLY #9683 /* ~"Aha. Chtěl bych se zeptat ještě na něco..."~ */ GOTO 3
  IF ~~ THEN REPLY #9684 /* ~"Tak to je prozatím vše. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 9 // from: 3.5 15.0
  SAY #9648 /* ~"Pouze hodně málo, pane můj; jen to, že sem jsou odnášeni mrtví, aby byli pohřbeni nebo spáleni... nebo použiti jako pomocníci - stejně jako moje tělo."~ */
  IF ~~ THEN REPLY #9685 /* ~"Ach tak. Mno, měl bych ještě otázečku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9686 /* ~"Teď už vlastně nic nepotřebuju. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 3.6
  SAY #9649 /* ~Mrtvola pomalu zatřásla hlavou ze strany na stranu. "Kdepak, pane můj. Neznám nikoho s takovým jménem. Je mi líto, pane můj."~ */
  IF ~~ THEN REPLY #9687 /* ~"Mohl bych se ještě na něco zeptat?"~ */ GOTO 3
  IF ~~ THEN REPLY #9688 /* ~"Tak tedy sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #9650 /* ~"Tady není co povědět, pane můj. Je to země mého Pána, Lorda Khin-Oina... je plná utrpení a chorob, hniloby, která pohlcuje těla i duše. Je to místo naprosté beznaděje."~ */
  IF ~~ THEN REPLY #9689 /* ~"Kdo je ten... Pán?'"~ */ GOTO 14
  IF ~~ THEN REPLY #9690 /* ~"Khin-Oinu?"~ */ GOTO 13
  IF ~~ THEN REPLY #9691 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9692 /* ~"Zní to tak. Sbohem, duchu."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 5.0
  SAY #9651 /* ~"Ano, pane můj. Je to bídné místo, avšak ne tak, jak Oinos."~ */
  IF ~~ THEN REPLY #9693 /* ~"Oinos?"~ */ GOTO 7
  IF ~~ THEN REPLY #9694 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9695 /* ~"Tak to je prozatím vše. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 4.0 7.1 11.1 14.0
  SAY #9652 /* ~"Ano, pane můj. Je to ohromná věž, je mnohem vyšší než ty nejvyšší věže celého Sigilu.  Vypadá jako kost, pane můj -- jako páteř nějakého obrovitého stvoření. A právě na tomto místě musím dřít a opravovat poškození, která věži způsobily armády Pánových nepřátel, jeho knížecích soků."~ */
  IF ~~ THEN REPLY #9696 /* ~"Kdo je ten... Pán?'"~ */ GOTO 14
  IF ~~ THEN REPLY #9697 /* ~"Aha. Měl bych ještě jednu otázečku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9698 /* ~"Asi bych tě už měl opustit. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0
  SAY #9653 /* ~"Znám ho jen jako Pána, pane můj; Lorda of Khin-Oinu. On je fiendským knížetem -- a vládne děsivou silou. Právě on vlastní mou duši a bude ji vlastnit dále navěky. Mou duši - nepatrné zrnko prachu - jež je předurčena umdlévat pod jeho nohama, dokud vody věčnosti nevymelou mou cestu k Zapomnění."~ */
  IF ~~ THEN REPLY #9699 /* ~"Pověz mi o tom 'Khin-Oinu.'"~ */ GOTO 13
  IF ~~ THEN REPLY #9700 /* ~"Měl bych další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9701 /* ~"Tak to by bylo prozatím všechno. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 6.1
  SAY #9654 /* ~"Ano, pane můj, Sběrač. Sběrači jsou ti, kteří v ulicích města hledají mrtvé a pak je vláčí do Márnice -- místa, kde teď stojíme -- za nepatrnou odměnu." Duch si udělal chviličku času, aby se mohl porozhlédnout kolem. Potom se zase otočil zpět a tiše si povzdechl.~ */
  IF ~~ THEN REPLY #9702 /* ~"Co všechno víš o této Márnici?"~ */ GOTO 9
  IF ~~ THEN REPLY #9703 /* ~"Aha. Mám pro tebe ještě jednu otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9704 /* ~"Tak to je prozatím vše. Sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 6.0
  SAY #9655 /* ~"O tom nechci mluvit, pane můj. Nestojí to ani za řeč." Zdá se, že duch je v tomto mínění neochvějný.~ */
  IF ~~ THEN REPLY #9705 /* ~"Fajn. Měl bych ještě další otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #9706 /* ~"Tak tedy sbohem."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
  SAY #9656 /* ~Nebyl bys býval postřehnul, že duch opustil tělo, dokud se šoupavými kroky nevrátila zombie opět ke své práci.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Oinosian","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #20102 /* ~Mrtvola jakoby se scvrkla, nahrbila se váhou duchova zoufalství.~ */
  IF ~~ THEN REPLY #20103 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #20104 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END
