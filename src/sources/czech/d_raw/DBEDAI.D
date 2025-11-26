// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBEDAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBEDAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Smuggle","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY #43055 /* ~"Díky za pomoc. Možná se ještě uvidíme později osobně... nebo s některým z mých přátel. Jsme tady všude."~ */
  IF ~~ THEN REPLY #43056 /* ~"Chtěl bych se vás na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #43057 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Smuggle","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #43058 /* ~"Ještě je to kus než dojdeme do skladiště. Co chcete?"~ */
  IF ~~ THEN REPLY #43059 /* ~"Měl bych nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #43060 /* ~"Nic."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #43061 /* ~Inženýrka se na tebe opovržlivě podívala. "K čertu s tebou! Nemám čas na takové jako jsi ty!"~ */
  IF ~~ THEN REPLY #43062 /* ~Napadni ji.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #43063 /* ~Odejít.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #43064 /* ~Nepřítomně se na tebe dívá, bez řečí, čeká až přijede stráž.~ */
  IF ~~ THEN REPLY #43065 /* ~"Chtěl bych se tě na něco zeptat..."~ */ GOTO 4
  IF ~~ THEN REPLY #43066 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43067 /* ~Dále na tebe zírá. "Teď ti nemám co odpovědět. Snad až se vrátíš."~ */
  IF ~~ THEN REPLY #43068 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Smuggle","GLOBAL",1)
!Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #43069 /* ~"Jasně, chcete se odtud dostat? Oni mne nenechají jen tak odejít. Potřebuji přestrojení nebo něco takového."~ */
  IF ~~ THEN REPLY #43070 /* ~"Máš nějaký nápad, za co se přestrojit?"~ */ GOTO 6
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43071 /* ~"Vzal jsem si kovářský převlek. Obleču si ho."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43072 /* ~"Ne, ne teď. Chtěl jsem se vás ještě na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #43073 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 34.1 35.0 36.0
  SAY #43074 /* ~"Oni nezastavují kováře odcházející odtud. Možná, pokud pro mne najdete kompletní soubor kovářského vybavení a nějaké náhradní oděvy - nejenom nástroje, ale zbytek oděvů... nemám tušení, kde byste to mohli najít. Nezabíjejte už tady žádné lidi, jasné? Už jsem tady způsobila dost problémů - nepotřebujeme do toho zatahovat zbytek města. Jinými slovy, nezabíjejte žádného kováře, abyste získali jeho šaty - stejně pochybuji, že by se hodily."~ */
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43075 /* ~"Sebral jsem kovářský převlek. Nasaď si ho."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43076 /* ~"Jasně. Uvidím co mohu dělat. Mezitím, odpověz mi na pát otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43077 /* ~"V pořádku. Uvidím co s tím mohu udělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #43078 /* ~"Vezmu si ho, jakmile budeme připraveni jít. Tak co teď? Budete mne muset vést."~ */
  IF ~~ THEN REPLY #43079 /* ~"V pořádku, pojďme."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43082 /* ~"Půjdeme hlavním vchodem, a potom ke skladišti, kde vím, že na mne čekají nějací moji přátelé. Jste připraveni?"~ */
  IF ~~ THEN REPLY #43083 /* ~"Pojďme."~ */ DO ~SetGlobal("Smuggle","GLOBAL",5)
