pipeline {
    agent any

    stages {
        stage('install GameSession') {
            steps {
                echo 'GameSession maven install...'
                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f GameSession/pom.xml clean install'
                }
            }
        }

        stage('test GameSession') {
            steps {
                echo 'GameSession maven test...'

                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f GameSession/pom.xml clean test'
                }
            }
        }

        stage('install LectorPotral') {
            steps {
                echo 'LectorPotral maven install...'

                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f LectorPotral/pom.xml clean install'
                }
            }
        }

        stage('test LectorPotral') {
            steps {
                echo 'LectorPotral maven test...'
                withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'Maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn -f LectorPotral/pom.xml clean test'
                }
            }
        }

        stage('deploy') {
            steps {
                echo 'maven deploy...'

                sh 'chmod +x ./deployz1.sh'
                sh 'chmod +x ./deployz2.sh'

                sh './deployz1.sh'
                script {
                    sleep 5
                }

                sh './deployz2.sh &'
                script {
                    sleep 120
                }
                echo 'Done!'
            }
        }
    }
}
