#!/bin/bash
# Generate a random set of keys for a build of KeePass. Note these keys are
# unprotected by default.

cd ..

echo "Deleting any old keys..."
rm KeePass/KeePass.snk
rm KeePassLib/KeePassLib.snk
rm KeePassLibSD/KeePassLibSD.snk

rm ShInstUtil/ShInstUtil.snk

rm Plugins/ArcFourCipher/ArcFourCipher.snk
rm Plugins/KPScript/KPScript.snk
rm Plugins/SamplePlugin/SamplePlugin.snk

echo "Creating new keys..."
sn -k Private_NoDistrib/KeePass.snk
sn -k Private_NoDistrib/KeePassLib.snk
sn -k Private_NoDistrib/KeePassLibSD.snk

sn -k Private_NoDistrib/ShInstUtil.snk

sn -k Private_NoDistrib/ArcFourCipher.snk
sn -k Private_NoDistrib/KPScript.snk
sn -k Private_NoDistrib/SamplePlugin.snk

echo "Symlinking (installing) new keys..."
ln -s ../Private_NoDistrib/KeePass.snk KeePass/KeePass.snk
ln -s ../Private_NoDistrib/KeePassLib.snk KeePassLib/KeePassLib.snk
ln -s ../Private_NoDistrib/KeePassLibSD.snk KeePassLibSD/KeePassLibSD.snk

ln -s ../Private_NoDistrib/ShInstUtil.snk ShInstUtil/ShInstUtil.snk

ln -s ../Private_NoDistrib/ArcFourCipher.snk Plugins/ArcFourCipher/ArcFourCipher.snk
ln -s ../Private_NoDistrib/KPScript.snk Plugins/KPScript/KPScript.snk
ln -s ../Private_NoDistrib/SamplePlugin.snk Plugins/SamplePlugin/SamplePlugin.snk

# Wind up in the same directory we started

cd Build

