$files = Get-ChildItem | Where-Object {$_.Extension -ne ".ps1"}
foreach ($file in $files) 
{
   $exe = [IO.Path]::GetExtension($file)
   $name = [IO.Path]::GetFileNameWithoutExtension($file)
   $newName = "$name-c.png"
   Rename-Item $file $newName
   Write-Host "Rename File $name To $newName"

}
