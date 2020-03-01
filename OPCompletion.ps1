function opCompletion {
    param($wordToComplete ,$commandAst)

    Set-Alias nct -Value New-CommandTree

    $commandTree = & {
        nct add "Add access for users or groups to groups or vaults." {
            nct group "Grant a group access to a vault."
            nct user "Grant a user access to a vault or group."
            nct --help "help for add"
        }

        nct confirm "Confirm a user." {
            nct --all "Confirm all outstanding invited users."
            nct --help "help for add"
        }

        nct create "Create an object." {
            nct document "Create a document." {
                nct --tags  "<tags> is a comma-separated list of tags to be added to the document."
                nct --title "The <title> of corresponding item."
                nct --vault "The <vault> to save the document into. Specify <vault> by UUID or name. If not specified, the document is stored in the user's personal vault."
                nct --help "help for document"
            }

            nct group "Create a group." {
               nct --description "Set the new group's description"
               nct --help "help for group"
            }

            nct item  "Create a new item." {
                nct --tags "<tags> is a comma separated list of tags to be added to the item."
                nct --title "The <title> of corresponding item."
                nct --url "The <url> that shouls be associated with this item."
                nct --vault "The <vault> to save the item into. Specify <vault> by UUID or name. If not specified the item is stored in the user's personal vault."
                nct --help "help for item"
            }

            nct user  "Create a new user." {
                nct --language "Set the user's account <language> (default `"en`")"
                nct --help "help for user"
            }

            nct vault "Create a new vault." {
                nct --allow-admins-to-manage "<true|false> Allows or disallows admins to manage this vault. If not specified, the default policy of the server is applied."
                nct --description "A description for the vault."
                nct --help "help for vault"
            }

            nct --help "help for create"
        }

        nct delete "Remove an object." {
            nct document "Move a document to the Trash." {
                nct --vault "Specify the <vault> to delete the document from. If not specified the document is searched for in all vaults."
                nct --help "help for document"
            }

            nct group "Remove a group." {
                nct --help "help for group"
            }

            nct item "Move an item to the Trash." {
                nct --vault "Specify the <vault> to delete the item from. If not specified the item is searched for in all vaults."
                nct --help "help for item"
            }

            nct trash "Empties the trash for a given vault." {
                nct --help "help for trash"
            }

            nct user "Completely remove a user." {
                nct --help "help for user"
            }

            nct vault "Remove a vault." {
                nct --help "help for vault"
            }

            nct --help "help for delete"
        }

        nct edit "Edit an object." {
            nct group "Edit a group in your 1Password account." {
                nct --description "The new description of the group, for example: 'development keys'"
                nct --name "The new <name> of the group, for example: 'developers"
                nct --help "help for group"
            }

            nct user "Edit the name or travel mode state of a user" {
                nct --name "Set the name of the user to to <name>"
                nct --travelmode "<on|off> Enable or disable travel mode. (default )"
                nct --help "help for user"
            }
        }

        nct encode "Encode the JSON needed to create an item." {
            nct --help "help for encode"
        }

        nct forget "Remove a 1Password account from this device." {
            nct --help "help for forget"
        }

        nct get "Get details about an object." {
            nct account "Get details about your account." {
                nct --help "help for account"
            }

            nct document "Download a document." {
                nct --include-trash "Include deleted documents."
                nct --output "Save the document to <file path> instead of printing it to stdout. This is especially useful in some shells to preserve the original encoding of the file. The destination file must be empty or non-existent."
                nct --vault "Look for the document in this <vault>. Specify <vault> by UUID or name."
                nct --help "help for document"
            }

            nct group "Get details about a group." {
                nct --help "help for group"
            }

            nct item "Get item details." {
                nct --include-trash "Include items in the Trash. Always on for an item specified by UUID."
                nct --vault "Look for the item in <vault>. Specify <vault> by UUID or name."
                nct --help "help for item"
            }

            nct template "Get an item template." {
                nct --help "help for template"
            }

            nct totp "Get the one-time password for an item." {
                nct --vault "Look for the item in <vault>. Specify <vault> by UUID or name."
                nct --help "help for totp"
            }

            nct user "Get details about a user." {
                nct --fingerprint "If set, returns the user's public key fingerprint"
                nct --publickey "If set, returns the user's public key"
                nct --help "help for user"
            }
            nct vault "Get details about a vault." {
                nct --help "help for vault"
            }

            nct --help "help for get"
        }

        nct help "Help about any command" {
            nct --help "help for get"
        }
        nct list "List objects and events." {
            nct documents "Get a list of documents." {
                nct --include-trash "Include documents in the Trash"
                nct --vault "vault List documents in vault"
                nct --help "help for documents"
            }

            nct events "Get a list of events from the Activity Log." {
                nct --eventid "Return the events after the event with ID <event_ID>"
                nct --older "Return the events *before* the event with ID <event_ID>"
                nct --help "help for events"
            }

            nct groups "Get the list of groups." {
                nct --vault "List groups who have direct access to <vault>. Specify <vault> by name or UUID."
                nct --help "help for groups"
            }

            nct items "Get a list of items." {
                nct --include-trash "Include items in the Trash"
                nct --vault "List items in <vault>. Specify <vault> by name or UUID."
                nct --help "help for items"
            }

            nct templates "Get the list of templates." {
                nct --help "help for templates"
            }

            nct users "Get the list of users." {
                nct --group "List users who belong to this group. Specify group by name or UUID."
                nct --vault "List users who have direct access to this vault. Specify vault by name or UUID"
                nct --help "help for users"
            }

            nct vaults "Get the list of vaults." {
                nct --group "List vaults <group> has access to. Specify <group> by name or UUID."
                nct --help "help for vaults"
            }
        }

        nct reactivate "Reactivate a suspended user." {
            nct --help "help for reactivate"
        }

        nct remove "Revoke access for users or groups to groups or vaults."{
            nct group "Revoke a group's access to a vault." {
                nct --help "help for group"
            }

            nct user "Revoke a user's access to a vault or group." {
                nct --help "help for user"
            }
        }

        nct signin "Sign in to your 1Password account." {
            nct --raw "output the raw session token"
            nct --shorthand "use <name> as short account name for new account"
            nct --help "help for signin"
        }

        nct signout "Sign out of your 1Password account." {
            nct --forget "removes the account from the local configuration file"
            nct --help "help for signout"
        }

        nct suspend "Suspend a user." {
            nct --help "help for suspend"
        }

        nct update "Check for updates." {
            nct --beta "Check for beta releases"
            nct --help "help for update"
        }

        nct --account "account to use when multiple sessions are active"
        nct --help "help for op"
        nct --session "raw session token obtained via 'op signin --raw'"
        nct --version "version for op"
    }

    Get-CommandTreeCompletion $wordToComplete $commandAst $commandTree
}

Register-ArgumentCompleter -CommandName op -Native -ScriptBlock $function:opCompletion