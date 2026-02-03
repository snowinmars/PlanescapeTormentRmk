screen screen_preferences_videos():
    tag menu

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_creditbg'


        viewport:
            area (1035, 100, 640, 850)
            scrollbars 'vertical'
            vscrollbar_unscrollable 'hide'
            mousewheel True
            draggable True

            vbox:
                spacing 10
                xfill True

                text 'I got this list from http://press.planescape.com/assets/PSTEE_Credits.pdf , not from game source code.' style 'screen_preferences_videos_text'
                text 'So I am sorry, if it does not match. Contact me in this case.' style 'screen_preferences_videos_text'
                text 'Also, this RenPy port and all the content in it is licensed under GNU/GPLv3. No matter what.' style 'screen_preferences_videos_text'

                text 'PLANESCAPE: TORMENT' style 'screen_preferences_videos_header'
                text 'ENHANCED EDITION CREDITS' style 'screen_preferences_videos_header'

                text 'EXECUTIVE PRODUCERS' style 'screen_preferences_videos_header'
                text 'Cameron Tofer' style 'screen_preferences_videos_text'
                text 'Trent Oster' style 'screen_preferences_videos_text'

                text 'PROJECT LEAD' style 'screen_preferences_videos_header'
                text 'Alex Tomovic' style 'screen_preferences_videos_text'

                text 'LEAD DESIGNER' style 'screen_preferences_videos_header'
                text 'Chris Avellone' style 'screen_preferences_videos_text'

                text 'LEAD PROGRAMMER' style 'screen_preferences_videos_header'
                text 'Scott Brooks' style 'screen_preferences_videos_text'

                text 'PROGRAMMING TEAM' style 'screen_preferences_videos_header'
                text 'Cody Hollis-Perdue' style 'screen_preferences_videos_text'
                text 'Coriander Dickinson' style 'screen_preferences_videos_text'
                text 'Jason Knipe' style 'screen_preferences_videos_text'
                text 'László Tóth' style 'screen_preferences_videos_text'
                text 'Mark Brockington' style 'screen_preferences_videos_text'
                text 'Seth Davis' style 'screen_preferences_videos_text'
                text 'Zach Lubinski' style 'screen_preferences_videos_text'

                text 'TECHNICAL DESIGN LEADS' style 'screen_preferences_videos_header'
                text 'Coriander Dickinson' style 'screen_preferences_videos_text'
                text 'Keith Soleski' style 'screen_preferences_videos_text'

                text 'TECHNICAL DESIGN TEAM' style 'screen_preferences_videos_header'
                text 'László Tóth' style 'screen_preferences_videos_text'
                text 'Pete Camagna' style 'screen_preferences_videos_text'

                text 'Additional Technical Design' style 'screen_preferences_videos_header'
                text 'Jeff Smyth' style 'screen_preferences_videos_text'
                text 'Lorne Ledger' style 'screen_preferences_videos_text'
                text 'Stacie Cameron' style 'screen_preferences_videos_text'
                text 'Yaroslav Kalyuzhnyy' style 'screen_preferences_videos_text'
                text 'Design Consultant' style 'screen_preferences_videos_text'
                text 'Paul Escalona' style 'screen_preferences_videos_text'

                text 'ART COORDINATOR' style 'screen_preferences_videos_header'
                text 'JHill' style 'screen_preferences_videos_text'

                text 'ART DIRECTOR' style 'screen_preferences_videos_header'
                text 'Tom Rhodes' style 'screen_preferences_videos_text'

                text 'ART TEAM' style 'screen_preferences_videos_header'
                text 'Alyssa Duguay' style 'screen_preferences_videos_text'
                text 'Amy Cornelson' style 'screen_preferences_videos_text'
                text 'Mad Bee' style 'screen_preferences_videos_text'
                text 'Thea Kent' style 'screen_preferences_videos_text'

                text 'ORIGINAL MUSICAL SCORE' style 'screen_preferences_videos_header'
                text 'Mark Morgan' style 'screen_preferences_videos_text'
                text 'Richard Band' style 'screen_preferences_videos_text'

                text 'PRODUCTION' style 'screen_preferences_videos_header'
                text 'Brent Knowles' style 'screen_preferences_videos_text'
                text 'Phillip Daigle' style 'screen_preferences_videos_text'

                text 'ASSISTANT PRODUCTION' style 'screen_preferences_videos_header'
                text 'Alex Molzhan' style 'screen_preferences_videos_text'
                text 'Dan Greig' style 'screen_preferences_videos_text'

                text 'MARKETING & SOCIAL MEDIA COORDINATOR' style 'screen_preferences_videos_header'
                text 'Lee Guille' style 'screen_preferences_videos_text'

                text 'MARKETING TEAM' style 'screen_preferences_videos_header'
                text 'Ben Arledge' style 'screen_preferences_videos_text'
                text 'Dan Greig' style 'screen_preferences_videos_text'
                text 'Dee Pennyway' style 'screen_preferences_videos_text'

                text 'WEB PRODUCER' style 'screen_preferences_videos_header'
                text 'Ben Arledge' style 'screen_preferences_videos_text'

                text 'MANUAL' style 'screen_preferences_videos_header'
                text 'Dee Pennyway' style 'screen_preferences_videos_text'
                text 'Sacha Robertson' style 'screen_preferences_videos_text'

                text 'QUALITY ASSURANCE LEADS' style 'screen_preferences_videos_header'
                text 'Jeff Payne' style 'screen_preferences_videos_text'
                text 'Mark Ramsden' style 'screen_preferences_videos_text'

                text 'QUALITY ASSURANCE TEAM' style 'screen_preferences_videos_header'
                text 'Alyssa Duguay' style 'screen_preferences_videos_text'
                text 'Anders Svensson' style 'screen_preferences_videos_text'
                text 'Andrew Gauthier' style 'screen_preferences_videos_text'
                text 'Bill Harper' style 'screen_preferences_videos_text'
                text 'Douglas Wagner' style 'screen_preferences_videos_text'
                text 'Filip Flechtner' style 'screen_preferences_videos_text'
                text 'Jamie Beadle' style 'screen_preferences_videos_text'
                text 'Keith Marshall' style 'screen_preferences_videos_text'
                text 'Kristin Warren' style 'screen_preferences_videos_text'
                text 'Lorne Ledger' style 'screen_preferences_videos_text'
                text 'Richard Hilton' style 'screen_preferences_videos_text'
                text 'Robert Rath' style 'screen_preferences_videos_text'

                text 'Additional QA' style 'screen_preferences_videos_header'
                text 'Adam Shepp' style 'screen_preferences_videos_text'
                text 'Carson McConnell' style 'screen_preferences_videos_text'
                text 'Jeff Smyth' style 'screen_preferences_videos_text'

                text 'External QA' style 'screen_preferences_videos_header'
                text 'Babel - a Keywords Studio' style 'screen_preferences_videos_text'

                text 'FQA Project Manager' style 'screen_preferences_videos_header'
                text 'Derek Tsunokawa' style 'screen_preferences_videos_text'

                text 'FQA Test Lead' style 'screen_preferences_videos_header'
                text 'Chris Wylie' style 'screen_preferences_videos_text'

                text 'FQA Testers' style 'screen_preferences_videos_header'
                text 'Axel Marnier' style 'screen_preferences_videos_text'
                text 'Brian Abramson' style 'screen_preferences_videos_text'
                text 'Marcus Zhang' style 'screen_preferences_videos_text'
                text 'Nicholas Di Fulvio' style 'screen_preferences_videos_text'
                text 'Sean Watson' style 'screen_preferences_videos_text'
                text 'Yurik Dumouchel Ross' style 'screen_preferences_videos_text'

                text 'LOCALIZATION' style 'screen_preferences_videos_header'
                text 'Roboto' style 'screen_preferences_videos_text'

                text 'COMMUNITY MANAGER' style 'screen_preferences_videos_header'
                text 'Julius Borisov' style 'screen_preferences_videos_text'

                text 'BETA TESTERS' style 'screen_preferences_videos_header'
                text 'Aaron Cole, Aaron E. Umberson, Adam Zsoldos, Airman1991, AL|EN, Alan "Ajwz" Watson, AlannahSmith, Alessandro Krog Barbero, Alex "Chronium" Arseneau, Alexander Boitsev, Alexandre Legault, Andreas Santowski, Andrew "Anduin" Beale, Argent77, Ben Delbanco, Bendik Tveit, Bill Purosky, Binarymichael, Brad Balsmeyer, Brandon Barnes, Britta Huneke, Bruce Fleming, Chris "Sorkd" Carter, Cody Sloat, Courtney Hilbig, Cypress "Svar" Knight, Dan Donahue, Daniel Wang, David Layton, David Nielsen, David Seligson, Deathlos, Eileen Barnes, EliteDragoon, Eric Shafer, Folsomdsf, Galiphile, Galvagno Michele, Garrett Mazzuca, Gavin "Fusrodahmus" Jeffes, glenp, Grégory "Wabash" Drabble, Gregory Naumiec, Gwaelan, Helen Svensson, Ingo Gerth, Ironmadeit, J.O.Laurore, Jeff Adams, Jeremiah Hunsicker, Joannie Leblanc, John Moumouzas, John Moumouzas, Joseph Nehnevaj, Kacper Sokol, Kaltern, Kamil Stanisław Filipowski "Targaryen", Kyle "Varwulf" Foerster, Lee Hosub, Lukas "LtLukoziuz" Dapkus, Łukasz Łukasz, Magnet The Robot, Manuel "Jaq" Metzger, masanbol, Mathsorcerer, Naughtyusername, Nick Minerowicz, Nicolás Clotta "Crevs Daak", Otso Rasimus, Paul Slayton, Peter Gielda, Petri Karjalainen, Piotr "Cahir" Wiankowski, Piotr Prósinowski "Lava", R. Derek Pattison, Renaud "lefreut" Durlin, Robert Owen, Ronaldo, Ryland, Sam Schmitz, Sean Nau, Sean Willett, Shandyr, Shelley Nordfelt, Simon Alex, Simon Barnes, StefanO, Tamariel, Tenaya Close, Thierry Vandenplas, Thomas van Golen, Tilly Underwood, Tirkaz, Todd Buller, Will Erickson, Yingir, Zac Tomlinson, Zylera' style 'screen_preferences_videos_text'

                text 'SPECIAL THANKS' style 'screen_preferences_videos_header'
                text 'Eric Campanella' style 'screen_preferences_videos_text'
                text 'Kenneth Lee' style 'screen_preferences_videos_text'
                text 'Timothy Donley' style 'screen_preferences_videos_text'
                text 'Amber Scott' style 'screen_preferences_videos_text'
                text 'Liam Esler' style 'screen_preferences_videos_text'

                text 'THE WIZARDS OF THE COAST D&D DIGITAL LICENSING TEAM' style 'screen_preferences_videos_header'

                text 'Director, Dungeons & Dragons' style 'screen_preferences_videos_header'
                text 'Nathan Stewart' style 'screen_preferences_videos_text'

                text 'Head of Licensing and Publishing for Dungeons & Dragons' style 'screen_preferences_videos_header'
                text 'Liz Schuh' style 'screen_preferences_videos_text'

                text 'Senior Manager of Game Development' style 'screen_preferences_videos_header'
                text 'Mike Mearls' style 'screen_preferences_videos_text'

                text 'Senior Game Producer' style 'screen_preferences_videos_header'
                text 'John Feil' style 'screen_preferences_videos_text'

                text 'Game Producers' style 'screen_preferences_videos_header'
                text 'Ben Petrisor' style 'screen_preferences_videos_text'
                text 'Chris Dupuis' style 'screen_preferences_videos_text'

                text 'Senior Coordinator: Art Administration' style 'screen_preferences_videos_header'
                text 'David Gershman' style 'screen_preferences_videos_text'

                text 'Senior Art Director' style 'screen_preferences_videos_header'
                text 'Kate Irwin' style 'screen_preferences_videos_text'

                text 'ORIGINAL PLANESCAPE: TORMENT CREDITS' style 'screen_preferences_videos_header'

                text 'PROGRAMMING' style 'screen_preferences_videos_header'
                text 'Lead Programmer' style 'screen_preferences_videos_text'
                text 'Dan Spitzley' style 'screen_preferences_videos_text'
                text 'Programmers' style 'screen_preferences_videos_text'
                text 'Jim Gardner' style 'screen_preferences_videos_text'
                text 'Rob Holloway' style 'screen_preferences_videos_text'
                text 'Yuki Furumi' style 'screen_preferences_videos_text'

                text 'Additional Programming By' style 'screen_preferences_videos_header'
                text 'Darren Monahan' style 'screen_preferences_videos_text'

                text 'Scripters' style 'screen_preferences_videos_header'
                text 'Jake Devore' style 'screen_preferences_videos_text'
                text 'Nick Kesting' style 'screen_preferences_videos_text'
                text 'Adam Heine' style 'screen_preferences_videos_text'
                text 'Scott Warner' style 'screen_preferences_videos_text'

                text 'Movie Technology' style 'screen_preferences_videos_header'
                text 'Paul Edelstein' style 'screen_preferences_videos_text'

                text 'ART' style 'screen_preferences_videos_header'

                text 'Lead Artist' style 'screen_preferences_videos_header'
                text 'Tim Donley' style 'screen_preferences_videos_text'

                text 'Artists' style 'screen_preferences_videos_header'
                text 'Eric Campanella' style 'screen_preferences_videos_text'
                text 'Aaron Meyers' style 'screen_preferences_videos_text'
                text 'Christopher Jones' style 'screen_preferences_videos_text'
                text 'Brian Menze' style 'screen_preferences_videos_text'
                text 'Scott Everts' style 'screen_preferences_videos_text'
                text 'Dennis Presnell' style 'screen_preferences_videos_text'
                text 'Derek Johnson' style 'screen_preferences_videos_text'

                text 'Additional Art By' style 'screen_preferences_videos_header'
                text 'Aaron Brown' style 'screen_preferences_videos_text'
                text 'Sam Fung' style 'screen_preferences_videos_text'
                text 'James Lim' style 'screen_preferences_videos_text'
                text 'Gary Platner' style 'screen_preferences_videos_text'
                text 'Eddie Rainwater' style 'screen_preferences_videos_text'

                text 'DESIGN' style 'screen_preferences_videos_header'

                text 'Lead Designer' style 'screen_preferences_videos_header'
                text 'Chris Avellone' style 'screen_preferences_videos_text'

                text 'Designers' style 'screen_preferences_videos_header'
                text 'Colin McComb' style 'screen_preferences_videos_text'
                text 'John Deiley' style 'screen_preferences_videos_text'
                text 'Dave Maldonado' style 'screen_preferences_videos_text'
                text 'Kenneth Lee' style 'screen_preferences_videos_text'
                text 'Stephen Bokkes' style 'screen_preferences_videos_text'
                text 'Scott Warner' style 'screen_preferences_videos_text'
                text 'Jason G. Suinn' style 'screen_preferences_videos_text'

                text 'Technical Designers' style 'screen_preferences_videos_header'
                text 'Scott Everts' style 'screen_preferences_videos_text'
                text 'Dave Hendee' style 'screen_preferences_videos_text'
                text 'Jason G. Suinn' style 'screen_preferences_videos_text'

                text 'Additional Design By' style 'screen_preferences_videos_header'
                text 'Kihan Pak' style 'screen_preferences_videos_text'
                text 'Reginald Arnedo' style 'screen_preferences_videos_text'

                text 'PRODUCTION' style 'screen_preferences_videos_header'

                text 'Division Director' style 'screen_preferences_videos_header'
                text 'Feargus Urquhart' style 'screen_preferences_videos_text'

                text 'Producers' style 'screen_preferences_videos_header'
                text 'Guido Henkel' style 'screen_preferences_videos_text'
                text 'Kenneth Lee' style 'screen_preferences_videos_text'

                text 'Line Producer' style 'screen_preferences_videos_header'
                text 'Kenneth Lee' style 'screen_preferences_videos_text'

                text 'QUALITY ASSURANCE' style 'screen_preferences_videos_header'

                text 'Director of Quality Assurance' style 'screen_preferences_videos_header'
                text 'Jeremy Barnes' style 'screen_preferences_videos_text'

                text 'Assistant Directors of QA' style 'screen_preferences_videos_header'
                text 'Michael Motoda' style 'screen_preferences_videos_text'
                text 'Greg Baumeister' style 'screen_preferences_videos_text'

                text 'Project Supervisors' style 'screen_preferences_videos_header'
                text 'Damien Evans' style 'screen_preferences_videos_text'
                text 'Dave Simon' style 'screen_preferences_videos_text'
                text 'Darrell Jones' style 'screen_preferences_videos_text'

                text 'Senior Testers' style 'screen_preferences_videos_header'
                text 'Rob Giampa' style 'screen_preferences_videos_text'
                text 'Eric Fong' style 'screen_preferences_videos_text'
                text 'Scott Humphreys' style 'screen_preferences_videos_text'
                text 'Dany Martinez' style 'screen_preferences_videos_text'
                text 'Ed Hyland' style 'screen_preferences_videos_text'

                text 'Testers' style 'screen_preferences_videos_header'
                text 'Kris Giampa' style 'screen_preferences_videos_text'
                text 'Donnie Cornwell' style 'screen_preferences_videos_text'
                text 'John Palmero' style 'screen_preferences_videos_text'
                text 'Billy Iturzaeta' style 'screen_preferences_videos_text'
                text 'Savina Greene' style 'screen_preferences_videos_text'
                text 'Gary Tesdall' style 'screen_preferences_videos_text'
                text 'Rafael Lopez' style 'screen_preferences_videos_text'
                text 'Larry Smith' style 'screen_preferences_videos_text'
                text 'Greg Didieu' style 'screen_preferences_videos_text'
                text 'Matt Gollembiewski' style 'screen_preferences_videos_text'
                text 'Henry Lee' style 'screen_preferences_videos_text'
                text 'Tony Piccoli' style 'screen_preferences_videos_text'
                text 'Asher Luisi' style 'screen_preferences_videos_text'

                text 'Compatibility Manager' style 'screen_preferences_videos_header'
                text 'Darrell Jones' style 'screen_preferences_videos_text'

                text 'Compatibility Technicians' style 'screen_preferences_videos_header'
                text 'Jack Parker' style 'screen_preferences_videos_text'
                text 'Derek Gibbs' style 'screen_preferences_videos_text'
                text 'David Parkyn' style 'screen_preferences_videos_text'
                text 'Josh Walters' style 'screen_preferences_videos_text'

                text 'AUDIO' style 'screen_preferences_videos_header'

                text 'Audio Director' style 'screen_preferences_videos_header'
                text 'Charles Deenen' style 'screen_preferences_videos_text'

                text 'Music By' style 'screen_preferences_videos_header'
                text 'Mark Morgan' style 'screen_preferences_videos_text'

                text 'Additional Music By' style 'screen_preferences_videos_header'
                text 'Richard Band' style 'screen_preferences_videos_text'

                text 'Sound Supervisors' style 'screen_preferences_videos_header'
                text 'Charles Deenen' style 'screen_preferences_videos_text'
                text 'Craig Duman' style 'screen_preferences_videos_text'

                text 'Sound Design' style 'screen_preferences_videos_header'
                text 'David "STW" Farmer' style 'screen_preferences_videos_text'
                text 'Ann Scibelli, M.P.S.E' style 'screen_preferences_videos_text'
                text 'Charles Deenen' style 'screen_preferences_videos_text'

                text 'Additional Sound Design' style 'screen_preferences_videos_header'
                text 'Al Nelson' style 'screen_preferences_videos_text'
                text 'Rebecca Hanck' style 'screen_preferences_videos_text'
                text 'Harry Cohen, M.P.S.E.' style 'screen_preferences_videos_text'
                text 'Shannon Mills' style 'screen_preferences_videos_text'
                text 'Elisabeth Flaum' style 'screen_preferences_videos_text'

                text 'Sound Editing, Mastering and Scripting' style 'screen_preferences_videos_header'
                text 'Craig Duman' style 'screen_preferences_videos_text'

                text 'Mastering and Scripting Assistance' style 'screen_preferences_videos_header'
                text 'Frank Szick' style 'screen_preferences_videos_text'

                text 'VO Editors' style 'screen_preferences_videos_header'
                text 'Stephen Miller' style 'screen_preferences_videos_text'
                text 'Frank Szick' style 'screen_preferences_videos_text'
                text 'Chris Borders' style 'screen_preferences_videos_text'

                text 'VO Director' style 'screen_preferences_videos_header'
                text 'Jamie Thomason' style 'screen_preferences_videos_text'

                text 'VO Supervision' style 'screen_preferences_videos_header'
                text 'Chris Borders' style 'screen_preferences_videos_text'

                text 'VO Producer' style 'screen_preferences_videos_header'
                text 'Fred Hatch' style 'screen_preferences_videos_text'

                text 'VO Coordinator' style 'screen_preferences_videos_header'
                text 'Dave Hendee' style 'screen_preferences_videos_text'

                text 'Cast' style 'screen_preferences_videos_header'
                text 'John de Lancie' style 'screen_preferences_videos_text'
                text 'Flo Di Re' style 'screen_preferences_videos_text'
                text 'Jennifer Hale' style 'screen_preferences_videos_text'
                text 'Tony Jay' style 'screen_preferences_videos_text'
                text 'Charlie Adler' style 'screen_preferences_videos_text'
                text 'Sheena Easton' style 'screen_preferences_videos_text'
                text 'Rob Paulsen' style 'screen_preferences_videos_text'
                text 'Rodger Bumpass' style 'screen_preferences_videos_text'
                text 'Keith David' style 'screen_preferences_videos_text'
                text 'Mitch Pileggi' style 'screen_preferences_videos_text'
                text 'Michael T. Weiss' style 'screen_preferences_videos_text'
                text 'Dan Castellaneta' style 'screen_preferences_videos_text'

                text 'Walla Group' style 'screen_preferences_videos_header'
                text 'Barbara Harris, Voice Casting' style 'screen_preferences_videos_text'

                text 'Walla Cast' style 'screen_preferences_videos_header'
                text 'Steve Alterman' style 'screen_preferences_videos_text'
                text 'Judi Durand' style 'screen_preferences_videos_text'
                text 'Greg Finley' style 'screen_preferences_videos_text'
                text 'Anneliese Goldman' style 'screen_preferences_videos_text'
                text 'Gary Schwartz' style 'screen_preferences_videos_text'
                text 'Vernon Scott' style 'screen_preferences_videos_text'

                text 'Audio Administration' style 'screen_preferences_videos_header'
                text 'Gloria "Mom" Soto' style 'screen_preferences_videos_text'

                text 'Re-Recording Mixer' style 'screen_preferences_videos_header'
                text 'Charles Deenen' style 'screen_preferences_videos_text'

                text 'Mixed at Interplay in Dolby Surround' style 'screen_preferences_videos_header'

                text 'MARKETING' style 'screen_preferences_videos_header'

                text 'Senior Marketing Manager' style 'screen_preferences_videos_header'
                text 'Greg Peterson' style 'screen_preferences_videos_text'

                text 'Associate Marketing Manager' style 'screen_preferences_videos_header'
                text 'Greg Bauman' style 'screen_preferences_videos_text'

                text 'PR Manager' style 'screen_preferences_videos_header'
                text 'Lisa Bucek' style 'screen_preferences_videos_text'

                text 'Associate PR Manager' style 'screen_preferences_videos_header'
                text 'Krys Card' style 'screen_preferences_videos_text'

                text 'Web Master' style 'screen_preferences_videos_header'
                text 'Josh "Bishop" Sawyer' style 'screen_preferences_videos_text'

                text 'Production Manager' style 'screen_preferences_videos_header'
                text 'Thom Dohner' style 'screen_preferences_videos_text'
                text 'Kathy Helgason' style 'screen_preferences_videos_text'

                text 'Traffic Manager' style 'screen_preferences_videos_header'
                text 'Paul Naftalis' style 'screen_preferences_videos_text'

                text 'Manual' style 'screen_preferences_videos_header'
                text 'Matt Norton' style 'screen_preferences_videos_text'

                text 'Manual Design & Layout' style 'screen_preferences_videos_header'
                text 'Michael L. Quintos' style 'screen_preferences_videos_text'

                text 'THANKS TO:' style 'screen_preferences_videos_header'
                text '(Chris A.) “Ma and Pa Avellone, Eileen Suh, Thuy Dang, Chris Wright, and Roger Zelazny”.(Dave M.) “Thanks to my beautiful wife, Jen, for putting up with the ridiculous amount of time I spend here and away from her.” (Adam H.) “To Cindy, who loves me enough to let me come to work everyday.” (Scott W.) “Thanks for the inspiration: David Konieczny, Tania Sabljic, and Tomato.” (Steve B.) “Phil and the rest of the staff at SC Village.” (Colin M.) “Colin has too many people to thank to list them individually. Kitty, Quez, Brad, Kev, Dally, Nabs, Mom and family, and all of you - you know who you are. Thanks for the sanity.” (Brian M.) “Mom, Dad, and Patricia, and the big, green lizard.” (Ken L.) “Ken would like to thank Mom, Dad, Rob, Sab for supporting him all these years; and SFZ3 for stress relief, and FFVII and VIII for inspiration.”' style 'screen_preferences_videos_text'

                text '© 2017 Beamdog. © 2017 Hasbro, Inc. All Rights Reserved. Planescape: Torment, Dungeons & Dragons, D&D, Wizards of the Coast, their respective logos, Planescape, and the dragon ampersand are trademarks of Wizards of the Coast LLC in the U.S.A. and other countries, and are used with permission. Hasbro and its logo are trademarks of Hasbro, Inc. and are used with permission. ©1998 BioWare Corp. All Rights Reserved. Bioware, the BioWare Infinity Engine and the BioWare logo are trademarks of Bioware Corp. Black Isle Studios and the Black Isle Studios logo are trademarks of Interplay Entertainment Corp..All other trademarks are the property of their respective owners.' style 'screen_preferences_videos_text'


        button:
            area (775, 935, 193, 78)
            action Return()
            background 'gui_button'
            hover_background Transform('gui_button', matrixcolor=hover_matrix)

            text _('screen_preferences_videos_return'): # Вернуться
                style 'screen_preferences_videos_style_button_text'
                align (0.5, 0.5)


style screen_preferences_videos_header:
    size 22
    color color_white
    xalign 0.5
    text_align 0.5
style screen_preferences_videos_text:
    size 18
    color color_yellow
    xalign 0.5
    text_align 0.5
style screen_preferences_videos_style_button_text:
    size 20
    color color_white
