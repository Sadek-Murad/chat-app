#!/bin/bash


    
# Ausgabe der Bucket-URL
bucket_url=$(terraform output bucket_url)
echo "Der S3-Bucket wurde erfolgreich erstellt. Die URL lautet: $bucket_url"

else
    echo "Terraform-Ausführung fehlgeschlagen. Bitte überprüfen Sie die Fehlermeldungen."
fi



