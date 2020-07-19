sudo apt install -y git curl libreadline-dev pkg-config autoconf automake build-essential libmysqlclient-dev \
	libssl-dev python3 python3-dev python3-venv openjdk-8-jdk-headless libxml2-dev libcurl4-openssl-dev \
        libxslt1-dev re2c bison libbz2-dev libreadline-dev libssl-dev gettext libgettextpo-dev libicu-dev \
	libmhash-dev libmcrypt-dev libgd-dev libtidy-dev

cd ~/
git clone https://github.com/tagomoris/xbuild.git

xbuild/go-install -f 1.14 /home/isucon/local/go

