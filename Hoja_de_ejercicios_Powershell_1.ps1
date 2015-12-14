1. 


2. Get-Command | Where-Object {$_.name -like "get-*"}
   Get-Command | Where-Object {$_.name -like "set-*"}
   Get-Command | Where-Object {$_.name -like "new-*"}
   Get-Command | Where-Object {$_.name -like "start-*"}
   Get-Command | Where-Object {$_.name -like "stop-*"}


3. Get-Help -Examples Get-Alias


4. Get-Help -Detailed Stop-Process


5. Get-ChildItem C:\Users > Desktop\listado_users
   Get-Content C:\Users\Administrador\Desktop\listado_users


6. Get-ChildItem


7. Get-ChildItem | Where-Object{$_.Lenght -gt 5000} | Remove-Item


8. Get-Process | Where-Object{$_.ID -gt 3000}


9. Get-ChildItem | Where-Object{$_.lastwritetime -like "29/01/2013*"}


10. Get-Process | Where-Object{$_.CPU -gt 100} | Where-Object{$_.Kill()}
    Get-Process | Where-Object{$_.CPU -gt 100} | Stop-process //raul


11. Get-Service | Where-Object{$_.Status -like 'Stopped'}


12. calc
    Get-Process | Where-Object{$_.Name -like 'calc'} | Where-Object{$_.Kill()}
    Stop-Process -Name calc //raul


13. Get-ChildItem | Sort-Object creationtime
