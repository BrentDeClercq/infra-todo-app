node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop getting-started'
            sh 'docker rm getting-started'
            //sh 'docker image prune -af'
        }
    }
    stage('Build') {
        build 'BuildTodoApp'
    }
    stage('Results') {
        build 'TestTodoApp'
    }
}