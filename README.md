SFX for 7Zip self extractor

Compilation
1) run VS Developer Console
2) find "vcvars64.bat" in your VS installation path and run the script
3) go to .\CPP\7zip\Bundles\SFXSetup\
4) run "nmake NEW_COMPILER=1 CPU=AMD64 MY_STATIC_LINK=1"