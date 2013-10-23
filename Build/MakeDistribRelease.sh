echo "Preparing KeePass..."
if [ ! -e KeePass_Distrib ]; then
    echo "Creating KeePass_Distrib directory."
    mkdir KeePass_Distrib
fi

rm -rf KeePass_Distrib/*

cp KeePass/Release/KeePass.exe KeePass_Distrib
cp KeePass/Release/KeePass.XmlSerializers.dll KeePass_Distrib

cp ../Ext/KeePass.config.xml KeePass_Distrib
cp ../Ext/KeePass.exe.config KeePass_Distrib

cp ../Docs/License.txt KeePass_Distrib

cp ../../KeePassClassic/Build/KeePassLibC/Release/KeePassLibC32.dll KeePass_Distrib
cp "../../KeePassClassic/Build/KeePassLibC/Release x64/KeePassLibC64.dll" KeePass_Distrib

cp ShInstUtil/Release/ShInstUtil.exe KeePass_Distrib

cd KeePass_Distrib
mkdir XSL
cd ..
cp ../Ext/XSL/* KeePass_Distrib/XSL/

echo "Preparing KeePassLib..."
if [ ! -e KeePass_Distrib ]; then
    echo "Creating KeePassLib_Distrib directory."
    mkdir KeePassLib_Distrib
fi

rm -rf KeePassLib_Distrib/*.*

cp KeePassLib/Release/KeePassLib.dll KeePassLib_Distrib
cp KeePassLib/Release/KeePassLib.xml KeePassLib_Distrib


