screen preferences_videos():
    tag menu

    frame:
        # xpos 850
        # ypos 575
        xsize 1400
        ysize 900
        align (0.5, 0.5)
        background Transform('gui/creditbg.png', fit='cover')

        viewport:
            scrollbars "vertical"
            mousewheel True
            draggable True
            xpos 775
            ypos 85
            xsize 525
            ysize 700

            vbox:
                spacing 10
                xfill True

                text 'I got this list from http://press.planescape.com/assets/PSTEE_Credits.pdf , not from game source code.' style 'preferences_videos_text'
                text 'So I am sorry, if it does not match. Contact me in this case.' style 'preferences_videos_text'
                text 'Also, this RenPy port and all the content in it is licensed under GNU/GPLv3. No matter what.' style 'preferences_videos_text'

                text 'PLANESCAPE: TORMENT' style 'preferences_videos_header'
                text 'ENHANCED EDITION CREDITS' style 'preferences_videos_header'

                text 'EXECUTIVE PRODUCERS' style 'preferences_videos_header'
                text 'Cameron Tofer' style 'preferences_videos_text'
                text 'Trent Oster' style 'preferences_videos_text'

                text 'PROJECT LEAD' style 'preferences_videos_header'
                text 'Alex Tomovic' style 'preferences_videos_text'

                text 'LEAD DESIGNER' style 'preferences_videos_header'
                text 'Chris Avellone' style 'preferences_videos_text'

                text 'LEAD PROGRAMMER' style 'preferences_videos_header'
                text 'Scott Brooks' style 'preferences_videos_text'

                text 'PROGRAMMING TEAM' style 'preferences_videos_header'
                text 'Cody Hollis-Perdue' style 'preferences_videos_text'
                text 'Coriander Dickinson' style 'preferences_videos_text'
                text 'Jason Knipe' style 'preferences_videos_text'
                text 'László Tóth' style 'preferences_videos_text'
                text 'Mark Brockington' style 'preferences_videos_text'
                text 'Seth Davis' style 'preferences_videos_text'
                text 'Zach Lubinski' style 'preferences_videos_text'

                text 'TECHNICAL DESIGN LEADS' style 'preferences_videos_header'
                text 'Coriander Dickinson' style 'preferences_videos_text'
                text 'Keith Soleski' style 'preferences_videos_text'

                text 'TECHNICAL DESIGN TEAM' style 'preferences_videos_header'
                text 'László Tóth' style 'preferences_videos_text'
                text 'Pete Camagna' style 'preferences_videos_text'

                text 'Additional Technical Design' style 'preferences_videos_header'
                text 'Jeff Smyth' style 'preferences_videos_text'
                text 'Lorne Ledger' style 'preferences_videos_text'
                text 'Stacie Cameron' style 'preferences_videos_text'
                text 'Yaroslav Kalyuzhnyy' style 'preferences_videos_text'
                text 'Design Consultant' style 'preferences_videos_text'
                text 'Paul Escalona' style 'preferences_videos_text'

                text 'ART COORDINATOR' style 'preferences_videos_header'
                text 'JHill' style 'preferences_videos_text'

                text 'ART DIRECTOR' style 'preferences_videos_header'
                text 'Tom Rhodes' style 'preferences_videos_text'

                text 'ART TEAM' style 'preferences_videos_header'
                text 'Alyssa Duguay' style 'preferences_videos_text'
                text 'Amy Cornelson' style 'preferences_videos_text'
                text 'Mad Bee' style 'preferences_videos_text'
                text 'Thea Kent' style 'preferences_videos_text'

                text 'ORIGINAL MUSICAL SCORE' style 'preferences_videos_header'
                text 'Mark Morgan' style 'preferences_videos_text'
                text 'Richard Band' style 'preferences_videos_text'

                text 'PRODUCTION' style 'preferences_videos_header'
                text 'Brent Knowles' style 'preferences_videos_text'
                text 'Phillip Daigle' style 'preferences_videos_text'

                text 'ASSISTANT PRODUCTION' style 'preferences_videos_header'
                text 'Alex Molzhan' style 'preferences_videos_text'
                text 'Dan Greig' style 'preferences_videos_text'

                text 'MARKETING & SOCIAL MEDIA COORDINATOR' style 'preferences_videos_header'
                text 'Lee Guille' style 'preferences_videos_text'

                text 'MARKETING TEAM' style 'preferences_videos_header'
                text 'Ben Arledge' style 'preferences_videos_text'
                text 'Dan Greig' style 'preferences_videos_text'
                text 'Dee Pennyway' style 'preferences_videos_text'

                text 'WEB PRODUCER' style 'preferences_videos_header'
                text 'Ben Arledge' style 'preferences_videos_text'

                text 'MANUAL' style 'preferences_videos_header'
                text 'Dee Pennyway' style 'preferences_videos_text'
                text 'Sacha Robertson' style 'preferences_videos_text'

                text 'QUALITY ASSURANCE LEADS' style 'preferences_videos_header'
                text 'Jeff Payne' style 'preferences_videos_text'
                text 'Mark Ramsden' style 'preferences_videos_text'

                text 'QUALITY ASSURANCE TEAM' style 'preferences_videos_header'
                text 'Alyssa Duguay' style 'preferences_videos_text'
                text 'Anders Svensson' style 'preferences_videos_text'
                text 'Andrew Gauthier' style 'preferences_videos_text'
                text 'Bill Harper' style 'preferences_videos_text'
                text 'Douglas Wagner' style 'preferences_videos_text'
                text 'Filip Flechtner' style 'preferences_videos_text'
                text 'Jamie Beadle' style 'preferences_videos_text'
                text 'Keith Marshall' style 'preferences_videos_text'
                text 'Kristin Warren' style 'preferences_videos_text'
                text 'Lorne Ledger' style 'preferences_videos_text'
                text 'Richard Hilton' style 'preferences_videos_text'
                text 'Robert Rath' style 'preferences_videos_text'

                text 'Additional QA' style 'preferences_videos_header'
                text 'Adam Shepp' style 'preferences_videos_text'
                text 'Carson McConnell' style 'preferences_videos_text'
                text 'Jeff Smyth' style 'preferences_videos_text'

                text 'External QA' style 'preferences_videos_header'
                text 'Babel - a Keywords Studio' style 'preferences_videos_text'

                text 'FQA Project Manager' style 'preferences_videos_header'
                text 'Derek Tsunokawa' style 'preferences_videos_text'

                text 'FQA Test Lead' style 'preferences_videos_header'
                text 'Chris Wylie' style 'preferences_videos_text'

                text 'FQA Testers' style 'preferences_videos_header'
                text 'Axel Marnier' style 'preferences_videos_text'
                text 'Brian Abramson' style 'preferences_videos_text'
                text 'Marcus Zhang' style 'preferences_videos_text'
                text 'Nicholas Di Fulvio' style 'preferences_videos_text'
                text 'Sean Watson' style 'preferences_videos_text'
                text 'Yurik Dumouchel Ross' style 'preferences_videos_text'

                text 'LOCALIZATION' style 'preferences_videos_header'
                text 'Roboto' style 'preferences_videos_text'

                text 'COMMUNITY MANAGER' style 'preferences_videos_header'
                text 'Julius Borisov' style 'preferences_videos_text'

                text 'BETA TESTERS' style 'preferences_videos_header'
                text 'Aaron Cole, Aaron E. Umberson, Adam Zsoldos, Airman1991, AL|EN, Alan "Ajwz" Watson, AlannahSmith, Alessandro Krog Barbero, Alex "Chronium" Arseneau, Alexander Boitsev, Alexandre Legault, Andreas Santowski, Andrew "Anduin" Beale, Argent77, Ben Delbanco, Bendik Tveit, Bill Purosky, Binarymichael, Brad Balsmeyer, Brandon Barnes, Britta Huneke, Bruce Fleming, Chris "Sorkd" Carter, Cody Sloat, Courtney Hilbig, Cypress "Svar" Knight, Dan Donahue, Daniel Wang, David Layton, David Nielsen, David Seligson, Deathlos, Eileen Barnes, EliteDragoon, Eric Shafer, Folsomdsf, Galiphile, Galvagno Michele, Garrett Mazzuca, Gavin "Fusrodahmus" Jeffes, glenp, Grégory "Wabash" Drabble, Gregory Naumiec, Gwaelan, Helen Svensson, Ingo Gerth, Ironmadeit, J.O.Laurore, Jeff Adams, Jeremiah Hunsicker, Joannie Leblanc, John Moumouzas, John Moumouzas, Joseph Nehnevaj, Kacper Sokol, Kaltern, Kamil Stanisław Filipowski "Targaryen", Kyle "Varwulf" Foerster, Lee Hosub, Lukas "LtLukoziuz" Dapkus, Łukasz Łukasz, Magnet The Robot, Manuel "Jaq" Metzger, masanbol, Mathsorcerer, Naughtyusername, Nick Minerowicz, Nicolás Clotta "Crevs Daak", Otso Rasimus, Paul Slayton, Peter Gielda, Petri Karjalainen, Piotr "Cahir" Wiankowski, Piotr Prósinowski "Lava", R. Derek Pattison, Renaud "lefreut" Durlin, Robert Owen, Ronaldo, Ryland, Sam Schmitz, Sean Nau, Sean Willett, Shandyr, Shelley Nordfelt, Simon Alex, Simon Barnes, StefanO, Tamariel, Tenaya Close, Thierry Vandenplas, Thomas van Golen, Tilly Underwood, Tirkaz, Todd Buller, Will Erickson, Yingir, Zac Tomlinson, Zylera' style 'preferences_videos_text'

                text 'SPECIAL THANKS' style 'preferences_videos_header'
                text 'Eric Campanella' style 'preferences_videos_text'
                text 'Kenneth Lee' style 'preferences_videos_text'
                text 'Timothy Donley' style 'preferences_videos_text'
                text 'Amber Scott' style 'preferences_videos_text'
                text 'Liam Esler' style 'preferences_videos_text'

                text 'THE WIZARDS OF THE COAST D&D DIGITAL LICENSING TEAM' style 'preferences_videos_header'

                text 'Director, Dungeons & Dragons' style 'preferences_videos_header'
                text 'Nathan Stewart' style 'preferences_videos_text'

                text 'Head of Licensing and Publishing for Dungeons & Dragons' style 'preferences_videos_header'
                text 'Liz Schuh' style 'preferences_videos_text'

                text 'Senior Manager of Game Development' style 'preferences_videos_header'
                text 'Mike Mearls' style 'preferences_videos_text'

                text 'Senior Game Producer' style 'preferences_videos_header'
                text 'John Feil' style 'preferences_videos_text'

                text 'Game Producers' style 'preferences_videos_header'
                text 'Ben Petrisor' style 'preferences_videos_text'
                text 'Chris Dupuis' style 'preferences_videos_text'

                text 'Senior Coordinator: Art Administration' style 'preferences_videos_header'
                text 'David Gershman' style 'preferences_videos_text'

                text 'Senior Art Director' style 'preferences_videos_header'
                text 'Kate Irwin' style 'preferences_videos_text'

                text 'ORIGINAL PLANESCAPE: TORMENT CREDITS' style 'preferences_videos_header'

                text 'PROGRAMMING' style 'preferences_videos_header'
                text 'Lead Programmer' style 'preferences_videos_text'
                text 'Dan Spitzley' style 'preferences_videos_text'
                text 'Programmers' style 'preferences_videos_text'
                text 'Jim Gardner' style 'preferences_videos_text'
                text 'Rob Holloway' style 'preferences_videos_text'
                text 'Yuki Furumi' style 'preferences_videos_text'

                text 'Additional Programming By' style 'preferences_videos_header'
                text 'Darren Monahan' style 'preferences_videos_text'

                text 'Scripters' style 'preferences_videos_header'
                text 'Jake Devore' style 'preferences_videos_text'
                text 'Nick Kesting' style 'preferences_videos_text'
                text 'Adam Heine' style 'preferences_videos_text'
                text 'Scott Warner' style 'preferences_videos_text'

                text 'Movie Technology' style 'preferences_videos_header'
                text 'Paul Edelstein' style 'preferences_videos_text'

                text 'ART' style 'preferences_videos_header'

                text 'Lead Artist' style 'preferences_videos_header'
                text 'Tim Donley' style 'preferences_videos_text'

                text 'Artists' style 'preferences_videos_header'
                text 'Eric Campanella' style 'preferences_videos_text'
                text 'Aaron Meyers' style 'preferences_videos_text'
                text 'Christopher Jones' style 'preferences_videos_text'
                text 'Brian Menze' style 'preferences_videos_text'
                text 'Scott Everts' style 'preferences_videos_text'
                text 'Dennis Presnell' style 'preferences_videos_text'
                text 'Derek Johnson' style 'preferences_videos_text'

                text 'Additional Art By' style 'preferences_videos_header'
                text 'Aaron Brown' style 'preferences_videos_text'
                text 'Sam Fung' style 'preferences_videos_text'
                text 'James Lim' style 'preferences_videos_text'
                text 'Gary Platner' style 'preferences_videos_text'
                text 'Eddie Rainwater' style 'preferences_videos_text'

                text 'DESIGN' style 'preferences_videos_header'

                text 'Lead Designer' style 'preferences_videos_header'
                text 'Chris Avellone' style 'preferences_videos_text'

                text 'Designers' style 'preferences_videos_header'
                text 'Colin McComb' style 'preferences_videos_text'
                text 'John Deiley' style 'preferences_videos_text'
                text 'Dave Maldonado' style 'preferences_videos_text'
                text 'Kenneth Lee' style 'preferences_videos_text'
                text 'Stephen Bokkes' style 'preferences_videos_text'
                text 'Scott Warner' style 'preferences_videos_text'
                text 'Jason G. Suinn' style 'preferences_videos_text'

                text 'Technical Designers' style 'preferences_videos_header'
                text 'Scott Everts' style 'preferences_videos_text'
                text 'Dave Hendee' style 'preferences_videos_text'
                text 'Jason G. Suinn' style 'preferences_videos_text'

                text 'Additional Design By' style 'preferences_videos_header'
                text 'Kihan Pak' style 'preferences_videos_text'
                text 'Reginald Arnedo' style 'preferences_videos_text'

                text 'PRODUCTION' style 'preferences_videos_header'

                text 'Division Director' style 'preferences_videos_header'
                text 'Feargus Urquhart' style 'preferences_videos_text'

                text 'Producers' style 'preferences_videos_header'
                text 'Guido Henkel' style 'preferences_videos_text'
                text 'Kenneth Lee' style 'preferences_videos_text'

                text 'Line Producer' style 'preferences_videos_header'
                text 'Kenneth Lee' style 'preferences_videos_text'

                text 'QUALITY ASSURANCE' style 'preferences_videos_header'

                text 'Director of Quality Assurance' style 'preferences_videos_header'
                text 'Jeremy Barnes' style 'preferences_videos_text'

                text 'Assistant Directors of QA' style 'preferences_videos_header'
                text 'Michael Motoda' style 'preferences_videos_text'
                text 'Greg Baumeister' style 'preferences_videos_text'

                text 'Project Supervisors' style 'preferences_videos_header'
                text 'Damien Evans' style 'preferences_videos_text'
                text 'Dave Simon' style 'preferences_videos_text'
                text 'Darrell Jones' style 'preferences_videos_text'

                text 'Senior Testers' style 'preferences_videos_header'
                text 'Rob Giampa' style 'preferences_videos_text'
                text 'Eric Fong' style 'preferences_videos_text'
                text 'Scott Humphreys' style 'preferences_videos_text'
                text 'Dany Martinez' style 'preferences_videos_text'
                text 'Ed Hyland' style 'preferences_videos_text'

                text 'Testers' style 'preferences_videos_header'
                text 'Kris Giampa' style 'preferences_videos_text'
                text 'Donnie Cornwell' style 'preferences_videos_text'
                text 'John Palmero' style 'preferences_videos_text'
                text 'Billy Iturzaeta' style 'preferences_videos_text'
                text 'Savina Greene' style 'preferences_videos_text'
                text 'Gary Tesdall' style 'preferences_videos_text'
                text 'Rafael Lopez' style 'preferences_videos_text'
                text 'Larry Smith' style 'preferences_videos_text'
                text 'Greg Didieu' style 'preferences_videos_text'
                text 'Matt Gollembiewski' style 'preferences_videos_text'
                text 'Henry Lee' style 'preferences_videos_text'
                text 'Tony Piccoli' style 'preferences_videos_text'
                text 'Asher Luisi' style 'preferences_videos_text'

                text 'Compatibility Manager' style 'preferences_videos_header'
                text 'Darrell Jones' style 'preferences_videos_text'

                text 'Compatibility Technicians' style 'preferences_videos_header'
                text 'Jack Parker' style 'preferences_videos_text'
                text 'Derek Gibbs' style 'preferences_videos_text'
                text 'David Parkyn' style 'preferences_videos_text'
                text 'Josh Walters' style 'preferences_videos_text'

                text 'AUDIO' style 'preferences_videos_header'

                text 'Audio Director' style 'preferences_videos_header'
                text 'Charles Deenen' style 'preferences_videos_text'

                text 'Music By' style 'preferences_videos_header'
                text 'Mark Morgan' style 'preferences_videos_text'

                text 'Additional Music By' style 'preferences_videos_header'
                text 'Richard Band' style 'preferences_videos_text'

                text 'Sound Supervisors' style 'preferences_videos_header'
                text 'Charles Deenen' style 'preferences_videos_text'
                text 'Craig Duman' style 'preferences_videos_text'

                text 'Sound Design' style 'preferences_videos_header'
                text 'David "STW" Farmer' style 'preferences_videos_text'
                text 'Ann Scibelli, M.P.S.E' style 'preferences_videos_text'
                text 'Charles Deenen' style 'preferences_videos_text'

                text 'Additional Sound Design' style 'preferences_videos_header'
                text 'Al Nelson' style 'preferences_videos_text'
                text 'Rebecca Hanck' style 'preferences_videos_text'
                text 'Harry Cohen, M.P.S.E.' style 'preferences_videos_text'
                text 'Shannon Mills' style 'preferences_videos_text'
                text 'Elisabeth Flaum' style 'preferences_videos_text'

                text 'Sound Editing, Mastering and Scripting' style 'preferences_videos_header'
                text 'Craig Duman' style 'preferences_videos_text'

                text 'Mastering and Scripting Assistance' style 'preferences_videos_header'
                text 'Frank Szick' style 'preferences_videos_text'

                text 'VO Editors' style 'preferences_videos_header'
                text 'Stephen Miller' style 'preferences_videos_text'
                text 'Frank Szick' style 'preferences_videos_text'
                text 'Chris Borders' style 'preferences_videos_text'

                text 'VO Director' style 'preferences_videos_header'
                text 'Jamie Thomason' style 'preferences_videos_text'

                text 'VO Supervision' style 'preferences_videos_header'
                text 'Chris Borders' style 'preferences_videos_text'

                text 'VO Producer' style 'preferences_videos_header'
                text 'Fred Hatch' style 'preferences_videos_text'

                text 'VO Coordinator' style 'preferences_videos_header'
                text 'Dave Hendee' style 'preferences_videos_text'

                text 'Cast' style 'preferences_videos_header'
                text 'John de Lancie' style 'preferences_videos_text'
                text 'Flo Di Re' style 'preferences_videos_text'
                text 'Jennifer Hale' style 'preferences_videos_text'
                text 'Tony Jay' style 'preferences_videos_text'
                text 'Charlie Adler' style 'preferences_videos_text'
                text 'Sheena Easton' style 'preferences_videos_text'
                text 'Rob Paulsen' style 'preferences_videos_text'
                text 'Rodger Bumpass' style 'preferences_videos_text'
                text 'Keith David' style 'preferences_videos_text'
                text 'Mitch Pileggi' style 'preferences_videos_text'
                text 'Michael T. Weiss' style 'preferences_videos_text'
                text 'Dan Castellaneta' style 'preferences_videos_text'

                text 'Walla Group' style 'preferences_videos_header'
                text 'Barbara Harris, Voice Casting' style 'preferences_videos_text'

                text 'Walla Cast' style 'preferences_videos_header'
                text 'Steve Alterman' style 'preferences_videos_text'
                text 'Judi Durand' style 'preferences_videos_text'
                text 'Greg Finley' style 'preferences_videos_text'
                text 'Anneliese Goldman' style 'preferences_videos_text'
                text 'Gary Schwartz' style 'preferences_videos_text'
                text 'Vernon Scott' style 'preferences_videos_text'

                text 'Audio Administration' style 'preferences_videos_header'
                text 'Gloria "Mom" Soto' style 'preferences_videos_text'

                text 'Re-Recording Mixer' style 'preferences_videos_header'
                text 'Charles Deenen' style 'preferences_videos_text'

                text 'Mixed at Interplay in Dolby Surround' style 'preferences_videos_header'

                text 'MARKETING' style 'preferences_videos_header'

                text 'Senior Marketing Manager' style 'preferences_videos_header'
                text 'Greg Peterson' style 'preferences_videos_text'

                text 'Associate Marketing Manager' style 'preferences_videos_header'
                text 'Greg Bauman' style 'preferences_videos_text'

                text 'PR Manager' style 'preferences_videos_header'
                text 'Lisa Bucek' style 'preferences_videos_text'

                text 'Associate PR Manager' style 'preferences_videos_header'
                text 'Krys Card' style 'preferences_videos_text'

                text 'Web Master' style 'preferences_videos_header'
                text 'Josh "Bishop" Sawyer' style 'preferences_videos_text'

                text 'Production Manager' style 'preferences_videos_header'
                text 'Thom Dohner' style 'preferences_videos_text'
                text 'Kathy Helgason' style 'preferences_videos_text'

                text 'Traffic Manager' style 'preferences_videos_header'
                text 'Paul Naftalis' style 'preferences_videos_text'

                text 'Manual' style 'preferences_videos_header'
                text 'Matt Norton' style 'preferences_videos_text'

                text 'Manual Design & Layout' style 'preferences_videos_header'
                text 'Michael L. Quintos' style 'preferences_videos_text'

                text 'THANKS TO:' style 'preferences_videos_header'
                text '(Chris A.) “Ma and Pa Avellone, Eileen Suh, Thuy Dang, Chris Wright, and Roger Zelazny”.(Dave M.) “Thanks to my beautiful wife, Jen, for putting up with the ridiculous amount of time I spend here and away from her.” (Adam H.) “To Cindy, who loves me enough to let me come to work everyday.” (Scott W.) “Thanks for the inspiration: David Konieczny, Tania Sabljic, and Tomato.” (Steve B.) “Phil and the rest of the staff at SC Village.” (Colin M.) “Colin has too many people to thank to list them individually. Kitty, Quez, Brad, Kev, Dally, Nabs, Mom and family, and all of you - you know who you are. Thanks for the sanity.” (Brian M.) “Mom, Dad, and Patricia, and the big, green lizard.” (Ken L.) “Ken would like to thank Mom, Dad, Rob, Sab for supporting him all these years; and SFZ3 for stress relief, and FFVII and VIII for inspiration.”' style 'preferences_videos_text'

                text '© 2017 Beamdog. © 2017 Hasbro, Inc. All Rights Reserved. Planescape: Torment, Dungeons & Dragons, D&D, Wizards of the Coast, their respective logos, Planescape, and the dragon ampersand are trademarks of Wizards of the Coast LLC in the U.S.A. and other countries, and are used with permission. Hasbro and its logo are trademarks of Hasbro, Inc. and are used with permission. ©1998 BioWare Corp. All Rights Reserved. Bioware, the BioWare Infinity Engine and the BioWare logo are trademarks of Bioware Corp. Black Isle Studios and the Black Isle Studios logo are trademarks of Interplay Entertainment Corp..All other trademarks are the property of their respective owners.' style 'preferences_videos_text'

        button:
            xsize 193
            ysize 78
            xpos 525
            ypos 775
            action Return()
            background Transform('gui/button.png', fit='cover')
            hover_background Transform('gui/button.png', fit='cover', matrixcolor=hover_matrix)

            text _("preferences_screen_return"): # Вернуться
                size 20
                color "#eeeeee"
                xalign 0.5
                yalign 0.5


style preferences_videos_header:
    size 22
    color '#eeeeee'
    xalign 0.5
style preferences_videos_text:
    size 18
    color '#dbc401'
    xalign 0.5
