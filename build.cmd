setlocal
call %~dp0..\vc_setup.cmd
pushd %~dp0project
title Building GridCtrl Debug
msbuild /m GridCtrl.sln -p:Configuration=Debug
title Building GridCtrl Release
msbuild /m GridCtrl.sln -p:Configuration=Release
title Done building GridCtrl
cd ..
NuGet.exe pack GridCtrl.nuspec -OutputDirectory %PACKAGES%\nuget_packages
popd
endlocal
