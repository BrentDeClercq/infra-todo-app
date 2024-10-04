node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop getting-started'
            sh 'docker rm getting-started'
            //sh 'docker image prune -af'
        }
    }
    stage('Build') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker build -t getting-started ./app'
        }
    }
    stage('Run') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker run -dp 3000:3000 getting-started'
        }
    }
    stage('Result') {
        catchError(buildResult: 'SUCCESS') {
            sh 'echo "hello"'
        }
    }
}