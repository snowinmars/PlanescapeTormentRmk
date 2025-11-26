// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBAEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBAEN~

IF ~  Global("Baen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21485 /* ~Widzisz potężnego mężczyznę o ostrych rysach i bolesnym wyrazie twarzy. Pomimo swojej sporej sylwetki ma w sobie coś kobiecego i w przeciwieństwie do innych mieszkańców, których widziałeś, zdaje się, jakby niedawno brał kąpiel. Gdy się zbliżasz, on podnosi głowę z nadzieją i krzyczy wysokim głosem: "Kradok... dobry panie?"~ */
  IF ~~ THEN REPLY #21486 /* ~"Co?"~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22732 /* ~Zignoruj mężczyznę, idź dalej.~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #22733 /* ~"Ech..." Jego nadzieja znika, gdy przygląda się on twojej twarzy. "Po tysiąckroć przepraszam, dobry panie, jeśli czymś obraziłem." Kłania się nieznacznie. "Nazywają mnie Baen Wysłannik, trzecie dziecko Dai'Bauena Wysłannika. Jestem jednym z wielu gońców zatrudnionych w Domu Wysłanników."~ */
  IF ~~ THEN REPLY #22734 /* ~"Nie trzeba żadnych przeprosin, Baen. Czego sobie życzysz?"~ */ GOTO 4
  IF ~~ THEN REPLY #22735 /* ~"Nie obraziłeś mnie... jeszcze. Czego chcesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #22736 /* ~"Słuchaj, muszę już iść, Baen..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #22737 /* ~Gdy chcesz przejść obok, mężczyzna krzyczy ponownie, tym razem głośniej. Prawie skrzeczy z wysiłku. "Kradok?! Dobry panie, niosę dla pana wiadomość!"~ */
  IF ~~ THEN REPLY #22738 /* ~"O czym ty mówisz?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #22739 /* ~"Tylko chwilę pańskiego czasu, dobry panie. Szukam nadzorcy, Kradoka, którego podobno można znaleźć w Ulu, jednakże... on mnie unika. Czy słyszałeś o takim człowieku?"~ */
  IF ~~ THEN REPLY #22740 /* ~"Nie."~ */ GOTO 5
  IF ~~ THEN REPLY #22741 /* ~"Przykro mi..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1
  SAY #22742 /* ~"Po tysiąckroć przepraszam, iż kłopoczę pana taką trywialną sprawą, ale poszukuję Kradoka, nadzorcy w Ulu..." Baen wygląda, jakby go coś bolało. "Ale jak do tej pory on mnie unika." Patrzy na ciebie z nadzieją. "Czy może być, że słyszałeś o tym człowieku?"~ */
  IF ~~ THEN REPLY #22743 /* ~"Nie."~ */ GOTO 5
  IF ~~ THEN REPLY #22744 /* ~"Przykro mi, nie spotkałem go."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #22745 /* ~Baen wzdycha głęboko. "Mam dostarczyć mu wiadomość i jak dotąd fortuna nie chce mnie wspomóc..."~ */
  IF ~~ THEN REPLY #22746 /* ~"Mogę ci pomóc... jeśli go spotkam, mogę przekazać mu twoją wiadomość."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22747 /* ~"Może uda mi się odnaleźć go i dostarczyć twoją wiadomość... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22748 /* ~"Nie mogę ci pomóc... słuchaj, muszę już iść."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #22749 /* ~"Oczywiście, dobry panie, po tysiąckroć przepraszam, że cię zatrzymuję." Przytakuje Baen. "Dzięki, panie, za twój czas."~ */
  IF ~~ THEN REPLY #22750 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0
  SAY #22751 /* ~Twarz Baena rozjaśnia się jak latarnia. "Och, co za szczęśliwy dzień dla Baena i Domu Wysłanników! Każda pomoc, jaką może pan wyświadczyć, będzie dla mnie cenna! Jeśli odnajdzie pan tego Kradoka i przekaże wiadomość, dopilnuję, aby zapłacono panu za wszelkie trudy."~ */
  IF ~~ THEN REPLY #22752 /* ~"W porządku... jak brzmi wiadomość?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 12.1
  SAY #22753 /* ~Twarz Baena rozjaśnia się jak latarnia. "Oczywiście, dobry panie. Jeśli odnajdzie pan tego Kradoka i przekaże wiadomość, zapłacę panu za wszelkie trudy."~ */
  IF ~~ THEN REPLY #22754 /* ~"W porządku... jak brzmi wiadomość?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #22755 /* ~Baen recytuje wiadomość prawie jak mantrę: *"Dostawa musi znaleźć się w Klątwie trzeciego dnia albo będzie kara."* Marszczy się. "Powiedziano mi, że Kradok będzie wiedział, o jaką 'dostawę' chodzi."~ */
  IF ~~ THEN REPLY #22756 /* ~"Jeśli spotkam Kradoka, przekażę mu wiadomość. Czy jest coś, co mógłbyś powiedzieć mi o nim, co pomogłoby mi go znaleźć?"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.1
  SAY #22757 /* ~"Mówią o nim, że jest *olbrzymim* mężczyzną o twardych rysach. Jest nadzorcą na jednym z targów Ula. Oprócz tego wiem niewiele więcej, dobry panie."~ */
  IF ~~ THEN REPLY #22758 /* ~"Rozumiem. To wystarczy jak na początek."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22759 /* ~Baen kłania się. "Dziękuję, panie. Jeśliby fortuna panu sprzyjała i byłby pan w stanie zanieść wiadomość Kradokowi, niech pan będzie tak miły, żeby wrócić i powiedzieć mi o tym. Dopilnuję, aby pańskie wysiłki zostały nagrodzone."~ */
  IF ~~ THEN REPLY #22760 /* ~"Doskonale. Żegnaj, Baen."~ */ JOURNAL #22761 /* ~Zgodziłem się przekazać wiadomość Kradokowi, jeśli go zobaczę. Baen powiedział mi, że jest on nadzorcą targu gdzieś w Ulu. Zwrócę na to uwagę.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #22762 /* ~Widzisz Baena Wysłannika. Gdy się zbliżasz, on patrzy na ciebie z nadzieją... ale nie odzywa się.~ */
  IF ~~ THEN REPLY #22763 /* ~"Słuchaj, wciąż potrzebujesz odnaleźć... Kradoka, tak? Jeśli potrzebujesz pomocy, to ci jej udzielę."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22764 /* ~"Zmieniłem zdanie. Pomogę ci odnaleźć tego Kradoka... ale nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22765 /* ~Zignoruj go.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
GlobalGT("Baen_Quest","GLOBAL",0)
GlobalLT("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #22766 /* ~Widzisz Baena Wysłannika. Gdy się zbliżasz, on patrzy na ciebie z nadzieją. "Czy udało ci się, dobry panie, odnaleźć Kradoka?"~ */
  IF ~  Global("Baen_Quest","GLOBAL",2)
~ THEN REPLY #22767 /* ~"Tak, i przekazałem twoją wiadomość, choć chyba go ona nie zadowoliła."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22770 /* ~Wróciłem i powiedziałem Baenowi, że dostarczyłem wiadomość Kradokowi. Ucieszyło go to i nagrodził mnie garścią miedzi. Nienajgorsza zapłata za przekazanie komuś wiadomości.~ */ GOTO 14
  IF ~~ THEN REPLY #22768 /* ~"Jeszcze nie, Baen. Powtórz mi to, co o nim wiesz."~ */ GOTO 10
  IF ~~ THEN REPLY #22769 /* ~"Nie... wciąż go szukam. Wrócę, gdy go odnajdę."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22771 /* ~Baen zdaje się nie słyszeć żadnego słowa po *tak*, ponieważ uśmiecha się i wzdycha z ulgą. "Zaprawdę, wiele szczęścia! Dziękuję, dobry panie, dziękuję." Sięga pod szatę i wyciąga garść miedziaków, które przelicza i podaje ci.~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #22772 /* ~"Piętnaście miedziaków za dostarczenie wiadomości, hę? Uczciwa cena."~ */ DO ~GivePartyGold(15)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #22773 /* ~"Trzydzieści miedziaków za dostarczenie wiadomości, hę? Uczciwa cena."~ */ DO ~GivePartyGold(30)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #22774 /* ~"Czterdzieści pięć miedziaków za dostarczenie wiadomości, hę? Uczciwa cena."~ */ DO ~GivePartyGold(45)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #22775 /* ~"Och, *bardziej*, niż uczciwa, dobry panie, bardziej niż uczciwa! Mogę powiedzieć bez wahania, że nie ma lepszej profesji w całym Sigil niż bycie gońcem dla Domu Wysłanników!"~ */
  IF ~~ THEN REPLY #22776 /* ~"Będę o tym pamiętać. Żegnaj, Baen."~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #22777 /* ~Widzisz Baena Wysłannika. Gdy się zbliżasz, kiwa głową z szacunkiem. "Co za miłe spotkanie, dobry panie. Po tysiąckroć dziękuję za pomoc w odnalezieniu Kradoka i przekazaniu mu wiadomości."~ */
  IF ~~ THEN REPLY #22778 /* ~"Nie ma sprawy. Żegnaj, Baen."~ */ EXIT
END
