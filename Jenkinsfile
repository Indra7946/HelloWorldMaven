pipeline{
    agent any

   tools{
	maven 'Maven'
}
    stages{
	stage('Clean_Workspace'){
		steps{
			cleanWs();
		}
	}
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'Jenkinstoken', url: 'https://github.com/Indra7946/HelloWorldMaven.git']]])
            }
        }

        stage('build'){
            steps{
               sh 'mvn package'
            }
        }

        stage('Healthcheck'){
            steps{
               sh 'sh -x script.sh'
            }
        }

    }
}
