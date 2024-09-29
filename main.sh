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

while true; do

    echo "Escolha uma das opções abaixo:"
    echo "1) Criar arquivo"
    echo "2) Atualizar o conteúdo do arquivo"
    echo "3) Sair"
    read -p "Opção: " option


    case $option in
        1) create ;;
        2) update ;;
        3) echo "Saindo..."; exit 0;;
    esac

done