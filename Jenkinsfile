pipeline{
    agent{
        label 'java_build'
    }
    stages{
        stage('GetSourceCode') {
            steps{
                git branch: 'main', url: 'https://github.com/rtn136/c_builld.git'
            }
        }

        stage('CheckRequiredFiles') {
            steps{
                sh '''
                echo "PWD: $(pwd)"
                if [ -f main.c ] && [ -f makefile ];then
                echo "Required files exists"
                else
                echo "Required files does not exist"
                exit 1
                fi
             '''
           }
        }

        stage('Build') {
            steps{
                sh '''
                    make clean
                    make
                '''
            }
        }
        stage('Test'){
            steps{
                sh '''
                    echo "Testing started"
                    sleep 10
                    echo "Testing completed"
                '''
            }
        }
        stage('SaveArtifacts'){
            steps{
                sh 'scp -v -o StrictHostKeyChecking=no app.exe ubuntu@172.31.10.171:/home/ubuntu/c_artifacts/ABC_$(date +%d_%m_%Y_%H_%M_%S).exe'
            }
        }
    }
}