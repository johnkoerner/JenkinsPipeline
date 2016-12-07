def pscmd = { String cmd ->
	"powershell -NoProfile -ExecutionPolicy Bypass -Command \"${cmd}\""
}

node
{
	stage("Building")
	{
		parallel release:
		{
			node ()
			{
				checkout scm
				bat(pscmd(".\\build\\build.ps1 Release"))
			}
		}
		debug:
		{
			node ()
			{
				checkout scm
				bat(pscmd(".\\build\\build.ps1 Debug"))
			}
		}
	} 
}	