maintainer       "Luke Randall"
maintainer_email "luke.randall@gmail.com"
license          "MIT"
description      "Locks down sshd"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends "openssh"

attribute "sshd/port",
  :display_name => "sshd port",
  :description => "Port sshd listens on",
  :default => 22

attribute "sshd/protocol",
  :display_name => "sshd protocol",
  :description => "Specifies the protocol versions sshd supports.  The possible values are `1` and `2`.  Multiple versions must be comma-separated.",
  :default => 2

attribute "sshd/password_auth",
  :display_name => "Allow password authentication",
  :description => "Configure whether to accept password authentication",
  :default => false

attribute "sshd/root_login",
  :display_name => "Allow root login",
  :description => "Configure whether root user is allowed to ssh in",
  :default => false

attribute "sshd/config_dir",
  :display_name => "sshd config dir",
  :description => "Diretory for sshd configuration",
  :default => "/etc/ssh"
