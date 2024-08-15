install:
	LATEST=$(curl -i https://github.com/zitadel/zitadel/releases/latest | grep location: | cut -d '/' -f 8 | tr -d '\r'); ARCH=$(uname -m); case $ARCH in armv5*) ARCH="armv5";; armv6*) ARCH="armv6";; armv7*) ARCH="arm";; aarch64) ARCH="arm64";; x86) ARCH="386";; x86_64) ARCH="amd64";;  i686) ARCH="386";; i386) ARCH="386";; esac; wget -c https://github.com/zitadel/zitadel/releases/download/$LATEST/zitadel-linux-$ARCH.tar.gz -O - | tar -xz && sudo mv zitadel-linux-$ARCH/zitadel /usr/local/bin

run:
	ZITADEL_DATABASE_POSTGRES_HOST=localhost ZITADEL_DATABASE_POSTGRES_PORT=5432 \
	ZITADEL_DATABASE_POSTGRES_DATABASE=zitadel \
	ZITADEL_DATABASE_POSTGRES_USER_USERNAME=postgres \
	ZITADEL_DATABASE_POSTGRES_USER_PASSWORD=123456 \
	ZITADEL_DATABASE_POSTGRES_USER_SSL_MODE=disable \
	ZITADEL_DATABASE_POSTGRES_ADMIN_USERNAME=postgres ZITADEL_DATABASE_POSTGRES_ADMIN_PASSWORD=123456 \
	ZITADEL_DATABASE_POSTGRES_ADMIN_SSL_MODE=disable \
	ZITADEL_EXTERNALSECURE=false zitadel start-from-init --masterkey "MasterkeyNeedsToHave32Characters" --tlsMode disabled

