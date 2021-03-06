Write-Host ("Remote Print Spooler Restart") -ForegroundColor Yellow

$hostName = Read-Host -Prompt 'Input HostName '

while($hostName -ne "x"){
	if ($hostName -ne "x") {
		Restart-Service -InputObject $(Get-Service -ComputerName $hostName -Name Spooler) -Force
		$hostName = Read-Host -Prompt 'Input HostName '
	}
}
exit