$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/rancher/cli/releases/download/v2.4.14/rancher-windows-386-v2.4.14.zip'
$url64      = 'https://github.com/rancher/cli/releases/download/v2.4.14/rancher-windows-amd64-v2.4.14.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'rancher-cli*'
  checksum      = '5f6582679ad7461852e780502301e2c90db8de7f9425ff8a985ca6757ed24c97'
  checksumType  = 'sha256'
  checksum64    = 'ddb822795fcad84762262cd49611a6dcb8539cf12a1e01d80040ab5d37f712e4'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
