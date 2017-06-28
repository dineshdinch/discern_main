node {
	ws('E:/Jenkins/main/discern_main') {
		stage "Initialization Process"
			echo "Pipeline Initiated for Dicern Main"
		stage "Git Checkout"
			git url: "https://github.com/dineshdinch/discern_main.git"
		stage "Generating JUnit Reports"
			try {
				bat "ant report"
				echo "Coming into try for success build"
				currentBuild.result = 'SUCCESS'
			} catch(any) {
				echo "Coming into catch for failure build"
				currentBuild.result = 'FAILURE'
				throw any
			} 
		stage "Compiling the Project"
			bat "ant war"
		stage "Completion Process"    
			echo "Dicern Main Pipeline Process Completed"
	}	
}