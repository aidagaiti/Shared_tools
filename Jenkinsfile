node {
    stage("Clone")
    checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aidagaiti/Shared_tools.git']]])
}
