# cf-registry
Building a docker registry that can be pushed to cloud foundry

## Modifying the docker registry original

In order to deploy any app in CF, it is necessary to that the app listen on a port that is passed on the enviroment.
In the case of docker images, they often need to be rebuilt to adapt to this CF constraint. 
This example can be re-used to adapt any docker image that uses an entrypoint script to start and listens to a port specified in a configuration file.
The replacment of the port on the configuration file will vary depending on the service syntax that is being served by the image.


## How to build

~~~
git clone https://github.com/clsacramento/cf-registry
cd cf-registry
build --no-cache -t cf-registry .
~~~

## How to run with docker

Just pass the PORT on the environment.

~~~
docker run -d   --env "PORT=7777" -P clsacramento/cf-registry
~~~

## Ho to push to CF

Just use the image already available or build your own. Then execute cf push as follows:

~~~
cf push cf-registry -o clsacramento/cf-registry
~~~
