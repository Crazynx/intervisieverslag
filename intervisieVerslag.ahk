Esc::ExitApp

^i:: 

location = C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt ; Locatie van het verslag
questionNr = 1 ; Standaard vraag nummer
  
if (checkIfFriday(5)) {
  MsgBox, Goedzo! Je maakt het optijd!
} else {
  MsgBox, Het is geen vrijdag, waarom wil je je verslag maken?
}

FileDelete, C:\Users\%A_UserName%\Desktop\intervisieVerslag%A_UserName%%A_YDay%.txt ; Verwijder het oude invulverslag van vandaag

FileAppend,, %location% ; Maak nieuw invulverslag aan

FileAppend, Hoe is de afgelopen week gegaan?`n, %location% ; Deel 1
QuestionBox("Heb ik me aan mijn planning gehouden? Zo nee: waar zat het hem in?") ; Vraag 1
QuestionBox("Zijn er dingen waar ik tegenaan gelopen ben?") ; Vraag 2
QuestionBox("Heb ik ergens hulp bij nodig en wie ga ik daar dan voor inschakelen?") ; Vraag 3
QuestionBox("Waar ben ik trots op deze week?") ; Vraag 4

FileAppend, `nKomende week:`n, %location% ; Deel 2 
QuestionBox("Wat voor huiswerk is er voor de AVO vakken?") ; Vraag 5
QuestionBox("Voorzie ik problemen?") ; Vraag 6
QuestionBox("Zijn er bijzonderheden?") ; Vraag 7
QuestionBox("Wat is je planning?") ; Vraag 8

FileAppend, `nLeerdoel?`n, %location% ; Deel 3
QuestionBox("Wat heb ik deze week concreet gedaan om met mijn leerdoel aan de slag te gaan?") ; Vraag 9

FileAppend, `nIs er nog iets wat iemand graag wil bespreken?`n, %location% ; Deel 4
QuestionBox("Wil je nog iets bespreken?", " Spoiler alert: Ja, dat wil je") ; Vraag 10

MsgBox, , The End, Kijk je verslag nog even na! Als je:`n - Vragen hebt, vraag ze`n - Iets fout hebt ingevuld: wijzig ze in het tekstbestand`n`n Hopelijk is het gelukt, tot volgende week! :)

Run, %location% ; Open het verslag

; Functies
QuestionBox(question, ByRef optionalText = "") {
  global location, questionNr ; Krijg de functies van buitenaf
  InputBox, outputVar, Intervisieverslag - Made by Lars, Vraag %questionNr% v/d 10`n %question% %optionalText%,, 500, 200
  FileAppend, %question%`n - %outputVar%`n, %location%
  questionNr++
}

checkIfFriday(weekDayNr) {
 if (weekDayNr == 5) {
    return true
  } else {
    return false
  }
}