# Get the files which should be moved, without folders
$files = Get-ChildItem 'F:\Images_Unsorted' -Recurse | where {!$_.PsIsContainer}
 
# List Files which will be moved
$files
 
# Target Filder where files should be moved to. The script will automatically create a folder for the year and month.
$targetPath = 'F:\Images'
 
foreach ($file in $files)
{
# Get year and Month of the file
# I used LastWriteTime since this are synced files and the creation day will be the date when it was synced
$year = $file.LastWriteTime.Year.ToString()
$month = $file.LastWriteTime.Month.ToString()
 
# Out FileName, year and month
$file.Name
$year
$month
 
# Set Directory Path
$Directory = $targetPath + "\" + $year + "\" + $month
# Create directory if it doesn't exsist
if (!(Test-Path $Directory))
{
New-Item $directory -type directory
}
 
# Move File to new location
$file | Move-Item -Destination $Directory
}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Get the files which should be moved, without folders
$files = Get-ChildItem 'F:\Videos_Unsorted' -Recurse | where {!$_.PsIsContainer}
 
# List Files which will be moved
$files
 
# Target Folder where files should be moved to. The script will automatically create a folder for the year and month.
$targetPath = 'F:\Videos'
 
foreach ($file in $files)
{
# Get year and Month of the file
# I used LastWriteTime since this are synced files and the creation day will be the date when it was synced
$year = $file.LastWriteTime.Year.ToString()
$month = $file.LastWriteTime.Month.ToString()
 
# Out FileName, year and month
$file.Name
$year
$month
 
# Set Directory Path
$Directory = $targetPath + "\" + $year + "\" + $month
# Create directory if it doesn't exsist
if (!(Test-Path $Directory))
{
New-Item $directory -type directory
}
 
# Move File to new location
$file | Move-Item -Destination $Directory
}
