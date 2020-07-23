$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/rancher/cli/releases/download/v2.4.5/rancher-windows-386-v2.4.5.zip'
$url64      = 'https://github.com/rancher/cli/releases/download/v2.4.5/rancher-windows-amd64-v2.4.5.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'rancher-cli*'
  checksum      = 'a1cc177708553221329a5caf5e5807f7d8fa04df7ebdf3111a044c29105f4b1c'
  checksumType  = 'sha256'
  checksum64    = 'cb1548e02c92cfb9f0c88b8682a47f9d4908a06f1c72dab7b6edd359eec5fd2f'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs