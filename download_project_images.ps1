# Create a list of project images to download
$images = @(
    @{name="sudoku.jpg"; url="https://images.unsplash.com/photo-1634128221889-82ed6efebfc3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"},
    @{name="nqueens.jpg"; url="https://images.unsplash.com/photo-1543092587-d8b8feaf3628?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"}
)

# Download each image
foreach ($image in $images) {
    $outputPath = Join-Path -Path "images" -ChildPath $image.name
    Invoke-WebRequest -Uri $image.url -OutFile $outputPath
    Write-Host "Downloaded $($image.name)"
} 