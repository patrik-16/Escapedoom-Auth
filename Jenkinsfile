pipeline {
    agent any

    stages {
        stage('install GameSession') {
            steps {
                echo 'GameSession maven install...'
                dir('GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn clean install'
                    }
                }
            }
        }

        stage('test GameSession') {
            steps {
                echo 'GameSession maven test...'
                dir('GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn test'
                    }
                }
            }
        }

                stage('install LectorPortal') {
            steps {
                echo 'LectorPortal maven install...'
                dir('LectorPortal') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn clean install'
                    }
                }
            }
        }

        stage('test LectorPortal') {
            steps {
                echo 'LectorPortal maven test...'
                dir('LectorPortal') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn test'
                    }
                }
            }
        }

        stage('deploy') {
            steps {
                echo 'maven deploay...'

                echo 'Done!'
            }
        }
    }
}
