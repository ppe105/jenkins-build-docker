node{
  def app
    stage('clone') {
	checkout scm
    }
    stage('Build image') {
	app = docker.build("abou/nginx")
    }
    stage('Run image') {
	docker.image('abou/nginx').withRun('-p 82:81') { c ->
	sh 'docker ps'
	sh 'curl localhost'
    }
    }
}
