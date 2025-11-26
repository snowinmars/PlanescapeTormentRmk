// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT2~

IF ~  Global("BBPlot_Secret_2","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53136 /* ~Miejsce to, w kształcie okręgu na podłodze labiryntu, jest szczególne, ponieważ wymarła wokół niego cała roślinność, za wyjątkiem trzech wątłych gałązek w samym środku... wygląda na to, że gałązki pożarły całą roślinność znajdującą się wokół nich.~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_1","GLOBAL",0)
!Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN REPLY #53137 /* ~Zacznij nucić melodię, tę samą, której użyła Ravela, gdy przywoływała moce labiryntu.~ */ GOTO 1
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53153 /* ~Przyjrzyj się uważnie tym gałązkom.~ */ GOTO 6
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53156 /* ~Przyjrzyj się uważnie tym gałązkom.~ */ GOTO 7
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53163 /* ~Przyjrzyj się uważnie tym gałązkom.~ */ GOTO 7
  IF ~~ THEN REPLY #53164 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #53138 /* ~Gdy zaczynasz sobie nucić, gałązki zaczynają się nagle wić w obrębie swojego martwego kręgu, bijąc o siebie, sięgając po coś w próżnię... a ty wiesz instynktownie, że próbują pochwycić ziarno o czarnych kolcach.~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53139 /* ~Wciąż nucąc, rzuć w środek jedno z ziaren o czarnych kolcach.~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_2","GLOBAL",1)
~ GOTO 2
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53151 /* ~"Mam nadzieję, że znajdę jeszcze jakieś ziarna... chociaż mam wrażenie, że Ravela dała mi wszystkie jakie tu są."~ */ EXIT
  IF ~~ THEN REPLY #53152 /* ~Zostaw wijące się gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53140 /* ~W dalszym ciągu nucąc, rzucasz ziarno między masę gałęzi, a trzy gałązki owijają się wokół niego z *trzaskiem*, rozłupując je. Gałązki przestają się gwałtownie poruszać i widzisz, jak powoli zaczynają rosnąć, stając się grubymi gałęziami. W czasie wzrostu, trzy nowe gałęzie oplatają się wokół siebie, po czym odrywają się z *trzaskiem* od podstawy. Turlają się wzdłuż podłogi, a następnie zastygają w miejscu, śmiertelnie znieruchomiałe.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53141 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 3
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53144 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53147 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53148 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53142 /* ~Podnosisz po trzykroć splecioną gałąź; spoczywa w twoich rękach nieruchomo, ale bardzo słabo wyczuwasz wewnątrz niej swoją melodię. Gałąź jest bez wątpienia magiczna... ale odnogi wyglądają na nieco odrętwiałe; brak ci pewności, ile mocy się w niej kryje.~ */
  IF ~~ THEN REPLY #53143 /* ~"Wezmę to... może się później przydać."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2
  SAY #53145 /* ~Podnosisz po trzykroć splecioną gałąź; spoczywa w twoich rękach nieruchomo, ale bardzo słabo wyczuwasz wewnątrz niej swoją melodię. Gałąź jest bez wątpienia magiczna... i potężna.~ */
  IF ~~ THEN REPLY #53146 /* ~"Wezmę to... może się później przydać."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY #53149 /* ~Podnosisz po trzykroć splecioną gałąź; spoczywa w twoich rękach nieruchomo, ale bardzo wyraźnie wyczuwasz wewnątrz niej swoją melodię, jak bicie serca. Gałąź jest bez wątpienia magiczna... i potężna. *Czułeś*, że gałąź reaguje na twoją melodię, do tego stopnia, że mogłeś wspomóc jej wzrost, podczas gdy gałęzie przeplatały się nawzajem. Wewnątrz niej spoczywa ogromna ilość mocy... ślad mocy Raveli, być może, ale głównie siła twojej własnej woli. Nic na to nie możesz poradzić, ale robisz wrażenie na sobie samym.~ */
  IF ~~ THEN REPLY #53150 /* ~Weź tę gałąź... *twoją* gałąź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #53154 /* ~Gałązki są cienkie jak sięgające po coś palce i w ogóle nie mają na sobie czarnych kolców, którymi pokryte są gałęzie znajdujące się w innych miejscach labiryntu. Poza tym, wygląda na to, że nie odznaczają się niczym szczególnym.~ */
  IF ~~ THEN REPLY #53155 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 0.3
  SAY #53157 /* ~Gałązki są cienkie jak sięgające po coś palce i w ogóle nie mają na sobie czarnych kolców, którymi pokryte są gałęzie znajdujące się w innych miejscach labiryntu. Gdy je jednak uważniej badasz, wyczuwasz w ich wnętrzu magiczne wibracje - podobne do delikatnych wibracji, jakie wyczuwasz w labiryncie, ale o wiele bardziej uparte, jak zawodzenie malutkich dzieci.~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53158 /* ~Zacznij nucić melodię, tę samą, której użyła Ravela, gdy przywoływała moce labiryntu.~ */ GOTO 1
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53159 /* ~Zbadaj te gałązki uważnie i sprawdź, czy możesz określić naturę tej aury.~ */ GOTO 8
  IF ~~ THEN REPLY #53162 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #53160 /* ~Badasz uważnie gałązki; z pewnego powodu odczuwasz silne wrażenie, że te gałązki rosną tutaj celowo. Zdają się mieć w sobie jakiś magiczny potencjał, ale nie możesz znaleźć sposobu na jego uwolnienie.~ */
  IF ~~ THEN REPLY #53161 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_2","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53165 /* ~Widzisz przed sobą martwy krąg na podłodze labiryntu... nie wyrosły tam żadne nowe gałęzie i nie wydaje ci się, żeby miały jeszcze urosnąć, teraz, gdy dni Raveli dobiegły końca.~ */
  IF ~~ THEN REPLY #53166 /* ~Odejdź od tego kręgu.~ */ EXIT
END
