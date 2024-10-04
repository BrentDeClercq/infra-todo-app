node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop todorunning'
            sh 'docker rm todorunning'
            //sh 'docker image prune -af'
        }
    }
    stage('Build') {
        build 'BuildTodoApp'
    }
}