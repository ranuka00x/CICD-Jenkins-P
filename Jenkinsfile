pipeline {
    agent any
    tools {
        nodejs 'NodeJs'
    }
    environment {
        DOCKER_HUB_REPO = 'kadawara/nodecicd'
        DOCKER_HUB_CRED = 'jemkis2'

    }
    stages {
        stage('Checkout Github') {
            steps {
                git branch: 'main', 
                    credentialsId: 'GitOps-token-GitHub', 
                    url: 'https://github.com/ranuka00x/CICD-Jenkins-P.git'
            }
        }

        stage('Install Node Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'building docker image...'
                    docker.build("${DOCKER_HUB_REPO}:lts")
                    
                }
            }
        }

        stage('Trivy Scan') {
            steps {
               sh 'trivy --severity HIGH,CRITICAL --no-progress image --format table -o trivy-scan-report.txt ${DOCKER_HUB_REPO}:lts'
            }
        }

        stage('Push Image to DockerHub') {
            steps {
                script {
                    echo 'pushing docker image to DockerHub...'
                    docker.withRegistry('https://registry.hub.docker.com', "${DOCKER_HUB_CRED}") {
                        docker.image("${DOCKER_HUB_REPO}:lts").push('latest')
                    }
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
