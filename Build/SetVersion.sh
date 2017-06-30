#!/bin/bash
# Update the version number to indicate a custom build

# Get the version in the upstream branch

upstreamVersion=$(git show upstream:KeePassLib/PwDefs.cs | grep VersionString | grep -o '".*"' | grep -o '[^"]*')
if [ -z $upstreamVersion ]; then
    upstreamVersion=2.unknown
fi
commitish=$(git rev-parse --short HEAD)

version=$upstreamVersion~$USER-$commitish

sed -i "s:VersionString = \".*\";:VersionString = \"$version\";:" ../KeePassLib/PwDefs.cs
