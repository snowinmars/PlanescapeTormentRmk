// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR2~

IF ~  Global("RChaser","AR0400",0)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15606 /* ~Tenhle umouněný Sběrač zírá kdovíkam a vypadá zdánlivě netečný ke svému okolí.~ */
  IF ~~ THEN REPLY #15721 /* ~"Zdravím vás..."~ */ GOTO 1
  IF ~~ THEN REPLY #15722 /* ~Zaútoč na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15723 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 65.0
  SAY #15607 /* ~Cukne sebou, vyrušený ze svého soustředění. Když tě spatří, hrozně se vyděsí.~ */
  IF ~~ THEN REPLY #15724 /* ~"Musíme si promluvit..."~ */ GOTO 2
  IF ~~ THEN REPLY #15725 /* ~Zaútoč na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15726 /* ~"Jen jdu okolo. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #15608 /* ~"Á... É... o čem si chcete popovídat, pane?"~ */
  IF ~~ THEN REPLY #15727 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 3
  IF ~~ THEN REPLY #15728 /* ~"Co ten přívěšek, který máš?"~ */ GOTO 53
  IF ~~ THEN REPLY #15729 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15730 /* ~"Nic, nevadí. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 53.0
  SAY #15617 /* ~"Co? Ne, pane! Já nevím, co jste... jste..." Když uviděl tvůj vážný pohled, ztichl a vzdychl. Když opět promluvil, jeho hlas byl klidný a vyrovnaný: "Tak tedy dobře. A jak ses dozvěděl o mém tajemství?"~ */
  IF ~~ THEN REPLY #15731 /* ~"Lovec krys mi o tobě řekl."~ */ GOTO 4
  IF ~~ THEN REPLY #15732 /* ~"Párek fiendů mi to řekl."~ */ GOTO 8
  IF ~~ THEN REPLY #15733 /* ~"To se tě netýká. Mám otázky..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #15619 /* ~"Lovec krys? Zvláštní." Na chviličku se poškrábal na bradě. "Hmm. Znáš jméno této osoby?"~ */
  IF ~~ THEN REPLY #15734 /* ~"Ano. Říkalo se jim Ratbone."~ */ GOTO 5
  IF ~~ THEN REPLY #15736 /* ~Lež: "Ne, já ne."~ */ GOTO 6
  IF ~~ THEN REPLY #15738 /* ~"Nemohu říct."~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #15621 /* ~"Chápu; Díky vám." Zarazí se, pravděpodobně, aby si vzpomněl na jméno. "Teď, kvůli čemu jsi za mnou přišel?"~ */
  IF ~~ THEN REPLY #15742 /* ~"Pro tvůj přívěšek."~ */ GOTO 12
  IF ~~ THEN REPLY #15743 /* ~"Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15745 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15748 /* ~"Pro nic, opravdu. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #15623 /* ~Smutně zavrtí hlavou. "Škoda. A teď, co tě přivedlo k mým dveřím?"~ */
  IF ~~ THEN REPLY #15787 /* ~"Za tvůj přívěsek."~ */ GOTO 12
  IF ~~ THEN REPLY #15788 /* ~"Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15789 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15793 /* ~"Ani za nic, opravdu. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.2
  SAY #15624 /* ~Smutně zavrtí hlavou. "Srozuměno; po tom všem, co ti mohu nabídnout výměnou za takovou informaci? Byl bys blázen, kdybys zradil jejich totožnost pro nic za nic... pokud jsi jim ovšem nechtěl ublížit. Tedy proč jsi za mnou přišel?"~ */
  IF ~~ THEN REPLY #15796 /* ~"Za tvůj přívěsek."~ */ GOTO 12
  IF ~~ THEN REPLY #15799 /* ~"Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15801 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15803 /* ~"Ani za ni, opravdu. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #15625 /* ~Vypadá nedůvěřivě. "Co?! Taková věc je nemožná! Jak mohou... jak se opovážili!" Jeho oči potemněly a jeho rty se stáhly ze zkažených a křivých zubů. "Kdo? Jak se jmenovali? Víš to?"~ */
  IF ~~ THEN REPLY #15804 /* ~"Ano. Aethelgrin a Tegar'in Trojprokletý."~ */ GOTO 9
  IF ~~ THEN REPLY #15805 /* ~Lež: "Ne."~ */ GOTO 10
  IF ~~ THEN REPLY #15806 /* ~"To nemohu říct."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #15627 /* ~Šklebí se. "Trojprokletí, vskutku! Ó, jak by mohli zaplatit? Měl bych je vidět trpět alespoň tisíc let!" Pak se uklidní. "Proč ji za mnou přišel?"~ */
  IF ~~ THEN REPLY #15807 /* ~"Za tvůj přívěsek."~ */ GOTO 12
  IF ~~ THEN REPLY #15808 /* ~"Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15809 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15810 /* ~"Ani za ni, opravdu. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #15629 /* ~Zašklebil se a naštvaně sevřel ruce v pěst. "Áaaa! Já je najdu... ó, jak by mohli zaplatit? Měl bych je vidět trpět alespoň tisíc let!" Pak se uklidní. "Proč jsi za mnou přišel?"~ */
  IF ~~ THEN REPLY #15811 /* ~"Za tvůj přívěsek."~ */ GOTO 12
  IF ~~ THEN REPLY #15812 /* ~"Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15813 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15814 /* ~"Ani za ni, opravdu. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY #15631 /* ~"Opravdu? Tak proč jsi za mnou přišel?"~ */
  IF ~~ THEN REPLY #15815 /* ~"Za tvůj přívěsek."~ */ GOTO 12
  IF ~~ THEN REPLY #15816 /* ~"Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15817 /* ~"Tvá smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15818 /* ~"Ani za ni, opravdu. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 6.0 7.0 9.0 10.0 11.0 54.5
  SAY #15632 /* ~"Hmm?" Vypadá zmateně. "A co by to mělo být za přívěšek?"~ */
  IF ~~ THEN REPLY #15819 /* ~"Neplýtvej mým časem. Ty víš o čem mluvím."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15820 /* ~"Ty nemáš přívěsek, který vypadá jako lebka?"~ */ GOTO 13
  IF ~~ THEN REPLY #15821 /* ~"Nevadí. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15822 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #15633 /* ~"Proč, ne... nic takového, opravdu. Kde jsi přišel na takovou myšlenku?"~ */
  IF ~~ THEN REPLY #15823 /* ~"Neplýtvej mým časem. Ty víš o čem mluvím."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15824 /* ~"Nebude ti vadit, když tě prohledám..."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15825 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15826 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 13.1
  SAY #15635 /* ~Vzdychne. "Opět, velmi dobře. A co bys o tomhle přívěšku chtěl vědět?"~ */
  IF ~~ THEN REPLY #15827 /* ~"Musím ho mít."~ */ GOTO 15
  IF ~~ THEN REPLY #15828 /* ~"Co to vlastně je?"~ */ GOTO 16
  IF ~~ THEN REPLY #15829 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 15 // from: 14.0 54.6
  SAY #15637 /* ~"Ale..." poodstoupí od tebe o krok. "Nemohu to ztratit! Tomu ty nerozumíš... To mohu rovnou zemřít!"~ */
  IF ~~ THEN REPLY #15830 /* ~"Potom tedy zahyneš..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15831 /* ~"Ale proč? Co to vlastně je?"~ */ GOTO 16
  IF ~~ THEN REPLY #15832 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1 54.2
  SAY #15639 /* ~"Je to nádoba, nic víc. Přívěšek může zachytit duše, které prchají ze svého těla, a uvězní je dříve, než se dostanou do Sféry, která jim je souzena."~ */
  IF ~~ THEN REPLY #15833 /* ~"Proč by někdo vytvořil takovou věc?"~ */ GOTO 17
  IF ~~ THEN REPLY #15834 /* ~"Na co to potřebuješ?"~ */ GOTO 22
  IF ~~ THEN REPLY #15835 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15836 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15837 /* ~"Mám pár dalších otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15838 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #15641 /* ~"Byl objednán smrtelným kouzelníkem nemalé síly, Yemethem. Hledal nesmrtelnost, ale představa, že by se stal lichem se mu nelíbila. Podle jeho záznamů jej inspirovalo k sestrojení tohoto artefaktu studium nejtemnějších nekromantských svazků. Pomocí něj mohl chytat duše a používat jejich esenci aby prodloužil svou existenci, doplňujíc svou životní sílu jak postupně slábla."~ */
  IF ~~ THEN REPLY #15839 /* ~"Lich?"~ */ GOTO 21
  IF ~~ THEN REPLY #15840 /* ~"Kdo skutečně vyrobil ten přívěsek?"~ */ GOTO 18
  IF ~~ THEN REPLY #15841 /* ~"Jak ale potom ten přívěsek ztratil?"~ */ GOTO 19
  IF ~~ THEN REPLY #15842 /* ~"Může to být použito ke zvýšení síly?"~ */ GOTO 20
  IF ~~ THEN REPLY #15847 /* ~"Na co to potřebuješ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #15852 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15859 /* ~"Mám pár dalších otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15864 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0 20.0 21.0
  SAY #15643 /* ~"Jejich totožnost se časem ztratila. Několik tvůrců artefaktů tvrdí, že to byli oni a existují i zprávy, že ta věc byla stvořena fiendy."~ */
  IF ~~ THEN REPLY #15865 /* ~"Proč Yemeth ztratil přívěsek?"~ */ GOTO 19
  IF ~~ THEN REPLY #15866 /* ~"Může se to použít ke zvýšení síly?"~ */ GOTO 20
  IF ~~ THEN REPLY #15868 /* ~"Na co to potřebuješ?"~ */ GOTO 22
  IF ~~ THEN REPLY #15870 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15871 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15872 /* ~"Mám pár dalších otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #15874 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.0 20.1 21.1
  SAY #15650 /* ~"Byl zničen během obrovské magické bitvy, nejspíše s nějakým mocným rivalem... prý z něj nezbylo nic, co by mohl přívěšek pohánět. Ten pak několikrát změnil majitele, až se dostal ke mně."~ */
  IF ~~ THEN REPLY #16006 /* ~"Kdo skutečně vyrobil ten přívěsek?"~ */ GOTO 18
  IF ~~ THEN REPLY #16007 /* ~"Může být použit ke zvýšení síly?"~ */ GOTO 20
  IF ~~ THEN REPLY #16008 /* ~"Na co to potřebuješ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16009 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16010 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16011 /* ~"Mám pár dalších otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16012 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.2
  SAY #15654 /* ~"Pravděpodobně ano, ale osobně nevím jak. Je to jednoduchá nádoba - její různá použití vyžadují rituály a kouzla, která mohla být dávno ztracena, některá možná zmizela se samotným Yemethem."~ */
  IF ~~ THEN REPLY #16013 /* ~"Kdo skutečně vyrobil ten přívěsek?"~ */ GOTO 18
  IF ~~ THEN REPLY #16014 /* ~"Potom ale, jak ten přívěsek ztratil?"~ */ GOTO 19
  IF ~~ THEN REPLY #16015 /* ~"Na co to potřebuješ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16016 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16017 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16018 /* ~"Mám pár dalších otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16019 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0
  SAY #15657 /* ~Potichu vzdychne. "Proces během kterého se smrtelný kouzelník nebo klerik promění v nemrtvou bytost velké síly. Proces je dlouhý a náročný - trvá roky a vyžaduje obrovská množství prastarých ingrediencí - a ne vždy se povede. Lich, který vznikne, je cosi jako samostatně myslící nemrtvý, jako upír, který si zachoval svou mysl a schopnosti, které měl za svého života."~ */
  IF ~~ THEN REPLY #16020 /* ~"Kdo ten přívěsek doopravdy vyrobil?"~ */ GOTO 18
  IF ~~ THEN REPLY #16021 /* ~"Jak Yemeth ten přívěsek ztratil?"~ */ GOTO 19
  IF ~~ THEN REPLY #16022 /* ~"Může být přívěsek použit ke zvýšení síly?"~ */ GOTO 20
  IF ~~ THEN REPLY #16023 /* ~"Na co ten přívěsek potřebuješ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16024 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16025 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16026 /* ~"Mám pár dalších otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16027 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1 17.4 18.2 19.2 20.2 21.3 54.0
  SAY #15659 /* ~"Tenhle příběh je velmi dlouhý. Jestli skutečně chceš znát mé důvody, musím začít na úplném začátku."~ */
  IF ~~ THEN REPLY #16028 /* ~"Výborně. pokračuj..."~ */ DO ~SetGlobal("RC_Tale","AR0400",1)
