apt update
apt install -y docker docker.io git
cd /
git clone https://github.com/izeal/my_roda_app

docker run --rm --name my_roda_app -v $(pwd):/app/ -p 3000:3000 -d -it my_roda_app rackup -p3000
