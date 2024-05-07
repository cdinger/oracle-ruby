if [ "$TARGETPLATFORM" == "linux/amd64" ]; then
  curl -sL -o instantclient-basic.zip https://download.oracle.com/otn_software/linux/instantclient/1912000/instantclient-basic-linux.x64-19.12.0.0.0dbru.zip
  curl -sL -o instantclient-sdk.zip https://download.oracle.com/otn_software/linux/instantclient/1912000/instantclient-sdk-linux.x64-19.12.0.0.0dbru.zip
elif [ "$TARGETPLATFORM" == "linux/arm64" ]; then
  curl -sL -o instantclient-basic.zip https://download.oracle.com/otn_software/linux/instantclient/191000/instantclient-basic-linux.arm64-19.10.0.0.0dbru.zip
  curl -sL -o instantclient-sdk.zip https://download.oracle.com/otn_software/linux/instantclient/191000/instantclient-sdk-linux.arm64-19.10.0.0.0dbru.zip
fi

unzip instantclient-basic.zip -d /opt
unzip instantclient-sdk.zip -d /opt
rm instantclient-basic.zip
rm instantclient-sdk.zip

ln -s /opt/instantclient_* /opt/instantclient
