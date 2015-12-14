Param(
	$ip,
	$user,
	$pass
)

# ejecuto comando ssh
$a = echo 'y' | & 'C:\Program Files (x86)\plink.exe' -ssh $ip -l $user -pwd $pass 'ppp active print count-ounly'

#variable nula
$null

# verifico si $a es nula
$conf = $null -eq $a

# si es nula mando un error en caso contrario el numero de conexiones activas

if($conf -eq "True")
	Write-Host "2:Error"
elseif
	Write-Host "$a:OK"
else
	Write-Host ".:Error"
# si da un error con el if poner los corchetes a las condiciones