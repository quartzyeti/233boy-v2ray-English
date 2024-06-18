All I did was translate some of the script into English. I probably broke everything in the process. I don’t know what I’m doing. I say that cooking in the kitchen. I say that to my computer too.  -quartzyeti

# And for the quick & lazy...
```
bash <(wget -qO- -o- https://github.com/quartzyeti/v2ray/raw/main/install.sh)
```

# introduce

The best V2Ray one-click installation script & management script

# Features

- Quick installation
- Super easy to use
- Zero learning cost
- Automated TLS
- Simplify all processes
- Block BT
- Block Chinese IP
- Using API operations
- Compatible with V2Ray commands
- Powerful shortcut parameters
- Supports all common protocols
- Add Shadowsocks with one click
- One-click add VMess-(TCP/mKCP/QUIC)
- One-click addition of VMess-(WS/H2/gRPC)-TLS
- One-click addition of VLESS-(WS/H2/gRPC)-TLS
- One-click add Trojan-(WS/H2/gRPC)-TLS
- One-click addition of VMess-(TCP/mKCP/QUIC) dynamic ports
- One-click to enable BBR
- Change the disguised website with one click
- One-click change (port/UUID/password/domain name/path/encryption method/SNI/dynamic port/etc...)
- there are more...

# design concept

Design concept: **High efficiency, ultra-fast, extremely easy to use**

The script is based on the author's own usage needs, with **multiple configurations running simultaneously** as the core design

And specially optimized, add, change, view, delete, these four common functions

You only need one command to complete operations such as adding, changing, viewing, deleting, etc.

For example, adding a configuration takes less than 1 second! It's added in a flash! The same goes for other operations!

The script parameters are very efficient and super easy to use. Please master the use of parameters.

# Script Description

[V2Ray one-click installation script](https://github.com/233boy/v2ray/wiki/V2Ray%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E8%84%9A%E6%9C%AC)

# Tutorial

[Detailed graphic tutorial for V2Ray construction](https://github.com/233boy/v2ray/wiki/V2Ray%E6%90%AD%E5%BB%BA%E8%AF%A6%E7%BB%86%E5%9B%BE%E6%96%87%E6%95%99%E7%A8%8B)

# help

Use: `v2ray help`

```
V2Ray script v4.21 by 233boy
Usage: v2ray [options]... [args]...

Basics:
   v, version shows the current version
   ip returns the IP address of the current host
   get-port returns an available port

generally:
   a, add [protocol] [args... | auto] Add configuration
   c, change [name] [option] [args... | auto] Change configuration
   d, del [name] delete configuration**
   i, info [name] View configuration
   qr [name] QR code information
   url [name] URL information
   log View log
   logerr View error log

Change:
   dp, dynamicport [name] [start | auto] [end] Change dynamic port
   full [name] [...] Change multiple parameters
   id [name] [uuid | auto] Change UUID
   host [name] [domain] Change the domain name
   port [name] [port | auto] Change port
   path [name] [path | auto] Change path
   passwd [name] [password | auto] Change password
   type [name] [type | auto] Change masquerade type
   method [name] [method | auto] Change the encryption method
   seed [name] [seed | auto] Change mKCP seed
   new [name] [...] Change protocol
   web [name] [domain] Change masquerade website

Advanced:
   dns [...] Set DNS
   dd, ddel [name...] delete multiple configurations**
   fix [name] Fix a configuration
   fix-all fix all configurations
   fix-caddyfile Fix Caddyfile
   fix-config.json

manage:
   un, uninstall
   u, update [core | sh | dat | caddy] [ver] update
   U, update.sh update script
   s, status running status
   start, stop, restart [caddy] start, stop, restart
   t, test test run
   reinstall reinstall script

test:
   client [name] Displays the JSON used for the client, for reference only
   debug [name] displays some debug information, for reference only
   gen [...] is equivalent to add, but only displays JSON content, does not create files, and is used for testing
   genc [name] Displays the JSON part used for the client, for reference only
   no-auto-tls [...] Same as add, but disables automatic configuration of TLS, can be used for *TLS related protocols
   xapi [...] is equivalent to v2ray api, but the API backend uses the currently running V2Ray service

other:
   bbr Enable BBR, if supported
   bin [...] to run V2Ray commands, for example: v2ray bin help
   api, convert, tls, run, uuid [...] compatible with V2Ray commands
   h, help Display this help interface

Be careful when using del and ddel. This option will delete the configuration directly; no confirmation is required.
Feedback issues) https://github.com/233boy/v2ray/issues
Documentation (doc) https://233boy.com/v2ray/v2ray-script/
```

