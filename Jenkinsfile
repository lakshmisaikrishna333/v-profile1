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
          
}
}       
