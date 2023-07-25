pipeline {
    agent any
    tools {
        maven "MAVEN3"
        jdk "OracleJDK8"
    }
    SNAP_REPO = 'http://54.175.126.120:8081/repository/vprofile-snapshot/'
        NEXUS_USER = 'admin'
        NEXUS_PASS = 'admin123'
        RELEASE_REPO = 'http://54.175.126.120:8081/repository/vprofile-release/'
        CENTRAL_REPO = 'http://54.175.126.120:8081/repository/vpro-maven-central/'
        NEXUSIP = '54.175.126.120'
        NEXUSPORT = '8081'
        NEXUS_GRP_REPO = 'http://54.175.126.120:8081/repository/vpro-maven-group/'
        NEXUS_LOGIN = 'nexus'
        SONARSERVER = 'sonarserver'
        SONARSCANNER = 'sonarscanner'
        NEXUSPASS = credentials('nexuspass')
    }

    stages {
        stage('Build'){
            steps {
                sh 'mvn -s settings.xml -DskipTests install'
            }
            post {
                success {
                    echo "Now Archiving."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
    }
}
