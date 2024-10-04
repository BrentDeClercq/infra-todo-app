node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop getting-started'
            sh 'docker rm getting-started'
            //sh 'docker image prune -af'
        }
    }
    stage('Build') {
        sh 'bash ./build-todo.sh'
    }
    stage('Result') {
        sh 'echo "hello"'
    }
}