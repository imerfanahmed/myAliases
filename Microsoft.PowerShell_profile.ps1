
$art="
██╗    ███████████╗     ██████╗██████╗███╗   ██████████╗        █████████████╗███████╗█████╗███╗   ████╗
██║    ████╔════██║    ██╔════██╔═══██████╗ ██████╔════╝        ██╔════██╔══████╔════██╔══██████╗  ████║
██║ █╗ ███████╗ ██║    ██║    ██║   ████╔████╔███████╗          █████╗ ██████╔█████╗ █████████╔██╗ ████║
██║███╗████╔══╝ ██║    ██║    ██║   ████║╚██╔╝████╔══╝          ██╔══╝ ██╔══████╔══╝ ██╔══████║╚██╗██╚═╝
╚███╔███╔██████████████╚██████╚██████╔██║ ╚═╝ █████████╗        █████████║  ████║    ██║  ████║ ╚██████╗
 ╚══╝╚══╝╚══════╚══════╝╚═════╝╚═════╝╚═╝     ╚═╚══════╝        ╚══════╚═╝  ╚═╚═╝    ╚═╝  ╚═╚═╝  ╚═══╚═╝

"

 #echo $art



Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt paradox


#PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History

#PS Terminal ICON
Import-Module -Name Terminal-Icons

Set-Alias g git

function art($arg1,$arg2,$arg3,$arg4,$arg5) { php artisan $arg1 $arg2 $arg3 $arg4 $arg5}

Set-Alias a art
Set-Alias c clear




