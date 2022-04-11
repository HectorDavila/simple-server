pipeline{
    agent any

    tools { docker "Docker" }
    
    environment  {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub-hdavila')
    }

    stages {
        stage('build'){
            steps{
                sh "docker build -t hdavila7/simple-server:latest"
            }
        }

        stage('login'){
            steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
        }

        stage('Push') {

			steps {
				sh 'docker push hdavila7/simple-server:latest'
			}
		}
    }

    post {
		always {
			sh 'docker logout'
		}
	}
}