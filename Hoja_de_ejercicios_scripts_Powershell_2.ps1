 #Ejercicio 1
 #
 #$cont = 0
 #gwmi win32_logicaldisk -filter "drivetype = 3" | % { $_.deviceid; $_.freespace/1GB } forma rara
 # Get-WmiObject win32_logicaldisk -filter "drivetype = 3" funciona igual
 foreach ($i in Get-WmiObject win32_logicaldisk | Where-Object{$_.Size -gt 1})
 {
 $i.DeviceID
 $libre = ($i.FreeSpace / 1Gb)
 $total = ($i.Size / 1Gb)
 $final = ($total/$libre)*100
 $final= "{0:N2}" -f $total
 Write-Host "Espacio libre"$final"%"
 Write-Host "====================="
 }
 #>

 #Ejercicio 2
 #
 if($args[0] -like "-C")
 {
 $grep = Select-String $args[1] $args[2]
 Write-Host "Hay" $grep.Count $palabra
 }
 elseif($args[0] -notlike "-C")
 {
 $grep = Select-String $args[0] $args[1]
 $grep.line 
 }
 else
 {
 Write-Host "Debes introducir primero la palabra a buscar y despues el fichero"
 }
 #>

 #
 #Ejercicio 3
 $wi = 0
 
 while($wi -eq 0)
 {
 $prp = Get-WmiObject win32_processor
 $prp.loadpercentage
 Start-Sleep -s 1
 
 if($prp.loadpercentage -gt 50)
 {
 $e = New-Object System.Diagnostics.EventLog
 #$e.Source = "CVHSVC"
 $e.Source = "powershell"
 $e.WriteEntry("Se ha superoado el 50% del procesador")
 }
 }
 #$evento = New-Object -TypeName System.Diagnostics.EventLog 
 #$evento.WriteEvent("hola")

 #$RemoteAppLog = New-Object -TypeName System.Diagnostics.EventLog Application,192.168.1.81

 #>
 
 #Ejercicio 4
 #
 $impresoras = Get-WmiObject Win32_Printer
 for ($i=0 ; $i -lt $impresoras.Count ; $i++)
 {
 Write-Host $i $impresoras.Name[$i]
 }
 $num = Read-Host "Introduce el numero de la impresora"
 Write-Host "===================="
 if ($num -eq 0)
 {
 Write-Host "pulsaste 0 y la impresora:" $impresoras[0].Name
 $nomb = $impresoras.Name[0]
 #(Get-WmiObject win32_printer -Filter "Name=$impresoras[0].Name").setdefaultprinter()
 $pruena = $impresoras | where {$_.name -match "$nomb"}
 $pruena.SetDefaultPrinter()
 }
 elseif ($num -eq 1)
 {
 Write-Host "pulsaste 1 y la impresora:" $impresoras.Name[1]
 $nomb = $impresoras.Name[1]
 $pruena = $impresoras | where {$_.name -match "$nomb"}
 $pruena.SetDefaultPrinter() > Out-Null
 }
 else
 {
 Write-Host "pulsa un 0 o un 1"
 }
 #>

 #Ejercicio 5
 #
 $aviso = new-object -comobject wscript.shell
 $aviso.popup(“El porcentaje de uso del disco supera el 80%“,0)
 

 foreach ($i in Get-WmiObject win32_logicaldisk | Where-Object{$_.Size -gt 1})
 {
 $libre = ($i.FreeSpace / 1Gb)
 $total = ($i.Size / 1Gb)
 $final = ($total/$libre)*100
 $final= "{0:N2}" -f $total
 $tot = 100
 $ocupado = $tot - $final
 $ocupado
  if($ocupado -gt 10){
 $result = [System.Windows.Forms.MessageBox]::Show("El porcentaje de uso del disco supera el 80% en $i.DeviceID","Aviso")
 $result
 }
 }

 #>


 <#
$form = new-object  Windows.Forms.Form
$form.Text = "MI PRIMER FORMULARIO"
$form.width=300
$form.height=300
$button = new-object Windows.Forms.Button
$lab = new-object Windows.Forms.Label
$lab.text="Ventana de prueba abierta desde PowerShell"
$button.text="SALIR"
$lab.width=300
$button.Left=100
$button.Top=100
$button.add_click({$form.close()})
$form.controls.add($button)
$form.controls.add($lab)
$form.ShowDialog() 
#>