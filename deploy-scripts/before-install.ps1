function DeleteIfExistsAndCreateEmptyFolder($dir )
{
    if ( Test-Path $dir ) {    
           Get-ChildItem -Path  $dir -Force -Recurse | Remove-Item -force -recurse
           Remove-Item $dir -Force
    }
    New-Item -ItemType Directory -Force -Path $dir
}
DeleteIfExistsAndCreateEmptyFolder("C:\temp\TestAPIProject\out" )
DeleteIfExistsAndCreateEmptyFolder("C:\inetpub\wwwroot\TestAPI\")