pipeline
{
	agent any
	stages{
		stage('Build'){
			steps{
				npm intall
			}			
		}
		stage(‘Deploy’){
			steps{
				npm stop
				npm start
			}			
		}
	}
}