#$a=Read-Host "introduce tu nombre"
#Write-Host $a -BackgroundColor Cyan


#write-host $args[0] $args[1] $args[2]

if($args[0] -gt $args[1] -and $args[0] -gt $args[2])
{
Write-Host $args[0]
}
elseif($args[1] -gt $args[2])
{
Write-Host $args[1]
}
else
{
Write-Host $args[2]
}