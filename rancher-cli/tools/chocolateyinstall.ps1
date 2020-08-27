$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/rancher/cli/releases/download/v2.4.6/rancher-windows-386-v2.4.6.zip'
$url64      = 'https://github.com/rancher/cli/releases/download/v2.4.6/rancher-windows-amd64-v2.4.6.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'rancher-cli*'
  checksum      = '28cb8f592977c5a28df0966112d14f787d3ccd3720f39583f1d4509cd124f4cc'
  checksumType  = 'sha256'
  checksum64    = 'c6653495cfdb5d4aaa5754a9d14d4294c3c2f18bd9f095e965f0480b65a2ada2'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
