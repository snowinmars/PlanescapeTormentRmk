// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D3PLANEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D3PLANEA~

IF ~~ THEN BEGIN 0 // from: 11.0
  SAY #2949 /* ~"Jsem *znám* jako Soustředění-Tří-Sfér, githzeraiský učenec. Pokud jste zde na mou přednášku, začne za několik okamžiků."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 476
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45030 /* ~Poslouchej dál.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45031 /* ~Odejdi z posluchárny.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #45032 /* ~Promluvil hlubokým pochmurným tónem, "Dnes budu mluvit o síle přesvědčení a víry a také o tom, jak mění sféry."

"Nejprve vám vysvětlím pojetí přesvědčení."
~ */
  IF ~~ THEN REPLY #45033 /* ~Poslouchej dál.~ */ GOTO 2
  IF ~~ THEN REPLY #45034 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #45035 /* ~"Přesvědčení popisuje víru a způsob, jakým osoba podle této své víry jedná. V podstatě se všechna stvoření chovají jedním ze tří způsobů: s dobrem v srdci, se zlem v srdci, nebo s neurčitostí - nebo neutralitou - v srdci. A toto základní přesvědčení vyjadřují třemi způsoby: organizovaně, chaoticky, nebo neutrálně. A tak tedy existuje devět základních přesvědčení."~ */
  IF ~~ THEN REPLY #45036 /* ~Poslouchej dál.~ */ GOTO 3
  IF ~~ THEN REPLY #45037 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45038 /* ~"Těchto devět přesvědčení je: zákonné dobro, neutrální dobro, chaotické dobro, zákonná neutralita, pravá neutralita, chaotická neutralita, zákonné zlo, neutrální zlo a chaotické zlo."

"Teď budu mluvit o moci, kterou má přesvědčení a víra... jak z nich samotná božstva získávají moc a jak mohou fyzicky ovlivňovat prostředí."
~ */
  IF ~~ THEN REPLY #45039 /* ~Poslouchej dál.~ */ GOTO 4
  IF ~~ THEN REPLY #45040 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45041 /* ~"Božstvo musí mít věřící, neboť je to jejich víra, která dává bohu moc. Čím více konvertitů přichází a uctívá boha, tím větší moc bůh má."

"Proto když v božstvo nikdo nevěří, slábne a umírá, přidává se k mrtvolám ostatních bohů, které poletují po Astrální sféře. Je tedy možné zabít božstvo tím, že se na něj prostě zapomene."
~ */
  IF ~~ THEN REPLY #45042 /* ~Poslouchej dál.~ */ GOTO 5
  IF ~~ THEN REPLY #45043 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45044 /* ~"Ale mnohem zajímavější příklad moci přesvědčení a víry je sklouznutí měst bran."

"Ale nejprve vám popíšu město bran."
~ */
  IF ~~ THEN REPLY #45045 /* ~Poslouchej dál.~ */ GOTO 6
  IF ~~ THEN REPLY #45046 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45047 /* ~"Tato města jsou města v pustinách, převážně neutrálních oblastech, z jejichž centra vyrůstá Sigil. Říká se jim města bran, protože jsou vystavěna kolem permanentní brány nebo portálu do jedné z Vnějších Sfér. "~ */
  IF ~~ THEN REPLY #45048 /* ~Poslouchej dál.~ */ GOTO 7
  IF ~~ THEN REPLY #45049 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45050 /* ~"Každá z těchto Vnějších sfér má své přesvědčení. Abyss je chaotický a zlý. Baator je zákonný a zlý. Mechanus je zákon a neutralita. Mount Celestia je řád a dobro. Pustiny jsou úplně neutrální."

"'Sklouznutí' nastane, když se v oblasti objeví silná koncentrace víry. Když to nastane, celá oblast se přesune - sklouzne - do sféry, která odpovídá nové víře."
~ */
  IF ~~ THEN REPLY #45051 /* ~Poslouchej dál.~ */ GOTO 8
  IF ~~ THEN REPLY #45052 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45053 /* ~"Ve městě je většinou silná víra, která odpovídá hraniční Vnější Sféře, ale víra není dost silná, aby město sklouzlo z Pustin do Vnější sféry."

"Uvedu příklad: Město Žebroví sousedí se zákonně zlou sférou Baator. Obyvatelé Žebroví jsou většinou zákonné zlí, ale celková víra ve městě není dost silná, aby město sklouzlo do Baatoru."
~ */
  IF ~~ THEN REPLY #45054 /* ~Poslouchej dál.~ */ GOTO 9
  IF ~~ THEN REPLY #45055 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45056 /* ~"Pokud by se v Žebroví objevil silný řád zákonně zlých kněží, kteří budou propagovat svou temnou víru a konvertovat obyvatele na víru ve své temné bohy, je docela dobrá šance, že město sklouzne z Pustin a stane se součástí zákonně zlé sféry Baator."

"Celé části Sfér se mohou takto pohybovat. Mnoho válek je tedy válkami víry z nutnosti. Jsou to nástroje, jimiž se dá získat a udržet nové teritorium."
~ */
  IF ~~ THEN REPLY #45057 /* ~Poslouchej dál.~ */ GOTO 10
  IF ~~ THEN REPLY #45058 /* ~Přestaň poslouchat a jdi pryč.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45059 /* ~"Tohle je moc přesvědčení a víry, která mění sféry. Lekce je u konce."

"Ať víra vede vaše činy a přetvoří Sféry podle vašeho přání. Sbohem vám všem."~ */
  IF ~~ THEN REPLY #45060 /* ~Odejdi.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY #45061 /* ~Štíhlý muž s hranatými rysy a žlutou kůží pokrytou tetováním si prohlíží místnost a lidi uvnitř chladnýma černýma očima. Zřejmě má nějakou přednášku.~ */
  IF ~~ THEN REPLY #45063 /* ~Zůstaň na přednášku.~ */ GOTO 0
  IF ~~ THEN REPLY #49738 /* ~Odejdi.~ */ EXIT
END
