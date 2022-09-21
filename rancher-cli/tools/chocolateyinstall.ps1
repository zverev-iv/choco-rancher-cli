$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/rancher/cli/releases/download/v2.6.7/rancher-windows-386-v2.6.7.zip'
$url64      = 'https://github.com/rancher/cli/releases/download/v2.6.7/rancher-windows-amd64-v2.6.7.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'rancher-cli*'
  checksum      = 'f91f2e13e9133bd4b9b5649dfbda2400fcb9663e75fa0ebf351c3db7875166c6'
  checksumType  = 'sha256'
  checksum64    = 'c4df2febe5080b9a5800b582940a34dafc587f5ede7e07bb323c1fc684db7663'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
