create(){
read -p "Digite o nome do Arquivo()" file
touch "${file}.txt"

}

#read(){

#}

update(){
read -p "Qual arquivo você deseja editar ?(sem txt)" file
if [[ -f "${file}.txt" ]]; then
	read -p "Digite o conteúdo do Arquivo!" conteudo
	echo "${conteudo}" > "${file}".txt
else
	echo "O arquivo ${file}txt não existe"
fi
}

#delete(){

#}

#while

#done
create
update
