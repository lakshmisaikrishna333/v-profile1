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
          nexusArtifactUploader artifacts: [[artifactId: 'vproapp', classifier: '', file: 'target/vprofile-v2.war', type: 'war']], credentialsId: '56cd9671-d42c-4b94-afbd-96be55421899', groupId: 'v.in', nexusUrl: '100.26.144.59:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'vprofile-release', version: '2.0'
       }

      stage('Build Image'){
        sh 'docker build -t ajayreddy549/v-profile  . '
       
}
     stage("runing  docker image"){
        sh 'docker run -d -p 8081:8080 ajayreddy549/v-profile  ' 
}
     Sstage ("to aws ecr"){
         sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 516890180996.dkr.ecr.us-east-1.amazonaws.com'
     }
}


