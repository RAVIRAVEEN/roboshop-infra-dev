pipeline{
    agent{
        node{
               label' agent-1'  
        }
    }
    options{
         ansiColor('xterm')
         timeout(time: 1, unit: 'HOURS')
        disableConcurrentBuilds()
    }
   
    stages{
        stage( 'vpc') {
            steps {
                   sh """ 
                   cd 01-vpc 
                   terraform init -reconfigure
                   terraform plan
                   """
            }
        }

        stage( 'SG') {
            steps {
                   sh """ 
                   cd 02-sg
                   terraform init -reconfigure
                   terraform plan
                   """
            }
        }

        stage( 'VPN') {
            steps {
                   sh """ 
                   cd 03-vpn
                   terraform init -reconfigure
                   terraform plan
                   """
            }
        }
           stage('DB ALB') {
            parallel {
                stage('DB') {
                    steps {
                          sh """ 
                            cd 04-databases
                            terraform init -reconfigure
                            terraform plan
                            """
                        }
                    }
                stage('ALB') {
                    steps {
                             sh """ 
                                cd 05-app_alb
                                terraform init -reconfigure
                                terraform plan
                                 """
                    }
                }
            }
        }
        
    }
    post{
        always {
            echo " hello im using pipeline say again hello!"
        }
        failure {
            echo " whenerver pipeline gets error send me alerts"
        }
        success {
            echo ' I will always say Hello when pipeline is success '
        }
   }
}
