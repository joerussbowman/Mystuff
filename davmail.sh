#!/bin/bash
# create a temp folder
mkdir davmail
pushd davmail
# download the most recent deb file
wget http://sourceforge.net/projects/davmail/files/latest/download?source=files
# install it
sudo dpkg -i *.deb
popd
# allow davmail to show in unity panel
gsettings set com.canonical.Unity.Panel systray-whitelist ['JavaEmbeddedFrame', 'Wine', 'Update-notifier', 'SWT']
# TODO: add to startup

# start davmail so the user can configure
echo "Starting davmail, set the url for your Exchange server configure as
you wish. You may need to log out and back in to finish the install."

