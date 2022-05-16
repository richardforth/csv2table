pipeline {
  agent { label 'docker' }
    
    stages {
        stage("Prune Docker Data") {
            steps {
                sh 'docker system prune -a --volumes -f'
            }
        }
        stage("Start Docker Container") {
              steps {
                sh 'docker compose up --no-color -d'
                sh 'docker compose ps'
            }
    post { 
        always { 
            sh 'docker compose down --remove-orphans -v' 
            sh 'docker compose ps' 
        }
    }
        
}
