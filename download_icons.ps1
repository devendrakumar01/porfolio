# Create a list of icons to download
$icons = @(
    @{name="html5.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg"},
    @{name="css3.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg"},
    @{name="javascript.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg"},
    @{name="react.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/react/react-original.svg"},
    @{name="r-language.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/r/r-original.svg"},
    @{name="tableau.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/tableau/tableau-original.svg"},
    @{name="powerbi.png"; url="https://raw.githubusercontent.com/microsoft/PowerBI-Icons/main/SVG/Power-BI.svg"},
    @{name="numpy.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/numpy/numpy-original.svg"},
    @{name="pandas.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/pandas/pandas-original.svg"},
    @{name="python.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg"},
    @{name="android.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/android/android-original.svg"},
    @{name="flutter.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/flutter/flutter-original.svg"},
    @{name="kotlin.png"; url="https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg"}
)

# Download each icon
foreach ($icon in $icons) {
    $outputPath = Join-Path -Path "images" -ChildPath $icon.name
    Invoke-WebRequest -Uri $icon.url -OutFile $outputPath
    Write-Host "Downloaded $($icon.name)"
} 