# ---------------------------------- general --------------------------------- #
_exec() {
    ansible-playbook -i inventory/inventory.ini "general/$1.yml" --extra-vars "$2"
}

# ------------------------------ handy functions ----------------------------- #
setup_user() {
    _exec "setup_new_user" "new_user=$1 new_user_password=$2"
}

setup_neo_vim() {
    _exec "install_neo_vim"
}

setup_docker() {
    _exec "install_docker"
}

setup_nginx() {
    _exec "install_nginx"
}

setup_ssh_config() {
    _exec "secure_ssh_config"
}


# ---------------------------- setup a new server ---------------------------- #
setup_new_server() {
    setup_user "$1" "$2"
    setup_neo_vim

    if [[ $_disable_root_login_and_password_auth == true ]]; then
        setup_ssh_config
    fi

    setup_nginx
}

# To be able to run functions
"${@:-help}"
