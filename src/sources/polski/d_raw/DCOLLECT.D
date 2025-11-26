// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1805 /* ~Mężczyzna ten odziany jest w zabrudzone i postrzępione brązowe szaty. Sporych rozmiarów kaptur przysłania przeważającą część jego twarzy.~ */
  IF ~~ THEN REPLY #21697 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #21698 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21677 /* ~Dostrzegasz, że jego oczy, przysłaniane przez kaptur, zwężają się, on sam zaś się cofa. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #21699 /* ~"Czym się zajmujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #21700 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #21701 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #21702 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.0
  SAY #21678 /* ~"Wyszukiwaniem cholernych ciał... Oto, czym się zajmuję. Nie myśl sobie tylko, że Martwe Moce zabrały swoje graty i ulotniły się ze Sfer i mało kto chorza ostatnio i takie tam." W jego oczach pojawia się nagle błysk. "Mieliśmy zarazę miesiąc temu. Cudeńki okres... Oj tak... Ten wznoszący się pod niebiosa odorek cuchnących ciał... No i sporo brzdęku zarazem."~ */
  IF ~~ THEN REPLY #21703 /* ~"W jakim celu szukasz tych ciał?"~ */ GOTO 3
  IF ~~ THEN REPLY #21704 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #21705 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #21706 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #21679 /* ~Wygląda na zdziwionego. "No, taszczysz ścierwa do Kostnicy, gadasz z Grabarzami, wytargowujesz zdziebko i dostajesz trochę brzdęku."~ */
  IF ~~ THEN REPLY #21707 /* ~"Dlaczego Grabarze skupują ciała?"~ */ GOTO 4
  IF ~~ THEN REPLY #21708 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #21709 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #21710 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #21680 /* ~"Zbierają ciała zmarłych... Taka ich praca. Płacą nam za przeszukiwanie terenu i przytaszczenie każdego trupa, jakiego tylko znajdziemy. Potem upewniają się, by dusze tych psubratów trafiły do odpowiednich dla nich miejsc lub zostały spopielone. Traktują to bardzo poważnie, ale ja mam w nosie tę ich pokręconą filozofię. Dla mnie to jedynie więcej brzdęku." Mruga okiem.~ */
  IF ~~ THEN REPLY #21711 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #21712 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #21713 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 18.1
  SAY #21681 /* ~Patrzy na ciebie gniewnie. "Żeś na Placu Szmaciarzy, co jasne. Skądżeś się urwał, śmiałku? Z Pierwszaka czy co?"~ */
  IF ~~ THEN REPLY #21714 /* ~"Nie. W jakim celu szukasz tych ciał?~ */ GOTO 3
  IF ~~ THEN REPLY #21715 /* ~"Nie. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #21826 /* ~"Nie. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 18.2
  SAY #21682 /* ~Unosi brew. "No to ja też mam co nieco do ciebie, choćby: co chcesz wiedzieć i jak bardzo tego chcesz?"~ */
  IF ~~ THEN REPLY #21717 /* ~"Co masz na myśli?"~ */ GOTO 7
  IF ~~ THEN REPLY #21718 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21719 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21720 /* ~"Szukam dziennika, który straciłem."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21721 /* ~"Co wiesz o Mebbet?"~ */ GOTO 7
  IF ~~ THEN REPLY #21722 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #21683 /* ~"Rozejrzyj się, śmiałku... Nie będę się na twe pytania darmo produkował. Chcesz śpiewkę, to sypnij trochę brzdękiem."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21723 /* ~Wręcz mu kilka monet.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21724 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21725 /* ~Wciśnij mu do ręki dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21726 /* ~"Nic nie dostaniesz i odpowiesz na moje pytania."~ */ GOTO 17
  IF ~~ THEN REPLY #21727 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.1
  SAY #21684 /* ~Śmieje się. "Toż nawet Grabarze płacą więcej niż ty, śmiałku. Pewno się nie chcesz za dużo dowiedzieć."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21728 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21729 /* ~Wciśnij mu do ręki dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21730 /* ~"Nic nie dostaniesz i odpowiesz na moje pytania."~ */ GOTO 17
  IF ~~ THEN REPLY #21731 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 17.2
  SAY #21685 /* ~Trzymając monety w dłoniach, przygląda się im dokładnie. "Ech." Zręcznie wsuwa je do kieszeni. "Pytaj."~ */
  IF ~~ THEN REPLY #21732 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21733 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21734 /* ~"Szukam dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21735 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21736 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.1 17.3
  SAY #21686 /* ~"Jedź z tymi pytaniami. Pewnym nie jest, że odpowiem, ale może..."~ */
  IF ~~ THEN REPLY #21737 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21738 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21739 /* ~"Szukam dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21740 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21741 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.4 10.4 12.3 13.5 14.4 15.3 16.3 19.5 20.4
  SAY #21687 /* ~"No. Trzym się, śmiałku. Jeśli cię znajdę na ulicy, obejdę się grzecznie z twoim ciałem."~ */
  IF ~~ THEN REPLY #21742 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.2 14.1 15.0 16.0 19.2 20.1
  SAY #21688 /* ~"Ja... my... żyjemy zbieraniem truposzy z ulic Sigil i dostarczaniem ich sztywnych tyłków do Kostnicy. Nie najlepszy to sposób coby zarabiać, acz to tak na początek. To wszystko, co chciałeś wiedzieć, śmiałku?" Patrzy na ciebie dziwnie.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21743 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21744 /* ~"Szukam dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21745 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21746 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.1 12.0 15.1 16.1
  SAY #21689 /* ~Jego oczy zwężają się nagle. "Farod... co o nim?"~ */
  IF ~~ THEN REPLY #21747 /* ~"Najwyraźniej cię to przestraszyło... Czemu?"~ */ GOTO 19
  IF ~~ THEN REPLY #21748 /* ~"Czy wiesz, gdzie on jest?"~ */ GOTO 14
  IF ~~ THEN REPLY #21749 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21750 /* ~"Szukam też dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21751 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21752 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1 19.1 20.0
  SAY #21690 /* ~"Wiem, gdzie nie ma tego szczurzego bękarta. *Na* Placu w nic nie jest zamotany, wiem jednak z pewnej śpiewki, że kręci się gdzieś w pobliżu."~ */
  IF ~~ THEN REPLY #21753 /* ~"Wszyscy Zbieracze mają na temat Faroda podobne zdanie?~ */ GOTO 19
  IF ~~ THEN REPLY #21754 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21755 /* ~"Szukam też dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21756 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21757 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.3 10.3 12.2 13.4 14.3 16.2 19.4 20.3
  SAY #21691 /* ~"O znachorce? Bez mała nawet miła kobieta - pomaga, gdyś chory i takie tam. Jeśli chcesz co od niej, znajdziesz ją w chacie przy jednej z platform."~ */
  IF ~~ THEN REPLY #21758 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21759 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21760 /* ~"Szukam dziennika, który straciłem."~ */ GOTO 16
  IF ~~ THEN REPLY #21761 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 9.2 10.2 12.1 13.3 14.2 15.2 19.3 20.2
  SAY #21692 /* ~Potrząsa jedynie głową, zmieszany.~ */
  IF ~~ THEN REPLY #21762 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21763 /* ~"Szukam też mężczyzny o imieniu Farod."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21764 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21765 /* ~"W takim razie, żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 7.3 8.2
  SAY #21693 /* ~"Nic nie wiem, hultaju. Radzę poszukać odpowiedzi gdzieś indziej... Tknij mnie choćby palcem, a będziesz miał do czynienia z połową Placowego światka, oj będziesz."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #21766 /* ~Złap go i trochę nim potrząśnij.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21768 /* ~Wręcz mu kilka monet.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21773 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21778 /* ~Wciśnij mu do ręki dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21781 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #21694 /* ~Cofa się o krok i wpatruje w ciebie podejrzliwie spod swego kaptura. "Znowu, co? Czego chcesz?"~ */
  IF ~~ THEN REPLY #21783 /* ~"Czym się zajmujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #21785 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #21787 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #21789 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0
  SAY #21695 /* ~"Farod! Tfu! Spluwa, jego usta przybierają pogardliwy grymas. Tutaj, na Placu Szmaciarzy, rządzi Współgrobiec, mój szef. Farod i jego kundle wpadli tu kiedyś i próbowali nas wykurzyć. Daliśmy im łupnia i teraz gdzieś się kryją. Co jakiś czas udaje nam się tu złapać któregoś z jego chłopców. Zazwyczaj wykańczamy ich od razu i targamy do Kostnicy, by zgarnąć za nich trochę grosza. Cholerne skurle."~ */
  IF ~~ THEN REPLY #21791 /* ~"Powiedz mi coś o Współgrobcu."~ */ GOTO 20
  IF ~~ THEN REPLY #21793 /* ~"Czy wiesz, gdzie znajdę Faroda?"~ */ GOTO 14
  IF ~~ THEN REPLY #21795 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21796 /* ~"Szukam też dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21797 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21798 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #21696 /* ~"To mój szef... Sprawuje piecze nad resztą Zbieraczy, że hej. Radzę ci, trzym się od niego z dala, jeśli nie masz *dobrego* powodu, by z nim porozmawiać. Ja sam nigdy z nim nie gadałem."~ */
  IF ~~ THEN REPLY #21802 /* ~"Czy wiesz, gdzie znajdę Faroda?"~ */ GOTO 14
  IF ~~ THEN REPLY #21803 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21804 /* ~"Szukam też dziennika, który straciłem."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21807 /* ~"Co wiesz o Mebbet?"~ */ GOTO 15
  IF ~~ THEN REPLY #21810 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 11
END
