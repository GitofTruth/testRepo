# deleting existing directory
sudo rm -rf directory

mkdir directory
cd directory
############################################################
############################################################
############################################################
echo ""
echo ""
echo "Creating Users for testing"
mkdir -p owner/testRepo
cd owner/testRepo
got-init
got-client user create owner
git config --local user.email "owner@got.com"
git config --local user.name "owner"
cd ../..

mkdir -p collaboratorOne/testRepo
cd collaboratorOne/testRepo
got-init
got-client user create collaboratorOne
git config --local user.email "collaboratorOne@got.com"
git config --local user.name "collaboratorOne"
cd ../..

mkdir -p userOne/testRepo
cd userOne/testRepo
got-init
got-client user create userOne
git config --local user.email "userOne@got.com"
git config --local user.name "userOne"
cd ../..

mkdir -p userTwo/testRepo
cd userTwo/testRepo
got-init
got-client user create userTwo
git config --local user.email "userTwo@got.com"
git config --local user.name "userTwo"
cd ../..



############################################################
############################################################
############################################################
echo ""
echo ""
echo "Starting the initialization procedure of Owner"
cd owner/testRepo

echo "cd ../../.. \n source test.sh" > test.sh
git add test.sh
git commit -m "first message by the owner"

got-client addRepo
got-client authorize collaboratorOne collaborator
got-client queryUsersAccess

cd ../..
############################################################
############################################################
############################################################
echo ""
echo ""
echo "Starting the initialization procedure of collaboratorOne"
cd collaboratorOne/testRepo
got-client clone owner testRepo

ls

got-client authorize userOne read-write
got-client queryUsersAccess

echo "hey man" > collaboratorOne.txt
git add collaboratorOne.txt
git commit -m "first message by collaboratorOne"
got-client push

cd ../..
############################################################
############################################################
############################################################
echo ""
echo ""
echo "Starting the initialization procedure of userOne"
cd userOne/testRepo
got-client clone owner testRepo

ls

got-client authorize userTwo read-write
got-client queryUsersAccess

echo "hey man" > userOne.txt
git add userOne.txt
git commit -m "first message by userOne"
got-client push

cd ../..
############################################################
############################################################
############################################################
echo ""
echo ""
echo "Starting the initialization procedure of userTwo"
cd userTwo/testRepo
got-client clone owner testRepo

ls

cd ../../..
####################/########################################
############################################################
############################################################
