# HawkinCloud	



![Logo](https://media.licdn.com/dms/image/C4E22AQFVYKQSeAQiBw/feedshare-shrink_800/0/1676488732559?e=2147483647&v=beta&t=HFqpHG8nQ8OHVztNWZQI9l_Ls6a7JCXHyXoJwyv9GGI)


## Support

For support, email aliyevdevops@gmail.com 




###
Audit, Monitor and Analyze your AWS Account activity.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

Install container and images from Dockerhub

```shell
docker pull aliyevom/hawkincloud
```

List containers
```shell
docker ps
```

List Images

```shell
docker images
```

#### Environment Variables

*	`ENV AWS_ACCESS_KEY_ID =<your-access-key-id>`
*	`ENV AWS_SECRET_ACCESS_KEY =<your-secret-access-key>`
*	`ENV AWS_DEFAULT_REGION =<your-aws-region>`

#### Volumes

* `/your/file/location` - File location



## Built With AWS Custom JSON

```


{
	"Version": "2012-10-17",
	"Statement": [
    	{
        	"Effect": "Allow",
        	"Action": "*",
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": [
            	"cloudtrail:Get*",
            	"cloudtrail:Describe*",
            	"cloudtrail:List*",
            	"cloudtrail:LookupEvents"
        	],
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": [
            	"iam:GenerateCredentialReport",
            	"iam:GenerateServiceLastAccessedDetails",
            	"iam:Get*",
            	"iam:List*",
            	"iam:SimulateCustomPolicy",
            	"iam:SimulatePrincipalPolicy"
            ],
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": "kms:ListKeys",
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": "kms:*",
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": [
            	"kms:GetParametersForImport",
            	"kms:DescribeCustomKeyStores",
            	"kms:ListKeys",
            	"kms:GetPublicKey",
  	          "kms:ListKeyPolicies",
            	"kms:ListRetirableGrants",
            	"kms:GetKeyRotationStatus",
            	"kms:ListAliases",
            	"kms:GetKeyPolicy",
            	"kms:DescribeKey",
            	"kms:ListResourceTags",
            	"kms:ListGrants"
        	],
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": "iam:ListUsers",
        	"Resource": "*"
    	}
	]
}


``` 
## Live demo
```docker run -e AWS_ACCESS_KEY_ID=1234567890 -e AWS_SECRET_ACCESS_KEY=1234567890  -p 4000:4000 aliyevom/hawkincloud```

## WITH REGION

```docker run -e AWS_ACCESS_KEY_ID=1234567890 -e AWS_SECRET_ACCESS_KEY=1234567890  -e AWS_DEFAULT_REGION=us-east-1 -p 4000:4000 aliyevom/hawkincloud```

## Authors

* **Aliyev Omar** - *Initial work* - [Aliyevom](https://github.com/aliyevom)

See also the list of [contributors](https://github.com/aliyevom) who 
participated in this project.



## Why Docker

"With Docker, developers can build any app in any language using any toolchain. “Dockerized” apps are completely portable and can run anywhere - colleagues’ OS X and Windows laptops, QA servers running Ubuntu in the cloud, and production data center VMs running Red Hat.

Developers can get going quickly by starting with one of the 13,000+ apps available on Docker Hub. Docker manages and tracks changes and dependencies, making it easier for sysadmins to understand how the apps that developers build work. And with Docker Hub, developers can automate their build pipeline and share artifacts with collaborators through public or private repositories.

Docker helps developers build and ship higher-quality applications, faster." -- [What is Docker](https://www.docker.com/what-docker#copy1)

## Prerequisites

I use [Oh My Zsh](https://github.com/ohmyzsh/oh-my-zsh) with the [Docker plugin](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#docker) for autocompletion of docker commands. YMMV.

### Linux

The 3.10.x kernel is [the minimum requirement](https://docs.docker.com/engine/installation/binaries/#check-kernel-dependencies) for Docker.

### MacOS

10.8 “Mountain Lion” or newer is required.

### Windows 10

Hyper-V must be enabled in BIOS

VT-D must also be enabled if available (Intel Processors).

### Windows Server

Windows Server 2016 is the minimum version required to install docker and docker-compose. Limitations exist on this version, such as multiple virtual networks and Linux containers. Windows Server 2019 and later are recommended. 

## Installation

### Linux

Run this quick and easy install script provided by Docker:

```sh
curl -sSL https://get.docker.com/ | sh
```

If you're not willing to run a random shell script, please see the [installation](https://docs.docker.com/engine/installation/linux/) instructions for your distribution.

If you are a complete Docker newbie, you should follow the [series of tutorials](https://docs.docker.com/engine/getstarted/) now.

### macOS

Download and install [Docker Community Edition](https://www.docker.com/community-edition). if you have Homebrew-Cask, just type `brew install --cask docker`. Or Download and install [Docker Toolbox](https://docs.docker.com/toolbox/overview/).  [Docker For Mac](https://docs.docker.com/docker-for-mac/) is nice, but it's not quite as finished as the VirtualBox install.  [See the comparison](https://docs.docker.com/docker-for-mac/docker-toolbox/).

> **NOTE** Docker Toolbox is legacy. You should to use Docker Community Edition, See [Docker Toolbox](https://docs.docker.com/toolbox/overview/).

Once you've installed Docker Community Edition, click the docker icon in Launchpad. Then start up a container:

```sh
docker run hello-world
```

That's it, you have a running Docker container.

If you are a complete Docker newbie, you should probably follow the [series of tutorials](https://docs.docker.com/engine/getstarted/) now.

### Windows 10

Instructions to install Docker Desktop for Windows can be found [here](https://docs.docker.com/desktop/windows/install/)

Once installed, open powershell as administrator and run:

```powershell
# Display the version of docker installed:
docker version

# Pull, create, and run 'hello-world':
docker run hello-world
```

To continue with this cheat sheet, right click the Docker icon in the system tray, and go to settings. In order to mount volumes, the C:/ drive will need to be enabled in the settings to that information can be passed into the containers (later described in this article). 

To switch between Windows containers and Linux containers, right click the icon in the system tray and click the button to switch container operating system Doing this will stop the current containers that are running, and make them unaccessible until the container OS is switched back.

Additionally, if you have WSL or WSL2 installed on your desktop, you might want to install the Linux Kernel for Windows. Instructions can be found [here](https://techcommunity.microsoft.com/t5/windows-dev-appconsult/using-wsl2-in-a-docker-linux-container-on-windows-to-run-a/ba-p/1482133). This requires the Windows Subsystem for Linux feature. This will allow for containers to be accessed by WSL operating systems, as well as the efficiency gain from running WSL operating systems in docker. It is also preferred to use [Windows terminal](https://docs.microsoft.com/en-us/windows/terminal/get-started) for this.

### Windows Server 2016 / 2019

Follow Microsoft's instructions that can be found [here](https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/deploy-containers-on-server#install-docker)

If using the latest edge version of 2019, be prepared to only work in powershell, as it is only a servercore image (no desktop interface). When starting this machine, it will login and go straight to a powershell window. It is reccomended to install text editors and other tools using [Chocolatey](https://chocolatey.org/install).

After installing, these commands will work:

```powershell
# Display the version of docker installed:
docker version

# Pull, create, and run 'hello-world':
docker run hello-world
```

Windows Server 2016 is not able to run Linux images. 

Windows Server Build 2004 is capable of running both linux and windows containers simultaneously through Hyper-V isolation. When running containers, use the ```--isolation=hyperv``` command, which will isolate the container using a seperate kernel instance. 

### Check Version

It is very important that you always know the current version of Docker you are currently running on at any point in time. This is very helpful because you get to know what features are compatible with what you have running. This is also important because you know what containers to run from the docker store when you are trying to get template containers. That said let see how to know which version of docker we have running currently.

* [`docker version`](https://docs.docker.com/engine/reference/commandline/version/) shows which version of docker you have running.

Get the server version:

```console
$ docker version --format '{{.Server.Version}}'
1.8.0
```

You can also dump raw JSON data:

```console
$ docker version --format '{{json .}}'
{"Client":{"Version":"1.8.0","ApiVersion":"1.20","GitCommit":"f5bae0a","GoVersion":"go1.4.2","Os":"linux","Arch":"am"}
```

## Containers

[Your basic isolated Docker process](http://etherealmind.com/basics-docker-containers-hypervisors-coreos/). Containers are to Virtual Machines as threads are to processes. Or you can think of them as chroots on steroids.

### Lifecycle

* [`docker create`](https://docs.docker.com/engine/reference/commandline/create) creates a container but does not start it.
* [`docker rename`](https://docs.docker.com/engine/reference/commandline/rename/) allows the container to be renamed.
* [`docker run`](https://docs.docker.com/engine/reference/commandline/run) creates and starts a container in one operation.
* [`docker rm`](https://docs.docker.com/engine/reference/commandline/rm) deletes a container.
* [`docker update`](https://docs.docker.com/engine/reference/commandline/update/) updates a container's resource limits.

Normally if you run a container without options it will start and stop immediately, if you want keep it running you can use the command, `docker run -td container_id` this will use the option `-t` that will allocate a pseudo-TTY session and `-d` that will detach automatically the container (run container in background and print container ID).

If you want a transient container, `docker run --rm` will remove the container after it stops.

If you want to map a directory on the host to a docker container, `docker run -v $HOSTDIR:$DOCKERDIR`. Also see [Volumes](https://github.com/wsargent/docker-cheat-sheet/#volumes).

If you want to remove also the volumes associated with the container, the deletion of the container must include the `-v` switch like in `docker rm -v`.

There's also a [logging driver](https://docs.docker.com/engine/admin/logging/overview/) available for individual containers in docker 1.10. To run docker with a custom log driver (i.e., to syslog), use `docker run --log-driver=syslog`.

Another useful option is `docker run --name yourname docker_image` because when you specify the `--name` inside the run command this will allow you to start and stop a container by calling it with the name the you specified when you created it.

### Starting and Stopping

* [`docker start`](https://docs.docker.com/engine/reference/commandline/start) starts a container so it is running.
* [`docker stop`](https://docs.docker.com/engine/reference/commandline/stop) stops a running container.
* [`docker restart`](https://docs.docker.com/engine/reference/commandline/restart) stops and starts a container.
* [`docker pause`](https://docs.docker.com/engine/reference/commandline/pause/) pauses a running container, "freezing" it in place.
* [`docker unpause`](https://docs.docker.com/engine/reference/commandline/unpause/) will unpause a running container.
* [`docker wait`](https://docs.docker.com/engine/reference/commandline/wait) blocks until running container stops.
* [`docker kill`](https://docs.docker.com/engine/reference/commandline/kill) sends a SIGKILL to a running container.
* [`docker attach`](https://docs.docker.com/engine/reference/commandline/attach) will connect to a running container.

If you want to detach from a running container, use `Ctrl + p, Ctrl + q`.
If you want to integrate a container with a [host process manager](https://docs.docker.com/engine/admin/host_integration/), start the daemon with `-r=false` then use `docker start -a`.

If you want to expose container ports through the host, see the [exposing ports](#exposing-ports) section.

Restart policies on crashed docker instances are [covered here](http://container42.com/2014/09/30/docker-restart-policies/).

#### CPU Constraints

You can limit CPU, either using a percentage of all CPUs, or by using specific cores.  

For example, you can tell the [`cpu-shares`](https://docs.docker.com/engine/reference/run/#/cpu-share-constraint) setting.  The setting is a bit strange -- 1024 means 100% of the CPU, so if you want the container to take 50% of all CPU cores, you should specify 512.  See <https://goldmann.pl/blog/2014/09/11/resource-management-in-docker/#_cpu> for more:

```sh
docker run -it -c 512 agileek/cpuset-test
```

You can also only use some CPU cores using [`cpuset-cpus`](https://docs.docker.com/engine/reference/run/#/cpuset-constraint).  See <https://agileek.github.io/docker/2014/08/06/docker-cpuset/> for details and some nice videos:

```sh
docker run -it --cpuset-cpus=0,4,6 agileek/cpuset-test
```

Note that Docker can still **see** all of the CPUs inside the container -- it just isn't using all of them.  See <https://github.com/docker/docker/issues/20770> for more details.

#### Memory Constraints

You can also set [memory constraints](https://docs.docker.com/engine/reference/run/#/user-memory-constraints) on Docker:

```sh
docker run -it -m 300M ubuntu:14.04 /bin/bash
```

#### Capabilities

Linux capabilities can be set by using `cap-add` and `cap-drop`.  See <https://docs.docker.com/engine/reference/run/#/runtime-privilege-and-linux-capabilities> for details.  This should be used for greater security.

To mount a FUSE based filesystem, you need to combine both --cap-add and --device:

```sh
docker run --rm -it --cap-add SYS_ADMIN --device /dev/fuse sshfs
```

Give access to a single device:

```sh
docker run -it --device=/dev/ttyUSB0 debian bash
```

Give access to all devices:

```sh
docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb debian bash
```

More info about privileged containers [here](
https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities).

### Info

* [`docker ps`](https://docs.docker.com/engine/reference/commandline/ps) shows running containers.
* [`docker logs`](https://docs.docker.com/engine/reference/commandline/logs) gets logs from container.  (You can use a custom log driver, but logs is only available for `json-file` and `journald` in 1.10).
* [`docker inspect`](https://docs.docker.com/engine/reference/commandline/inspect) looks at all the info on a container (including IP address).
* [`docker events`](https://docs.docker.com/engine/reference/commandline/events) gets events from container.
* [`docker port`](https://docs.docker.com/engine/reference/commandline/port) shows public facing port of container.
* [`docker top`](https://docs.docker.com/engine/reference/commandline/top) shows running processes in container.
* [`docker stats`](https://docs.docker.com/engine/reference/commandline/stats) shows containers' resource usage statistics.
* [`docker diff`](https://docs.docker.com/engine/reference/commandline/diff) shows changed files in the container's FS.

`docker ps -a` shows running and stopped containers.

`docker stats --all` shows a list of all containers, default shows just running.

### Import / Export

* [`docker cp`](https://docs.docker.com/engine/reference/commandline/cp) copies files or folders between a container and the local filesystem.
* [`docker export`](https://docs.docker.com/engine/reference/commandline/export) turns container filesystem into tarball archive stream to STDOUT.

### Executing Commands

* [`docker exec`](https://docs.docker.com/engine/reference/commandline/exec) to execute a command in container.

To enter a running container, attach a new shell process to a running container called foo, use: `docker exec -it foo /bin/bash`.
