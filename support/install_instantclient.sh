if [ "$TARGETPLATFORM" == "linux/amd64" ]; then
  curl -sL -o instantclient-basic.zip https://download.oracle.com/otn_software/linux/instantclient/2380000/instantclient-basic-linux.x64-23.8.0.25.04.zip
  curl -sL -o instantclient-sdk.zip https://download.oracle.com/otn_software/linux/instantclient/2380000/instantclient-sdk-linux.x64-23.8.0.25.04.zip
elif [ "$TARGETPLATFORM" == "linux/arm64" ]; then
  curl -sL -o instantclient-basic.zip https://download.oracle.com/otn_software/linux/instantclient/2380000/instantclient-basic-linux.arm64-23.8.0.25.04.zip
  curl -sL -o instantclient-sdk.zip https://download.oracle.com/otn_software/linux/instantclient/2380000/instantclient-sdk-linux.arm64-23.8.0.25.04.zip
fi

unzip instantclient-basic.zip -d /opt
unzip instantclient-sdk.zip -d /opt
rm instantclient-basic.zip
rm instantclient-sdk.zip

ln -s /opt/instantclient_* /opt/instantclient
