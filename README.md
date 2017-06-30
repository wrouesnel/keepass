[![Build Status](https://travis-ci.org/wrouesnel/keepass.svg?branch=master)](https://travis-ci.org/wrouesnel/keepass)

# Personal Development Repository of KeePass

This is my personal Github fork of the Keepass source code. master includes
a small set of a patches which haven't yet made it to upstream.

For more information on KeePass see the website: http://keepass.info

## Applied Patches
 * Safer file transactions: verifies that the temporary Keepass file was
   actually created before deleting the original. Makes unreliable remote
   synchronization safer.
 * *.kdbx.tmp recovery: if an orphaned tmp file is found, completes the
   pending transaction if the original kdbx file is already deleted. Makes
   unreliable remote synchronization safer.
   
# Repository Layout
This repository is structured to make it easier to roll patches up as new
versions become available. #master will always be a patched and buildable
branch. #upstream is a sequence of commits containing only the source code
releases. Automatically merging changes is a WIP but will be accomplished with
`guilt` most likely.
