![](https://visitor-badge.glitch.me/badge?page_id=Yoas1.jenkins-ssh-agent)</br>
# SSH - Jenkins agent

## Run the container:
```
docker run -it -p 2222:22 -v /<workdir-path/:/<workdir-path/ yoas1/jenkins-ssh-agent
```
**Copy the ssh key!!**

## Create agent in jenkins:

Go to: **Manage Jenkins** ---> **Manage nodes and clouds** ---> **+ New Node**
- [ ] Insert node name ---> Type **Permanent Agent** ---> Click **create**
- [ ] Configure:
   - [ ] Remote root directory: **jenkins-agent**
   - [ ] Labels: **Insert-your-labels**
   - [ ] Usage: **Only build jobs with label expressions matching this node**
   - [ ]  Launch method: **Launch agents via ssh**:
      - [ ] Host: **IP**
      - [ ] Credentials: Click on **+ Add** and go to ---> [Set Credentials](#set-credentials)
      - [ ] Host Key Verification Strategy: **Manually trusted key Verification Strategy** and check **Require manual verification of initial connection**
      - [ ] Click on **Advanced...** and add Port **2222**

Click on **Save**


## Set Credentials
- [ ] Kind: **SSH Username with private key**
- [ ]  ID: Insert id
- [ ] Username: **root**
- [ ] Private Key ---> Enter directly: **add key you copied from container**

Click on **Add**