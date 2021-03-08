class profile::ssh_server {
      package {'openssh-server':
              ensure => present,
      }
      service { 'sshd':
              ensure => 'running', 
              enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
              ensure => present, 
              user => 'root',
              type => 'ssh-rsa', 
              key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCq5cyV0nRAC0b3sIxfil5Oh6Km5WsCBGuOn+Bk322Ki8moTR73yrWD5JXeuJnZnXUjgm9VuAnFxG6elnh1p5Jv7JmQwc1mkjSNV2wdCP9jZ7/6pKp7sMkfRF6WuMzQQWGpF3S5SNdaeParK8N4hPFQncOXGOrM4p9vZOyrMBOLacVNt99mOOrGN+t79HPBteRcoG5DRA3UUPGq2bjQTF9S28Ty0uOXDscMBh8JIxBlb7cj27xE7yRJkLlK6G9NFA7c3ch5mIVlQUUJo2IDQ7I4q67ojZ+cTsP5fb0BlZ5Gu5qzcVLVXguBsW2xbMtZZBnOgaPOtc0GtE5igfW7+inB',
      }
}
