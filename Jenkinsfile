def pscmd = { String cmd ->
	"powershell -NoProfile -ExecutionPolicy Bypass -Command \"${cmd}\""
}

node
{
	stage "Getting code"
	checkout scm
	stage "Building"
	bat(pscmd(".\build\build.ps1"))
	stage "Done" 
}	