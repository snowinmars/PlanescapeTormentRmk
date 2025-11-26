// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHEZOBOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHEZOBOL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50917 /* ~Vidíš vyzáblého muže oděného ve volné roucho. Má obličej potemnělý vztekem a řve na své podřízené, i když se pohybují s briskní efektivitou. "Honem, šupáci! Máme tak akorát čas na vykonání oběti!" Zdá se, že si tě nevšiml.~ */
  IF ~~ THEN REPLY #50918 /* ~"Co děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #50919 /* ~"Přišel jsem, abych tě zastavil."~ */ GOTO 2
  IF ~~ THEN REPLY #50920 /* ~Tiše odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #50921 /* ~Otočil se k tobě s výrazem rozčílení vepsaným do tváře. "Vydělávám na chaosu, troubo. Teď je nejvhodnější doba na získávání otroků, když je každý zaměstnán snahou o zavedení pořádku do města. Když mě omluvíš, musím se věnovat svým záležitostem." Otočil se zpět ke svým mužům.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50922 /* ~"Rozklad ve městě je zaviněn lidmi, co se snaží těžit z jeho pohromy. Nechej toho a můžeš městu pomoci vrátit se na původní místo - a pak zase můžeš pokračovat v obchodech."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #50923 /* ~"Příliš mnoho lidí přidává na chaosu a zlu, způsobenému jeden druhému. Kdybys poslal své muže na pomoc k obraně města, mohl bys znovu nastolit rovnováhu."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #50924 /* ~"To je přesně to chování, jaké přivedlo toto město do potíží, v nichž se nachází. Přidej se ke mně, abychom proti tomu vystoupili, a můžeme se všichni odsud dostat mnohem rychleji."~ */ GOTO 3
  IF ~~ THEN REPLY #50925 /* ~"Přišel jsem, abych tě zastavil."~ */ GOTO 2
  IF ~~ THEN REPLY #50926 /* ~Napadni jej.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Slaver_1","GLOBALGood",-1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 5.1
  SAY #50927 /* ~Ušklíbl se na tebe. "Chtěl bych tě vidět, jak mě zastavíš. Chlapi! Nechte otroky a zabijte toho vetřelce!"~ */
  IF ~~ THEN REPLY #50928 /* ~Bojuj.~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.2
  SAY #50930 /* ~Zavolal na své muže. "Přestaňte s tím!" Zamyšleně se na tebe dívá. "Tak ty říkáš, že nebudeme pro gehrelethy potřebovat žádné oběti?"~ */
  IF ~~ THEN REPLY #50931 /* ~"Ne. Celé toto město bude oběť, pokud nebudeš spolupracovat s ostatními měšťany."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(150000)
~ JOURNAL #50932 /* ~Přesvědčil jsem vůdce otrokářů, aby zanechal svých otrokářských obchodů a pomohl proti gehrelethům plenícím město.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50933 /* ~Zaklel. "Sakra štěstí. Měl bych z toho popotahovačky. Okej, chlapi, pusťte je! Musíme zachránit město!" Podíval se na tebe nečitelným pohledem a odvádí svou skupinu pryč. "Díky za pomoc, cizinče."~ */
  IF ~~ THEN REPLY #50934 /* ~"Není zač. Hodně štěstí."~ */ DO ~SetGlobal("Slaver_Gone","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #50935 /* ~Vůdce otrokářů viditelně řídí operaci hladce, ačkoliv si neustále dává pozor na narušující útoky gehrelethů. "Co chceš, troubo?"~ */
  IF ~~ THEN REPLY #50936 /* ~"Co děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #50937 /* ~"Přišel jsem, abych tě zastavil."~ */ GOTO 2
  IF ~~ THEN REPLY #50938 /* ~Tiše odejdi.~ */ EXIT
END
