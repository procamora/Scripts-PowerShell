1. mkdir uno | mkdir dos 
   New-Item -type file dos\prueba.txt
   Copy-Item dos|prueba.txt uno\prueba.txt
   Remove-Item dos\pruebas.txt
   Remove-Item dos/


2. Get-EventLog System | Where-Object{$_.Entrytype -like "error"} | Format-list time, EventID, Message


3. Get-Service | Select-Object Name, Status | Export-Csv -path prueba.csv

4. Get-Process | Where-Object{$_.CPU -gt 1} | Select-Object Id, ProcessName, CPU | Convertto-Html > tabla.html
