mkdir KeePass_Distrib
rm -rf KeePass_Distrib\*

cp KeePass\Release\KeePass.exe /B KeePass_Distrib\KeePass.exe
cp KeePass\Release\KeePass.XmlSerializers.dll KeePass_Distrib\KeePass.XmlSerializers.dll

cp ..\Ext\KeePass.config.xml KeePass_Distrib\KeePass.config.xml
cp ..\Ext\KeePass.exe.config KeePass_Distrib\KeePass.exe.config

cp ..\Docs\License.txt KeePass_Distrib\License.txt

cp ..\..\KeePassClassic\Build\KeePassLibC\Release\KeePassLibC32.dll KeePass_Distrib\KeePassLibC32.dll
cp "..\..\KeePassClassic\Build\KeePassLibC\Release x64\KeePassLibC64.dll" KeePass_Distrib\KeePassLibC64.dll

cp ShInstUtil\Release\ShInstUtil.exe /B KeePass_Distrib\ShInstUtil.exe

cd KeePass_Distrib
mkdir XSL
cd ..
cp ..\Ext\XSL\* KeePass_Distrib\XSL\

mkdir KeePassLib_Distrib
rm -rf KeePassLib_Distrib\*.*

cp KeePassLib\Release\KeePassLib.dll KeePassLib_Distrib\KeePassLib.dll
cp KeePassLib\Release\KeePassLib.xml KeePassLib_Distrib\KeePassLib.xml


