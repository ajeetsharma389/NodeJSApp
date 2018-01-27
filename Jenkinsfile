pipeline
{
	agent { dockerfile true }
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