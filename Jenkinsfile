pipeline{
    agent any

   tools{
	maven 'Maven'
}
    stages{
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'Jenkins token', url: 'https://github.com/Indra7946/HelloWorldMaven.git']]])
            }
        }
        stage('build'){
            steps{
               sh 'mvn package'
            }
        }
    }
}
