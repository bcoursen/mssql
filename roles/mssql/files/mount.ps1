param(
    [string]$iso= $(Read-Host -prompt "Full ISO Path")
)
$mount = Mount-DiskImage $iso -PassThru
$driveletter = ($mount | Get-Volume).DriveLetter
write-output $driveletter
