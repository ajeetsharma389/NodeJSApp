pipeline
{
	agent { 
		node{
			label 'CD'
			//customWorkspace '/Users/ajeet/jobs/'
		}
	 }
	
	//agent { dockerfile true }
	
	stages {
		stage('Clone repository') {
        	
			steps {
        		echo "clone code"
        		checkout scm
      		}
        	
    	}
        stage('Build Image') {
        	
        	
        	/*agent{
        		docker
        			{
        				
        				reuseNode true
        			}
        	}*/
        	steps {
        		
        		sh 'docker build -t <dockerhubusername>/NodeJSApp:100'
        		//sh 'docker images'
      		}
        }
        /*stage('Running') {
            steps {
              //  sh 'docker run -p 49160:9000 -d <dockerhubusername>/NodeJSApp:100'
            }
        }*/
    }
}
