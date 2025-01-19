pipeline {
	agent any
	
	
	stages {
		stage('Checkout Github'){
			steps {
			
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
