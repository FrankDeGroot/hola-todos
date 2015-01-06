# (start firewalld here)
sudo firewall-cmd --set-default-zone=FedoraWorkstation
sudo yum -y install tar
curl https://install.meteor.com/ | sh
sudo sh -c 'echo "[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1" >> /etc/yum.repos.d/mongodb.repo'
sudo yum -y install mongodb-org
sudo semanage port -a -t mongod_port_t -p tcp 27017
