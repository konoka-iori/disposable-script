$files = Get-ChildItem -Path (Get-Location) -Filter *.mp4
foreach ($file in $files) {
    $output = $file.FullName.Replace(".mp4", ".mp3")
    ffmpeg -i $file.FullName -vn $output
    Remove-Item $file.FullName -Force
}