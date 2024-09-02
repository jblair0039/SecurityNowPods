# Downloads episodes 1-960 of the Security Now Podcast
# Place URL's in the column named "url" and filenames in a column named "output" in the episodes.csv file
#Jordan Blair, 2024

$csvData = Import-Csv "$ENV:USERPROFILE\Downloads\episodes.csv"

foreach($now in $csvData){

Invoke-WebRequest -Uri $row.url -OutFile $row.output

}
