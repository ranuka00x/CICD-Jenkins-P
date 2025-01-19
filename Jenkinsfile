pipeline {
	agent any
	tools {
		nodejs 'NodeJS'
	}
	environment {
		DOCKER_HUB_REPO = 'iquantc/iquant-app'
		DOCKER_HUB_CREDENTIALS_ID = 'gitops-dockerhub'
	}
	stages {
		stage('Checkout Github'){
			steps {
			git branch: 'main', credentialsId: 'GitOps', url: 'https://github.com/ranuka00x/CICD-Jenkins-P.git'
			}
		}		
		stage('Install node dependencies'){
			steps {
				
			}
		}
		stage('Build Docker Image'){
			steps {
				
				}
			}
		}
		stage('Trivy Scan'){
			steps {
				
			}
		}
		stage('Push Image to DockerHub'){
			steps {
				
				}
			}
		stage('Install Kubectl & ArgoCD CLI'){
			steps {
				
			}
		}
		stage('Apply Kubernetes Manifests & Sync App with ArgoCD'){
			steps {
				
			}
		}
	}

	post {
		success {
			echo 'Build & Deploy completed succesfully!'
		}
		failure {
			echo 'Build & Deploy failed. Check logs.'
		}
	}
}
