// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DULTHERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DULTHERA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64787 /* ~Vidíš starší, obézní ženu. Má oblečené otrhané šaty. Zdá se, že se bezcílně potuluje ulicemi a stále si pro sebe něco žvatlá. Když si tě všimla, obdařila tě bezzubým úsměvem. "Přišel jsi za Ultherou né? Co může pro tě udělat?"~ */
  IF ~~ THEN REPLY #64788 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #64789 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64790 /* ~"Jo, jo. I ty jseš vodemně pozdraven..." Pozorně si tě prohlídla a její úsměv se rozšířil. "Vážně jseš tak hodnej, že ses přišel mrknout na starou Ultheru. Co bys chtěl?"~ */
  IF ~~ THEN REPLY #64791 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64792 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.2 8.1 9.0 12.1 13.2 14.1 15.1 16.1 17.1 18.1 24.0 30.0
  SAY #64793 /* ~"Jo, tak tedy střílej."~ */
  IF ~~ THEN REPLY #64794 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #64795 /* ~"Co tu děláš?"~ */ GOTO 5
  IF ~~ THEN REPLY #64796 /* ~"Co bys mi mohla říct o tomhle místě?"~ */ GOTO 13
  IF ~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN REPLY #64797 /* ~"Chtěl bych se tě zeptat na Sherylininho otce, Arkina."~ */ GOTO 16
  IF ~~ THEN REPLY #64798 /* ~"Vlastně nic, musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64799 /* ~"Ještěs vo mě neslyšel? To ti ty tvý jizvy vlezly do uší a tys z toho ouplně vohluch?" Naklonila se a začala zkoumat tvé uši. "Pche! Nevadí. Ulthera jméno mé. Ulthera, jež čarodějnicí je zvána."~ */
  IF ~~ THEN REPLY #64800 /* ~"Jsi čarodějnice?"~ */ GOTO 4
  IF ~~ THEN REPLY #64801 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64802 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64803 /* ~Přestala se smíchem, při kterém si kolem jdoucí museli myslet, že se dala na ohýbání plechů . "Jasán, že ne hňupe. Lidi nechápou Ultheru. Si myslí, že je divná, zvláštní jo... čarodějnice. Toť vše."~ */
  IF ~~ THEN REPLY #64804 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64805 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #64806 /* ~"Co jako dělá Ulthera..." Zamračila se a na její tváři se objevili ještě neodhalené vrásky. "Vona předvídá věci. Lidi k ní přicházejí a ptají se jí. Vona najde věci, na které se ji ptají."~ */
  IF ~~ THEN REPLY #64807 /* ~"Já jsem ztratil paměť. Můžeš ji pro mě najít?"~ */ GOTO 6
  IF ~~ THEN REPLY #64808 /* ~"Ztratil jsem jméno, můžeš ho pro mě najít?"~ */ GOTO 10
  IF ~~ THEN REPLY #64809 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64810 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64811 /* ~Zamračila se na tebe a pak ti podala zvráskavěnou ruku. "Jo ruka to Ulthery řekne."~ */
  IF ~~ THEN REPLY #64812 /* ~Podej jí ruku.~ */ GOTO 7
  IF ~~ THEN REPLY #64813 /* ~Odmítni.~ */ GOTO 30
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64814 /* ~Přijal jsi Ultherinu ruku. Chvíli se nic nedělo. Náhle jsi ale ucítil ve své mysli přítomnost někoho jiného, jak zkoumá tvé nejhlubší myšlenky. Tyhle pocity se ti zdály divné, možná děsivé. Instinktivně jsi se bránil a pokusil jsi se vytlačit vetřelce ze své mysle. Uslyšels Ultherino jeknutí a pak pustila tvou ruku.~ */
  IF ~~ THEN REPLY #64815 /* ~"No?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64816 /* ~"Mňo, jseš dobře divnej..." Trochu potřásla hlavou. "Ulthera neví... Tví myšlenky jsou víc skryty než ztraceny... Nebo jseš posedlej někým jiným, jo... Ulthera cítila velkou propast nebo co..." Povzdechla. "Ulthera ti nemůže pomoct... Jseš nad její prosté možnosti."~ */
  IF ~~ THEN REPLY #64817 /* ~"Nepochopil jsem o čem jsi to mluvila. Co tím myslíš?"~ */ GOTO 9
  IF ~~ THEN REPLY #64818 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64819 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #64820 /* ~Zafuněla a potřásla hlavou. "Ulthery se nepodařilo co jako chtěla... Vodpusť starej ženě. Ulthera ti nepomůže."~ */
  IF ~~ THEN REPLY #64821 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64822 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #64823 /* ~Zamračila se a pak k tobě natáhla ruku. "Tvoje ruka sakra, podej ji Ulthery."~ */
  IF ~~ THEN REPLY #64824 /* ~Přijmi ji.~ */ GOTO 11
  IF ~~ THEN REPLY #64826 /* ~Odmítni.~ */ GOTO 30
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64825 /* ~Přijal jsi Ultherinu ruku. Chvíli se nic nedělo. Náhle si ale ucítil ve své mysli přítomnost někoho jiného, jak zkoumá tvé nejhlubší myšlenky. Tyhle pocity se ti zdály divné, možná děsivé. Instinktivně jsi se bránil, pokusil jsi se vytlačit vetřelce ze své mysle. Uslyšels Ultherino jeknutí a pak pustila tvou ruku.~ */
  IF ~~ THEN REPLY #64827 /* ~"No?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #64828 /* ~"No, jseš divnej..." Trochu potřásla hlavou. "Ulthera nic nezjistila... Tvé jméno nebylo ztraceno, ale odstraněno z vlastní vůle... Bezejmenný jsi a bezejmenným zůstaneš. Volba, kterou sis vybral ty... Ulthera ti nemůže pomoct."~ */
  IF ~~ THEN REPLY #64829 /* ~"Nepochopil jsem o čem jsi to mluvila. Co tím myslíš?"~ */ GOTO 9
  IF ~~ THEN REPLY #64830 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64831 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #64832 /* ~Pohlédla na tebe a usmála se. "Tohle je Pharodova říše. Pohřbená vesnice se to jmenuje či co... Sigil leží nad, katakomby pod... Nic jako víc Ulthera neví..."~ */
  IF ~~ THEN REPLY #64833 /* ~"Hledám Pharoda, kde ho můžu najít?"~ */ GOTO 14
  IF ~~ THEN REPLY #64834 /* ~"Řekni mi něco o katakombách."~ */ GOTO 15
  IF ~~ THEN REPLY #64835 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64836 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #64837 /* ~"Sever a východ, ty potřebuješ jít. Ulthera neví jako přesně. Pharod stráže má, tedy stráže musíš hledat. Když najdeš stráže, Pharod je nablízku..."~ */
  IF ~~ THEN REPLY #64838 /* ~"Vzpomenula jsi katakomby, co mi můžeš o nich říct?"~ */ GOTO 15
  IF ~~ THEN REPLY #64839 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64840 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #64841 /* ~Ustaraně na tebe pohlédla. "Je to krypta smrti, Truchlící kámen jmenována je. Smrt tady nepokojně odpočívá; chodí po chodbách... Opatrnost měj, když tam jdeš." Nejasně podotkla. "Jih a východ, tam musíš jít, když hledáš Truchlící kámen..."~ */
  IF ~~ THEN REPLY #64842 /* ~"Vzpomenula jsi Pharoda, kde ho mohu najít?"~ */ GOTO 14
  IF ~~ THEN REPLY #64843 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64844 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.3
  SAY #64845 /* ~"Pche! To tě jako poslala ta holka Sheryl!" Vypadá to spíše jako konstatování než otázka. Než pokračovala, chvíli na tebe jen tak civěla. "Co bys jako chtěl vědět o Arkinovi?"~ */
  IF ~~ THEN REPLY #64846 /* ~"Sheryl říká, že se ztratil. Má o něj strach."~ */ GOTO 17
  IF ~~ THEN REPLY #64847 /* ~"Zapomeň na to, mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64848 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64849 /* ~Přikývla. "Jo, jo je ztracen. A tohle divné děvče přišlo a ptalo se jako Ulthery... Ne! Obviňovala Ultheru! Obviňovala ji, že dělala zle... Pchá! Ulthera je uražená!"~ */
  IF ~~ THEN REPLY #64850 /* ~"Určitě můžeš odpustit malému dítěti, které se obává o svého otce."~ */ GOTO 18
  IF ~~ THEN REPLY #64851 /* ~"Zapomeň na to, mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64852 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #64853 /* ~Ulthera na tebe ostře pohlédla, ale pak zlost z její tváře zmizela a přikývla. "Jo, jo... Ulthera může odpustit, starosti dělají z člověka malé děcko, které zapomíná na své způsoby... Jak ti může  Ulthera pomoct?"~ */
  IF ~~ THEN REPLY #64854 /* ~"Arkin hledal klíče od portálů. Že prý přišel za tebou s žádostí o radu?"~ */ GOTO 19
  IF ~~ THEN REPLY #64855 /* ~"Zapomeň na to, mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64856 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64857 /* ~"Jo" Přikývla. "Arkin přišel za Ultherou a chtěl po ní, aby mu zjistila, co za klíče to jsou... Ztracené klíče, jo, ztracené pro čas, ztracené pro lidi... Ulthera je našla... Dala je Arkinovi. Arkin má klíče."~ */
  IF ~~ THEN REPLY #64858 /* ~"Co jsou zač?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64859 /* ~"Ah... Ulthera je má... Klíče. Jsou jednoduché." Začala hledat, přešmátrávat všechny své šuplíky. Po chvíli se jí na její vrásčité tváři objevil vítězný úsměv. "Tu jsou, klíč pro vstup..." Podává ti svícen.~ */
  IF ~~ THEN REPLY #64860 /* ~"... a klíč, abych mohl jít ven, co je to?"~ */ DO ~GiveItemCreate("Candle",Protagonist,1,0,0)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #64861 /* ~Chvíli se hystericky smála na neznámém vtipu. "Jo, výstupní klíč... prázdný měšec! Jo, musíš vodejít z kobky s prázdným měšcem..." Ulthera ti podává prázdný měšec.~ */
  IF ~~ THEN REPLY #64862 /* ~"Teď ještě potřebuji vědět, kde je portál. Nevíš to náhodou?"~ */ DO ~GiveItemCreate("Purse",Protagonist,1,0,0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #64863 /* ~Znovu se rozesmála a pak pokrčila rameny. "Ulthera neví... to místo je ztraceno. Arkin věděl, ne Ulthera." Ulthera na tebe důležitě pohlédla a pak mile dodala. "Najít ho může, jo, ale musíš něco jako Ulthery přinést..."~ */
  IF ~~ THEN REPLY #64864 /* ~"Co potřebuješ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #64865 /* ~Dala si své kostěné ruky v bok. "Hmm. Hrobka, kterou jako najdeš... bude se ti vážně líbit... Přines Ulthery kost z lidské nohy. A pak ti ona najde portál. Teď běž!"~ */
  IF ~~ THEN REPLY #64866 /* ~"Dobře tedy Ulthero. Přinesu ti kost z lidské nohy. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, čarodějnice mi dala klíče od portálu, který chtěl prozkoumat Sherylin otec, Arkin. Vstupním klíčem je svícen a výstupním je prázdný měšec. Ulthera vlastně ani neví, kde přesně ten portál je. Požádala mě abych našel kost z lidské nohy. Tvrdí, že ji může použít k nalezení portálu. Souhlasil jsem s tím.~ */ EXIT
  IF ~~ THEN REPLY #64867 /* ~"Zapomeň na to. To ti teda vážně nepřinesu. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64868 /* ~"Hmm. Musím si to ještě rozmyslet. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #64869 /* ~Vidíš Ultheru, věštkyni. Jak jsi přicházel, zamávala ti se svými kostnatými rukami. "Jo, jseš zpět. Co jako vodemě chceš?"~ */
  IF ~~ THEN REPLY #64870 /* ~"Mám otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64871 /* ~"Nic sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #64872 /* ~Vidíš Ultheru, věštkyni. Jak jsi přicházel, zamávala ti se svými kostnatými rukami. "Jo, jseš spět. Rozmyslel sis to. Najdi Ulthery kost z lidské nohy a vona ti najde portál. Co na to říkáš?"~ */
  IF ~~ THEN REPLY #64873 /* ~"Dobře tedy Ulthero. Přinesu ti kost z lidské nohy. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, čarodějnice mi dala klíče od portálu, který chtěl prozkoumat Sherylin otec, Arkin. Vstupním klíčem je svícen a výstupním je prázdný měšec. Ulthera vlastně ani neví, kde přesně ten portál je. Požádala mě abych našel kost z lidské nohy. Tvrdí, že ji může použít k nalezení portálu. Souhlasil jsem s tím.~ */ EXIT
  IF ~~ THEN REPLY #64874 /* ~"Zapomeň na to. To ti teda vážně nepřinesu. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64875 /* ~"Zvážím to. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #64876 /* ~Vidíš Ultheru, věštkyni. Jak jsi přicházel, zamávala ti se svými kostnatými rukami. "Jo, jseš zpět. Odmítl jsi jí jako pomoct. Najdi Ulthery kost z lidské nohy a ona ti jako najde portál. Co na to říkáš?"~ */
  IF ~~ THEN REPLY #64877 /* ~Dobře tedy Ulthero. Přinesu ti kost z lidské nohy. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, čarodějnice mi dala klíče od portálu, který chtěl prozkoumat Sherylin otec, Arkin. Vstupním klíčem je svícen a výstupním je prázdný měšec. Ulthera vlastně ani neví, kde přesně ten portál je. Požádala mě abych našel kost z lidské nohy. Tvrdí, že ji může použít k nalezení portálu. Souhlasil jsem s tím.~ */ EXIT
  IF ~~ THEN REPLY #64878 /* ~"Zapomeň na to. To ti teda vážně nepřinesu. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #64879 /* ~"Zvážím to. Sbohem."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #64880 /* ~Vidíš Ultheru, věštkyni. Jak jsi přicházel, zamávala ti se svými deformovanými rukami. "Jo, jseš spět. Rozhodl ses jí pomoct. Najdi Ulthery kost z lidské nohy a ona ti jako najde portál. Kde je kost?"~ */
  IF ~  !PartyHasItem("Legclub")
