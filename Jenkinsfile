pipeline {
    agent any

    stages {
        stage('install GameSession') {
            steps {
                echo 'GameSession maven install...'
                dir('EscapeDoom/GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn clean install'
                    }
                }
            }
        }

        stage('test GameSession') {
            steps {
                echo 'GameSession maven test...'
                dir('EscapeDoom/GameSession') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn test'
                    }
                }
            }
        }

        stage('install LectorPortal') {
            steps {
                echo 'LectorPortal maven install...'
                dir('EscapeDoom/LectorPortal') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn clean install'
                    }
                }
            }
        }

        stage('test LectorPortal') {
            steps {
                echo 'LectorPortal maven test...'
                dir('EscapeDoom/LectorPortal') {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn test'
                    }
                }
            }
        }

        stage('deploy') {
            steps {
                echo 'maven deploy...'

                echo 'Done!'
            }
        }
    }
}
