# cd to script directory
cd "$(dirname "${BASH_SOURCE[0]}")"
# Get charmcraft to update requirements.txt dependencies
# Workaround for https://github.com/canonical/charmcraft/issues/1058
cp requirements.txt requirements.txt.backup
echo "# $RANDOM" >> requirements.txt

cp -r ../common/ .
charmcraft pack
rm requirements.txt
mv requirements.txt.backup requirements.txt
rm -r ./common/
