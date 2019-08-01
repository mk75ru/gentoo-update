#!/bin/sh



emerge -uDNav @world \
--noreplace =virtual/libiconv-0-r2 \
--noreplace =cross-armv7a-hardfloat-linux-gnueabi/gcc-4.6.4 \
--noreplace =cross-armv4t-softfloat-linux-gnueabi/gcc-4.6.4


#emerge --update --newuse --deep --with-bdeps=y @world -pv

#emerge --update --newuse --deep  @world -av
