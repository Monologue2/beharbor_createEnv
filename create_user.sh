adduser --disabled-password --gecos "" $1
usermod -G sudo $1
echo $1:1234 | chpasswd