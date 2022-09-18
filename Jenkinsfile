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
	    
        stage('Deploy'){
            steps{
               sh 'java -cp target/jb-hello-world-maven-0.1.0.jar hello.HelloWorld'
            }
        }	    

        stage('Healthcheck'){
            steps{
               sh 'sh -x script.sh'
            }
        }
	    
        stage('Email_notification'){
            steps{
              emailext attachmentsPattern: 'Healthcheck_Report*.html'
	      body: 'Hi All \n, Below is the Healtcheck report attached',
    	      subject: 'Healtcheck report',
    	      to: 'indrasenareddyjyothi@gmail.com,suriya20july@gmail.com'
            }
        }
	    
        }
	    

    }
}
