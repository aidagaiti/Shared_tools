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
}