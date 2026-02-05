pipeline {
    agent any

    stages {
        // 1단계: 깃허브에서 코드 가져오기
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/A-LLLLLLive/jenkins-test.git'
            }
        }

        // 2단계: 파일 확인 (간단한 테스트 대용)
        stage('Verify Files') {
            steps {
                echo '레포지토리 파일 목록:'
                bat 'dir'
            }
        }

        // 3단계: 도커 이미지 빌드
        stage('Docker Build') {
            steps {
                echo '도커 이미지를 빌드합니다...'
                // 로컬 젠킨스 서버에 'my-test-app'이라는 이름으로 이미지 생성
                bat "docker build -t my-test-app:local ."
            }
        }

        // 4단계: 결과 확인
        stage('Check Result') {
            steps {
                echo '생성된 이미지 확인:'
                bat "docker images | grep my-test-app"
            }
        }
    }

    post {
        success {
            echo '로컬 이미지 빌드 성공!'
        }
    }

}

