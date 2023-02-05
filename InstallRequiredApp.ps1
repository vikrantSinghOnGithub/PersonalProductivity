$Apps = @(
"Microsoft.VisualStudioCode",
"Microsoft.VisualStudio.2022.Enterprise",
"Microsoft.PowerToys",
"Oracle.JDK.19",
"OpenJS.NodeJS.LTS",
"Git.Git",
"GitHub.GitHubDesktop",
"Google.Chrome",
"KDE.KDiff3",
"Notepad++.Notepad++",
"Google.AndroidStudio",
"Postman.Postman",
"Python.Python.3.8",
"Telerik.Fiddler.Classic",
"Microsoft.WindowsTerminal",
"Microsoft.PowerShell"
)

$i = 0
foreach($app in $Apps){
    Write-Host "Installation of the application $app started"
    $i++    
    $taskCompleted = $i/$Apps.Count*100;
    Write-Progress -Activity " Applicaton nstallation started ...." -Status "$taskCompleted % completed" -PercentComplete $taskCompleted   
    winget install --id $app 
}

Write-Host "Installation Completed "