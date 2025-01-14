#!/bin/bash
# entrypoint.sh

# Check if server files exist in the volume
if [ ! -f "/mcserver/server.jar" ]; then
	echo "Server files not found, Installing server files..."
	cp -r /setup/* /mcserver/
fi

# Check the EULA
if [ "$EULA" != "TRUE" ] && [ "$EULA" != "true" ]; then
	echo "You must accept the Minecraft EULA by setting EULA=TRUE"
	exit 1
fi

echo "eula=${EULA:-false}" > /mcserver/eula.txt

# Start the server
exec java -Xmx1024M -Xms512M -jar server.jar nogui
