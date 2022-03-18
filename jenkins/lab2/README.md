S_JENKINS_02: Lab 2

01) What is the Jenkins Pipeline?

it is a suite of plugins which supports implementing and integrating continuous delivery pipelines

02) What scripting language is Jenkins pipeline syntax based on?

Groovy

03) What are the ways you can write a pipeline in Jenkins?

> Declarative – a new way of creating Jenkins Pipeline. Here you write groovy code containing “pipeline” blocks, which is checked into an SCM (Source Code Management)
> Scripted – way of writing groovy code where the code is defined inside “node” blocks.

04) Create declarative in Jenkins GUI pipeline for your own repo to do "ls"

pipeline { 
    agent any

    stages {
        stage('Pulling Repository'){
            steps {
                git branch: 'main', credentialsId: 'my_token', url: 'https://github.com/omarabdo4/test_jenkins_private_repo'
            }
        }
        stage('list files') {
            steps {
                sh "ls"
            }
        } 
    } 
} 

05) Create scripted in Jenkins GUI pipeline for your own repo to do "ls"

node {
    stage('cloning git repo & listing files') {
        git branch: 'main', url:'https://github.com/omarabdo4/test_jenkins_private_repo'
        sh "ls"
    }
}

06) Create the same with Jenkins file in your branches as multi-branch pipeline

https://github.com/omarabdo4/jenkins_sprints_node

07) Configure Jenkins image to run docker commands on your host docker daemon.

docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins_with_docker

08) Create CI/CD for this repo https://github.com/ahmedKhaled1995/simple_nodejs_app

https://github.com/omarabdo4/jenkins_sprints_node

![screen4](https://github.com/omarabdo4/sprints_bootcamp/blob/main/jenkins/screen4.png?raw=true "screen4")

09) Using terraform: 

1-Launch an EC2 instance

2-Attach a security group to that allows ssh (port 22) from anywhere (0.0.0.0./0)

3-Attach a security group to that allows traffic from port 3000 from anywhere (0.0.0.0./0)

10) Using Ansible:

1- Configure the launched EC2 instance from question 8 to have:

  a) Java 8 or higher installed

      b) Install Docker.

    4- Run the pipeline from question 8 on the Jenkins slave machine.

    5- Send pipeline status to Slack.  

