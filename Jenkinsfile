node
{
	def app
	agent { 
		node{
			label 'dockerslave'
			customWorkspace '/Users/ajeet/jobs/'
		}
	 }
	
	
	stages {
	
		stage('Clone repository') {
       	 /* Let's make sure we have the repository cloned to our workspace */
			echo "Pulling code from repo"
        	checkout scm
    	}
        stage('Build Image') {
        	
        	app = docker.build "ajeetsharma389/NodeJSApp"
        	
        }
    
    }
    
    
}