Write-Host "-> Building Docker image." -ForegroundColor Blue
docker build -t ansible-controller .
Write-Host "-> Running Docker image." -ForegroundColor Blue
docker run -it --name ansible ansible-controller
Write-Host "-> Destroying Docker container." -ForegroundColor Blue
docker rm -f ansible 2>$null
Write-Host "-> Removing Docker image." -ForegroundColor Blue
docker rmi -f ansible-controller 2>$null
