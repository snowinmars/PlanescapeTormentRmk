// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~Tato krásná a svůdně oblečená prostitutka má daleko do těch, co jsi viděl v Úlu. Voní drahým parfémem a linie její tváře jsou rafinovaně zdůrazněny jemně namalovanými linkami tlumených teplých barev. Usmála se, jak ses k ní přiblížil, a graciézně se uklonila. "Buď pozdraven, dobrý pane. Hledáš, jak uhasit žádostivost, které Nevěstinec Madam Grace nedokázal vyhovět, doufám?"~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~"Nevím o žádném 'Nevěstinci,' ale jsem pro, ať nabízíš cokoli."~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~"Ano hledám."~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~"Nejsem, ale myslím že tadyhle Morte by mohl..."~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~"Ne... Ale mám pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~"Ne díky. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~Položila ti prst na rty, aby tě ztišila. "Je jenom jedna otázka, kterou zodpovím, dobrý pane a odpověď zní: 'ano a jen za pět set mincí.'"~ */
  IF ~~ THEN REPLY #49973 /* ~"Pět set? To je trochu..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~"To zní dobře. Jdeme na to."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~"To zní dobře. Jdeme na to."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~"To zní dobře. Jdeme na to."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~"Momentálně tolik nemám."~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~"Ne díky. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~"Škoda. Prosím, vrať se, kdybys změnil názor, dobrý pane - budu tě netrpělivě očekávat. Sbohem."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~Odejdi.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~Odejdi.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~Usmála se. "Och, ujišťuji tě, dobrý pane..." Přiklonila se, aby ti mohla vřele zašeptat do ucha: "že to stojí za každý měďák."~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~"To zní dobře. Ano, pojďme."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~"To zní dobře. Jdeme na to."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~"To zní dobře. Jdeme na to."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~"Momentálně tolik nemám."~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~"Pochybuju o tom. Sbohem."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~"Pochybuju o tom. Sbohem."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~"Pochybuju o tom. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~"Ne díky. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~"To bude pět stovek, drahoušku, a já ti ukážu rozkoš na tisíc způsobů..." Stydlivě pohodila hlavou a věnovala ti rozpustilý úsměv. "Půjdeš teda se mnou?"~ */
  IF ~~ THEN REPLY #61459 /* ~"Pět stovek? To je docela dost..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~"Jsem pro. Jdeme."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~"Jsem pro. Jdeme."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~"Jsem pro. Jdeme."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~"Momentálně tolik nemám."~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~"Ne dík. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~Kurtizána se uculila a lehce poklonila. "Možná jindy drahoušku, až nebudeš obsypaný těmihle... přítelíčky. Sbohem."~ */
  IF ~~ THEN REPLY #61461 /* ~"K čertu Annah... budiž. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~Kurtizána se strachem v očích před Annah ustoupila. Když byla z jejího dosahu, narovnala se a zasyčena na ni. "Tohle není nějaká Úlská stoka, kde si může kdejakej kříženec vyskakovat... další krok ke mně a stráže Harmonických tě odsud vynesou v zubech i s tím tvým smradlavým ocasem!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~"Je mi líto. Vrať se, až se tvá finanční situace... zlepší - Budu tě netrpělivě očekávat. Sbohem."~ */
  IF ~~ THEN REPLY #61463 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~"Dobrá tedy... opravdu doufám, že ses dobře bavil."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~"Neboj se; Bavil jsem se výtečně. Sbohem."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~"Neboj se; Bavil jsem se výtečně. Sbohem."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~"Neboj se; Bavil jsem se výtečně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~Mladá žena si Morteho chvíli měřila kritickým okem, ale pozléze přikývla. "Ano... ano myslím, že to můžu udělat. Určitě si můžu vyjít s něčím... takovým. Ale cena zůstává stejná - pro tebe určitě zanedbatelných pět stovek."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~"No jasně. Tady jsou..."~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~"Promiň Morte, ale tolik nemáme. Půjdeme."~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~"Morte, vážně už musíme jít. Sbohem slečno."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~Kurtizána se konečně vrátila a Morte se točí kolem ní. Celý se leskne -- jako by byl čerstvě navoskovaný -- a na čele má červenou šmouhu ve tvaru rtů. "Tvůj... přítel... si to opravdu vychutnával."~ */
  IF ~~ THEN REPLY #61470 /* ~"Morte?"~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~"Dobře. Sbohem."~ */ EXIT
END
