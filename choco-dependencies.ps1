foreach ($nuspec in (Get-ChildItem C:\ProgramData\chocolatey\lib -Recurse "*.nuspec")) {
    $metadata = ([xml](Get-Content $nuspec.Fullname)).package.metadata
    foreach ($dependency in $metadata.dependencies.dependency) { 
        [PSCustomObject] @{
            package = $metadata.id
            version = $metadata.version
            dependson = $dependency.id
            dependencyversion = $dependency.version
        }
    }
}