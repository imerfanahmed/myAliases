
$art="
██╗    ███████████╗     ██████╗██████╗███╗   ██████████╗        █████████████╗███████╗█████╗███╗   ████╗
██║    ████╔════██║    ██╔════██╔═══██████╗ ██████╔════╝        ██╔════██╔══████╔════██╔══██████╗  ████║
██║ █╗ ███████╗ ██║    ██║    ██║   ████╔████╔███████╗          █████╗ ██████╔█████╗ █████████╔██╗ ████║
██║███╗████╔══╝ ██║    ██║    ██║   ████║╚██╔╝████╔══╝          ██╔══╝ ██╔══████╔══╝ ██╔══████║╚██╗██╚═╝
╚███╔███╔██████████████╚██████╚██████╔██║ ╚═╝ █████████╗        █████████║  ████║    ██║  ████║ ╚██████╗
 ╚══╝╚══╝╚══════╚══════╝╚═════╝╚═════╝╚═╝     ╚═╚══════╝        ╚══════╚═╝  ╚═╚═╝    ╚═╝  ╚═╚═╝  ╚═══╚═╝

"

echo $art



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
function log{
    git log --all --decorate --oneline --graph
}
function commit($message){
    git add .;
    git commit -m "$message"
}

#aliases for Laravel
# ----------------------
# Erfan Ahmed Siam
# --------------------
function art($arg1,$arg2,$arg3,$arg4,$arg5) { php artisan $arg1 $arg2 $arg3 $arg4 $arg5}
function serve(){
    php artisan serve
}
function migrate{
    php artisan migrate
}
function fresh{
    php artisan migrate:fresh
}
function laragon{
    cd C:\laragon\www
}
function seed{
    php artisan db:seed
}
