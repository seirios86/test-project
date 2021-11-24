pipeline {
  agent any
  stages {
    stage('Source') {
      steps {
        git(url: 'https://github.com/seirios86/test-project.git', branch: 'main', credentialsId: 'harvey-github')
      }
    }

    stage('Test') {
      steps {
        echo 'test success'
      }
    }

    stage('Build') {
      steps {
        sh './mvnw clean compile package -DskipTests'
      }
    }

    stage('Image Build') {
      steps {
        sh 'docker build -t test-project .'
      }
    }
    
    stage('Publish') {
      steps {
        withDockerRegistry([credentialsId: 'harvey-dockerhub', url: '']) {
          sh 'docker push seirios86/test-project'
        }
      }
    }
  }
}
