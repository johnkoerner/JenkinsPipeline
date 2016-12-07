def pscmd = { String cmd ->
	"powershell -NoProfile -ExecutionPolicy Bypass -Command \"${cmd}\""
}

node
{
	stage ("Getting code")
	{
		checkout scm
	}
	stage("Building")
	{
		stage ("Release")
		{
			node ()
			{
				bat(pscmd(".\\build\\build.ps1 Release"))
			}
		}
		stage ("Debug")
		{
			node ()
			{
				bat(pscmd(".\\build\\build.ps1 Debug"))
			}
		}
	} 
}	