rm -rf testDirectory
mkdir testDirectory
cd testDirectory

git clone https://github.com/GitofTruth/testRepo
mv testRepo repoOne

git clone https://github.com/GitofTruth/testRepo
mv testRepo repoTwo

mkdir Storage

echo ""
echo ""
echo "Starting the initialization procedure of repoOne"
cd repoOne
$GOPATH/src/github.com/GitofTruth/GoT/hooks/init-got.sh
cd ..

echo ""
echo ""
echo "Starting the initialization procedure of repoTwo"
cd repoTwo
$GOPATH/src/github.com/GitofTruth/GoT/hooks/init-got.sh
cd ..