~ GOTO 23
  IF ~~ THEN REPLY #16029 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16030 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16031 /* ~"Příště, snad. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16032 /* ~"Možná příště. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 54.1
  SAY #15661 /* ~"Jak sis již všiml, jsem baatezu - fiend. Jsem z druhu nazývaného 'Erinyes,' ďábelské svůdkyně. Má pravá podoba je nepředstavitelně krásná, tak krásná, že se mužům začne vařit krev touhou, a nádherné ženy skřípají zuby žárlivostí."~ */
  IF ~~ THEN REPLY #16033 /* ~"Jak tomu mám věřit?"~ */ GOTO 24
  IF ~~ THEN REPLY #16034 /* ~"Aha. Do toho..."~ */ GOTO 25
  IF ~~ THEN REPLY #16035 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16036 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16037 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16038 /* ~"To je vše co jsem pro tuto chvíli potřeboval vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #15662 /* ~"Všechno ti vysvětlím v pravý čas. Budeš poslouchat, nebo ne?"~ */
  IF ~~ THEN REPLY #16039 /* ~"Ano. Do toho..."~ */ GOTO 25
  IF ~~ THEN REPLY #16040 /* ~Pravda: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16041 /* ~Bluf: "Tak dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16042 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16043 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #15663 /* ~"Ve všech Sférách je nás jen pět set -- to jsi věděl? Jsme vzácná a domýšlivá rasa, žádostiví těch, kteří jsou mocnější a opovrhující slabšími. Když si odmyslíme krásu, každá z mých sester je stejně tak ambiciózní jako kterýkoliv jiný fiend. Bojujeme o postavení v naší hierarchii tím, že svádíme duše smrtelníků do hlubin propasti Baatoru."~ */
  IF ~~ THEN REPLY #16044 /* ~"Tak dělej..."~ */ GOTO 26
  IF ~~ THEN REPLY #16045 /* ~Pravda: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16046 /* ~Bluf: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16047 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16048 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #15664 /* ~"Největší duše jsou těch smrtelníků, kteří si o sobě myslí, že jsou nejvíce čistí a zbožní... například duchovenstva. Tohle jsem měla v té době na mysli, když jsem se bláznivě přecenila, svedena vidinou moci, která by mi patřila, kdybych uspěla v tak náročném úkolu..."~ */
  IF ~~ THEN REPLY #16049 /* ~Poslouchat.~ */ GOTO 27
  IF ~~ THEN REPLY #16050 /* ~Pravda: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16051 /* ~Bluf: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16052 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16053 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #15665 /* ~"Snažila jsem se svést svatého muže velké víry, vysokého klerika, který vládl silnou spirituální mocí. Tak blízko jsem byla svému úspěchu, nebo jsem si to alespoň myslela, když se postavil proti mně."~ */
  IF ~~ THEN REPLY #16054 /* ~"Pokračuj..."~ */ GOTO 28
  IF ~~ THEN REPLY #16055 /* ~Pravda: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16056 /* ~Bluf: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16057 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16058 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #15667 /* ~"Proklel mě, parchant, v tuhle proklatou stvůru, která teď stojí před tebou. Normálně jsou takové věci pro fiendy jen malou komplikací, ale síla tohoto smrtelníka byla... určitě při něm stála jeho Mocnost!"~ */
  IF ~~ THEN REPLY #16059 /* ~"Zakletý do podoby škaredého muže? Ironické. Pokračuj..."~ */ GOTO 29
  IF ~~ THEN REPLY #16060 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16061 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15669 /* ~"Jak asi tušíš, nemohu hledat pomoc u svých sester, neboť ty by mne rády viděly degradovanou. Místo mne by dosadily na pětistý stupínek novou Erinyi, čímž by vzrostla jejich vlastní moc."~ */
  IF ~~ THEN REPLY #16062 /* ~"No tak..."~ */ GOTO 30
  IF ~~ THEN REPLY #16063 /* ~Pravda: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16064 /* ~Bluf: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16065 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16066 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #15672 /* ~"Temných osm, tito mocní fiendové, kterým Erinye slouží, bylo pobaveno celou záležitostí, ale přesto se slitovali, nebo spíše věděli, že by jim neprospělo, kdyby přišli o tak zkušenou svůdkyni, jako jsem já, a dali mi ultimátum..."~ */
  IF ~~ THEN REPLY #16067 /* ~"Pokračuj..."~ */ GOTO 31
  IF ~~ THEN REPLY #16068 /* ~Pravda: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16069 /* ~Bluf: "Dost. Dej mi přívěsek nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16070 /* ~"Budu odpočívat jindy. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16071 /* ~"To je vše co jsem chtěl pro tuto chvíli vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #15675 /* ~"Mám rok na to, abych do Baatoru přivedla deset duší... ne více, ne méně. Když uspěji, budu navrácena do své původní slávy. Pokud selžu, budu degradována na mizerného kocrachona - nebo na něco horšího, barbazua nebo..." přeběhl jí mráz po zádech, "...spinagona."~ */
  IF ~~ THEN REPLY #16072 /* ~"Takže, tenhle přívěsek je..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15676 /* ~"Ano, tohle je má jediná naděje. Už jsem získala pár duší, a vypustím je v Baatoru, kde budou uvězněny na věčnost. Mám už málo času, ale potřebuji již jen jednu duši... jednu jedinou duši abych se vrátila do řad svých milovaných strašných Sester."~ */
  IF ~~ THEN REPLY #16073 /* ~Pravda: "Zajímavá historka. Teď vytáhni tu tretku nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16074 /* ~Bluf: "Zajímavá historka. Teď vytáhni tu tretku nebo zemřeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16075 /* ~"Aha. Musím dostat přívěsek ze stejného důvodu."~ */ GOTO 55
  IF ~~ THEN REPLY #16076 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16077 /* ~"Potom tedy si ten přívěsek nech. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.2 16.3 17.5 18.3 18.4 19.3 19.4 20.3 20.4 21.4 21.5 22.1 22.2 23.2 23.3 24.1 24.2 25.1 25.2 26.1 26.2 27.1 27.2 29.1 29.2 30.1 30.2 32.0 32.1
  SAY #15677 /* ~Poodstoupí od tebe o další krok: "Stůj! Nerozuměls! Smrt je pro mne jenom nepohodlí. Časem se v Baatoru jednoduše znovu zrodím. Ale zabere to více než rok času... Budu degradována z řádu Erinyí na stovky let, možná navěky. Vidíš? Smrt není horší než ztracený přívěšek!"~ */
  IF ~~ THEN REPLY #16078 /* ~"Proč by to mělo záležet na mě?"~ */ GOTO 34
  IF ~~ THEN REPLY #16079 /* ~Zaútočit na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16080 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 57.0
  SAY #15679 /* ~"Má to dva důvody... první, že nejsem tak úplně bez síly. Mysli na chvíli... mladý bojovník, který mě kdysi chránil, je chycený navěky v mých ďábelských sítích. Závidíš mu jeho postavení?"~ */
  IF ~~ THEN REPLY #16081 /* ~"Vyhrožuješ mi?"~ */ GOTO 35
  IF ~~ THEN REPLY #16082 /* ~"Ne, ale co je ten druhý důvod?"~ */ GOTO 36
  IF ~~ THEN REPLY #16083 /* ~"Blufuješ. Vím, že kletba tě oslabila."~ */ GOTO 36
  IF ~~ THEN REPLY #16084 /* ~Zaútoč na něj, než řekne něco dalšího.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16085 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #15682 /* ~"Ne, ale poslouchej mě!"~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2 35.0
  SAY #15684 /* ~Pokračuje: "Druhým důvodem je, že ty z přívěšku nezískáš žádný prospěch, zatímco já ano. Co s ním uděláš? Opravdu ti bude užitečnější, než přízeň jedné z Erinyí? Mysli na to..."~ */
  IF ~~ THEN REPLY #16086 /* ~"Mohl by. Slíbili mně za jeho dodání sílu."~ */ GOTO 37
  IF ~~ THEN REPLY #16087 /* ~"Tak máš pro mne dohodu?"~ */ GOTO 42
  IF ~~ THEN REPLY #16088 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16089 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 55.0 56.1 58.0
  SAY #15686 /* ~"Síla?" posmívá se. "Kdo? Jaký druh síly se ti snaží nabídnout? Určitě nic, co bych nedokázala překonat."~ */
  IF ~~ THEN REPLY #16090 /* ~"Od páru fiendů a nejsem si jistý jaký druh síly."~ */ GOTO 38
  IF ~~ THEN REPLY #16091 /* ~"To se tě netýká."~ */ GOTO 59
  IF ~~ THEN REPLY #16092 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16093 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 59.0
  SAY #15687 /* ~Zamyšleně se na tebe podívá. "Ty nevíš o síle té schopnosti? Už jsi podepsal smlouvu?"~ */
  IF ~~ THEN REPLY #16094 /* ~"Ne."~ */ GOTO 40
  IF ~~ THEN REPLY #16095 /* ~"Co to znamená?"~ */ GOTO 39
  IF ~~ THEN REPLY #16096 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16097 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #15688 /* ~"Ó, je to krajně důležité, věř mi!"~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #15689 /* ~"Bez smlouvy, není fiend ničím vázán dát ti slíbenou sílu, ať už je to cokoliv. A co kdyby se ti ta síla nelíbila?~ */
  IF ~~ THEN REPLY #16098 /* ~"Co tím myslíš?"~ */ GOTO 41
  IF ~~ THEN REPLY #16099 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16100 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #15690 /* ~"Například co kdybys byl obdařen parohy, které by ti dodaly třeba 'sílu parohů?' Nebo bys třeba obdržel moc jednou za čtrnáct dní zfialovět? Proč si myslíš, že ti ta síla pomůže? Jestli ti fiendové jsou hodni svého postavení, tak na tebe mají připraveny jen triky a plané sliby."~ */
  IF ~~ THEN REPLY #16101 /* ~"Tak pro mě máš dohodu?"~ */ GOTO 42
  IF ~~ THEN REPLY #16102 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16103 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1 41.0 59.1
  SAY #15691 /* ~"Já ano. Dovol, abych si přívěšek nechala já; s jeho pomocí mohu získat zpět svou zářnou slávu. Budu se muset postarat o mnoho věcí, včetně krvavé pomsty... ale za tři roky ti budu sloužit celé čtyři měsíce. Klidně sepíšeme smlouvu, přesně podle pravidel - jestli budeš souhlasit. Přemýšlej, zjizvený: sloužící fiend, nebo bezcenná tretka?"~ */
  IF ~~ THEN REPLY #16104 /* ~"Souhlasím. Nech mě nahlédnout do smlouvy."~ */ GOTO 45
  IF ~~ THEN REPLY #16105 /* ~"Tři roky je velmi daleko."~ */ GOTO 43
  IF ~~ THEN REPLY #16106 /* ~"Chci osm měsíců. Budeš sloužit tak dlouho?"~ */ GOTO 44
  IF ~~ THEN REPLY #16107 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16108 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1 44.1
  SAY #15694 /* ~Zlehka se zasměje a zavrtí hlavou. "Ale ale! Co by kdo dal za bezchybně nádhernou a úplně nestydatou ďáblici, která poslouchá na slovo? Mohu ti sdělit umění získané za dlouhá léta, zjizvený - jak dlouhá nedovedu říct, ale dostatečně dlouhá. Neměl bys být tak krátkozraký a bez fantazie. Jestli spěcháš, mohla bych ti sloužit jen dva měsíce, ale už za dva roky."~ */
  IF ~~ THEN REPLY #16109 /* ~"Souhlasím se dvěmi měsíci služby za dva roky."~ */ GOTO 45
  IF ~~ THEN REPLY #16110 /* ~"Souhlasím se čtyřmi měsící služby za tři roky."~ */ GOTO 45
  IF ~~ THEN REPLY #16111 /* ~"Chci osm měsíců. Budeš sloužit tak dlouho?"~ */ GOTO 44
  IF ~~ THEN REPLY #16112 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16113 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 43.2
  SAY #15696 /* ~"Za tři roky ti budu sloužit šest měsíců, ne víc, souhlasíš?"~ */
  IF ~~ THEN REPLY #16114 /* ~"Souhlasím. Nech mě nahlédnout do smlouvy."~ */ GOTO 45
  IF ~~ THEN REPLY #16115 /* ~"Tři roky je velmi daleko."~ */ GOTO 43
  IF ~~ THEN REPLY #16116 /* ~"Dost řečí -- prostě tě zabiju a vezmu si přívěsek."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16117 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0 43.0 43.1 44.0
  SAY #15698 /* ~Přikývne. "Je to pro mě nezvyklé, ale stejně bych měla umět..." zmlkne a prohledává záhyby svého roucha. Konečně jí zahoří oči a v ruce se jí z ničeho nic objeví svitek. "Á! Tady to je..." Podává ti smlouvu a pero s rudým inkoustem.~ */
  IF ~~ THEN REPLY #16118 /* ~Podepsat smlouvu.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16119 /* ~Podepsat smlouvu.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16120 /* ~Podepsat smlouvu.~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16121 /* ~Podepsat smlouvu.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16122 /* ~Podepsat smlouvu.~ */ GOTO 49
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16123 /* ~Podepsat smlouvu.~ */ GOTO 50
  IF ~~ THEN REPLY #16124 /* ~"Rozmyslel jsem si to -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16125 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #15700 /* ~Zdá se, že smlouva je napsána spíše na mase, než na pergamenu; jakoby napsaná jemnými linkami krve vystupujícími pod kůží. Všechno na smlouvě vypadá v pořádku.~ */
  IF ~~ THEN REPLY #16126 /* ~Podepsat smlouvu.~ */ GOTO 52
  IF ~~ THEN REPLY #16127 /* ~"Rozmyslel jsem si to -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16128 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #15702 /* ~Zdá se, že smlouva je napsána spíše na mase, než na pergamenu; jakoby napsaná jemnými linkami krve vystupujícími pod kůží. Jak jsi tušil, jsou v dokumentu skryty některé nevýhodné podmínky.~ */
  IF ~~ THEN REPLY #16129 /* ~"Musíme ještě probrat pár choulostivých bodů..."~ */ GOTO 51
  IF ~~ THEN REPLY #16130 /* ~Podepsat smlouvu tak jak je.~ */ GOTO 52
  IF ~~ THEN REPLY #16131 /* ~"Rozmyslel jsem si to -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16132 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY #15703 /* ~Zdá se, že smlouva je napsána spíše na mase, než na pergamenu; jakoby napsaná jemnými linkami krve vystupujícími pod kůží. Jak jsi logicky předpokládal, jsou v dokumentu skryty některé nevýhodné podmínky.~ */
  IF ~~ THEN REPLY #16133 /* ~"Musíme ještě probrat pár choulostivých bodů..."~ */ GOTO 51
  IF ~~ THEN REPLY #16134 /* ~Podepsat smlouvu tak jak je.~ */ GOTO 52
  IF ~~ THEN REPLY #16135 /* ~"Rozmyslel jsem si to -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16136 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY #15704 /* ~Zdá se, že smlouva je napsána spíše na mase, než na pergamenu; jakoby napsaná jemnými linkami krve vystupujícími pod kůží. Jak jsi logicky předpokládal, jsou v dokumentu skryty některé nevýhodné podmínky. Hledáš nějaká zadní vrátka, která bys mohl použít, ale žádná nenacházíš. ~ */
  IF ~~ THEN REPLY #16137 /* ~"Musíme ještě probrat pár choulostivých bodů..."~ */ GOTO 51
  IF ~~ THEN REPLY #16138 /* ~Podepsat smlouvu tak jak je.~ */ GOTO 52
  IF ~~ THEN REPLY #16139 /* ~"Rozmyslel jsem si to -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16140 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY #15705 /* ~Zdá se, že smlouva je napsána spíše na mase, než na pergamenu; jakoby napsaná jemnými linkami krve, vystupující pod kůží. Okamžitě sis všiml, že v dokumentu jsou skryty některé nevýhodné podmínky. Také vidíš několik logických nedostatků ve znění smlouvy, které bys mohl použít ve svůj prospěch. ~ */
  IF ~~ THEN REPLY #16141 /* ~"Musíme ještě probrat pár choulostivých bodů..."~ */ GOTO 51
  IF ~~ THEN REPLY #16142 /* ~Podepsat smlouvu tak jak je.~ */ GOTO 52
  IF ~~ THEN REPLY #16143 /* ~"Rozmyslel jsem si to -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16144 /* ~"Zapomeň na to; nech si přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.0 48.0 49.0 50.0
  SAY #15706 /* ~"Samozřejmě; očekával jsem něco podobného." Když jsi začal smlouvu probírat s ďáblem, argumentovat a vyptávat se, dělat ústupky a kličkovat, začínáš cítit, že tohle jsi už někdy dělal...~ */
  IF ~~ THEN REPLY #16145 /* ~Zkusit zapátrat v paměti.~ */ GOTO 63
  IF ~~ THEN REPLY #16146 /* ~Potlač vzpomínky.~ */ GOTO 62
