pipeline {
    agent any
	//agent{      
    //node { label 'slave-jup'}     
  //} 
  
	environment 
	{
	DOCKERHUB_CREDENTIALS = credentials('docker-id')
	}
	
stages 
	{
		stage ('Scm checkout')
	{
		steps 
		{
	//git credentialsId: 'github-login-vari', url: 'https://github.com/Bhushcgit/Demo.git'
	// git 'https://github.com/shazforiot/How-to-Push-docker-image-to-Docker-Hub-using-Jenkins-Pipeline.git'
		//	git 'https://github.com/Bhushcgit/Demo.git'
		
		sh 'echo $DOCKERHUB_CREDENTIALS '
		}
	}
		stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
	}
	}
