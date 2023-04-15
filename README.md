# PowerShell-Batch-Ping-Script
A PowerShell script to ping each IP/Hostname entered in a .txt list file

When launched with PowerShell, the script will look for a file called 'IPAddresses.txt' in the same directory as the main 
BatchPing.ps1 file.

The script will then iterate through each IP address / hostname listed in the 'IPAddresses.txt' file, pinigng each address 
with a single packet using the 'Test-Connection' cmdlet. 

During each iteration, a new object '$obj' is created with two properties, 'IPAddress' and 'IPConnectionTest', set as empty strings. 
 
A  'try {}' block is used carry out a connection test, with a single packet, return either 'True' or 'False' if the ping was succesful or not. A 'catch {}' block is added incase an exception is thrown

All objects are exported to 'BatchPingLog.csv' via 'Export-Csv'. The '-NoType' switch prevents data type information from being printed at the top of the CSV file.