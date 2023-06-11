pipeline {
    agent any

    stages {
        stage('install GameSession') {
            steps {
                echo 'GameSession maven install...'
                dir("GameSession") {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn - f /pipeline-test-1/GameSession/pom.xml clean install'
                    }
                echo pwd()
                }
            }
        }

        stage('test GameSession') {
            steps {
                echo 'GameSession maven test...'
                dir("GameSession") {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn - f /pipeline-test-1/GameSession/pom.xml clean test'
                    }
                echo pwd()
                }
            }
        }

        stage('install LectorPortal') {
            steps {
                echo 'LectorPortal maven install...'
                dir("..") {
                    dir("LectorPortal") {
                        withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                            sh 'mvn - f /pipeline-test-1/LectorPortal/pom.xml clean install'
                        }
                    echo pwd()
                    }
                echo pwd()
                }
            }
        }

        stage('test LectorPortal') {
            steps {
                echo 'LectorPortal maven test...'
                dir("LectorPortal") {
                    withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                        sh 'mvn - f /pipeline-test-1/LectorPortal/pom.xml clean test'
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
