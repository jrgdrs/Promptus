gftools builder sources/config.yaml  

echo '-- create png preview images'

python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-ExtraLight.ttf --output documentation/image-ExtraLight.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Light.ttf --output documentation/image-Light.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Regular.ttf --output documentation/image-Regular.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-SemiBold.ttf --output documentation/image-SemiBold.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Bold.ttf --output documentation/image-Bold.png
python3 documentation/imageTTF.py --ttf fonts/ttf/Promptus-Black.ttf --output documentation/image-Black.png

echo '-- create pdfs for tests'

for i in ExtraLight Black; do 
  node print.js qa/Glyphs.html fonts/ttf/Promptus-$i.ttf qa/1-Glyphs-$i.pdf
  node print.js qa/Spacing.html fonts/ttf/Promptus-$i.ttf qa/2-Spacing-$i.pdf
  node print.js qa/Kerning.html fonts/ttf/Promptus-$i.ttf qa/3-Kerning-$i.pdf
  node print.js qa/Frequency.html fonts/ttf/Promptus-$i.ttf qa/4-Frequency-$i.pdf
  node print.js qa/Kafka.html fonts/ttf/Promptus-$i.ttf qa/5-Kafka-$i.pdf
  node print.js qa/News.html fonts/ttf/Promptus-$i.ttf qa/6-News-$i.pdf
  node print.js qa/Diacritics.html fonts/ttf/Promptus-$i.ttf qa/7-Diacritics-$i.pdf
done

echo '-- create specimen for documentation'

node print.js documentation/Specimen.html
node print.js documentation/Woolf.html
