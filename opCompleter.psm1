if (Get-Command -Name op) {
    op completion powershell | Out-String | Invoke-Expression
}