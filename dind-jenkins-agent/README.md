![](https://visitor-badge.glitch.me/badge?page_id=Yoas1.dind-jenkins-agent)</br>
# dind-jenkins-agent<br><br>

Run with command:<br>
**docker container run -it -e ADDRESS=<full_address_to_jenkins_node> -e SECRET=<token_from_jenkins_node> -e HOME_DIR=<work_dir_from_jenkins_node> --name dind_agent --privileged=true yoas1/jenkins-agent-dind:1.0**</br></br>

**Or**</br>

**docker container run -it -e ADDRESS=<full_address_to_jenkins_node> -e SECRET=<token_from_jenkins_node> -e HOME_DIR=<work_dir_from_jenkins_node> --name dind_agent --privileged=true ghcr.io/yoas1/dind-jenkins-agent:1.0**
