node {
    stage("Clone")
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aidagaiti/Shared_tools.git']]])
}

    stage("Build")
        sh "docker build -t tools ."
