for($i=0; $i -le 20; $i++)
{
net user /add usuario$i
Write-Host "creado usuario"$i
}
pause
net user
pause
for($i=0; $i -le 20; $i++)
{
net user /del usuario$i
Write-Host "creado usuario"$i
}
pause
net user