git clone https://github.com/marcelotournier/case-report-dataset.git
rm -rf .git
cd case-report-dataset/
zip -s 0 data.zip --out all_files.zip
unzip all_files.zip
# Verify the files downloaded to the Articles Folder
cd articles
ls -l | wc -l
# No of Files - 284918
# Verify a sample XML File 
cat article_0000284915.xml
