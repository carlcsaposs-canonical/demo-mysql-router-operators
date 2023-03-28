# cd to script directory
cd "$(dirname "${BASH_SOURCE[0]}")"
sudo rm /var/snap/lxd/common/lxd/containers/charmcraft_charmcraft-mysql-2325476-0-0-amd64/rootfs/root/parts/charm/build/charmcraft-dependencies-hash.txt
cp -r ../common/ .
charmcraft pack
rm -r ./common/
