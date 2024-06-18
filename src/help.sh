show_help() {
    case $1 in
    api | convert | tls | run | uuid | version)
        $is_core_bin help $1 ${@:2}
        ;;
    *)
        [[ $1 ]] && warn "Unknown option '$1'"
        msg "$is_core_name script $is_sh_ver by 233boy"
        msg "Usage: $is_core [options]... [args]... "
        msg
        help_info=(
            "Basic:"
            "   v, version                                      Show current version"
            "   ip                                              Returns the current host's IP"
            # "   pbk                                             Equivalent to $is_core generate reality-keypair"
            "   get-port                                        Returns an available port\n"
            # "   ss2022                                          Returns a password that can be used for Shadowsocks 2022\n"
            "General:"
            "   a, add [protocol] [args... | auto]              Add Configuration"
            "   c, change [name] [option] [args... | auto]      Change Configuration"
            "   d, del [name]                                   Delete Configuration**"
            "   i, info [name]                                  View Configuration"
            "   qr [name]                                       QR Code Information"
            "   url [name]                                      URL Information"
            "   log                                             View Log"
            "   logerr                                          Viewing the Error Log\n"
            "Change:"
            "   dp, dynamicport [name] [start | auto] [end]     Changing Dynamic Ports"
            "   full [name] [...]                               Change Multiple Parameters"
            "   id [name] [uuid | auto]                         Change UUID"
            "   host [name] [domain]                            Change Domain Name"
            "   port [name] [port | auto]                       Change Port"
            "   path [name] [path | auto]                       Change Path"
            "   passwd [name] [password | auto]                 Change Password"
            # "   key [name] [Private key | atuo] [Public key]    Change Key"
            "   type [name] [type | auto]                       Change the camouflage type"
            "   method [name] [method | auto]                   Change the Encryption Method"
            # "   sni [name] [ ip | domain]                       Change ServerName"
            "   seed [name] [seed | auto]                       Change mKCP seed"
            "   new [name] [...]                                Change Agreement"
            "   web [name] [domain]                             Change the Camouflage Site\n"
            "Advanced:"
            "   dns [...]                                       Set-up DNS"
            "   dd, ddel [name...]                              Delete Multiple Configurations**"
            "   fix [name]                                      Fix a Configuration"
            "   fix-all                                         Fix All Configurations"
            "   fix-caddyfile                                   Fix Caddyfile"
            "   fix-config.json                                 Fix config.json"
            "Management:"
            "   un, uninstall                                   Uninstall the Script"
            "   u, update [core | sh | caddy] [ver]             Update"
            "   U, update.sh                                    Update Script"
            "   s, status                                       Check Operational Status"
            "   start, stop, restart [caddy]                    Start, Stop, Restart"
            "   t, test                                         Test Run"
            "   reinstall                                       Script Reinstallation\n"
            "Beta:"
            "   client, genc [name]                             Displayed for client-side JSON, for reference only"
            "   debug [name]                                    Show's some debug information, just for reference"
            "   gen [...]                                       Equivalent to add, but only displays JSON content, does not create a file, for testing"
            "   genc [name]                                     Display the JSON for the client part, for reference only."
            "   no-auto-tls [...]                               Equivalent to add, but disables autoconfiguration of TLS, can be used for *TLS related protocols"
            "   xapi [...]                                      Equivalent to $is_core api, but the API backend uses the current running $is_core_name service\n"
            "Others:"
            "   bbr                                             Enables BBR, if supported"
            "   bin [...]                                       Run the $is_core_name command, for example: $is_core bin help"
            "   api, convert, tls, run, uuid  [...]              Compatible with the $is_core_name command"
            "   h, help                                         Show this help screen\n"
        )
        for v in "${help_info[@]}"; do
            msg "$v"
        done
        msg "Be careful with del, ddel, this option deletes the configuration directly; no confirmation is needed!"
        msg "Feedback issues $(msg_ul https://github.com/233boy/Xray/issues) "
        msg "Documentation (doc) $(msg_ul https://233boy.com/$is_core/$is_core-script/)"
        ;;

    esac
}

about() {
    ####### What's the point of having 13 faces, you little shit who just changes my links? #######
    unset c n m s b
    msg
    msg "Website: $(msg_ul https://233boy.com)"
    msg "Channel: $(msg_ul https://t.me/tg2333)"
    msg "Group: $(msg_ul https://t.me/tg233boy)"
    msg "Github: $(msg_ul https://github.com/233boy/Xray)"
    msg "Twitter: $(msg_ul https://twitter.com/ai233boy)"
    msg "$is_core_name site: $(msg_ul https://www.v2fly.org)"
    msg "$is_core_name core: $(msg_ul https://github.com/${is_core_repo})"
    msg
    ####### What's the point of having 13 faces, you little shit who just changes my links? #######
}
