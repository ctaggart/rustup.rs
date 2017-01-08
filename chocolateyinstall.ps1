$ErrorActionPreference = 'Stop';

$packageName= 'rustup-init'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://win.rustup.rs/?version=1.0.0'

# Get-FileHash ~\rustup-init.exe

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '-y'
  validExitCodes= @(0)

  softwareName  = 'rustup-init*'
  checksum      = '7AFD5E148BDF15AA9B46CB1B3B857AF1F458853287069A0C9C7ADAD541C3B54C'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
