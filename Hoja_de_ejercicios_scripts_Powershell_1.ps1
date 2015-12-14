 <#
 Puede utilizar PSIsContainer para determinar si un archivo es un directorio:
 PS C:\Users\m> (get-item 'c:\').PSIsContainer
 True

 PS C:\Users\m> (get-item 'c:\windows\system32\notepad.exe').PSIsContainer
 False
 #>

 <#
 $cont = 0
 foreach ($i in Get-Service | Where-Object{$_.Status -like "Running"})
 {
 $i.Name
 $i.Status
 $cont++
 }
 Write-Host "Hay funcionando:" $cont
 #>
 
 #Ejercicio 1
 <#
 #Get-Variable para ver las variables de entorno
 #Get-ChildItem env:
 Get-ChildItem $HOME
 $archivo = Read-Host "Introduce un archivo"
 Write-Host $archivo
 Copy-Item $HOME\$archivo $env:TEMP
 #>

 #Ejercicio 2 1048576
 <#
 $memory = Get-WmiObject win32_computersystem #| Format-List -Property TotalPhysicalMemory 
 Write-Host $memory.TotalPhysicalMemory
 if($memory.TotalPhysicalMemory -gt 1048576)
 {
 Write-Host -BackgroundColor Blue "Su PC posee memoria suficiente"
 }
 else{
 Write-Host -BackgroundColor Red "Su PC no posee memoria suficiente"
 }
 #totalfisicalmemory
 #>

 #Ejercicio 3
 <#
 $gru = 6#$args[0]
 $usu = 12#$args[1]
 Write-Host $args[0]
 for ($i=1 ; $i -le $gru ; $i++)
 {
    for ($j=1 ; $j -le $usu ; $j++)
    {
    #net user nombre grupo$i-alu$j /add 
    Write-Host "nombre grupo$i-alu$j"
    }
 }
 #>
 
 #Ejercicio 4
 <#
 $cont=0
 foreach ($exe in Get-ChildItem -File *.ps1)
 {
 $cont++
 }
 Write-Host "Hay" $cont "archivos .ps1"
 #>

 #Ejercicio 5
 #
 $run = Get-Service | Where-Object{$_.Status -eq "Running"}
 $stop = Get-Service | Where-Object{$_.Status -eq "Stopped"}
 # $run.Count cuenta el array
 # $stop.Count cuenta el array
 for($i=0 ; $i -le $run.Count ; $i++){
 Write-Host -BackgroundColor Green $run[$i]
 }
 for($i=0 ; $i -le $stop.Count ; $i++){
 Write-Host -BackgroundColor Red $stop[$i]
 }
 #>

  #Ejercicio 6
 <#
 Get-ChildItem $HOME
 $archivo = Read-Host "Introduce un archivo"
 $exit = Test-Path $HOME\$archivo
 if ($exit -like 'False')
 {
 Write-Host "el archivo $archivo no existe"
 }
 else
 {
 Copy-Item $HOME\$archivo $env:TEMP
 Write-Host "El archivo $archivo ha sido copiado"
 }
 #>
 <#Otra forma de hacerlo
 Set-Location $HOME
 Get-ChildItem select -property name
 $a = Read-Host "introduzca un archivo"
 Remove-Item $a 2> out-NULL
 if($?){"todo ok"}
 else{"error"}
 #>

 

  <#
  #Abre el internet explorer en la pagina de gmail
  $navega=New-Object -ComObject InternetExplorer.Application
  $navega.Navigate("www.gmail.com")
  $navega.visible=$true
  #>

  <#
  $word=New-Object -ComObject Word.Application
  #$word.Documents.add() #Abre un nuevo archivo
  #$word.Documents.creator("Doc1.docx") no rula
  $word.run("Doc1.docx")
  $word.visible=$true
  #$word | Get-Member > pepe
  #$word.Documents.
  #>

