pipeline {
    agent any

    stages {
        stage('install') {
            steps {
                echo 'maven install...'
                dir('GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn clean install'
                    }
                }
            }
        }

        stage('test') {
            steps {
                echo 'maven test...'
                dir('GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn test'
                    }
                }
            }
        }

        stage('deploy') {
            steps {
                echo 'maven deploay...'
                dir('GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn deploy'
                    }
                }
                echo 'Done!'
            }
        }
    }
}
