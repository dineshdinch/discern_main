node {
	ws('E:/Jenkins/main/discern_main') {
		stage "Initialization Process"
			echo "Pipeline Initiated for Dicern Main"
		stage "Git Checkout"
			git url: "https://github.com/dineshdinch/discern_main.git"
		stage "Generating JUnit Reports"
			try {
				bat "ant test"
				junit 'report/TEST-*.xml'
				echo "Into try block"
			} catch(err) {
				echo "Into catch block"
				if(currentBuild.result == 'UNSTABLE') {
					currentBuild.result = 'FAILURE'
				}
			}
		stage "Compiling the Project"
			bat "ant war"
		stage "Completion Process"    
			echo "Dicern Main Pipeline Process Completed"
	}	
}