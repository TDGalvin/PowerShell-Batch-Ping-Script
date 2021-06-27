$complist = Get-Content .\IPAddresses.txt

Start-Transcript -Path .\BatchPingLog.txt

foreach($comp in $complist){
    
    $pingtest = Test-Connection -ComputerName $comp -Quiet -Count 1 -ErrorAction SilentlyContinue

    if($pingtest){

         Write-Host($comp + " ;online")
     }
     else{
        Write-Host($comp + " ;reachable")
     }
     
}
Stop-Transcript