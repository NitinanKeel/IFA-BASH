




rootDir=$1
dirCount=0

while (( $2  > dirCount ))
do
    ((dirCount++))
    mkdir -p ${rootDir}/Block${dirCount}/{aufgaben,loesungen}
done

