pipeline {
    agent any

    stages {
        stage('maven install') {
            steps {
                echo 'maven install...'
                dir('Escapedoom-Auth/GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn clean install'
                    }
                }
            }
        }

        stage('test') {
            steps {
                echo 'maven test...'
                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                sh 'mvn test'
                }
            }
        }

        stage('deploy') {
            steps {
                echo 'maven deploay...'
                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                sh 'mvn deploy'
                }
                echo 'Done!'
            }
        }
    }
}
