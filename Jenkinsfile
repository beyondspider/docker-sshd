pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh './build.sh'
      }
    }
    stage('push') {
      steps {
        sh './push.sh'
      }
    }
  }
}