# 標準入力から値を受け取り、Discordに送信
# 使用例 ./profile.sh | ./post_discord.sh
#!/bin/sh

set -eu

#Incoming WebHooksのURL
WEBHOOKURL="https://discord.com/api/webhooks/736383440773185666/1LAggdKQIZFBvwk0w42O2TXaQV8mzpJpSWP0V9BxpRfPW_UEDg32cYBHPZMuCcDIPIAM"
#メッセージを保存する一時ファイル
MESSAGEFILE=$(mktemp -t webhooks.XXX)

trap "
rm ${MESSAGEFILE}
" 0

if [ -p /dev/stdin ] ; then
    #改行コードをslack用に変換
    cat - | tr '\n' '\\' | sed 's/\\/\\n/g'  > ${MESSAGEFILE}
else
    echo "nothing stdin"
    exit 1
fi
cat ${MESSAGEFILE}
WEBMESSAGE='```'`cat ${MESSAGEFILE}`'```'

#Incoming WebHooks送信
curl -H "Content-Type: application/json" -X POST -d "{\"username\": \"bot_user\",\"content\": \"${WEBMESSAGE}\"}" ${WEBHOOKURL}

