node
{
    stage('Cloning Repo')
    {
        git branch: 'main', credentialsId: 'github-cred', url: 'https://github.com/vikasedu-github/carrierJavaDemoProj'
    }
    
    stage('Maven Building')
    {
        def mavenHome = tool name: "Maven", type: "maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} clean package"
    }
    
    stage('Reviewing Code')
    {
      withSonarQubeEnv(credentialsId: 'SonarJenkinsToken') 
      {
        def mavenHome = tool name: "Maven", type: "maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} sonar:sonar"
      }
    }
    
    stage('Uploading Artifact')
    {
        nexusArtifactUploader artifacts: [[artifactId: 'CarrieJavaDemoProj', classifier: '', file: 'target/CarrieJavaDemoProj.war', type: 'war']], credentialsId: 'NexusJenkinsCred', groupId: 'com.carrier', nexusUrl: '20.235.40.109:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'carrier-nexusrepo', version: '1.5-SNAPSHOT'
    }
    
    stage('Deploying on Server')
    {
        sshagent(['TomcatSSHKey'])
        {
           sh 'scp -o StrictHostKeyChecking=no target/CarrieJavaDemoProj.war vikas@20.204.145.104:/opt/tomcat/webapps/'
        }
    }
    
}