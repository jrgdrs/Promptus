gftools builder sources/config.yaml  

echo '-- PNG Previews'
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-ExtraLight.ttf --output documentation/image-ExtraLight.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Light.ttf --output documentation/image-Light.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Regular.ttf --output documentation/image-Regular.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-SemiBold.ttf --output documentation/image-SemiBold.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Bold.ttf --output documentation/image-Bold.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Black.ttf --output documentation/image-Black.png

echo '-- PDF Samples'
node print.js /documentation/Specimen.html
node print.js /documentation/Woolf.html
