call "{{MSBUILD_PATH}}"
powershell.exe ..\..\Resources\retarget_framework.ps1
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\msbuild.exe" "{{SOLUTION_PATH}}" {{BUILD_OPTIONS}} /p:OutputPath="{{OUTPUT_DIR}}" /p:DebugSymbols=false /p:DebugType=None /p:AssemblyName="{{OUTPUT_FILENAME}}"
