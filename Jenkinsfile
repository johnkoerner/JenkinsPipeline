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
		parallel release:
		{
			node ()
			{
				bat(pscmd(".\\build\\build.ps1 Release"))
			}
		}
		debug:
		{
			node ()
			{
				bat(pscmd(".\\build\\build.ps1 Debug"))
			}
		}
	} 
}	