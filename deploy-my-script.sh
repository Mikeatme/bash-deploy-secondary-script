#!/bin/bash

# Deploy target-script.sh to host 

# Change the following variables
filePath=/opt/scripts/
fileName=target-script.sh


# Check if target-script exists and set it up
if [[ -d $filePath ]] ;  then                   # if path exists
    if [[ -f $filePath$fileName ]] ; then       # if file exists
        /usr/bin/echo "$filePath$fileName already exists. Bye"
    else                                        # in case file does not exist but path does, print everything until EOF to file
        /usr/bin/cat << EOF > $filePath$fileName
        #!/bin/bash
        # Your script goes her
        # Just paste it land replace these comments.
        # Make sure to keep the shebang (#!/bin/bash).
        # The command cat reads everthing in here
        # until the marker and writes it into the target file.
        # So make sure to finish this block with with a 
        # uncommented EOF that has no leading and no trailing spaces!!!
EOF
        /usr/bin/chmod 700 $filePath$fileName   # Make the file executable
        /usr/bin/echo "Finished setting up $filePath$fileName"
    fi
else
    /usr/bin/echo "Error: $filePath does not exist! Aborting."
fi