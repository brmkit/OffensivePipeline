call "{{MSBUILD_PATH}}"
powershell.exe -c "get-childItem -recurse -filter *.csproj | foreach { (get-content $_.FullName) -replace '<TargetFrameworkVersion>.*</TargetFrameworkVersion>', '<TargetFrameworkVersion>v4.6</TargetFrameworkVersion>' | set-content $_.FullName }"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\msbuild.exe" "{{SOLUTION_PATH}}" {{BUILD_OPTIONS}} /p:OutputPath="{{OUTPUT_DIR}}" /p:DebugSymbols=false /p:DebugType=None /p:AssemblyName="{{OUTPUT_FILENAME}}"
