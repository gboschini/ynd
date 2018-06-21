pipeline {
  agent {
    label "jenkins-maven"
  }

  def tag = sh(returnStdout: true, script: "git rev-parse --short HEAD").trim()

  stages {
    stage('Validate Environment') {
      steps {
        echo "this is the tag ${tag}";
        container('maven') {
          echo "step container maven"
        }
      }
    }
    stage('Update Environment') {
      when {
        branch 'develop'
      }
      steps {
        container('maven') {
          echo "stage Update environment step container maven"
        }
      }
    }
  }
}
/*
node ("jenkins-slave") {

  //update variables bellow
  //meaningful app name
  def app_name = "ynd"

  def registry_url
  def registry_creds
  def dcos_dr_tag
  def marathon_url
  def marathon_id
  def dcos_creds

  //docker registry url
  withCredentials([[$class: 'StringBinding', credentialsId: 'YND_PHX_REGISTRY_URL', variable: 'REGISTRY_URL']]) {
    registry_url = REGISTRY_URL
  }

  //docker registry password
  withCredentials([[$class: 'StringBinding', credentialsId: 'YND_PHX_REGISTRY_CREDS', variable: 'REGISTRY_CREDS']]) {
    registry_creds = REGISTRY_CREDS
  }

  //docker registry tag name
  withCredentials([[$class: 'StringBinding', credentialsId: 'YND_PHX_DCOS_DR', variable: 'TAG']]) {
    dcos_dr_tag = TAG
  }

  def deployment_result = "STARTED"

  stage('Checkout') {
    echo "Checkout"
    checkout scm
  }

  def tag = sh(returnStdout: true, script: "git rev-parse --short HEAD").trim()

  stage('Development build & Syntax Check') {
    sh("cp .env.example .env")
    sh("/usr/local/bin/docker-compose build")
    sh("/usr/local/bin/docker-compose run --rm app mix do deps.get, compile, credo --strict")
  }

  stage('Type checking') {
    sh("/usr/local/bin/docker-compose run --rm app mix dialyzer --halt-exit-status --no-compile --no-check")
  }

  stage('Unit Tests') {
    sh("/usr/local/bin/docker-compose run --rm app mix test")
    sh("/usr/local/bin/docker-compose down")

    junit 'build/report/junit/*.xml'
  }

  if(isOnDevelop()) {
    stage("Setup marathon files") {
      echo "Stage Setup marathon files"
    }

    stage("Production build") {
      echo "Stage Production build"
    }

    stage("Promote") {
      echo "Stage Promote"
    }

    stage("Deployment") {
      echo "Stage Deployment"
    }
  }

  stage('Dev Tests') {
    echo "Test Dev"
  }
}

def isOnDevelop() {
  return !env.BRANCH_NAME || env.BRANCH_NAME == "develop";
}
*/