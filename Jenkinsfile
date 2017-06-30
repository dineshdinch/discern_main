node {
	ws('E:/Jenkins/main/discern_main') {
		stage "Initialization Process"
			echo "Pipeline Initiated for Dicern Main"
		stage "Git Checkout"
			git url: "https://github.com/dineshdinch/discern_main.git"
		stage "Generating JUnit Reports"
			try {
				bat "ant test-report"
				echo "Into try block"
			} catch(err) {
				echo "Into catch block"
				throw err
			}
		stage "Compiling the Project"
			bat "ant war"
		stage "Deploying the Project in Tomcat server"
			bat "deploy_batch.bat" 
		stage "Applying Code Check Pluigns"
			bat "ant code-report"	
		stage "Completion Process"    
			echo "Discern Main Pipeline Process Completed"
	}	
}