AddexperienceParty(8000)
StartCutSceneMode()
StartCutSceneEx("0503cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 5.2 6.1 10.4 11.2 12.3 13.0 14.2 15.4 16.3 17.0 18.1 19.0 20.1 21.2 22.1 23.2 24.2 25.0 32.1 75.0
  SAY #43084 /* ~"Co chcete vědět?"~ */
  IF ~~ THEN REPLY #43085 /* ~"Řekněte mi něco o Revoluční lize."~ */ GOTO 10
  IF ~~ THEN REPLY #43086 /* ~"Řekněte mi o Božích lidech."~ */ GOTO 17
  IF ~~ THEN REPLY #43087 /* ~"Proč se snažíte o celou tuhle zkázu?"~ */ GOTO 18
  IF ~~ THEN REPLY #43088 /* ~"Řekni mi o sobě."~ */ GOTO 20
  IF ~~ THEN REPLY #43089 /* ~"Co takhle o Sarosovi?"~ */ GOTO 75
  IF ~~ THEN REPLY #43090 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43091 /* ~Zašilhala na tebe, jako by si tě cejchovala a řekla: "Věříme, že síla je zkažená ve svojí skutečné podstatě. Existujeme, abychom svrhli sílu tam, kde může povstat. Frakce Sigilu jsou proto primárními cíli - oni získávají monopol na Město Dveří, město, které by mělo být otevřeno každému, kdo tudy prochází. Místo toho, rozdrtí každého, kdo svobodně mluví a umlčí ty, kteří by se chtěli pohybovat podle vlastní vůle. Síla struktury Sigilu musí být zničena!"~ */
  IF ~~ THEN REPLY #43092 /* ~"Jaká je struktura Revoluční Ligy?"~ */ GOTO 15
  IF ~~ THEN REPLY #43093 /* ~"Stejně, jak ses dostal mezi tyto lidi?"~ */ GOTO 11
  IF ~~ THEN REPLY #43094 /* ~"Proč nepracujete na systému jak to změnit?"~ */ GOTO 12
  IF ~~ THEN REPLY #43095 /* ~"Jak se lze připojit k Revoluční Lize?"~ */ GOTO 13
  IF ~~ THEN REPLY #43096 /* ~"Měl bych ještě další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #43097 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 12.1 14.0 15.1 16.0
  SAY #43098 /* ~"Můj otec, Svobodný Legionář, byl zabit, když nesouhlasil s jedním ze Strážců Zkázy. Vrah nebyl nikdy postaven před soud. Má matka hledala spravedlnost, ale byla zatčena za obtěžování Zabedněnci. Úplatný soudce se postaral o to, že byla shledána vinou za porušení míru a tvorbu anarchie, a tak byla popravena Nemilosrdnými. Samozřejmě jsem se vydala hledat Anarchisty - oni mají jedinou odpověď já hledám dále."~ */
  IF ~~ THEN REPLY #43100 /* ~"Proč nepracujete na systému jak to změnit?"~ */ GOTO 12
  IF ~~ THEN REPLY #43101 /* ~"Jak se člověk může přidat k Revoluční lize?"~ */ GOTO 13
  IF ~~ THEN REPLY #43102 /* ~"Měl bych pár dalších otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43103 /* ~"Tak to už bude všechno. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 15.2 16.1
  SAY #43104 /* ~"Zevnitř? Neblázni! Byl bys odstraněn dřív, než bys vůbec stihl něco změnit. Tento systém se vůbec nezajímá o spolupráci s čímkoliv, co by mohlo ochabit jeho moc. Taková už je nátura lidí, kteří chtějí stále zůstat u moci a své postavení si upevňovat, bez ohledů na to, komu ublíží. Promluv proti nim jediné slůvko a budeš se válet po zemi dřív, než se stihneš znovu nadechnout. Je přece daleko lepší se od toho distancovat a začít všechno budovat znovu."~ */
  IF ~~ THEN REPLY #43105 /* ~"To ale ublíží spoustě nevinných lidí."~ */ GOTO 14
  IF ~~ THEN REPLY #43106 /* ~"Jak ses vlastně dostala k Anarchistům"~ */ GOTO 11
  IF ~~ THEN REPLY #43107 /* ~"Jak se člověk může přidat k Revoluční lize?"~ */ GOTO 13
  IF ~~ THEN REPLY #43108 /* ~"Měl bych pár dalších otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43109 /* ~"Tak to už bude všechno. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3 11.1 12.2 14.1 15.3 16.2
  SAY #43110 /* ~Pochybovačně na tebe hledí. "Přidat se k nám? Hmmm. Když o tom tak uvažuji, pro své přijetí už jsi udělal dost - přinesl's nám příliš dobrého na to, abys nás jen tahal za nos." Na delší dobu se odmlčela. "Jak myslíš. Jdi si promluvit se Scofflawem Pennem, do tiskárny. Pověz, že jsem řekla 'Nechť město shoří', on už bude vědět, co to znamená." Obdarovala tě přísným pohledem. "Ale varuji tě: Pokud se mi *cokoliv* stane, přijde tě to draho."~ */
  IF ~~ THEN REPLY #43111 /* ~"'Nechť město shoří.' Dobrá. Měl bych ještě pár otázeček."~ */ JOURNAL #68106 /* ~Bedai-Lihn mi řekla, ať v tiskárně vyhledám Scofflawa Penna řeknu mu: "Město musí hořet."~ */ GOTO 9
  IF ~~ THEN REPLY #43112 /* ~"'Nechť město shoří.' Dobrá. Měj se."~ */ JOURNAL #68106 /* ~Bedai-Lihn mi řekla, ať v tiskárně vyhledám Scofflawa Penna řeknu mu: "Město musí hořet."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #43113 /* ~Usmívá se. "Ten, pro koho jsou na předním místě ti nezúčastnění, mi nemůže být příliš ku pomoci. Vzpomeň jen na všechny ty dělníky, které jsi TY sám zabil při zničení té zbraně ve Slévárně. V každé válce trpí nevinní - avšak nakonec, pokud stojí při nás, dostanou opět možnost zotavit se z toho všeho. Pod křídly frakcí se ale nikdy pořádně nevzmůžou ."~ */
  IF ~~ THEN REPLY #43114 /* ~"Jak ses vlastně dostala k Anarchistům?"~ */ GOTO 11
  IF ~~ THEN REPLY #43115 /* ~"Jak se člověk může přidat k Revoluční lize?"~ */ GOTO 13
  IF ~~ THEN REPLY #43116 /* ~"Mám několik dalších dotazů..."~ */ GOTO 9
  IF ~~ THEN REPLY #43117 /* ~"Tak to bychom měli. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY #43118 /* ~"Jsme rozdělováni do buněk, z nichž žádná nemá určité číslo. Lidé z jedné buňky neznají ty z druhé, takže se navzájem nemohou prozradit. Jistě, může se stát, že díky tomu dojde k nějakému nedorozumění, avšak demoralizace svobodu beroucích frakcí ho dokáže vynahradit."~ */
  IF ~~ THEN REPLY #43119 /* ~"Nemyslíš si, že výsledky vašich akcí mají za následek onu bojovnost a zkorumpovanost frakcí?"~ */ GOTO 16
  IF ~~ THEN REPLY #43120 /* ~"A jak ses ty sama dostala k Anarchistům?"~ */ GOTO 11
  IF ~~ THEN REPLY #43121 /* ~"Proč se nepokusíte rozbít systém zevnitř?"~ */ GOTO 12
  IF ~~ THEN REPLY #43122 /* ~"Jak se můžu přidat k Revoluční lize?"~ */ GOTO 13
  IF ~~ THEN REPLY #43123 /* ~"Ještě pár dalších otázeček..."~ */ GOTO 9
  IF ~~ THEN REPLY #43124 /* ~"To je prozatím všechno. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #43125 /* ~"Ne. Jsou to pokrytci, třebaže se snaží zničit to množství lidí, které jim vzdoruje. Ti, kteří vymáhají pomoc pro Sigil, jsou zároveň těmi, kteří jej zbourají hned, co se budou cítit ohroženi. My lidem pouze ukazujeme nesmyslnost idejí jejich představ vlády. My jsme roznětka, ne však příčina samotná."~ */
  IF ~~ THEN REPLY #43126 /* ~"Jak ses vlastně dostala k Anarchistům?"~ */ GOTO 11
  IF ~~ THEN REPLY #43127 /* ~"Proč se nepokusíte rozbít systém zevnitř?"~ */ GOTO 12
  IF ~~ THEN REPLY #43128 /* ~"Jak se můžu přidat k Revoluční lize?"~ */ GOTO 13
  IF ~~ THEN REPLY #43129 /* ~"Ještě pár dalších otázeček..."~ */ GOTO 9
  IF ~~ THEN REPLY #43130 /* ~"To je prozatím všechno. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #43131 /* ~"O Božím lidu? Ha. Většina z ostatních frakcí alespoň předstírají, že znají odpověď na otázku života, vesmíru a vůbec. Boží lidé jsou horší než oni - snaží se všemožně vypátrat, co je ono velké tajemství, avšak nikdy neměli ani potuchu o skutečnosti. Bohužel pouze poskvrňují Dolní čtvrť, zaplňují ji otráveným vzduchem, který vyvražďuje ty staré a slabé. Sami sebe nazývají užitečnými, ale nejsou nic jiného, než další s obchodníků se smrtí."~ */
  IF ~~ THEN REPLY #43132 /* ~"Dobrá. Mám několik dalších otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43133 /* ~"Rozumím ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #43134 /* ~"Všechno má své důvody. Zničením části velitelství frakce jsem pomohla lidem ztratit víru v Boží lidi. Zničením oné hrozné zbraně jsem vzbudila nedůvěru v zákaznících. Zabitím představitele frakce jsem lidem ukázala, že ti u moci jsou pouze pohyblivé terče a že v tomto zkorumpovaném systému nemá nikdo právo povyšovat se nad ostatní - pokud se ovšem nechce stát příští obětí. Každá z těchto akcí slouží jako symbolický schůdek k našemu úspěchu. Žádná destrukce však nemá za účelem destrukci. To by nás činilo stejnými, jako jsou Strážci zkázy."~ */
  IF ~~ THEN REPLY #43135 /* ~"Jako jsou kdo?"~ */ GOTO 19
  IF ~~ THEN REPLY #43136 /* ~"Měl bych ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43137 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #43138 /* ~"Strážci zkázy. Banda lidí, kteří se domnívají, že, protože všechno se časem rozpadne, je jejich prací zajistit, aby samotný mnohovesmír neodolal zkáze. Formálně jsme s nimi sice spojenci, ale faktem zůstává, že nakonec padnou. Všichni nakonec padnou."~ */
  IF ~~ THEN REPLY #43139 /* ~"Moc pěkný. Mám další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #43140 /* ~"Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY #43141 /* ~"O mně? Není příliš co říct. Přislíbila jsem si, že uvidím zánik všech frakcí, a začala jsem navštěvovat kurs magického inženýrství, které by mohlo být užitečné v jejich likvidaci. Před Božím lidem tu byli i jiní, mnoho jiných - však víš. Měla jsem více tváří, než si mohu zapamatovat, a více jmen, než záznamů v knize mrtvých. Nedovedu ti samozřejmě říci jména všech, které už jsem zradila, ale byla jich spousta."~ */
  IF ~~ THEN REPLY #43142 /* ~"Tomu ale říkám život. Jsi s ním spokojená?"~ */ GOTO 21
  IF ~~ THEN REPLY #43143 /* ~"Ach tak, měl bych ještě další otázky.."~ */ GOTO 9
  IF ~~ THEN REPLY #43144 /* ~"Tak si užívej dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43145 /* ~Krátce se štěkavě zasmála a hořce řekla, "Spokojená? Myslíš že spokojený člověk chce dělat tuhle práci?"~ */
  IF ~~ THEN REPLY #43146 /* ~"Když teda nejsi spokojená, proč s tím nepřestaneš?"~ */ GOTO 22
  IF ~~ THEN REPLY #43147 /* ~"Není to jedno? Spokojenost patří ke špatným ideálům, vytvořeným za účelem utiskování slabších a méněcenných. Ta pravá spokojenost neexistuje."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_3","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #43148 /* ~"Máš pravdu, zapomeň na to. Mám ještě pár dalších otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43149 /* ~"Dobrý postřeh. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43150 /* ~"Přestat s tím? A ztratit svůj prostředek pomsty? TOHLE ke mně patří, TOHLE dělá mne mnou. Bylo by to jako kdybys uřízl vlastní ruku - byl bys schopen vést opět stejný život?" Očima si přeměřila tvé jizvy. "Hmm, nezkoušel jsi to už?"~ */
  IF ~~ THEN REPLY #43151 /* ~"Takže ty se necháváš ovládat svou zlobou a krutostí?"~ */ GOTO 23
  IF ~~ THEN REPLY #43152 /* ~"Možná. Ale, ještě něco..."~ */ GOTO 9
  IF ~~ THEN REPLY #43153 /* ~"Možná. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43154 /* ~"Stalo se to součástí mne samé. Bez toho bych se nemohla stát tím, čím jsem."~ */
  IF ~~ THEN REPLY #43155 /* ~"Zvol jinou cestu, staň se něčím víc než jsi teď."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #43157 /* ~"Pak tedy nečel své krutosti a nechej ji velet. Způsobuj více zármutku a žalu. Mě to nezajímá."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #43160 /* ~"Dobrá. Mám ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43163 /* ~"Sbohem příště."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43165 /* ~"Já... Já nevím jak."~ */
  IF ~~ THEN REPLY #43167 /* ~"Zkus to. Zkus to a uvidíš."~ */ GOTO 27
  IF ~~ THEN REPLY #43168 /* ~"Tak to se potom můžeš rovnou zabít, protože v bytí neexistuje místo, kterého se dá dosáhnout beze změn."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_2","GLOBALGood",-1)
~ GOTO 28
  IF ~~ THEN REPLY #43169 /* ~"Skvěle. Mám ještě další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #43170 /* ~"Zkoušet to nemusíš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #43171 /* ~"Souhlasím s tebou. Spokojenost byla hlavním důvodem našeho sváru, přestože se jí nemůže pyšnit mnoho lidí... a ti, kteří mají to štěstí, jsou jenom blbci a naivkové, kteří nedokážou otevřít oči a pohlédnout na svět okolo nich. To už je mnohem lepší trpět a litovat se."~ */
  IF ~~ THEN REPLY #43172 /* ~"Pravda. Mám ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #43173 /* ~"Tak, tak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY #43174 /* ~"No, jak myslíš. A právě netečnost je to, proti čemu bojujeme. Nashle."~ */
  IF ~~ THEN REPLY #43175 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #43176 /* ~"Popřemýšlím o tom, ale nic ti nezaručuju. Loučím se s tebou, zjizvený, díky tobě mám nad čím dumat."~ */
  IF ~~ THEN REPLY #43177 /* ~"Jo, Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #43178 /* ~"Nechala jsem si to projít hlavou a zjistila jsem, že měním názory o víře. To mi stačilo. Sbohem."~ */
  IF ~~ THEN REPLY #43179 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",3)
~ THEN BEGIN 29 // from:
  SAY #43180 /* ~Pohrdavě se na tebe podívala a s pošklebkem řekla: "Copak? Změnil jsi svůj názor, nebo tě snad napadá nějaká jiná možnost?"~ */
  IF ~~ THEN REPLY #43181 /* ~"Změnil jsem názor. Zabiju ho."~ */ GOTO 30
  IF ~~ THEN REPLY #43182 /* ~"Mám ještě několik otázek..."~ */ GOTO 31
  IF ~~ THEN REPLY #43183 /* ~"Ale nic, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #43184 /* ~"Jednu šanci už jsi dostal. Myslíš, že teď ti budu věřit? Tak to se mýlíš. Jdi mi z očí!"~ */
  IF ~~ THEN REPLY #43185 /* ~"Ale až mi odpovíš na pár otázek."~ */ GOTO 31
  IF ~~ THEN REPLY #43186 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 33.1 54.0
  SAY #43187 /* ~"Když ty nechceš pomoci mně, proč bych já pomáhala tobě? Sbohem."~ */
  IF ~~ THEN REPLY #43188 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 36 35 even though they appear after this state */
~  GlobalGT("F_Ass","GLOBAL",1)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN BEGIN 32 // from:
  SAY #43189 /* ~"Už jsi dostal Sandozovo jméno do Knihy mrtvých?"~ */
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43190 /* ~"Ano. Už je po smrti."~ */ DO ~SetGlobal("F_Ass","GLOBAL",4)
SetGlobal("Smuggle","GLOBAL",1)
AddexperienceParty(8000)
~ GOTO 34
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43191 /* ~"Ne, ještě ne. Prozatím mám ještě pár otázek."~ */ GOTO 9
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43192 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #43193 /* ~"Došel už jsi k názoru, že tu práci přijmeš?"~ */
  IF ~~ THEN REPLY #43194 /* ~"Ano, udělám to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_1","GLOBALLaw",-1)
~ GOTO 46
  IF ~~ THEN REPLY #43195 /* ~"Ne, to nemůžu."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Bedai_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_1","GLOBALLaw",1)
~ GOTO 31
  IF ~~ THEN REPLY #43196 /* ~"Ne, ještě ne. Mám ještě pár otázek."~ */ GOTO 38
  IF ~~ THEN REPLY #43197 /* ~"Ne, ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 43.2
  SAY #43198 /* ~"Výborně. Vyžaduji po tobě ještě jednu službu, a potom můžeme nechat Boží lidi zmítat se v nepokojích. Potřebuju, abys mě nepozorovaně dostal pryč z tohoto místa - stráže začínají hledat viníka a já budu radši, když tě nenajdou - když se odtud vypařím, dojde jim, že za tím stojím já a ty budeš venku z nebezpečí. Co ty na to?"~ */
  IF ~~ THEN REPLY #43199 /* ~"Dej mi trochu času na rozmyšlenou."~ */ GOTO 35
  IF ~~ THEN REPLY #43200 /* ~"Dobrá, co mám udělat?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43201 /* ~"Ne. Myslím, že se snažíš svést to na mě."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
END

IF WEIGHT #5 ~  Global("Smuggle","GLOBAL",1)
Dead("Sandoz")
~ THEN BEGIN 35 // from: 34.0
  SAY #43202 /* ~"Musím se dostat ze Slévárny. Pomůžeš mi? Odpověz hned!"~ */
  IF ~~ THEN REPLY #43203 /* ~"Co k sakru... no dobrá."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43204 /* ~"Ne. Myslím, že se snažíš svést to na mě."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #43205 /* ~"Řekl jsem, že potřebuju trochu času. Sbohem."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 36 // from: 34.2 35.1
  SAY #43206 /* ~"Pokud mi teda nechceš pomoci, nemám ti už co říct."~ */
  IF ~~ THEN REPLY #43207 /* ~"No dobrá, pomůžu ti."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43208 /* ~"Nechci."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #43210 /* ~"Pak už ti tedy nemám co říct."~ */
  IF ~~ THEN REPLY #43211 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2 39.2 40.2 41.1 42.0 49.1 50.1 51.1 52.1 68.1
  SAY #43212 /* ~"Další otázky? Copak se nemáš o něco postarat?"~ */
  IF ~~ THEN REPLY #43213 /* ~"Pověz mi něco o sobě."~ */ GOTO 39
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43214 /* ~"Proč bych to dělal?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43215 /* ~"Proč bych to dělal?"~ */ GOTO 41
  IF ~~ THEN REPLY #43216 /* ~"Co se ti vlastně nelíbí na Božímu lidu?"~ */ GOTO 42
  IF ~~ THEN REPLY #43217 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #43218 /* ~"Jmenuju se Bedai-Lihn. Jsem magický inženýr - ne mág, ale pouze teoretik - a hodlám dosáhnout toho, aby Boží lid nedostal šanci použít svou pekelnou zbraň a šanci dostat se k nějaké další."~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43219 /* ~"Ale proč mám zabít toho chlapa?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43220 /* ~"Proč ničit ten stroj?"~ */ GOTO 41
  IF ~~ THEN REPLY #43221 /* ~"Dobrá. Mám ještě další otázky..."~ */ GOTO 38
  IF ~~ THEN REPLY #43222 /* ~"Už chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.0
  SAY #43223 /* ~"Protože Boží lid uzavírá s lidmi dohody. Špatné dohody. Sami si žijí v pohodlném předstíraní toho, že jejich činy nemají žádné vedlejší následky. Ale ony mají a já jim za to ukážu - a to tím, že zajistím, aby osoba zodpovědná za všechny ty jejich dohody neměla možnost něco takového zopakovat."~ */
  IF ~  Global("F_Ass","GLOBAL",1)
~ THEN REPLY #43224 /* ~"No dobrá, udělám to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~  Global("F_Ass","GLOBAL",2)
~ THEN REPLY #43225 /* ~"Ne, to není nic pro mě."~ */ GOTO 45
  IF ~~ THEN REPLY #43226 /* ~"Výborně. Ještě pár otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43227 /* ~"Jo, tak. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2 39.1 68.2
  SAY #43228 /* ~"Proč? Ten stroj je přece nástrojem ďábla... a to doslova. Vždyť fiendové pomocí ní vyvolají na tváři života nesčetné nesmazatelné jizvy, které už nikdo nikdy nedokáže přetvořit - to přesto, že v tuto dobu nevypadá ten pekelný výtvor nijak zle."~ */
  IF ~~ THEN REPLY #43229 /* ~"A co bude se všemi dělníky?"~ */ GOTO 52
  IF ~~ THEN REPLY #43230 /* ~"Výborně, ale teď mám ještě pár otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43231 /* ~"Už chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY #43232 /* ~"Vadí mi na nich, že se nechali zaslepit falešnými ideály té frakce. Zachycují město do okovů smrtícího vzduchu a předstírají, že vše je v pořádku. Jejich životní filosofie nedokáže ani obsáhnout otázky bezpečného žití. Nastal čas dát jim ochutnat vlastní medicínu.."~ */
  IF ~~ THEN REPLY #43233 /* ~"Ach tak. Mám ještě pár otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43234 /* ~"Dobrá. Měj se."~ */ EXIT
END

IF WEIGHT #10 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 43 // from:
  SAY #43235 /* ~"Slyšela jsem ten výbuch až sem. Skvělá práce. Jsi tedy připraven na další úkol?~ */
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43236 /* ~"Co mám udělat?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 44
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43237 /* ~"Jak to, že jsi nezemřela při výbuchu jako ostatní dělníci?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 71
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #66890 /* ~"Co je?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
SetGlobal("Smuggle","GLOBAL",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 44 // from: 43.0 71.0
  SAY #43238 /* ~"Jeden vrchní představitel frakce, Sandoz... Znáš ho, ne? Právě on je zodpovědný za vývoj té pekelné zbraně. Právě on nejvíce usiloval o dohodu a právě on se zaručil za dokončení výroby zbraně. Je tím, který je zodpovědný za smrt ostatních strojařů. On musí zemřít."~ */
  IF ~~ THEN REPLY #43239 /* ~"Dobrá, udělám to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43240 /* ~"Ani nápad, už zemřelo dost lidí."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 40.1 44.1
  SAY #43241 /* ~"Ty ho nechceš zabít? Tak to je ale opravdu zlé, protože - pokud si to neuvědomuješ - jsi už odsouhlasil spolupráci. Myslíš si že mi záleží na jedné mrtvole navíc? Pomysli na to, co už jsi udělal, a uvědom si, jakou má cenu skoncování s tím právě teď. Pokud přestaneš, nic se nezmění a ty akorát zbytečně zemřeš. Chceš tedy opravdu přestat s likvidováním frakce, nebo sis jen pouštěl hubu na špacír?"~ */
  IF ~~ THEN REPLY #43242 /* ~"Dobrá, udělám to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43243 /* ~"NE! Nezabiju ho."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 33.0 40.0 44.0 45.0
  SAY #43244 /* ~"Výborně. Jak už jsem řekla, jmenuje se Sandoz, asi už ses s ním setkal. Prozatím nic netuší, navíc, vůbec si nemusíš dělat starosti s tichým usmrcením - Sandoz nadělá dost hluku sám o sobě, takže stráže trošku zmatku navíc ani nepostřehnou. A až s ním skoncuješ, vrať se ke mně a já ti dám ještě jeden úkol - poslední. Teď jdi!"~ */
  IF ~~ THEN REPLY #43245 /* ~"Rozmyslel jsem si to. Nechci ho zabít."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
  IF ~~ THEN REPLY #43246 /* ~"Tak zatím sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #43247 /* ~Hodila po tobě pohrdavým pohledem. "To jsem si mohla myslet, jsi opravdu ubožák... že jsem s tebou vůbec ztrácela čas. Sbohem a neopovažuj se na mě ještě promluvit." Otočila se k tobě zády.~ */
  IF ~~ THEN REPLY #43248 /* ~"Tak fajn. Sbohem."~ */ EXIT
END

IF WEIGHT #11 ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",6)
~ THEN BEGIN 48 // from:
  SAY #43249 /* ~"Už jsi zničil ten ďábelský přístroj?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #43250 /* ~"Ne. Potřebuji nějaké heslo, abych se dostal za dveře."~ */ GOTO 49
  IF ~  !PartyHasItem("Gtoken")
False()
~ THEN REPLY #43251 /* ~"Ne. Zapomněl jsem, jak se dostat za dveře."~ */ GOTO 50
  IF ~~ THEN REPLY #43252 /* ~"A co bude s dělníky?"~ */ GOTO 52
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #43253 /* ~"Ještě ne, ale brzo tak udělám. Můžeš mi zatím říct o nějakých slabých místech toho stroje?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #43254 /* ~"Potřebuješ heslo? Pak se zeptej dozorčí Slévárny... mám takový dojem, že se jmenuje Alissa Tield. Nebo třeba požádej o pomoc Sarose. Má úžasně hbité prsty..."~ */
  IF ~~ THEN REPLY #43255 /* ~"Výborně. Jaká jsou slabá místa toho stroje?"~ */ GOTO 51
  IF ~~ THEN REPLY #43256 /* ~"Mám ještě pár jiných otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43257 /* ~"Tak dobrá, jdu na to. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #43258 /* ~"Tak to si buď honem vzpomeň, nebo najdi Sarose či Allisu Tield, dozorčí Slévárny. No a jestli ho z nich  nedostaneš, určitě si cestu k tomu stroji dokážeš vybojovat. To ti ale příliš nedoporučuju."~ */
  IF ~~ THEN REPLY #43259 /* ~"Skvělé. jaká jsou slabá místa toho stroje?"~ */ GOTO 51
  IF ~~ THEN REPLY #43260 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 38
  IF ~~ THEN REPLY #43261 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.3 49.0 50.0 68.0
  SAY #43262 /* ~"Nejvíc pozornosti bys měl věnovat hlavni. Nejlepší bude vložit něco kovového dovnitř. Kov vyvolá jiskření, zničí resonanci magického pole zbraně a navede jí tak k sebedestrukci. Takže, jakmile tam něco strčíš, odmašíruj zase zpátky. Budeš na to mít asi půl hodiny, pak dojde k výbuchu."~ */
  IF ~~ THEN REPLY #43263 /* ~"A co se stane s dělníky?"~ */ GOTO 52
  IF ~~ THEN REPLY #43264 /* ~"Mám ještě pár otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43265 /* ~"Díky moc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 41.0 48.2 51.0
  SAY #43266 /* ~"Coby? Jsou otroky frakce a ta nebude ronit slzy nad jejich hroby. Proč se o ně zajímáš?"~ */
  IF ~~ THEN REPLY #43267 /* ~"Vždyť oni jsou nevinní."~ */ GOTO 53
  IF ~~ THEN REPLY #43268 /* ~"Mám ještě pár otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43269 /* ~"Máš pravdu. Vrátím se s dobrými zprávami."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #43270 /* ~"Nevinní? Ha. Jenom opravdový idiot může nazvat ty, kteří vyrábějí tu zbraň nevinnými. Dobrej vtip." Zmlkla a přátelštějším tónem tě oslovila. "Tak zničíš ten stroj, nebo ne?"~ */
  IF ~~ THEN REPLY #43271 /* ~"Nezničím. Oni si nezaslouží zemřít."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43272 /* ~"Dobrá, zničím. Vrátím se, až bude hotovo. Sbohem."~ */ EXIT
END

IF WEIGHT #12 ~  Global("Sabotage","GLOBAL",8)
~ THEN BEGIN 54 // from: 55.0
  SAY #43273 /* ~"Už jsi měl svou šanci. Myslíš, že po tom všem ti ještě budu věřit? Tak to se mýlíš! Zmiz mi z očí."~ */
  IF ~~ THEN REPLY #43274 /* ~"Napřed mi ale odpověz na pár otázek."~ */ GOTO 31
  IF ~~ THEN REPLY #43275 /* ~"Jak chceš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.0 68.3 79.1
  SAY #43276 /* ~"Pak už si nemáme co říct. Drž svůj jazyk za zuby a nikdo se nedozví o tvojí bezmezné proradnosti. Sbohem, už na mě nemluv."~ */
  IF ~~ THEN REPLY #43277 /* ~"Počkej! Rozmyslel jsem si to!"~ */ GOTO 54
  IF ~~ THEN REPLY #43278 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #13 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 56 // from:
  SAY #43279 /* ~"Teď jsi jedním z Božích lidí. Líbí se ti to?"~ */
  IF ~~ THEN REPLY #43280 /* ~"Ano, líbí."~ */ GOTO 57
  IF ~~ THEN REPLY #43281 /* ~"Ne, vlastně ne."~ */ GOTO 58
  IF ~~ THEN REPLY #43282 /* ~"Mám pro tebe pár otázek."~ */ GOTO 59
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43295 /* ~"Thildon říkal, že jsi Anarchistka."~ */ GOTO 73
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon říkal, že jsi Anarchistka."~ */ GOTO 64
  IF ~~ THEN REPLY #5531 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 58.3
  SAY #43284 /* ~"Tak to mě těší. Ráda vidím lidi šťastné. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #43285 /* ~"Mám pro tebe pár otázek..."~ */ GOTO 59
  IF ~~ THEN REPLY #43286 /* ~"Ale nic. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43287 /* ~"Pročpak?"~ */
  IF ~~ THEN REPLY #43288 /* ~"Není to takové, jak jsem čekal."~ */ GOTO 60
  IF ~~ THEN REPLY #43289 /* ~"Protože mi došlo že to všechno jsou jen prázdná slova."~ */ GOTO 61
  IF ~~ THEN REPLY #43290 /* ~"Prostě jsem nespokojený, to je všechno."~ */ GOTO 60
  IF ~~ THEN REPLY #43291 /* ~"Teď si vlastně uvědomuju, že jsem víceméně šťastný."~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 // from: 56.2 57.0 60.0 63.0 64.0 65.0 66.0 67.0 72.0 73.1 76.0 77.1
  SAY #43292 /* ~"Jaké máš otázky?"~ */
  IF ~~ THEN REPLY #43293 /* ~"Pověz mi o Velké Slévárně."~ */ GOTO 62
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43294 /* ~"Co víš o té vraždě?"~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon říkal, že jsi Anarchistka."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43296 /* ~"Thildon mi řek, že jsi Anarchistka a že se snažíš svalit vinu na něj."~ */ GOTO 73
  IF ~~ THEN REPLY #43297 /* ~"Pověz mi o tvém projektu."~ */ GOTO 65
  IF ~~ THEN REPLY #43298 /* ~"Můžeš mi říct něco o lidech tady kolem?"~ */ GOTO 66
  IF ~~ THEN REPLY #43299 /* ~"Kdo jsi?"~ */ GOTO 67
  IF ~~ THEN REPLY #43300 /* ~"Ale nic, zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 58.2 61.0 61.1
  SAY #43301 /* ~"Některé věci jsou tak, jak jsme si je přáli mít, avšak lidé jsou stále nespokojení. Členství ve frakci patří k těm radostným věcem. Zauvažuj o tom a vrať se později. Co ty na to?"~ */
  IF ~~ THEN REPLY #43302 /* ~"Eéé... jjjo. Mám ještě pár otázek..."~ */ GOTO 59
  IF ~~ THEN REPLY #43303 /* ~"Máš pravdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY #43304 /* ~"Počkej. Tak jsi zasvěcen Božímu lidu, nebo ne??"~ */
  IF ~~ THEN REPLY #43305 /* ~Pravda: "Ano."~ */ GOTO 60
  IF ~~ THEN REPLY #43306 /* ~Lež: "Ano."~ */ GOTO 60
  IF ~~ THEN REPLY #43307 /* ~Pravda: "Ne."~ */ GOTO 69
  IF ~~ THEN REPLY #43308 /* ~Lež: "Ne."~ */ GOTO 69
  IF ~~ THEN REPLY #43309 /* ~"Hele, tohle není tvoje starost."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 59.0 81.0
  SAY #43310 /* ~Znuděně si oddechla. "Každého tady okolo se můžeš zeptat na Velkou Slévárnu a všichni ti odpoví stejně. Myslíš, že já ti povím něco nového? Polož mi jinou otázku."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43311 /* ~"Co víš o té vraždě."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #43312 /* ~"Thildon mi řek, že jsi Anarchistka a že se snažíš svalit vinu na něj."~ */ GOTO 64
  IF ~~ THEN REPLY #43313 /* ~"Pověz mi o tvém projektu."~ */ GOTO 65
  IF ~~ THEN REPLY #43314 /* ~"Můžeš mi říct něco o lidech tady kolem?"~ */ GOTO 66
  IF ~~ THEN REPLY #43315 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1 62.0 81.1
  SAY #43316 /* ~"No, podívej se... požádala jsem stráže, zda by nemohli na noc odejít pryč, protože jsem tady ve vedlejší místnosti měla důležitou práci na svém projektu a rozhodně jsem nepotřebovala jejich projevy, které by mě jen rušily. Potom, když jsem odcházela z místnosti, jsem se zděšením našla to tělo. Nemám samozřejmě žádné alibi a chápu, že jsem podezřelá - a určitě jsi už pochopil, že nebudu ochotná vypovídat pod kouzlem. Ovšem jenom kvůli tomu, že vypovídání by mohlo porušit slib mlčení, který jsem vyřkla na ochranu projektu."~ */
  IF ~~ THEN REPLY #43317 /* ~"Už chápu. Mám ještě pár otázek."~ */ GOTO 59
  IF ~~ THEN REPLY #43318 /* ~"Ještě si o tom popovídám s Keldorem."~ */ GOTO 72
  IF ~~ THEN REPLY #43319 /* ~"Už chápu. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 56.4 59.2 62.1 81.2
  SAY #43320 /* ~Uchichtla se. "Anarchistka? Správně. A támhle leží moje další noha. Máš nějaké opravdové otázky, nebo už se můžu vrátit ke své práci?"~ */
  IF ~~ THEN REPLY #43321 /* ~"Mám ještě pár otázek."~ */ GOTO 59
  IF ~~ THEN REPLY #43322 /* ~"Klidně se vrať ke své práci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 59.4 62.2 81.4
  SAY #43323 /* ~"Povědět ti něco o projektu, jehož ochraně a dokončení jsme zasvětili naše životy? Hmm. Ne. To není dobrý nápad. Určitě ne pro tuto chvíli. Můžu ti jen říct, že je opravdu mocný a že bohatě vynahradí úsilí, které jsme do něj vložili."~ */
  IF ~~ THEN REPLY #43324 /* ~"Fajn. Můžeš mi ještě na něco odpovědět ?"~ */ GOTO 59
  IF ~~ THEN REPLY #43325 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.5 62.3 81.5
  SAY #43326 /* ~"O dalších lidech tady? No, máme tu nádherného, ale výstředního Nihla Xandera, githzeraiskou vyvrženkyni Kel'leru, Thildona Šedivého, jehož srdce je ještě více dvojsečné než jeho jméno, představitele frakce Keldora, představitele Sandoze, jeho dvě děti, nějaké správce, kováře a spoustu dalších. Všichni z nich mě opomíjeli jako zrnko prachu, takže jsem se ani nenamáhala poznat je blíže. Buď pro mě pracují, nebo ne - víc mě nezajímá. A teď bych se rád věnovala své práci."~ */
  IF ~~ THEN REPLY #43327 /* ~"Počkej. Měl bych ještě pár otázek..."~ */ GOTO 59
  IF ~~ THEN REPLY #43328 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 59.6 81.6
  SAY #43329 /* ~"Jmenuju se Bedai-Lihn. Jsem magický inženýr - ne mág, ale pouze teoretik - a hodlám dosáhnout toho, aby Boží lid nedostal šanci použít svou pekelnou zbraň a šanci dostat se k nějaké další."~ */
  IF ~~ THEN REPLY #43330 /* ~"Ach tak. Mám ještě pár otázek..."~ */ GOTO 59
  IF ~~ THEN REPLY #43331 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 79.0
  SAY #43332 /* ~Spokojeně se usmála. "Výborně. Znič ten stroj v jeho slabém místě a dej mi vědět."~ */
  IF ~~ THEN REPLY #43333 /* ~"Jaká má slabá místa?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #43334 /* ~"Dám ti vědět, až to udělám. Pro tuto chvíli mám ještě pár otázek..."~ */ GOTO 38
  IF ~~ THEN REPLY #43335 /* ~"Proč bych to měl dělat?"~ */ GOTO 41
  IF ~~ THEN REPLY #43336 /* ~"Změnil jsem názor. V tomhle ti zabráním."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43337 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.2 61.3
  SAY #43338 /* ~"Chceš tím snad říci, že máš takový nedostatek úcty, že bys Boží lid zničil při první příležitosti?"~ */
  IF ~~ THEN REPLY #43339 /* ~"Moje řeč."~ */ GOTO 74
  IF ~~ THEN REPLY #43340 /* ~"To víš, že ne!"~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 61.4
  SAY #43341 /* ~"Ne, to teda není." Odvrátila se od tebe. "Sbohem."~ */
  IF ~~ THEN REPLY #43342 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #43343 /* ~"Tys to nečekal? Přísahala jsem s jiným jménem a jinou identitou, nejsem tedy ta osoba, která složila přísahu. Díky tomu jsem imunní. Takže, přijmeš tu práci, nebo ne??"~ */
  IF ~~ THEN REPLY #43344 /* ~"Pověz mi o ní"~ */ GOTO 44
END

IF ~~ THEN BEGIN 72 // from: 63.1
  SAY #43345 /* ~"Udělej to. On si dokáže ověřit, co jsem ti řekla - složil mi přísahu, takže ví, že je to mocné."~ */
  IF ~~ THEN REPLY #43346 /* ~"Dobrá. Mám ještě pár otázek..."~ */ GOTO 59
  IF ~~ THEN REPLY #43347 /* ~"Výborně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 56.3 59.3 81.3
  SAY #43348 /* ~Vidíš záblesk v jejích očích - ale ihned ho nahrazuje pohrdavý pohled, takže nevíš, zda jsi viděl správně. "Anarchistka? To je pravda. A tady mám svou další nohu, sáhni si na ni. Takže... máš už konečně nějaké pořádné otázky, nebo se můžu vrátit k práci?"~ */
  IF ~~ THEN REPLY #43349 /* ~"Co měl znamenat ten tvůj pohled?"~ */ GOTO 77
  IF ~~ THEN REPLY #43350 /* ~"Měl bych ještě další otázky..."~ */ GOTO 59
  IF ~~ THEN REPLY #43351 /* ~"Vrať se ke své práci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.0
  SAY #43352 /* ~"Tak v tom případě mluvíš s tou správnou osobou." Usmála se a v očích se jí objevilo nové světýlko. "Chceš udeřit proti tomu pekelnému stroji a Božímu lidu najednou?"~ */
  IF ~~ THEN REPLY #43353 /* ~"Co tím myslíš?"~ */ GOTO 79
  IF ~~ THEN REPLY #43354 /* ~"Ani ne. "~ */ GOTO 80
END

IF ~~ THEN BEGIN 75 // from: 9.4
  SAY #43355 /* ~"Býval mi užitečným pomocníkem, ale příliš se vázal na svou rodinu, než aby dopustil její zničení. Pokud zemřel, není to příliš veliká ztráta. Není moc lidí, kteří ho chtějí mít naživu. Vzpomínám ne něj, jako na chlapce, který udělal svou práci, ale neměl žádný talent."~ */
  IF ~~ THEN REPLY #43356 /* ~"Aha. Odpovíš mi ještě na pár otázek?"~ */ GOTO 9
  IF ~~ THEN REPLY #43357 /* ~"Hmmm, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #43358 /* ~"Dobrá, dobrá. Moc ráda vidím, že frakce nemá ve svých řadách zrádce. Můžu ti ještě s něčím pomoci?"~ */
  IF ~~ THEN REPLY #43359 /* ~"Jistě, mám ještě pár otázek..."~ */ GOTO 59
  IF ~~ THEN REPLY #43360 /* ~"Ne, ani ne. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 73.0
  SAY #43361 /* ~Pousmála se. "Tobě toho moc neujde, viď? Dovol mi vysvětlit ti to: Jak by ses cítil ty, kdybys byl křivě obviněn? Ten pohled byl výplodem mého vzteku. Nic víc, nic míň." *Zdá se* že mluví pravdu...~ */
  IF ~~ THEN REPLY #43362 /* ~"Tuhle odpověď neberu."~ */ GOTO 78
  IF ~~ THEN REPLY #43363 /* ~"Už chápu. Odpovíš mi ještě na pár otázek?"~ */ GOTO 59
  IF ~~ THEN REPLY #43364 /* ~"Jo tak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #43365 /* ~"To bys ale měl, protože já už ti jinou odpověď neposkytnu." Odvrátila se od tebe. "Sbohem."~ */
  IF ~~ THEN REPLY #43366 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 74.0
  SAY #43367 /* ~"Tím myslím, že tady ve Slévárně vyvíjíme zbraň ohromně ničivé síly, pomáhají nám v tom baatezu - fiendové, jak chceš. Zničením té zbraně nedosáhneš jenom vybití vlastního vzteku na frakci, kterou nenávidíš, ale zároveň krvavě potrestáš všechny fiendy. Co ty na to?"~ */
  IF ~~ THEN REPLY #43368 /* ~"Udělám to."~ */ DO ~SetGlobal("Sabotage","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #43369 /* ~"Ne. to neudělám."~ */ DO ~SetGlobal("Sabotage","GLOBAL",8)
IncrementGlobalOnceEx("GLOBALGood_Bedai_3","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_2","GLOBALLaw",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 80 // from: 74.1
  SAY #43370 /* ~"V tom případě už si nemáme co říct. Drž za zuby svůj jazyk a já budu držet ten svůj."~ */
  IF ~~ THEN REPLY #43371 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #14 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 81 // from: 82.0
  SAY #43372 /* ~"Co chceš?"~ */
  IF ~~ THEN REPLY #43373 /* ~"Pověz mi o Velké slévárně."~ */ GOTO 62
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #43374 /* ~"Co víš o té vraždě."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43375 /* ~"Thildon mi řekl, že jsi Anarchistka a že se snažíš svalit vinu na něj."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43376 /* ~"Thildon mi řekl, že jsi Anarchistka a že se snažíš svalit vinu na něj."~ */ GOTO 73
  IF ~~ THEN REPLY #43377 /* ~"Můžeš mi říct něco o projektu, na kterém pracuješ."~ */ GOTO 65
  IF ~~ THEN REPLY #43378 /* ~"Pověz mi o jiných lidech tady kolem."~ */ GOTO 66
  IF ~~ THEN REPLY #43379 /* ~"Kdo jsi?"~ */ GOTO 67
  IF ~~ THEN REPLY #43380 /* ~"Ale nic. Měj se."~ */ EXIT
END

IF WEIGHT #15 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 82 // from:
  SAY #43381 /* ~Vidíš silnou ženu s vlasy pevně sčesanými dozadu. Vypadá napjatě a nervózně a zdá se, že je zahloubána do svých myšlenek. Když ses přiblížil, vzhlédla a zeptala se: "Můžu ti s něčím pomoci?"~ */
  IF ~~ THEN REPLY #43382 /* ~"Ano, mám pár otázek."~ */ GOTO 81
  IF ~~ THEN REPLY #43383 /* ~"Ne, díky. Sbohem."~ */ EXIT
END
