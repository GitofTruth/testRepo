sudo rm -rf testDirectory
mkdir testDirectory
cd testDirectory
mkdir Storage

echo ""
echo ""
echo "Starting the initialization procedure of repo one"
mkdir one
cd one
git clone https://github.com/GitofTruth/testRepo
cd testRepo
got-init

# testing commands for repo one
git push
got-client addRepo

echo "hey man" > test.txt
git add test.txt
git commit -m "first message from only repo one"
got-client push

# end of testing commands for repo one

cd ../..




echo ""
echo ""
echo "Starting the initialization procedure of repo two"
mkdir two
cd two
git clone https://github.com/GitofTruth/testRepo
cd testRepo
got-init

# testing commands for repo two
git push
got-client pull
ls

# end of testing commands for repo two

cd ../..



cd ..
