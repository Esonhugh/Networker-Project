git submodule init
git submodule update

cd ./Backend
git fetch
git merge origin/Skyworship
cd ../

cd Frontend
git fetch
git merge origin/master
cd ../

