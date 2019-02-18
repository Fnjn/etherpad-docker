##*[Etherpad Lite](http://etherpad.org/) Image with built-in MySQL. 
*NOT AN OFFICIAL IMAGE.*<br/>


### Pull from DockerHub
```bash
docker pull fnjn/etherpad:latest
docker run -d -p 80:9001 etherpad:latest
```
<br/>

### Build from Dockerfile
```bash
git clone git@github.com:Fnjn/etherpad-docker.git
cd etherpad-docker
docker build . -t etherpad:latest
docker run -d -p 80:9001 etherpad:latest
```
<br/>

### Configuration
Configure Etherpad Setting in `settings.json` or `your_ip_addr/admin/settings`
Configure MySQL setting in `database.sql`

Report any problem to issue page.<br/>
