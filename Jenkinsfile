node{
stage('Get Code'){ 
git credentialsId: 'e9f074e9-3508-4db6-8649-d71a115aef24', url: 'https://github.com/ajayreddii/v-profile.git'
 }

  stage('Build package'){
        def mavenHome = tool name:"MAVEN3", type:"maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} clean package"
     }

stage('sonarqube'){
            def mavenHome = tool name:"MAVEN3", type:"maven"
            def mavenCMD = "${mavenHome}/bin/mvn"
            sh "${mavenCMD} sonar:sonar"
     }

stage('nexus'){
          nexusArtifactUploader artifacts: [[artifactId: 'vproapp', classifier: '', file: 'target/vprofile-v2.war', type: 'war']], credentialsId: '56cd9671-d42c-4b94-afbd-96be55421899', groupId: 'v.in', nexusUrl: '54.175.126.120:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'vprofile-release', version: '2.0'
       }

stage('Docker Build and Tag') {
           build {
              
                sh 'docker build -t VPROFILE:V2 .' 
                sh 'docker tag VPROFILE:V2 ajayreddy549/VPROFILE:V2'
}
}
}