~ THEN REPLY #64881 /* ~"Ještě ji nemám, ale určitě ji najdu. Sbohem."~ */ EXIT
  IF ~  PartyHasItem("Legclub")
~ THEN REPLY #64882 /* ~"Tu je, teď mi řekni, kde je portál."~ */ DO ~DestroyItemObject("Legclub",Protagonist,TRUE)
SetGlobal("Ulthera_Quest","GLOBAL",4)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #64883 /* ~Ulthera na tebe potěšena pohlédla a vzala si od tebe kost. Přitiskla si ji na prsa a pak začala zpívat a klátit se sem a tam. Její hlas se stal úzkostný, nebo co, ale tak tichý, že si ji sotva slyšel. Konečně vydechla a ukázala kostí směrem na severozápad. "Jo, sever a západ to je, nedaleko vchodu do města... Ulthera to jako našla, teď běž!"~ */
  IF ~~ THEN REPLY #64884 /* ~"Díky. Sbohem."~ */ JOURNAL #64936 /* ~Našel jsem lidskou kost pro Ultheru a zeptal jsem se jí na lokaci Arkinova portálu. Ona zazpívala a pak mi řekla, že portál je severozápadně blízko vstupu do Pohřbené vesnice. Doufám, že má pravdu.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ulthera_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #64885 /* ~Vidíš Ultheru, věštkyni. Jak jsi přicházel, zamávala ti se svými kostnatými rukami. "Jo, jseš spět. Co jako vodemě chceš?"~ */
  IF ~~ THEN REPLY #64886 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 6.1 10.1
  SAY #64932 /* ~Ulthera se na tebe zamračila a dala si ruky v bok. "Bojíš se staré ženy? Bojíš se jako, že by tě Ulthera mohla kousnout do...? Tož teda nevadí. Co chceš vodemně?"~ */
  IF ~~ THEN REPLY #64933 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #64934 /* ~"Musím jít, sbohem."~ */ EXIT
END
