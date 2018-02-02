pipeline
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
        stage('Build') {
        	
        	app = docker.build "ajeetsharma389/NodeJSApp"
        	/*steps {
        		
        		sh 'docker images'
      		}*/
        }
        /*stage('Running') {
        	app = docker.run "-p 49160:8080 -d ajeet/docker_web_app"
            
        }*/
    }
}