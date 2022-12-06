#!/bin/bash
#PASA Global VER.5032.1109 Windows Client@ver.5032.1109
#==============================================
echo "PasaOS Web3.0 Operation                                           DockerNode:[$1]"
echo  "################################################################################"
#echo "+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+"
echo " "
#echo "NodeNetwork ID:"

urlhead="http://"
cyberip=`sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1`
port=":8668"
api1="/pasa/doshell="
#cmd=$2
api2="&id="
#id=$3
api3="&ctlk="
#ctlk=$4
api4="&service="
#service=$5
api5="&devicenum="
#devicenum=$6
echo "#IP:$cyberip"
address=${urlhead}${cyberip}${port}${api1}$2${api2}$3${api3}$4${api4}$5${api5}$6
#echo "#CyberAPI:$address"
echo " "
echo " "
echo  "DockerPasa Excute Result:                                                [Docker :$1  ]"
if [[ ${cyberip}=="" ]]; then
   echo " "
   echo "NO DOCKER OR NO PASA RUNING IN DOCKER!    GET DOCKER IP FAIL!   INSTALL DOCKER FIRST! "
fi
curl ${address}
echo " "
echo "DockerNode:[$1] IP:[${cyberip}] Done!"
echo ""

#echo "_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_"
#echo "====================================================================================="
