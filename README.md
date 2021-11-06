docker build -t my_roda_app .
docker run --rm --name my_roda_app -v $(pwd):/app/ -p 3000:3000 -it my_roda_app sh


docker run --rm --name my_roda_app -v $(pwd):/app/ -p 3000:3000 -it my_roda_app rackup -p3000
