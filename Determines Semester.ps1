
$semesterClass = @()
$weekCount = 0

##Determines the current Semester
$dayOfYear = (Get-Date).dayofyear

#Assigns Values for Each Semester
$Spring = 14, 116
$Summer = 133, 222
$Fall = 239, 349

#Determines Current Semester
if ($dayOfYear -In $Spring[0]..$Spring[1]){
  #Write-Host "Spring Semester"
  $CurrentSemester = "Spring "
}elseif ($dayOfYear -In $Summer[0]..$Summer[1]){
  #Write-Host "Summer Semester"
  $CurrentSemester = "Summer "
}elseif ($dayOfYear -In $Fall[0]..$Fall[1]){
  #Write-Host "Fall Semester"
  $CurrentSemester = "Fall "
}

$CurrentSemester = $CurrentSemester + (Get-Date).Year
$CurrentSemesterDir = ".\"+$CurrentSemester

mkdir $CurrentSemester
cd $CurrentSemesterDir

##Gets User Input
Do{
    $semesterClass += Read-Host -Prompt 'Enter First Class Name'
    $moreClass = Read-Host -Prompt 'If you have more classes enter T for True if not enter F for False'
}While($moreClass -eq 'T')

##Makes a directory for each classs and their week
foreach ($class in $semesterClass){
    mkdir $semesterClass[$weekCount]
    cd $semesterClass[$weekCount]

    For ($j=1; $j -le 15; $j++) {
      mkdir Week_$j
    }
    cd ..
    
    $weekCount = $weekCount + 1
}
