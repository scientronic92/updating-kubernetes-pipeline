pipeline {
    agent any
    stages {
        stage('Pylint') {
            steps {
		//sh "python3 -m pip install -r requirements.txt"
                sh "python3 -m pylint --disable=R,C,W1203 app.py"
            }
        }
        stage('build docker') {
            steps {
		sh "./run_docker.sh"
            }
        }
        stage('upload docker') {
            steps {
		sh "./upload_docker.sh"
            }
        }
        stage('updating kubernetes') {
            steps {
		sh "./update_kubernetes.sh"
            }
        }
    }
}
