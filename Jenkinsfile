pipeline
{
	/*agent { 
		node{
			label 'dockerslave'
			customWorkspace '/Users/ajeet/jobs/'
		}
	 }*/
	
	agent { dockerfile true }
	
	stages {
        stage('Build') {
        	
        	
        	/*agent{
        		docker
        			{
        				
        				reuseNode true
        			}
        	}*/
        	steps {
        		sh docker build -t ajeet/docker_web_app .
        		sh docker images
      		}
        }
        stage('Running') {
            steps {
                sh docker run -p 49160:8080 -d ajeet/docker_web_app
            }
        }
    }
}