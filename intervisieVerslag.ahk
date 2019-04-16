Esc::ExitApp

^i::

if (A_Wday != 5)
{
  MsgBox, Ik heb het je zo makkelijk gemaakt en alsnog maak je het te laat :'(
}

FileDelete, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt ; Verwijder het oude invulverslag van vandaag

FileAppend, Hoe is de afgelopen week gegaan?`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt ; Maak nieuw invulverslag aan

InputBox, vraag1, Invullen intervisieverslag - made by Lars , 1 v/d 10:`n Heb ik me aan mijn planning gehouden? Zo nee: waar zat het hem in?, 1000, 1000
FileAppend, Heb ik me aan mijn planning gehouden? Zo nee: waar zat het hem in? `n- %vraag1%`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag2, Invullen intervisieverslag - made by Lars , 2 v/d 10:`n Zijn er dingen waar ik tegenaan gelopen ben?, 1000, 1000
FileAppend, Zijn er dingen waar ik tegenaan gelopen ben?`n- %vraag2%`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag3, Invullen intervisieverslag - made by Lars , 3 v/d 10:`n Heb ik ergens hulp bij nodig en wie ga ik daar dan voor inschakelen?, 1000, 1000
FileAppend, Heb ik ergens hulp bij nodig en wie ga ik daar dan voor inschakelen?`n- %vraag3%`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag4, Invullen intervisieverslag - made by Lars , 4 v/d 10:`n Waar ben ik trots op deze week?, 1000, 1000
FileAppend, Waar ben ik trots op deze week?`n- %vraag4%`n`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

FileAppend, Komende week:`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag5, Invullen intervisieverslag - made by Lars , 5 v/d 10:`n Wat voor huiswerk is er voor de AVO vakken?, 1000, 1000
FileAppend, Wat voor huiswerk is er voor de AVO vakken?`n- %vraag5%`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag6, Invullen intervisieverslag - made by Lars , 6 v/d 10:`n Voorzie ik problemen?, 1000, 1000
FileAppend, Voorzie ik problemen?`n- %vraag6%`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag7, Invullen intervisieverslag - made by Lars , 7 v/d 10:`n Zijn er bijzonderheden?, 1000, 1000
FileAppend, Zijn er bijzonderheden?`n- %vraag7%`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag8, Invullen intervisieverslag - made by Lars , 8 v/d 10:`n Planning Leerdoel?, 1000, 1000
FileAppend, Planning`n- %vraag8%`n`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

FileAppend, Leerdoel?`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag9, Invullen intervisieverslag - made by Lars , 9 v/d 10:`n Wat heb ik deze week concreet gedaan om met mijn leerdoel aan de slag te gaan?, 1000, 1000
FileAppend, Wat heb ik deze week concreet gedaan om met mijn leerdoel aan de slag te gaan?`n- %vraag9%`n`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

FileAppend, Is er nog iets wat iemand graag wil bespreken?`n, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

InputBox, vraag10, Invullen intervisieverslag - made by Lars , 10 v/d 10:`n Wil je nog wat bespreken?, 1000, 1000
FileAppend, - %vraag10%, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt

MsgBox, , The End, Kijk je verslag nog even na! Als je:`n - Vragen hebt, vraag ze`n - Iets fout hebt ingevuld: wijzig ze in het tekstbestand`n`n Hopelijk is het gelukt, tot volgende week! :)

Run, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt ; Open het verslag