END

IF ~~ THEN BEGIN 52 // from: 45.0 46.0 47.1 48.1 49.1 50.1 62.0
  SAY #15707 /* ~Jakmile jsi podepsal smlouvu, pero i svitek se proměnily na sladce vonící proužky načervenalého dýmu. "Sbohem, poutníku... uvidíme se znovu, až čas vyprší, pak ti budu sloužit po dohodnutou dobu." Uklonila se a otočila k odchodu.~ */
  IF ~~ THEN REPLY #16147 /* ~"Počkat; mám pár otázek..."~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 64
  IF ~~ THEN REPLY #16148 /* ~Nechej jej jít.~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.1
  SAY #15708 /* ~"Co to je, můj pane? Já šperky nenosím..."~ */
  IF ~~ THEN REPLY #16149 /* ~"Nesnaž se. Vím, kdo jsi, fiende."~ */ GOTO 3
  IF ~~ THEN REPLY #16150 /* ~"Už dost povídání... prostě tě zabiju a vezmu si to."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16151 /* ~"Nevadí. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 5.1 6.1 7.1 9.1 10.1 11.1 12.2 13.2 14.2 15.2 16.4 17.6 18.5 19.5 20.5 21.6 22.3 23.4 24.3 25.3 26.3 27.3 28.1 29.3 30.3 32.3 55.4 56.3 57.2 58.3 60.0 61.0
  SAY #15709 /* ~"Odpovím ti nejlépe jak umím."~ */
  IF ~  Global("RC_Tale","AR0400",0)
