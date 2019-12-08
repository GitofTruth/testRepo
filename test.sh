rm -rf testDirectory
mkdir testDirectory
cd testDirectory

git clone https://github.com/GitofTruth/testRepo
mv testRepo RepoOne

git clone https://github.com/GitofTruth/testRepo
mv testRepo RepoTwo

mkdir Storage

cd RepoOne
init-got.sh
cd ..

cd RepoTwo
init-got.sh
cd ..
