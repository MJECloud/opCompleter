@{

    # Die diesem Manifest zugeordnete Skript- oder BinÃ¤rmoduldatei.
    RootModule = 'opCompleter.psm1'

    # Die Versionsnummer dieses Moduls
    ModuleVersion = '2.0.0'

    # UnterstÃ¼tzte PSEditions
    CompatiblePSEditions = @('Core','Desktop')

    # ID zur eindeutigen Kennzeichnung dieses Moduls
    GUID = '614d81fd-0b13-4ddd-9d18-3ffda4542ae4'

    # Autor dieses Moduls
    Author = 'mjeCloud'

    # Unternehmen oder Hersteller dieses Moduls
    CompanyName = 'mjeCloud'

    # UrheberrechtserklÃ¤rung fÃ¼r dieses Modul
    Copyright = '(c) 2023 mjeCloud. All rights reserved.'

    # Beschreibung der von diesem Modul bereitgestellten Funktionen
    Description = 'DEPRECATED! An argument completer for the 1Password CLI.'

    # Die fÃ¼r dieses Modul mindestens erforderliche Version des Windows PowerShell-Moduls
    PowerShellVersion = '5.1'

    # Der Name des fÃ¼r dieses Modul erforderlichen Windows PowerShell-Hosts
    # PowerShellHostName = ''

    # Die fÃ¼r dieses Modul mindestens erforderliche Version des Windows PowerShell-Hosts
    # PowerShellHostVersion = ''

    # Die fÃ¼r dieses Modul mindestens erforderliche Microsoft .NET Framework-Version. Diese erforderliche Komponente ist nur fÃ¼r die PowerShell Desktop-Edition gÃ¼ltig.
    # DotNetFrameworkVersion = ''

    # Die fÃ¼r dieses Modul mindestens erforderliche Version der CLR (Common Language Runtime). Diese erforderliche Komponente ist nur fÃ¼r die PowerShell Desktop-Edition gÃ¼ltig.
    # CLRVersion = ''

    # Die fÃ¼r dieses Modul erforderliche Prozessorarchitektur ("Keine", "X86", "Amd64").
    # ProcessorArchitecture = ''

    # Die Module, die vor dem Importieren dieses Moduls in die globale Umgebung geladen werden mÃ¼ssen
    RequiredModules = @('TabExpansionPlusPlus')

    # Die Assemblys, die vor dem Importieren dieses Moduls geladen werden mÃ¼ssen
    # RequiredAssemblies = @()

    # Die Skriptdateien (PS1-Dateien), die vor dem Importieren dieses Moduls in der Umgebung des Aufrufers ausgefÃ¼hrt werden.
    # ScriptsToProcess = @()

    # Die Typdateien (.ps1xml), die beim Importieren dieses Moduls geladen werden sollen
    # TypesToProcess = @()

    # Die Formatdateien (.ps1xml), die beim Importieren dieses Moduls geladen werden sollen
    # FormatsToProcess = @()

    # Die Module, die als geschachtelte Module des in "RootModule/ModuleToProcess" angegebenen Moduls importiert werden sollen.
    # NestedModules = @()

    # Aus diesem Modul zu exportierende Funktionen. Um optimale Leistung zu erzielen, verwenden Sie keine Platzhalter und lÃ¶schen den Eintrag nicht. Verwenden Sie ein leeres Array, wenn keine zu exportierenden Funktionen vorhanden sind.
    FunctionsToExport = @()

    # Aus diesem Modul zu exportierende Cmdlets. Um optimale Leistung zu erzielen, verwenden Sie keine Platzhalter und lÃ¶schen den Eintrag nicht. Verwenden Sie ein leeres Array, wenn keine zu exportierenden Cmdlets vorhanden sind.
    CmdletsToExport = @()

    # Die aus diesem Modul zu exportierenden Variablen
    VariablesToExport = @()

    # Aus diesem Modul zu exportierende Aliase. Um optimale Leistung zu erzielen, verwenden Sie keine Platzhalter und lÃ¶schen den Eintrag nicht. Verwenden Sie ein leeres Array, wenn keine zu exportierenden Aliase vorhanden sind.
    AliasesToExport = @()

    # Aus diesem Modul zu exportierende DSC-Ressourcen
    # DscResourcesToExport = @()

    # Liste aller Module in diesem Modulpaket
    # ModuleList = @()

    # Liste aller Dateien in diesem Modulpaket
    # FileList = @()

    # Die privaten Daten, die an das in "RootModule/ModuleToProcess" angegebene Modul Ã¼bergeben werden sollen. Diese kÃ¶nnen auch eine PSData-Hashtabelle mit zusÃ¤tzlichen von PowerShell verwendeten Modulmetadaten enthalten.
    PrivateData = @{

        PSData = @{

            # 'Tags' wurde auf das Modul angewendet und unterstÃ¼tzt die Modulermittlung in Onlinekatalogen.
            Tags = @('PSEdition_Core', 'PSEditon_Desktop', '1Password', "op")

            # Eine URL zur Lizenz fÃ¼r dieses Modul.
            LicenseUri = 'https://github.com/MJECloud/opCompleter/blob/master/LICENSE'

            # Eine URL zur Hauptwebsite fÃ¼r dieses Projekt.
            ProjectUri = 'https://github.com/MJECloud/opCompleter'

            # Eine URL zu einem Symbol, das das Modul darstellt.
            # IconUri = ''

            # 'ReleaseNotes' des Moduls
            ReleaseNotes = '2.0.0
            Switch to native op completion.
            Deprecate Module'

        } # Ende der PSData-Hashtabelle

    } # Ende der PrivateData-Hashtabelle

    # HelpInfo-URI dieses Moduls
    # HelpInfoURI = ''

    # StandardprÃ¤fix fÃ¼r Befehle, die aus diesem Modul exportiert werden. Das StandardprÃ¤fix kann mit "Import-Module -Prefix" Ã¼berschrieben werden.
    # DefaultCommandPrefix = ''

}