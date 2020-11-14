#!groovy

pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'main',
                    credentialsId: '224ba45f-4de5-40e2-8c6d-2d33740cc6f2',
                    url: 'ssh://git@github.com/asaf7011/vmission.git'
               
                sh "ls -ltr"
            }
        }

        stage('Execute Whats_going_on script') {
            steps {
                sh "./whats_going_on.sh"
                sh "cat ~/output.json"
            }
        }
        
        stage('Ansible Deploy') {
            steps {
                sh "ansible-playbook setup.yml --user user --key-file ~/.ssh/id_rsa --extra-vars password=abcd1234"
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'output.json', onlyIfSuccessful: false
            }
        }
}
