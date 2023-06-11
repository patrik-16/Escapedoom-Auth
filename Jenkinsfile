pipeline {
    agent any

    stages {
        stage('install GameSession') {
            steps {
                echo 'GameSession maven install...'

                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f /GameSession/pom.xml clean install'
                }
                echo pwd()
            }
        }

        stage('test GameSession') {
            steps {
                echo 'GameSession maven test...'

                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f /GameSession/pom.xml clean test'
                }
                echo pwd()
            }
        }

        stage('install LectorPortal') {
            steps {
                echo 'LectorPortal maven install...'

                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f /LectorPortal/pom.xml clean install'
                }
                echo pwd()
            }
        }

        stage('test LectorPortal') {
            steps {
                echo 'LectorPortal maven test...'

                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f /LectorPortal/pom.xml clean test'
                }
                echo pwd()
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