~ THEN REPLY #16152 /* ~"Proč jsi tady?"~ */ GOTO 22
  IF ~  Global("RC_Tale","AR0400",1)
~ THEN REPLY #16153 /* ~"Řekni mi znovu svou historku."~ */ GOTO 23
  IF ~~ THEN REPLY #16154 /* ~"Řekni mi o přívěsku."~ */ GOTO 16
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #16155 /* ~"Kdo je ten mladík, vedle kterého každý den stáváš?"~ */ GOTO 60
  IF ~  Dead("Adyzoel")
~ THEN REPLY #16156 /* ~"Kdo je ten mladík, vedle kterého jsi každý den stával?"~ */ GOTO 61
  IF ~  Global("RC_Pendant","AR0400",0)
~ THEN REPLY #16157 /* ~"Nevadí; jen mi dej přívěsek."~ */ GOTO 12
  IF ~  Global("RC_Pendant","AR0400",1)
~ THEN REPLY #16158 /* ~"Nevadí; jen mi dej přívěsek."~ */ GOTO 15
  IF ~~ THEN REPLY #16159 /* ~"Nevadí. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.2
  SAY #15710 /* ~"Ale proč?"~ */
  IF ~~ THEN REPLY #16160 /* ~"Protože mi za jeho doručení slíbili moc."~ */ GOTO 37
  IF ~~ THEN REPLY #16161 /* ~"Protože to, co s ním děláš, je špatné."~ */ GOTO 56
  IF ~~ THEN REPLY #16162 /* ~"To se tě netýká."~ */ GOTO 58
  IF ~~ THEN REPLY #16163 /* ~"Dost řečí -- prostě tě zabiju a přívěsek ti seberu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16164 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16165 /* ~"Zapomeň na to; nech si svůj přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.1 58.1
  SAY #15711 /* ~"A co bys s tím dělal? Ochraňoval před nesprávnýma rukama? Prodal to? Vyměnil? Co si myslíš, že s přívěskem udělá jeho další majitel?"~ */
  IF ~~ THEN REPLY #16166 /* ~"Nic horšího, než co děláš."~ */ GOTO 57
  IF ~~ THEN REPLY #16167 /* ~"Vyměním ho se dvěma fiendy za sílu."~ */ GOTO 37
  IF ~~ THEN REPLY #16168 /* ~"Dost řečí -- prostě tě zabiju a přívěsek ti seberu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16169 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16170 /* ~"Zapomeň na to; nech si svůj přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15712 /* ~"Jen pokud bys mohl zařídit uschování přívěsku, aby ho nikdo nikdy nenašel. Je zaručeno, že z jeho použití nemůže vzejít nic dobrého. Mám za to, že jsou i další důvody, proč ho nechat v mých rukou."~ */
  IF ~~ THEN REPLY #16171 /* ~"Jako například?"~ */ GOTO 34
  IF ~~ THEN REPLY #16172 /* ~"Dost řečí -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16173 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16174 /* ~"Zapomeň na to; nech si svůj přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #15713 /* ~Vypadá šokován. "Jak můžeš říct něco takového? Ty bys mě okradl jako nějaký lupič, ukradl mou jedinou a opravdovou šanci, roztříštil mé naděje na kusy a potom mi řekl, že mi není nic po tvých důvodech?"~ */
  IF ~~ THEN REPLY #16175 /* ~"Protože mi slíbili sílu za jeho doručení."~ */ GOTO 37
  IF ~~ THEN REPLY #16176 /* ~"Protože to, co s ním děláš, je špatné."~ */ GOTO 56
  IF ~~ THEN REPLY #16177 /* ~"Dost řečí -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16178 /* ~"Nechejme být tvůj přívěšek. Mám pár otázek..."~ */ GOTO 54
  IF ~~ THEN REPLY #16179 /* ~"Zapomeň na to; nech si svůj přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 37.1
  SAY #15714 /* ~"Naprosto se mýlíš; v tuto chvíli je to můj hlavní důvod. Jak mohu udělat vhodnou protinabídku, když neznám podmínky tvé současné nabídky?"~ */
  IF ~~ THEN REPLY #16180 /* ~"Od páru fiendů a nejsem si jistý jaký druh síly."~ */ GOTO 38
  IF ~~ THEN REPLY #16181 /* ~"Máš pro mě nabídku, ne?"~ */ GOTO 42
  IF ~~ THEN REPLY #16182 /* ~"Dost řečí -- prostě tě zabiju a přívěsek si vezmu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16183 /* ~"Zapomeň na to; nech si svůj přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 54.3
  SAY #15715 /* ~"Prostě arogantní mladý šlechtic a dokonalý šermíř. Je mým otrokem, ačkoliv si to neuvědomuje, dokud ho osobně neuvolním nebo nenechám zemřít."~ */
  IF ~~ THEN REPLY #16184 /* ~"Mám další otázky..."~ */ GOTO 54
  IF ~~ THEN REPLY #16185 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.4
  SAY #15716 /* ~"Prostě arogantní mladý šlechtic a dokonalý šermíř. Je mým otrokem, ačkoliv si to neuvědomuje a slouží mi jako jakási ochrana."~ */
  IF ~~ THEN REPLY #16186 /* ~"Mám další otázky..."~ */ GOTO 54
  IF ~~ THEN REPLY #16187 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 51.1 63.0 63.1 63.2 63.3
  SAY #15717 /* ~Konečně jsi skončil s vyjednáváním smlouvy. "Tak co? Jsi spokojen?"~ */
  IF ~~ THEN REPLY #16188 /* ~"Ano. Podepíšu ji teď."~ */ GOTO 52
  IF ~~ THEN REPLY #16189 /* ~"Ne... prostě tě kvůli tomu přívěsku jenom zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16190 /* ~"Nechejme být smlouvu, vezmi si svůj přívěsek. Sbohem."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 51.0
  SAY #15718 /* ~Když nad tím uvažuješ, víš jistě, že jsi tohle už někdy dělal. Dny strávené mezi zatuchlými svazky a právními dokumenty v přípravě na napjaté vyjednávání, pečlivě naučené fráze se skrytým dvojitým významem, skulinu za skulinou, lži ukryté v pravdě, tak překroucené zákony a sliby, že už nikdo nezná jejich pravý účel... vzpomínky na všechny tyto věci a další kolem tebe proudí v náhlém přívalu.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16192 /* ~Pokračuj...~ */ DO ~AddexperienceParty(200)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16191 /* ~Pokračuj...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16193 /* ~Pokračuj...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16194 /* ~Pokračuj...~ */ DO ~AddexperienceParty(600)
~ GOTO 62
END

IF ~~ THEN BEGIN 64 // from: 52.0
  SAY #15719 /* ~"Žádné otázky. Budeme mít dost času, až se znovu potkáme; pak se mě zeptej, na co chceš. Sbohem."~ */
  IF ~~ THEN DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 65 // from:
  SAY #15720 /* ~Malric, Rake-Chaser, tu stojí a zírá do prázdná. Zdá se, že nevnímá okolí.~ */
  IF ~~ THEN REPLY #16195 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #16196 /* ~Zaútoč na něj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16197 /* ~Nechej 'ho' být.~ */ EXIT
END
