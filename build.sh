#!/bin/bash

if ! [ -x .env ]; then
    virtualenv --python=python3 .env
    . ./.env/bin/activate
    pip3 install markdown WeasyPrint pyyaml
else
    . ./.env/bin/activate
fi

echo "CREATING PDFs"
echo "============="

# create guides
python3 scripts/build.py



echo "CONCATENATING PDFs"
echo "=================="

if ! docker ps | grep libreoffice > /dev/null; then
    if ! docker ps -a | grep libreoffice > /dev/null; then
        echo "creating docker container"
        docker_hash=$(docker run -d --name libreoffice -p 8100:8100 hdejager/libreoffice-api)
        
    else
        docker start libreoffice
    fi
fi
docker_hash=libreoffice
echo "ODP-conversion"
cd content
for dir in $(ls -d */); do
    cd $dir
    echo "--> Processing ${dir}"
    if ! ls *.odp 2> /dev/null ; then
        echo "  --> No slides found, skipping"
        cd ..
        continue
    fi
    for file in $(ls *.odp 2> /dev/null); do
        plain_name=$(basename $file .odp)
        echo "--> Converting ${file}"
        echo "  --> copy $file to container"
        docker cp $file libreoffice:/tmp/${file}
        echo "  --> converting"
        docker exec -ti libreoffice \
            unoconv \
            --connection 'socket,host=127.0.0.1,port=8100,tcpNoDelay=1;urp;StarOffice.ComponentContext' \
            -f pdf /tmp/${file}
        echo "  --> copy ${plain_name}.pdf from container"
        docker cp libreoffice:/tmp/${plain_name}.pdf .
    done
    big_pdf_filename=$(basename $dir).pdf
    echo "--> concat *.pdf to one ../../build/${big_pdf_filename}"
    pdfunite *.pdf ../../build/${big_pdf_filename}
    echo "--> Removing *.pdf"
    rm *.pdf
    cd ..
done