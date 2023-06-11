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
                echo pwd()
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
                echo pwd()
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
                echo pwd()
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
                echo pwd()
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
