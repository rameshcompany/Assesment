#!/bin/bash
yamlfilecount=$(find /tmp/*.yaml | wc -l)
echo "yaml file count is: $yamlfilecount"
if [ $yamlfilecount -gt 8 ];then

   echo "yaml files are greter than 8"
   sudo tar -zcvf /yaml.tar /tmp/*.yaml
   
else [ $yamlfilecount -lt 8 ];then

      sudo rm -rf /tmp/*.yaml
      jsonfilecount=$(find /tmp/*.json | wc -l)
      
fi

if [ $yamlfilecount -lt 8 && $jsonfilecount -lt 10];then
    sudo mv /tmp/*.json /tmp/*.yaml
fi
   
