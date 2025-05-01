# Create a list of soft skills icons to download
$icons = @(
    @{name="communication.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/communication/communication-original.svg"},
    @{name="teamwork.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/teamwork/teamwork-original.svg"},
    @{name="time-management.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/time-management/time-management-original.svg"},
    @{name="problem-solving.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/problem-solving/problem-solving-original.svg"},
    @{name="leadership.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/leadership/leadership-original.svg"},
    @{name="adaptability.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/adaptability/adaptability-original.svg"}
)

# Download each icon
foreach ($icon in $icons) {
    $outputPath = Join-Path -Path "images" -ChildPath $icon.name
    Invoke-WebRequest -Uri $icon.url -OutFile $outputPath
    Write-Host "Downloaded $($icon.name)"
} 