### Run commands

### assuming you run a web facing nginx on host server
### rememder to change ssl certificate/key path to fit your install
`cp nginx.my.domain.tld.conf /etc/nginx/sites-available/`

### Clone git into sub dir
`git clone https://github.com/jitsi/docker-jitsi-meet git-repo`

### replace my.domain.tld with your domain in .env
### edit DOCKER_HOST_ADDRESS=12.34.56.78 to match host wan IP

### Copy docker-compose.yml and .env into git sub dir
`cp docker-compose.yml .env git-repo/.`

### Create volume dirs
`mkdir -p git-repo/jitsi-meet-cfg/{web/transcripts,prosody,jicofo,jvb,jibri}`

### Start servers.
`cd git-repo`
`./gen-passwords.sh`
### for jitsi only:
`docker-compose up -d`

### for jitsi + jibir
#### I'd recommend ***>= 4 CPU's >= 8Gb RAM*** for streaming/recordings
`docker-compose -f docker-compose.yml -f jibri.yml up -d`


### Add credentials
`cd ..`
`./add_credentials.sh`




