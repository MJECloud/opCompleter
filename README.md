# Argument completer for 1Password CLI [op](https://app-updates.agilebits.com/product_history/CLI)
Powered by [TabExpansionPlusPlus](https://github.com/lzybkr/TabExpansionPlusPlus). Works in Windows PowerShell, Powershell 6 and up.

> [!IMPORTANT]  
> For a while now, the 1Password CLI has supported autocomplete natively. See [here](https://developer.1password.com/docs/cli/reference/commands/completion/#load-shell-completion-information-for-powershell) 

Install it from the PowerShell Gallery:

```pwsh
Install-Module opCompleter
Import-Module opCompleter
```

![op TabComplete](/images/opTabCompletion.png)

![Completion of domains](/images/opGetTabCompletion.png)
