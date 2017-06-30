#!/bin/bash
# Generate a random set of keys for a build of KeePass.

cd ..

# Make directory if it doesn't exist
if [ ! -d Private_NoDistrib ]; then
	mkdir Private_NoDistrib
fi

echo "Deleting any old keys..."
rm KeePass/KeePass.snk
rm KeePassLib/KeePassLib.snk
rm KeePassLibSD/KeePassLibSD.snk

rm ShInstUtil/ShInstUtil.snk

rm Plugins/ArcFourCipher/ArcFourCipher.snk
rm Plugins/KPScript/KPScript.snk
rm Plugins/SamplePlugin/SamplePlugin.snk

echo "Creating new keys..."
sn -q -k Private_NoDistrib/KeePass.snk
sn -q -k Private_NoDistrib/KeePassLib.snk
#sn -k Private_NoDistrib/KeePassLibSD.snk

sn -q -k Private_NoDistrib/ShInstUtil.snk

#sn -k Private_NoDistrib/ArcFourCipher.snk
#sn -k Private_NoDistrib/KPScript.snk
#sn -k Private_NoDistrib/SamplePlugin.snk

echo "Symlinking (installing) new keys..."
ln -s ../Private_NoDistrib/KeePass.snk KeePass/KeePass.snk
ln -s ../Private_NoDistrib/KeePassLib.snk KeePassLib/KeePassLib.snk
#ln -s ../Private_NoDistrib/KeePassLibSD.snk KeePassLibSD/KeePassLibSD.snk

ln -s ../Private_NoDistrib/ShInstUtil.snk ShInstUtil/ShInstUtil.snk

#ln -s ../Private_NoDistrib/ArcFourCipher.snk Plugins/ArcFourCipher/ArcFourCipher.snk
#ln -s ../Private_NoDistrib/KPScript.snk Plugins/KPScript/KPScript.snk
#ln -s ../Private_NoDistrib/SamplePlugin.snk Plugins/SamplePlugin/SamplePlugin.snk

# Replace the keys in the project file if they're there.
echo "Updating project files to use the symlinked new keys..."
sed -i 's:KeePass.pfx:KeePass.snk:' KeePass/KeePass.csproj
sed -i 's:KeePassLib.pfx:KeePassLib.snk:' KeePassLib/KeePassLib.csproj

# Wind up in the same directory we started
cd Build

