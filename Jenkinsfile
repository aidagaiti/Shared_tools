properties([parameters([string(defaultValue: '986127918014', description: 'Please dont be so vonuchii', name: 'AWS_ACCOUNT')])])
node {
    stage("Clone"){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aidagaiti/Shared_tools.git']]])
    }

    stage("Build"){
        sh "docker build -t tools ."
    }
    stage("Tagging"){
        sh "docker tag tools:latest 986127918014.dkr.ecr.us-east-1.amazonaws.com/tools:latest"   
    }
    stage("Authenticate"){
        sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 986127918014.dkr.ecr.us-east-1.amazonaws.com"
    }   
    stage ("Push Image") {
        sh "docker push 986127918014.dkr.ecr.us-east-1.amazonaws.com/tools:latest"
    }
}