param(
    [Parameter(Mandatory=$true)][string]$configuration
)


function main()
{
    Start-Sleep -s 10
    $currDir = CurrentDirectory;
    $pathToSolution = (Resolve-Path ([io.path]::Combine($currDir, "..\JenkinsPipeline.sln"))).Path

    $arg1 = "/property:Configuration=$configuration;Platform=Any CPU"
    $arg2 = "/t:Rebuild"

    & "C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe" $arg1 $arg2 $pathToSolution | out-host
}

function CurrentDirectory()
{
    return (Get-Item -Path ".\" -Verbose).FullName
}

main;
