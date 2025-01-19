pipeline {
    agent any

    stages {
        stage('Checkout Github') {
            steps {
                git branch: 'main', 
                    credentialsId: 'GitOps-token-GitHub', 
                    url: 'https://github.com/iQuantC/Jenkins-ArgoCD-GitOps.git'
            }
        }

        stage('Install Node Dependencies') {
            steps {
                sh '''
                echo 'npm install'
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'building docker image...'
                }
            }
        }

        stage('Trivy Scan') {
            steps {
                sh '''
                echo 'scanning docker image with Trivy...'
                '''
            }
        }

        stage('Push Image to DockerHub') {
            steps {
                script {
                    echo 'pushing docker image to DockerHub...'
                }
            }
        }

        stage('Install Kubectl & ArgoCD CLI') {
            steps {
                sh '''
                echo 'installing Kubectl & ArgoCD cli...'
                '''
            }
        }

        stage('Apply Kubernetes Manifests & Sync App with ArgoCD') {
            steps {
                script {
                    sh '''
                    echo 'applying kubernetes manifests...'
                    '''
                }
            }
        }
    }

    post {
        success {
            echo 'Build & Deploy completed successfully!'
        }
        failure {
            echo 'Build & Deploy failed. Check logs.'
        }
    }
}
