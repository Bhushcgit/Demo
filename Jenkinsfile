pipeline {
	agent any 
	enviroment
	{
	DOCKERHUB_CREDENTIALS = credentials('docker-id')
	}
	stages 
	{
		stage ('Scm checkout')
	{
		steps 
		{
		'git  https://github.com/Bhushcgit/Demo.git'
		}
	}
		stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
	}
