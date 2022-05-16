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
        }
        stage("Download and extract source") {
              sh 'docker compose exec server sh -c "whoami"'
              sh 'docker compose exec server sh -c "wget https://github.com/richardforth/csv2table/blob/main/csv2table-0.1.tar.gz?raw=true"'
              sh 'docker compose exec server sh -c "tar -xzvf csv2table-0.1.tar.gz"'
        }
        stage("Compile Source") {
             sh 'docker compose exec server sh -c "make; make install; ./configure"'
        }
        stage("Run Tests") {
            sh 'docker compose exec server sh -c "echo -e \"Example CSV Data for conversion\n1,2,3,4,5\n6,7,8,9,10\" | csv2table'
        }
    }
    post { 
        always { 
            sh 'docker compose down --remove-orphans -v' 
            sh 'docker compose ps' 
        }
    }
        
}
