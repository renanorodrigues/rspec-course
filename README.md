# How to test this exercises

1. Install docker and docker-compose in your machine
2. Clone this repository and open the app directory
3. After that run the command for make the image:
```
docker build -t rspec-course .
```
4. Test all rspec files
```
docker run --rm -it rspec-course bundle exec rspec
```
