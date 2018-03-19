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
        	/* Let's make sure we have the repository cloned to our workspace */
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
        		
        		sh 'docker build -t ajeetsharma389/NodeJSApp:100'
        		//sh 'docker images'
      		}
        }
        stage('Running') {
            steps {
              //  sh 'docker run -p 49160:9000 -d ajeetsharma389/NodeJSApp:100'
            }
        }
    }
}