# Demo

This is the demo app for [https://speakerdeck.com/allenwei/build-scalable-app-with-docker](https://speakerdeck.com/allenwei/build-scalable-app-with-docker)


# build and start vagrant

```
vagrant up
```

it will bootstrap the ubuntu vagrant instance.


# build master node

ssh to ubuntu-01, build docker images with `fig build`

# build other two node

ssh to ubuntu-02, ubuntu-03, build docker images with `fig build`

# start all container on each node by 

```
fig up
```

# Scale app

Use following code to scale app up

```
fig scale app=3
```

After app container started, nginx template will updated automaticially


This demo is base on [https://github.com/bellycard/docker-loadbalancer](https://github.com/bellycard/docker-loadbalancer)