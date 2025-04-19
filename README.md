# to run server:
### install docker on host
probably like `apt-get update; apt-get install docker`. i run arch so i don't remember.

### start docker service on host
ubuntu uses `systemctl` to manage services so this should be the same:
- `systemctl enable docker.service`
- `systemctl start docker.service`

### build docker instance
- `sudo docker build -t minecraft-create-server .`

### copy world files to repo
copy the whole `/world` directory into this repo

# server admin features:
### start the serb
- `sudo ./start.sh`

### stop the serb
- `sudo ./stop.sh`

### jump into serb while it's running
- `docker run -it minecraft-create-server bash`

### rebuild docker image
- `sudo docker stop serb; sudo docker rm serb; sudo docker build -t minecraft-create-server .`

### install more mods 
- add mods to ./folder
- restart serb

### change java args (allocate more ram etc)
- add args to `user_jvm_args.txt`
- rebuild docker image
- start serb