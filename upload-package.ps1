param (
	[Parameter(Mandatory=$true)] [string] $quamotionAPIKey,
	[Parameter(Mandatory=$true)] [string] $version,
	[string] $nuspecPath = "project.nuspec")

nuget pack -BasePath $PSScriptRoot $nuspecPath -Version "$version"

Login-QuamotionCloud -apiKey $quamotionAPIKey

$nupkgFile = Get-ChildItem $PSScriptRoot -Filter "*$version.nupkg"
if($nupkgFile)
{
	Write-Host "Uploading $nupkgFile"
	$response = Upload-TestPackage -path ($nupkgFile.FullName)
	Write-Host $response
}
else
{
	throw "package for $packageId not found"
}