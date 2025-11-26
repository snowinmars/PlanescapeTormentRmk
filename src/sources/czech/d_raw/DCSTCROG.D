// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCROG~

IF ~  !Global("Curst_Rogue_Paid","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #10037 /* ~Vidíš podezřelého chlápka. Když ho chvíli pozoruješ, dostáváš dojem, že dává pozor na jednu budovu poblíž.~ */
  IF ~~ THEN REPLY #10038 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #10039 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10040 /* ~Když ti vrací pozdrav, vypadá docela přátelsky. "A tobě taky dobrý den." Otočil se a jde o tebe pryč.~ */
  IF ~~ THEN REPLY #10041 /* ~"Jenom na moment, prosím. Chtěl jsem se tě na něco zeptat."~ */ GOTO 2
  IF ~~ THEN REPLY #10042 /* ~Nechej ho jít.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10043 /* ~Zastavil se a s přátelským úsměvem se k tobě otočil. "Jistě, jak ti můžu pomoct." Všiml sis, že jeho paže mu visí u boku nepřirozeně. Tvému cvičenému oku to připadá, jako by se připravoval vytáhnout ukrytou zbraň.~ */
  IF ~~ THEN REPLY #10044 /* ~"Ty jsi pozoroval támhletu budovu?"~ */ GOTO 3
  IF ~~ THEN REPLY #10045 /* ~"Hledám devu. Řekli mi, že je v Curstu."~ */ GOTO 9
  IF ~~ THEN REPLY #10046 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10047 /* ~Překvapeně se na tebe dívá. "Ne, opravdu ne. Proč? Děje se tam něco zajímavého?" Otočil se a dívá se na budovu, na kterou jsi ukázal.~ */
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #10048 /* ~"No tak. Nejsem hlupák. Něco chystáš!"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #10049 /* ~"Oh tak."~ */ EXTERN ~DANNAH~ 78
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #10050 /* ~"To nic, spletl jsem se. Ale mám pro tebe otázku. Hledám devu, který by mohl být ve městě."~ */ GOTO 9
  IF ~~ THEN REPLY #10051 /* ~"Promiň, moje chyba. Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10052 /* ~Pohlíží na tebe a zjevně tě odhaduje. Pak mávne rukou a nevinně se na tebe dívá. Všiml sis záblesku mincí v jeho rukávu. "Ujišťuju tě, že ses spletl, příteli. Jenom si v tento krásný den vychutnávám malou procházku po městě."~ */
  IF ~~ THEN REPLY #10053 /* ~"Ano, určitě máš pravdu. Omlouvám se... příteli."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #10054 /* ~"Ne, jsem si skoro jistý, žes to dělal."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10055 /* ~Postoupil o krůček a přátelsky tě poplácal po zádech. Ucítil jsi, že tvoje peněženka náhle váží o něco více. "V tom případě se s tebou loučím, příteli. Nashledanou."~ */
  IF ~~ THEN REPLY #10056 /* ~"Sbohem."~ */ DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #10057 /* ~Zamračil se na tebe. "Tak to bych měl... zdvojnásobit mé snahy přesvědčit tě o opaku. Ale věz, že více se už snažit nebudu." Další pohyb a teď už vidíš záblesk mincí v obou rukávech.~ */
  IF ~~ THEN REPLY #10058 /* ~"No, asi jo. Určitě sis jenom užíval procházku, jak jsi řekl."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10059 /* ~"Ne, vím, co jsem viděl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10060 /* ~Postoupil o krůček a přátelsky tě poplácal po zádech. Ucítil jsi, že tvoje peněženka náhle váží o něco více. "V tom případě se s tebou loučím, příteli. Nashledanou."~ */
  IF ~~ THEN REPLY #10061 /* ~"Sbohem."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #10062 /* ~Zamračil se na tebe a mávl oběma rukama. Záblesk zlata nahradil záblesk ocele. "Je mi líto, že jsme se nemohli domluvit."~ */
  IF ~~ THEN REPLY #10063 /* ~"Bude ti líto ještě víc."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.2 11.1
  SAY #10064 /* ~Dívá se na tebe překvapeně. "Vážně... tohle je zajímavé. Tohle město totiž není prostředí, kde by jeden očekával devu. Ale v tomhle případě by ses možná měl poptat v hospodě u Zrádcovy brány. Pokud vím, mohl by mít hostinský informace, které hledáš."~ */
  IF ~~ THEN REPLY #10065 /* ~"Díky, Udělám to."~ */ EXIT
  IF ~~ THEN REPLY #10066 /* ~"Kde můžu najít to místo?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #10067 /* ~"Promiň, příteli. Nebyl jsem tam, takže přesně nevím. Ale jsi ve správné oblasti, stačí se trochu rozhlédnout kolem."~ */
  IF ~~ THEN REPLY #10068 /* ~"Díky a sbohem."~ */ EXIT
END

IF ~  Global("Curst_rogue_paid","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #10069 /* ~Vypadá to, že lupiče tvá další návštěva znervóznila. "No, jestlipak to není můj starý přítel. Přišel jsi mě zase navštívit? Oceňuju to, ale víš, já se tady snažím pracovat."~ */
  IF ~~ THEN REPLY #10070 /* ~"Přišel jsem si pro peníze, ne pro konverzaci."~ */ GOTO 12
  IF ~~ THEN REPLY #10072 /* ~"Hledám devu. Slyšel jsem, že jeden je někde v Curstu."~ */ GOTO 9
  IF ~~ THEN REPLY #10073 /* ~"Promiň, že obtěžuju. Chtěl jsem ti jenom říct ahoj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #10071 /* ~Zamračil se na tebe a nasadil velice seriózní tón. "Poslyš, příteli, odhalil jsi mě, a jako jeden profesionál druhému jsem ti zaplatil, abys mě nechal být. Nech toho a zůstaneme přáteli."~ */
  IF ~~ THEN REPLY #10074 /* ~"Dobře. V tom případě tedy půjdu."~ */ EXIT
  IF ~~ THEN REPLY #10075 /* ~"To si nemyslím. Dej sem nějaké zlato nebo uvidíš."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #10076 /* ~"Je mi líto, že jsme se nemohli rozumně domluvit."~ */
  IF ~~ THEN REPLY #10077 /* ~"Bude ti líto ještě víc."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
