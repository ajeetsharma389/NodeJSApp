pipeline
{
	agent { 
		node{
			label 'dockerslave'
			customWorkspace '/Users/ajeet/jobs/'
		}
	 }
	agent { dockerfile true }
	stages {
        stage('Build') {
        	
        	
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