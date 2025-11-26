// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROKAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROKAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45789 /* ~Vidíš zesláblého muže s kolébavou chůzí. Jeho hlas má téměř komický přízvuk. "U všech mocností v jejich nebeských kadibudkách, co je tohleto?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DMICCAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45791 /* ~"Náš zákazník! Náš zákazník! Miccah! Náš zákazník se vrátil!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45793 /* ~Zesláblý muž odpovídá: "Pochopitelně tvé oči vidí zákazníka! Vidí pokaždé zákazníka... zákazníky na ULICI! My žádné zákazníky nemáme, nikdy nebudeme mít zákazníka, je to marné, už nemáme žádnou naději..." Odmlčel se, když jeho oči padly na tebe. "Micccah! Máme zákazníka!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45795 /* ~"To VIDÍM! Myslíš si, že to nevidím. Samozřejmě že to vidím. Mám oči, ne?" Otočil se k tobě. "Co pro tebe můžeme udělat dneska?"~ */
  IF ~~ THEN REPLY #45796 /* ~"Promluvme si o obchodu."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45797 /* ~"Můžeš mi říct o okolí?"~ */ GOTO 5
  IF ~~ THEN REPLY #45798 /* ~"Můžeš mi říct o sobě?"~ */ GOTO 6
  IF ~~ THEN REPLY #45799 /* ~"Kdo je ona?"~ */ GOTO 7
  IF ~~ THEN REPLY #45800 /* ~"Co mi můžeš říct o společenstvech?"~ */ GOTO 8
  IF ~~ THEN REPLY #45801 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45802 /* ~"Samozřejmě že jsem na ně připravený! Já jsem vždy připravený! Na jakékoli zákazníky." Otočil se k tobě. "Co pro tebe můžu udělat dneska?"~ */
  IF ~~ THEN REPLY #45803 /* ~"Promluvme si o obchodu."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45804 /* ~"Můžeš mi říct o okolí?"~ */ GOTO 5
  IF ~~ THEN REPLY #45805 /* ~"Můžeš mi říct o sobě?"~ */ GOTO 6
  IF ~~ THEN REPLY #45806 /* ~"Kdo je ona?"~ */ GOTO 7
  IF ~~ THEN REPLY #45807 /* ~"Co mi můžeš říct o společenstvech?"~ */ GOTO 8
  IF ~~ THEN REPLY #45808 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45809 /* ~"Ach, chceš vědět něco o okolí? Mohu ti o okolí povyprávět spoustu zajímavých věcí. Je toho tady spousta k vidění..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 9
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45811 /* ~"Já? Chceš vědět něco o mně? Miccah, ta o mně ví všechno."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 10
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45813 /* ~"Ona? Ona? Je to moje oddaná žena už pár let a světlo mého života a ten nejohromnější..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 11
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45815 /* ~"Společenstva? Společenstva? Miccah, ta bude vědět o společenstvech. Máme..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 12
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45817 /* ~"Chtěl jsem ti říct, ať mu povíš o Trhu, ale teď mu řeknu o bordelu, jenom abych tě naštval! A potom mu řeknu o Městské hale a vůbec se nezmíním o dalších atrakcích!"
Ti dva odstartovali závod ve řvaní, totálně tě ignorujíce.~ */
  IF ~~ THEN REPLY #45818 /* ~"Mám ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #45819 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 10
  IF ~~ THEN REPLY #45820 /* ~"Sbohem tedy."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 11.0 11.1 11.2 12.0 12.1 12.2 13.0 13.1 13.2
  SAY #45821 /* ~Mají tolik práce se řvaním jeden na druhého, že si tě vůbec nevšímají. Celý obchod se rychle naplnil jejich tvrdými slovy.~ */
  IF ~~ THEN REPLY #45822 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45823 /* ~"Že mi chybí ambice? Chybí ambice? Kdyby mi na krku nevisela tahle ženská a tenhle mizerný život, byl bych někdo. Ne, místo toho jsem obchodník, zatímco jsem mohl být slavný dobrodruh..." Ti dva odstartovali závod ve řvaní, totálně tě ignorujíc.~ */
  IF ~~ THEN REPLY #45824 /* ~"Mám ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #45825 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 10
  IF ~~ THEN REPLY #45826 /* ~"Sbohem tedy."~ */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45827 /* ~"...kdyby už tam nebyla! Je to největší ochlasta na týhle straně Úlu, a byla taková ROKY, to ti povídám, ROKY. Vychlastala by řeku Oceánus, kdyby byla z alkoholu, a ještě by měla žízeň!"
Oba pokračují v hádce, totálně tě ignorujíce.
~ */
  IF ~~ THEN REPLY #45828 /* ~"Mám ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #45829 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 10
  IF ~~ THEN REPLY #45830 /* ~"Sbohem tedy."~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45831 /* ~"Vím jednu věc, které věřím - věřím, že tenhle život musí být trest za něco, co jsem spáchal v minulém životě!"
Oba se začali hádat a nešetří žhavými argumenty. Totálně tě ignorují.
~ */
  IF ~~ THEN REPLY #45832 /* ~"Mám ještě pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #45833 /* ~"Chtěl bych si něco koupit..."~ */ GOTO 10
  IF ~~ THEN REPLY #45834 /* ~"Sbohem tedy."~ */ GOTO 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45835 /* ~"Její chutě jsou takové, jaké jí zvětšují bachor. Její chuť je pouze v její puse a dokonce i tam jí má dost málo."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 13
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45837 /* ~Brokah se vložil do hovoru s těžkou ironii. "A já se tě ptám, jak bych nemohl ocenit ústa a figuru stvoření tak krásného, jako je toto. Opravdu jsem bez soudnosti a vkusu..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45839 /* ~"To je opravdu jenom velice těžce uvěřitelné! Všechny ty šance, které jsem zahodil, kdy jsem si mohl užívat života!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 15
END

IF ~~ THEN BEGIN 17 // from:
  SAY #45841 /* ~"Zavři tu svoji hubu! Já jsem víc chlap než ty kdy budeš!" Odmlčel se, promyslel si svá slova a kriticky přejel očima po ženě. "Možná ne. Ale je jisté, že máš větší knír, než většina mužů, které jsem kdy viděl..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 16
END
