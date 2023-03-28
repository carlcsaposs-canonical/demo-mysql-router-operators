# cd to script directory
cd "$(dirname "${BASH_SOURCE[0]}")"
cp -r ../common/ .
charmcraft pack
rm -r ./common/
