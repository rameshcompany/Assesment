#!/bin/bash
yamlcount=$(find /tmp/*.yaml | wc -l)
echo "yaml file count is: $yamlcount"
if [ $yamlcount -gt 8 ];then

   echo "yaml files are greter than 8"
   sudo tar -zcvf /yaml.tar /tmp/*.yaml
   
else [ $yamlcount -lt 8 ];then

      sudo rm -rf /tmp/*.yaml
      jsonfile=$(find /tmp/*.json | wc -l)
      
fi

if [ $yamlcount -lt 8 && $jsonfile -lt 10];then
    sudo mv /tmp/*.json /tmp/*.yaml
fi
   
