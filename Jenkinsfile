pipeline {
  agent any
  stages {
    stage('Source') {
      steps {
        git(url: 'https://github.com/seirios86/test-project.git', branch: 'main', credentialsId: 'harvey-github')
      }
    }

  }
}