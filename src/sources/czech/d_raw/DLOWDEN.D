// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOWDEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOWDEN~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Lowden","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2883 /* ~Lowdenova mrtvola se neklidně zavrtěla, když ses přiblížil. "Co chceš?"~ */
  IF ~~ THEN REPLY #2884 /* ~"Jenom mi odpověz na pár otázek, Lowdene."~ */ GOTO 1
  IF ~~ THEN REPLY #20821 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.1 4.1 5.0 6.0 7.0
  SAY #20822 /* ~"Možná řeknu...  možná ne... Ptej se..."~ */
  IF ~  Global("Know_Lowden","GLOBAL",0)
~ THEN REPLY #20823 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Lowden","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20824 /* ~"Pověz mi ještě o sobě."~ */ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20825 /* ~"Co se stalo Grisovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #20826 /* ~"Jak jsi zemřel?"~ */ GOTO 3
  IF ~~ THEN REPLY #20827 /* ~"Pověz mi o katakombách."~ */ GOTO 6
  IF ~~ THEN REPLY #20828 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20829 /* ~"Lowden, jo? Já a Burt - a někdy i Gris, ačkoliv nebyl nic jinýho než panovačnej skrblík, - byl s námi i naposledy - jsme byli pány katakomb. Nevím, kde je Burt. Asi mrtvej."~ */
  IF ~~ THEN REPLY #20830 /* ~"Co se stalo tobě?"~ */ GOTO 3
  IF ~~ THEN REPLY #20831 /* ~"Co se stalo Grisovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #20832 /* ~"To je špatný. Ještě pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #20833 /* ~"Asi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0
  SAY #20834 /* ~"Špatně jsem zahnul, když jsme zdrhali od toho místa, kde jsme nechali bejt Grise a ještě než jsem si uvědomil svou chybu, rozkouskovalo mě to a nakrájelo na stejky. Naházelo to moje zbytky dolů skrz mříž a teď, teď už ani Spalovači za mě moc nezaplatěj." Zlehka se zasmál, smrdí to jak výbuch plynové sopky.~ */
  IF ~~ THEN REPLY #20835 /* ~"Co se stalo Grisovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #20836 /* ~"Aha, ironie. Ještě jsem se chtěl zeptat..."~ */ GOTO 1
  IF ~~ THEN REPLY #20837 /* ~"Vskutku veselé, dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #20838 /* ~"He. To je historka sama o sobě. Můj nápad to byl a zezačátku to všechno šlo docela v pohodě - Burt ani nevěděl, co chystám. Trošku jsem to tam prohlíd, našel ghúlovo doupě a myslel si, že tam teda vezmem i Grise. Trošku se to ale otočilo - ghúl si přitáhl víc svých soukmenovců a skoro nás dostali. Nechali jsme tam Grise a zdrhali s Paničkou v patách. Sázim, že Gris je tuhej."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #20839 /* ~"To teda je."~ */ GOTO 5
  IF ~~ THEN REPLY #20840 /* ~"Pravděpodobně. Ještě jsem se chtěl na něco zeptat."~ */ GOTO 1
  IF ~~ THEN REPLY #20841 /* ~"To vypadá, že jsi to dotáhl opravdu do konce. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20842 /* ~"Řekl bych, že je ho škoda, ale nemyslím si to. Měl srdce zrádce a duši hada, a to je důvod, proč jsme mu říkali Sup. Věz, že jestli jsem mrtvej, tak jsem zároveň šťastnej, že on taky."~ */
  IF ~~ THEN REPLY #20843 /* ~"Hezké. Ještě jsem měl pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #20844 /* ~"Hezké. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #20845 /* ~"Truchlící kámen, tak tomu tam říkáme - ze stropu porád kape voda a na stěnách jsou plačící obličeje. Spousta krypt tam dole a spousta těch, který jsme vyplenili. Škoda jen, že jsme tam měli smůlu, ale asi to tak mělo bejt. Jde z toho na mně takový mrazení..."~ */
  IF ~~ THEN REPLY #20846 /* ~"Ještě mi odpověz na pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #20847 /* ~"Tak třeba zmrzni. Sbohem."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #20848 /* ~Tohle tělo vypadá, jako by ho někdo někdo úplně rozmandloval na kaši, jako by ho pálili, bodali, řezali, tloukli kyjem a procpali skrz mříže. Je rozděleno na dvě poloviny a leží v kaluži staré krve. Hlas, který z té sekané vychází, zní žoviálně a vesele, je ze něj cítit dokonce jakási škodolibá radost. "Hej troubo, na co čekáš? Na Vánoce?"~ */
  IF ~~ THEN REPLY #20849 /* ~"Na odpovědi na pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #20850 /* ~"Na nic."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #20851 /* ~Tohle tělo vypadá, jako by ho někdo někdo úplně rozmandloval na kaši, jako by ho pálili, bodali, řezali, tloukli kyjem a procpali skrz mříže. Je rozděleno na dvě poloviny a leží v kaluži staré krve.~ */
  IF ~~ THEN REPLY #20852 /* ~"Nic, co? Tak fajn."~ */ EXIT
END
