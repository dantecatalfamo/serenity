#!/usr/bin/env -S bash ../.port_include.sh
port=ruby
version=3.0.2
files="https://cache.ruby-lang.org/pub/ruby/3.0/ruby-3.0.2.tar.gz ruby-${version}.tar.gz 5085dee0ad9f06996a8acec7ebea4a8735e6fac22f22e2d98c3f2bc3bef7e6f1"
auth_types="sha256"
useconfigure="true"
[[ $SERENITY_ARCH =~ "64" ]] && coroutine="amd64" || coroutine="x86"
configopts="--with-coroutine=${coroutine} --enable-close-fds-by-recvmsg-with-peek --host=i686-serenity --with-compress-debug-sections=none"
