def pscmd = { String cmd ->
	"powershell -NoProfile -ExecutionPolicy Bypass -Command \"${cmd}\""
}

node
{
	stage("Building")
	{
		parallel release:
		{
			stage("Release")
			{
				node ()
				{
					checkout scm
					bat(pscmd(".\\build\\build.ps1 Release"))
				}
			}
		},
		debug:
		{
			stage ("Debug")
			{
				node ()
				{
					checkout scm
					bat(pscmd(".\\build\\build.ps1 Debug"))
				}
			}
		}
	} 
}	