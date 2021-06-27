# PowerShell-Batch-Ping-Script
A PowerShell script to ping each IP/Hostname entered in a .txt list file

When launched with PowerShell, the script will look for a file called 'IPAddresses.txt' in the same directory as the main 
BatchPing.ps1 file.

The script will then iterate through each IP address / hostname listed in the 'IPAddresses.txt' file, pinigng each address 
with a single packet using the 'Test-Connection' cmdlet. 

The results will be output in the same directory as the main BatchPing.ps1 file, in a file called 'BatchPingLog.txt'. 
If the address could responded to the pinmg succesfully, the log file will list the device as 'online' or 'unreachable'
otherwise.

The log file lists a semicolon ';' between each IP/hostname and their repsctive result. This is so the results can be copied
into Excel & the address & results can be seperated using the 'Text to Columns' function with the semicolon ';' as delimiter.
