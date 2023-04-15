Get-Content .\IPAddresses.txt | ForEach-Object {
    $obj = "" | Select-Object IPAddress,IPConnectionTest
    try { 
        $obj.IPConnectionTest = Test-Connection -ComputerName $_ -Quiet -Count 1
    } catch { 
        $obj.IPConnectionTest = 'Unknown Host'
    }	
    $obj.IPAddress = $_
    $obj
} | Export-Csv -Path BatchPingLog.csv -NoType
