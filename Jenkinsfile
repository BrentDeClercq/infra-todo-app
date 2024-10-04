node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop getting-started'
            sh 'docker rm getting-started'
            //sh 'docker image prune -af'
        }
    }
    stage('Build') {
        sh 'cd app'
        sh 'docker build -t getting-started .'
    }
    stage('Run') {
        sh 'docker run -dp 3000:3000 getting-started'
    }
    stage('Result') {
        sh 'echo "hello"'
    }
}