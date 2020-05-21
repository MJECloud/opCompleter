function opCompletion {
    param($wordToComplete ,$commandAst)

    Set-Alias nct -Value New-CommandTree

    $commandTree = & {
        nct add "Add access for users or groups to groups or vaults." {
            nct group "Grant a group access to a vault." {
                nct '<GroupName>' "Name of the group"
                nct '<ValutName>' "Name of the Vault"
                nct --help "get help with add group"
            }

            nct user "Grant a user access to a vault or group." {
                nct '<GroupName>' "Name of the group"
                nct '<ValutName>' "Name of the Vault"
                nct --role "get help with add group"
                nct --help "get help with add group"
            }

            nct --help " get help with add"
        }

        nct confirm "Confirm a user." {
            nct --all "Confirm all outstanding invited users."
            nct --help " get help with add user"
        }

        nct create "Create an object." {
            nct document "Create a document." {
                nct '<FileName>' "Name of the file"
                nct --tags  "<tags> is a comma-separated list of tags to be added to the document."
                nct --title "The <title> of corresponding item."
                nct --vault "The <vault> to save the document into. Specify <vault> by UUID or name. If not specified, the document is stored in the user's personal vault."
                nct --help "get help with create document"
            }

            nct group "Create a group." {
                nct '<GroupName>' "Name of the group"
                nct --description "Set the new group's description"
                nct --help "get help with create group"
            }

            nct item  "Create a new item." {
                nct '<Category>' "Name the category"
                nct --generate-password "give the item a randomly generated password"
                nct --tags "<tags> is a comma separated list of tags to be added to the item."
                nct --title "The <title> of corresponding item."
                nct --url "The <url> that shouls be associated with this item."
                nct --vault "The <vault> to save the item into. Specify <vault> by UUID or name. If not specified the item is stored in the user's personal vault."
                nct --help "get help with create item"
            }

            nct user  "Create a new user." {
                nct '<Email_address>' "Email address of the new user"
                nct '<Name>' "Name of the new user"
                nct --language "Set the user's account <language> (default `"en`")"
                nct --help "get help with create user"
            }

            nct vault "Create a new vault." {
                nct '<Name>' "Name of the vault"
                nct --allow-admins-to-manage "<true|false> Allows or disallows admins to manage this vault. If not specified, the default policy of the server is applied."
                nct --description "A description for the vault."
                nct --help "get help with create vault"
            }

            nct --help "get help with create"
        }

        nct delete "Remove an object." {
            nct document "Move a document to the Trash." {
                nct '<Document>' "Name of the document you want to delete"
                nct --vault "Specify the <vault> to delete the document from. If not specified the document is searched for in all vaults."
                nct --help "get help with delete document"
            }

            nct group "Remove a group." {
                nct '<Group>' "Name of the group you want to delete"
                nct --help "get help with delete group"
            }

            nct item "Move an item to the Trash." {
                nct '<Item>' "Name of the item you want to delete"
                nct --vault "Specify the <vault> to delete the item from. If not specified the item is searched for in all vaults."
                nct --help "get help with delete item"
            }

            nct trash "Empties the trash for a given vault." {
                nct '<Vault>' "Name of the vault you want to empty the trash"
                nct --help "get help with delete trash"
            }

            nct user "Completely remove a user." {
                nct '<Group>' "Name of the user you want to delete"
                nct --help "get help with delete user"
            }

            nct vault "Remove a vault." {
                nct '<Group>' "Name of the vault you want to delete"
                nct --help "get help with delete vault"
            }

            nct --help "get help with delete"
        }

        nct edit "Edit an object." {
            nct group "Edit a group in your 1Password account." {
                nct '<Group>' "Name of the group you want to modify"
                nct --description "The new description of the group, for example: 'development keys'"
                nct --name "The new <name> of the group, for example: 'developers"
                nct --help "get help with edit group"
            }

            nct item "Edit a item in your 1Password account." {
                nct '<Item>' "Name of the Item you want to modify"
                nct --generate-password " give the item a randomly generated password"
                nct --vault "look for the item in this vault"
                nct --help "get help with edit item"
            }

            nct user "Edit the name or travel mode state of a user" {
                nct '<User>' "Name of the user you want to modify"
                nct --name "Set the name of the user to to <name>"
                nct --travelmode "<on|off> Enable or disable travel mode. (default )"
                nct --help "get help with edit user"
            }
        }

        nct encode "Encode the JSON needed to create an item." {
            nct --help "get help with encode"
        }

        nct forget "Remove a 1Password account from this device." {
            nct '<Account>' "Name of the account you want to forget"
            nct --help "get help with forget"
        }

        nct get "Get details about an object." {
            nct account "Get details about your account." {
                nct --help "get help with get account"
            }

            nct document "Download a document." {
                nct '<Document>' "Name of the document you want to get"
                nct --include-trash "Include deleted documents."
                nct --output "Save the document to <file path> instead of printing it to stdout. This is especially useful in some shells to preserve the original encoding of the file. The destination file must be empty or non-existent."
                nct --vault "Look for the document in this <vault>. Specify <vault> by UUID or name."
                nct --help "get help with get document"
            }

            nct group "Get details about a group." {
                nct '<Group>' "Name of the group you want to get"
                nct --help "get help with get group"
            }

            nct item "Get item details." {
                nct '<Item>' "Name of the item you want to get"
                nct --fields "only return data from these fields"
                nct --format "return data in this format (CSV or JSON) (use with --fields)"
                nct --include-trash "Include items in the Trash. Always on for an item specified by UUID."
                nct --share-link "get a shareable link for the item"
                nct --vault "Look for the item in <vault>. Specify <vault> by UUID or name."
                nct --help "get help with get item"
            }

            nct template "Get an item template." {
                nct '<Category>' "Name of the category you want to get. Categories are: Login, Secure Note, ..."
                nct --help "get help with get template"
            }

            nct totp "Get the one-time password for an item." {
                nct '<Item>' "Name of the item you want to get the totp"
                nct --vault "Look for the item in <vault>. Specify <vault> by UUID or name."
                nct --help "get help with get totp"
            }

            nct user "Get details about a user." {
                nct '<User>' "Name of the user you want to get"
                nct --fingerprint "If set, returns the user's public key fingerprint"
                nct --publickey "If set, returns the user's public key"
                nct --help "get help with get user"
            }

            nct vault "Get details about a vault." {
                nct '<Vault>' "Name of the vault you want to get"
                nct --help "get help with get vault"
            }

            nct --help "get help with get"
        }

        nct help "Help about any command" {
            nct "add" "Grant access to groups or vaults"
            nct "confirm" "Confirm a user"
            nct "create" "Create an object"
            nct "delete" "Remove an object"
            nct "edit" "Edit an object"
            nct "encode" "Encode the JSON needed to create an item"
            nct "forget" "Remove a 1Password account from this device"
            nct "get" "Get details about an object"
            nct "help" "Get help for a command."
            nct "list" "List objects and events"
            nct "reactivate" "Reactivate a suspended user"
            nct "remove" "Revoke access to groups or vaults"
            nct "signin" "Sign in to a 1Password account"
            nct "signout" "Sign out of a 1Password account"
            nct "suspend" "Suspend a user"
            nct "update" "Check for updates"
            nct --help "get help for op"
        }

        nct list "List objects and events." {
            nct documents "Get a list of documents." {
                nct --include-trash "Include documents in the Trash"
                nct --vault "vault List documents in vault"
                nct --help "get help with list documents"
            }

            nct events "Get a list of events from the Activity Log." {
                nct --eventid "Return the events after the event with ID <event_ID>"
                nct --older "Return the events *before* the event with ID <event_ID>"
                nct --help "get help with list events"
            }

            nct groups "Get the list of groups." {
                nct --vault "List groups who have direct access to <vault>. Specify <vault> by name or UUID."
                nct --help "get help with list groups"
            }

            nct items "Get a list of items." {
                nct --include-trash "Include items in the Trash"
                nct --vault "List items in <vault>. Specify <vault> by name or UUID."
                nct --help "get help with list items"
            }

            nct templates "Get the list of templates." {
                nct --help "get help with list templates"
            }

            nct users "Get the list of users." {
                nct --group "List users who belong to this group. Specify group by name or UUID."
                nct --vault "List users who have direct access to this vault. Specify vault by name or UUID"
                nct --help "get help with list users"
            }

            nct vaults "Get the list of vaults." {
                nct --group "List vaults <group> has access to. Specify <group> by name or UUID."
                nct --help "get help with list vaults"
            }

            nct --help "get help with list"
        }

        nct reactivate "Reactivate a suspended user." {
            nct '<User>' "User you want to reactivate"
            nct --help "get help with reactivate"
        }

        nct remove "Revoke access for users or groups to groups or vaults."{
            nct group "Revoke a group's access to a vault." {
                nct '<Group>' "Name of the group you want to remove"
                nct '<Vault>' "Name of the vault where the group is stored"
                nct --help "get help with remove group"
            }

            nct user "Revoke a user's access to a vault or group." {
                nct '<User>' "Name of the group you want to remove"
                nct '[<Group>|<Vault>]' "Name of the group or vault where the user has access"
                nct --help "get help with remove user"
            }

            nct --help "get help with remove"
        }

        nct signin "Sign in to your 1Password account." {
            nct '<sign_in_address>' "Your sign in address for your 1Password account. For example my.1password.com"
            nct '<email_address>' "Your email address for 1Password account"
            nct '<secret_key>' "Your secret key for your 1Password account"
            nct --raw "output the raw session token"
            nct --shorthand "use <name> as short account name for new account"
            nct --help "get help with signin"
        }

        nct signout "Sign out of your 1Password account." {
            nct --forget "removes the account from the local configuration file"
            nct --help "get help with signout"
        }

        nct suspend "Suspend a user." {
            nct '<User>' "Name of the user you want to suspend"
            nct --help "get help with suspend"
        }

        nct update "Check for updates." {
            nct --help "get help with update"
        }

        nct --account "account to use when multiple sessions are active"
        nct --help "get help for op"
        nct --session "raw session token obtained via 'op signin --raw'"
        nct --version "version for op"
    }

    Get-CommandTreeCompletion $wordToComplete $commandAst $commandTree
}

Register-ArgumentCompleter -CommandName op -Native -ScriptBlock $function:opCompletion