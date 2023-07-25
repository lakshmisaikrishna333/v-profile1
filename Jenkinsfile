pipeline {
    agent any
    tools {
        maven "MAVEN3"
       
    }
stages {
        stage('Build'){
            steps {
                sh 'mvn sonar:sonar '
    
}
        }
}
}
