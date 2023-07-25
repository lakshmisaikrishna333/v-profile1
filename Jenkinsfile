pipeline {
    agent any
    tools {
        maven "MAVEN3"
       
    }
    stages {
        stage('Build'){
            steps {
                sh 'mvn clean package '
    
}
        }
    
        stage('Build'){
            steps {
                sh 'mvn sonar:sonar '
    
}
        }
}
}
