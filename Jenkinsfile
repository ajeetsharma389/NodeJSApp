pipeline
{
	agent { 
		node{
			label 'dockerslave'
			customWorkspace '/Users/ajeet/jobs/'
		}
	 }
	
	stages {
        stage('Build') {
        	agent { dockerfile true }
        	
        	agent{
        		docker
        			{
        				reuseNode true
        			}
        	}
        	steps {
        		echo "hello world"
      		}
        }
        stage('Deploy') {
            steps {
                echo " deployed. Thanks!"
            }
        }
    }
}