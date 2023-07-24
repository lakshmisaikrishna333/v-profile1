node{
stage('Get Code'){ 
git credentialsId: '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', url: 'https://github.com/ajayreddii/v-profile.git' 
 }

  stage('Build package'){
        def mavenHome = tool name:"maven-3.8.8", type:"maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} clean package"
  }
   stage('sonarqube'){
            def mavenHome = tool name:"maven-3.8.8", type:"maven"
            def mavenCMD = "${mavenHome}/bin/mvn"
            sh "${mavenCMD} sonar:sonar"
   }
    stage('nexus'){

    nexusArtifactUploader artifacts: [[artifactId: 'com.visualpathit', classifier: '', file: '/var/jenkins_home/workspace/v-profile/target/vprofile-v2.war', type: 'war']], credentialsId: '7cd79cda-994a-43d7-a853-0de57e35e39e', groupId: 'v.in', nexusUrl: '100.24.33.233:8081', nexusVersion: 'nexus3', protocol: 'https', repository: 'http://100.24.33.233:8081/repository/maven-releases/', version: '1.0'
          
}
}       
