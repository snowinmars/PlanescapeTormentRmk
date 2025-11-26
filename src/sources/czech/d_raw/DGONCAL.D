// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGONCAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGONCAL~

IF ~  Global("Goncalves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2923 /* ~Nízký rozložitý muž středních let je oblečen do šatů, které se jakoby zlatě blýskají. V rukou drží dřevěný rám s vloženým kusem látky, do níž právě vyšívá nějaký vzor.~ */
  IF ~~ THEN REPLY #2924 /* ~"Zdravím..."~ */ DO ~SetGlobal("Goncalves","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44148 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.1 25.0
  SAY #44149 /* ~Nezdá se, že by bral na vědomí tvou přítomnost. Nepřestává s vyšíváním mumlaje si pod vousy... jak šije, jako by ze špičky jehly sršela drobná zrnka zářivého světla.~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44150 /* ~"Dobrý muži, slyšíte mě?"~ */ GOTO 2
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44151 /* ~"Povídám 'Zdravím.'"~ */ GOTO 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44152 /* ~"Dobrý muži, slyšíte mě?"~ */ EXTERN ~DGRACE~ 142
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44153 /* ~"Povídám 'Zdravím.'"~ */ EXTERN ~DGRACE~ 142
  IF ~~ THEN REPLY #44154 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #44155 /* ~Muž nevzhlédl od své práce, jen se zhnuseně zamračil, když ti odpovídal: "Ano, ano... a jsem si jist, že to, co potřebuješ, je opravdu *fakticky* naléhavé. Teď, když budeš chvíli zticha..."~ */
  IF ~~ THEN REPLY #44156 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #44157 /* ~Tiše počkej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44158 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44160 /* ~Usmívá se, ale neodpovídá.~ */
  IF ~~ THEN REPLY #44161 /* ~"Povídám, 'Mám pár otázek...'"~ */ GOTO 4
  IF ~~ THEN REPLY #44162 /* ~Tiše počkej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #66869 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44163 /* ~Tvář mu zrudla, skřípe zuby, ale pořád se odmítá na tebe podívat přímo. "Mě *vůbec* nezajímá, jestli máš otázky! Teď buď zticha, nebo laskavě *opusť* můj obchod!"~ */
  IF ~~ THEN REPLY #44164 /* ~"Budeš odpovídat, *krejčíku*... nebo nastanou problémy."~ */ GOTO 5
  IF ~~ THEN REPLY #44165 /* ~Tiše počkej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44166 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1
  SAY #44167 /* ~V návalu hněvu odmrštil svou práci a od úst mu létají sliny, jak křičí. "Taky budou *problémy,* správně, až přijdou stráže tě rozsekat na kusy! Ihned PRYČ! VEN! PRYČ S TEBOU Z MÉHO KRÁMU! Než zavolám Harmonické!"~ */
  IF ~~ THEN REPLY #44168 /* ~"*Dělej*, zavolej je."~ */ DO ~SetGlobal("Goncalves","GLOBAL",3)
SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44169 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.1 4.1
  SAY #44170 /* ~Konečně, složil výšivku a vzhlédl k tobě. Ale předtím, než jsi mohl něco říct, vzal další věc a pustil se do práce. A znovu, jak pracuje, se zdají z látky padat drobné jiskry.~ */
  IF ~~ THEN REPLY #44171 /* ~"Podívej, mám jen pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #44172 /* ~"Budeš odpovídat, *krejčíku*... nebo nastanou problémy."~ */ GOTO 5
  IF ~~ THEN REPLY #44173 /* ~Počkej ještě chvíli.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44174 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44175 /* ~Muž si hlasitě povzdechl. "Bezpochyby. Teď, buď tak laskav a buď chvíli zticha - Jsem si jistý, že neumřeš, když na moment ovládneš svůj jazyk..."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 211
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44176 /* ~"Budeš odpovídat, *krejčíku*... nebo nastanou problémy."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44177 /* ~Počkej ještě chvíli.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44178 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.2
  SAY #44179 /* ~Dokončil práci a odložil ji, aby si tě mohl prohlédnout. "Zdravím, jsem Goncalves. No tak, proč jsi mě chtěl vidět?"~ */
  IF ~~ THEN REPLY #44180 /* ~"Měl jsem otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #44181 /* ~"Ale nic, zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.1 13.1 14.1 14.2 16.1 16.2 22.0 24.0 26.0
  SAY #44182 /* ~"Hmm? Doufám, že něco o šatech a podobných věcech. Nebudu odpovídat na něco, co se netýká mě, nebo obchodu, chápeš."~ */
  IF ~  GlobalGT("Malmaner","GLOBAL",1)
GlobalLT("Malmaner","GLOBAL",4)
Global("Goncalves_Costume1","AR0611",0)
~ THEN REPLY #44183 /* ~"Chtěl jsem vyzvednout kostým Spalovače."~ */ DO ~SetGlobal("Malmaner","GLOBAL",3)
~ GOTO 14
  IF ~  GlobalGT("Malmaner","GLOBAL",3)
GlobalLT("Malmaner","GLOBAL",6)
Global("Goncalves_Costume2","AR0611",0)
~ THEN REPLY #44184 /* ~"Chtěl jsem vyzvednout další, jiný kostým."~ */ DO ~SetGlobal("Malmaner","GLOBAL",5)
~ GOTO 16
  IF ~  Global("Know_Goncalves_Mage","AR0611",0)
~ THEN REPLY #44185 /* ~"Co byla zač ta světla, když jsi vyšíval?"~ */ DO ~SetGlobal("Know_Goncalves_Mage","AR0611",1)
~ GOTO 12
  IF ~  Global("Know_Goncalves_Mage","AR0611",1)
~ THEN REPLY #44186 /* ~"Jaký druh magických šatů máš na skladě?"~ */ GOTO 13
  IF ~~ THEN REPLY #66876 /* ~"Můžu si tady koupit nějaké nitě a jehly?"~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44188 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44189 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #44194 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #44198 /* ~"Tohle? Nic než trocha Umění, které občas vetkávám do látky, když mě přepadne obrazotvornost. Tyhle věci, na kterých nešetřím kouzly, jsou moje nejneobyčejnější výtvory a málokdy je prodávám."~ */
  IF ~~ THEN REPLY #44199 /* ~"Jaký druh magických šatů máš na skladě?"~ */ GOTO 13
  IF ~~ THEN REPLY #44200 /* ~"Mám další otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #44201 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 12.0
  SAY #44202 /* ~Goncalves si tě prohlédl a svraštil čelo. "Nic, co by padlo *tobě*, to je jisté."~ */
  IF ~~ THEN REPLY #44203 /* ~"Přesto bych se rád podíval, co mi můžeš nabídnout."~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #67828 /* ~"Tak to mám další otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #67829 /* ~"V tom případě, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #44204 /* ~"Máš štěstí, pane... Mám tu jeden. Jejich cena je třicet běžných měďáků."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44205 /* ~"Vezmu to."~ */ DO ~DestroyPartyGold(30)
GiveItemCreate("Costume1",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume1","AR0611",1)
~ GOTO 15
  IF ~  PartyGoldLT(30)
~ THEN REPLY #44206 /* ~"Hmm... nemám tolik. Mám další otázku..."~ */ GOTO 9
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44207 /* ~"Vlastně je nechci. Mám další otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #44208 /* ~"Možná, až se vrátím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44209 /* ~Goncalves vytáhl zpod pultu soupravu úhledně složených šatů. "Tady jsou, pane. Ale chtěl bych tě upozornit, jestli je to na nastávající maškarní ples Lorda Irda, že jej mnoho lidí navštěvuje v převleku za Spalovače."~ */
  IF ~~ THEN REPLY #44210 /* ~"Budu si to pamatovat. Sbohem, Goncalvesi."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY #44211 /* ~Goncalves kývl a znale se usmál. "Přece jenom se Spalovač zdá být příliš běžný, že? No, právě jsem obdržel kostým Božích lidí, jestli chceš. Bude tě stát jen padesát měďáků."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44212 /* ~"Vezmu to."~ */ DO ~DestroyPartyGold(50)
GiveItemCreate("Costume2",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume2","AR0611",1)
~ GOTO 17
  IF ~  PartyGoldLT(50)
~ THEN REPLY #44213 /* ~"Hmm... nemám tolik. Mám další otázku..."~ */ GOTO 9
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44214 /* ~"Vlastně je nechci. Mám další otázku..."~ */ GOTO 9
  IF ~~ THEN REPLY #44215 /* ~"Možná, až se vrátím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44216 /* ~Goncalves zpod pultu vyndal soupravu šatů, těžké kožené zástěry a pracovní boty. "Prosím zde, pane. Užij si maškarní."~ */
  IF ~~ THEN REPLY #44217 /* ~"Díky, Goncalve. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44218 /* ~Muž vzhlédl od práce a zdá se, že první spatřil Annah. Lehce mlaskaje potřásl hlavou. "Holka, který šílený duch pekel tě *posedl*, že ses oblékla tahle?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 212
END

IF ~~ THEN BEGIN 19 // from:
  SAY #44219 /* ~Ukazuje na její šaty. "Kalhoty, chybí. Naprosto nemožné. Důraz na linii poprsí, obzvlášť ten *ó jak praktický* křížem krážem roztrhaný živůtek. Tvůj vzhled byl *očividně* spíš navržen pro ukojení něčích hormonů, než pro tvé pohodlí. I když se snažíš *vytvořit* svůj postoj k zákonu a slušnosti, jak máte vy tieflingové ve zvyku, skutečnost tě sráží opravdu hodně hluboko..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 472
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44220 /* ~Pokus se a přeruš je.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44221 /* ~Nechej je mluvit.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #44222 /* ~Goncalves nepřestává Annah peskovat. "Opravdu si myslím, že vypadáš líp připravená pro schůzku v Městské hale než..." Zamračil se. "Mimochodem, nejsi Vnímavá, že ne?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 213
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44223 /* ~Krejčí přikývl. "Nemyslel jsem si to. Vůbec ne. Proč mi nedovolíš obléknout tě do něčeho jiného, trochu módnějšího..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 473
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44224 /* ~Pokus se a přeruš je.~ */ EXTERN ~DANNAH~ 214
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44225 /* ~Nechej je mluvit.~ */ EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 22 // from:
  SAY #44226 /* ~"Jak si tedy přeješ, milá dámo." Goncalves se podíval na tebe. "A nyní, pane, když byla má práce vážně a skutečně přerušena... Jsem Goncalves. No tak, proč jsi mě chtěl vidět?"~ */
  IF ~~ THEN REPLY #44227 /* ~"Chtěl jsem se zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #44228 /* ~"Ale nic, zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44229 /* ~Goncalves se ihned odvrátil od práce a zdvořile se uklonil Fall-from-Grace. "Zdravím tě, Paní Grace. Jak ti dnes mohu pomoci? Tvá zakázka je téměř hotová..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 143
END

IF ~~ THEN BEGIN 24 // from:
  SAY #44230 /* ~"Samozřejmě!" Goncalves se otočil k tobě. "Tak, pane... proč jsi mě chtěl vidět?"~ */
  IF ~~ THEN REPLY #44231 /* ~"Chtěl jsem se zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #44232 /* ~"Ale nic, zapomeň. Sbohem."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #44233 /* ~Krejčí ještě pořád vyšívá zdobení do látky, kterou držel před chvílí. Vypadá, že si tě vlastně vůbec nevšiml.~ */
  IF ~~ THEN REPLY #44234 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #44235 /* ~Nechej ho být.~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #44236 /* ~Goncalves odložil něco, na čem právě pracoval a kývl na tebe. "Vrátil ses, pane... dobře. S čím ti mohu pomoci?"~ */
  IF ~~ THEN REPLY #44237 /* ~"Chtěl jsem se zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #44238 /* ~"Jen procházím, Goncalve. Sbohem."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #44240 /* ~Krejčí se na tebe pohrdavě podíval. "Radím ti *odejít,* pane, než znovu zavolám stráže. Žádná slova ani čin nesmaže urážku, jíž jsi se dopustil. Ven!"~ */
  IF ~~ THEN REPLY #44242 /* ~"Jen do toho; zavolej hlídky."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44243 /* ~Odejdi.~ */ EXIT
END
