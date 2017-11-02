echo "******* Building wheels *************************************"
echo
./build-wheels.sh

echo
echo
echo "******* Uninstalling previously installed packages **********"
echo
./uninstall.sh

echo
echo
echo "******* Installing ******************************************"
echo
./install.sh
