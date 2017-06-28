node {
	ws('E:/Jenkins/libs') {
		stage "Fetching libs"
			git url: "https://github.com/dineshdinch/libs.git"
		stage "Fetching process complete"
			echo "Fetched recent libs"
	}
	ws('E:/Jenkins/main/discern_main') {
		stage "Initialization Process"
			echo "Pipeline Initiated for Dicern Main"
		stage "Git Checkout"
			git url: "https://github.com/dineshdinch/discern_main.git"
		stage "Compiling the Project"
			bat "ant war"
		stage "Completion Process"    
			echo "Dicern Main Pipeline Process Completed"
	}	
}