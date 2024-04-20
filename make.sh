gftools builder sources/config.yaml  

python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Light.ttf --output documentation/image-Light.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Regular.ttf --output documentation/image-Regular.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-SemiBold.ttf --output documentation/image-SemiBold.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Black.ttf --output documentation/image-Black.png

node print.js /documentation/Specimen.html

node print.js /documentation/Etik.html
node print.js /documentation/Brentano.html
node print.js /documentation/Woolf.html
node print.js /documentation/Dumas.html
node print.js /documentation/Adamson.html
node print.js /documentation/Endrődi.html