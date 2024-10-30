$filename = "wifipasswd_$($Env:COMPUTERNAME)_$((Get-Date).ToString('yyyyMMddhhmmss')).txt"
(Get-WmiObject -Class "Win32_NetworkAdapterConfiguration" | Where-Object { $_.IPEnabled -eq $true }) | foreach {
    $profiles = (netsh -c "wlan show profiles" -Interface $_.Caption | Select-String "All User Profile\s+:\s+(.*)$" | ForEach-Object { $_.Matches.Groups[1].Value })
    foreach ($profile in $profiles) {
        $password = (netsh -c "wlan show profile name=`"$($profile)`" key=clear" -Interface $_ | Select-String "Key Content\s+:\s+(.*)$" | ForEach-Object { $_.Matches.Groups[1].Value })
        "$profile : $password"
    }
} | Out-File $filename
