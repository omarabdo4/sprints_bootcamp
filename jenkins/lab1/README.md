01) What is Jenkins used for?

Jenkins is an open source continuous integration/continuous delivery and deployment (CI/CD) automation software
Mainly used in automated trasition between different evnironments (and building code)

02) What is Jenkins agent? What is Jenkins executor (Build Executor)?

An agent is typically a machine, or container, which connects to a Jenkins controller and executes tasks when directed by the controller.

An executor is a slot for execution of work defined by a Pipeline or Project on a Node. A Node may have zero or more Executors configured which corresponds to how many concurrent Projects or Pipelines are able to execute on that Node.

03) Explain Jenkins master-slave architecture?

Master/slave is a model of asymmetric communication or control where one device or process (the "master") controls one or more other devices or processes (the "slaves") and serves as their communication hub.

In Jenkins master is deprecated term, synonymous with Controller.
and slave is deprecated term also, synonymous with Agent.

04) Mention three security mechanisms used by Jenkins to authenticate users?

by role
by matrix
by project

05) Mention ways that a job can be run/scheduled in Jenkins?

- using the interface we click the run button

- using cron expressions to schedule a job

- using triggers (like other scripts or after other builds/jobs are finished)

06) How can we restart Jenkins server (Hint it's an endpoint we visit in the browser)?

1- via endpoints
we use 
[Jenkins URL]/safeRestart
to restart after completing the running jobs

we use 
[Jenkins URL]/restart
to force restart

2- via plugin (interface)

3- via Jenkins CLI

07) Install jenkins with docker image.

docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11

08) Install role based authorization plugin.

![screen1](https://github.com/omarabdo4/sprints_bootcamp/blob/main/jenkins/screen1.png?raw=true "screen1")

09) Create new user.
10) Create read role and assign it to the new user

![screen2](https://github.com/omarabdo4/sprints_bootcamp/blob/main/jenkins/screen2.png?raw=true "screen2")

11) Create free style project and link it to private git repo(inside it create directory and create file with "hello world").

![screen3](https://github.com/omarabdo4/sprints_bootcamp/blob/main/jenkins/screen3.png?raw=true "screen3")
