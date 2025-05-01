# Create a list of certificate images to download
$images = @(
    @{name="cloud-cert.jpg"; url="https://images.unsplash.com/photo-1550751827-4bd374c3f58b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"},
    @{name="mern-cert.jpg"; url="https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"},
    @{name="r-cert.jpg"; url="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"}
)

# Download each image
foreach ($image in $images) {
    $outputPath = Join-Path -Path "images" -ChildPath $image.name
    Invoke-WebRequest -Uri $image.url -OutFile $outputPath
    Write-Host "Downloaded $($image.name)"
} 