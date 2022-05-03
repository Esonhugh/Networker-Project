ROOT_PATH=`pwd`
function Backends () {
	cd $ROOT_PATH/Backend
	bash buildup.sh
	cp -r $ROOT_PATH/Backend/output/ $ROOT_PATH/bin
	cd $ROOT_PATH
	echo "Backend Success"
}
function Frontends () {
	cd $ROOT_PATH/Frontend
	git checkout origin/app
	mkdir $ROOT_PATH/html
	cp -r ./* $ROOT_PATH/html
	git checkout master
	cd $ROOT_PATH
	echo "Frontend Success"
}

Backends
Frontends

echo "Backend Server and Admin Tool in $ROOT_PATH/bin folder"
echo "Modify the application.yaml to fix your env"
echo "Frontend static html in the $ROOT_PATH/html folder"
echo "If you got the Nginxto make No Cors,The nginx_site.conf will helps you."

