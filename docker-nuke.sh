
echo 'Executing custom docker-nuke command on playground ...'	
docker rm -f -v $(docker ps -aq)
echo '*** cleared running processes ...'
docker rmi -f  $(docker images -q)
echo '*** cleared dangling images ...'
docker volume rm $(docker volume ls -q)
echo '*** cleared unused volumes ...'
docker network rm $(docker network ls -q)
echo '*** cleared network bridges ...'
