pipeline {
    agent any

    stages {
    
        stage('Docker build') {
            steps {
                build job: "JJBBuild"
            }
        }
        
        stage('Docker run') {
            steps {
                build job: "JJBRun"
            }
        }
        
    }
    
}

