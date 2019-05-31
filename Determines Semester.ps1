##Determines the Semester your in
$dayOfYear = (Get-Date).dayofyear

$Spring = 14, 116
$Summer = 133, 222
$Fall = 239, 349

if ($dayOfYear -In $Spring[0]..$Spring[1]){
Write-Host "Spring Semester"
}elseif ($dayOfYear -In $Summer[0]..$Summer[1]){
Write-Host "Summer Semester"
}elseif ($dayOfYear -In $Fall[0]..$Fall[1]){
Write-Host "Fall Semester"
}