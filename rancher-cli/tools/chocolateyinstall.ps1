$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/rancher/cli/releases/download/v2.4.7/rancher-windows-386-v2.4.7.zip'
$url64      = 'https://github.com/rancher/cli/releases/download/v2.4.7/rancher-windows-amd64-v2.4.7.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'rancher-cli*'
  checksum      = '0a60da05d00129307e81af0cd4106c475359075039be0df6533e8e0ae070794c'
  checksumType  = 'sha256'
  checksum64    = '022105a37f5cf26e4939b52bfec7d4ff8d70a01d8e525a9bece9d5811f013730'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
