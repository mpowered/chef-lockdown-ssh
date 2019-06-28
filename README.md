Description
===========

Locks down sshd, disabling root and password logins

Requirements
============

Know what you're doing! If you run this without a user who can sudo, and is
configured to auth using a public key, you'll be locked out of your machine.

Attributes
==========

    {
      "sshd" : {
        "port" : 22
        "protocol" : 2
        "password_auth" : false
        "root_login" : false
        "config_dir" : "/etc/ssh"
      }
    }

