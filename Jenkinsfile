pipeline{
    agent any

   tools{
	maven 'Maven'
}
    stages{
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
               sh 'ssh -i ~/.ssh/id_rsa 18.215.146.43 sh /home/ec2-user/Monitoring/Healthcheck_Monitoring.sh'
            }
        }

    }
}
