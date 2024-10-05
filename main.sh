create(){
read -p "Digite o nome do Arquivo()" file
touch "${file}.txt"

}

Read(){ 
read -p "Qual o Arquivo você Deseja ler (sem txt)" file
if [[ -f "${file}.txt" ]]; then
    echo "Conteudo do Arquivo ${file}.txt"
    cat "${file}.txt"
else
	echo "O arquivo ${file}.txt não existe"
fi

}

update(){
read -p "Qual arquivo você deseja editar ?(sem txt)" file
if [[ -f "${file}.txt" ]]; then
	read -p "Digite o conteúdo do Arquivo!" conteudo
	echo "${conteudo}" > "${file}".txt
else
	echo "O arquivo ${file}txt não existe"
fi
}

delete(){
    read -p "Qual o Arquivo você Deseja deletar (sem txt)" file
    if [[ -f "${file}.txt" ]]; then
        rm -rf "${file}.txt"
    else
        echo "O arquivo ${file}.txt não existe"
    fi

}

list_file(){
     echo "Arquivos Disponiveis"
     ls *.txt 2> /dev/null
     if [[ $? -ne 0 ]]; then
    echo "Nenhum Arquivo encontrado"
    fi
}

while true; do

    echo "Escolha uma das opções abaixo:"
    echo "1) Criar arquivo"
    echo "2) Atualizar o conteúdo do arquivo"
    echo "3) Ler Conteúdo do arquivo"
    echo "4) Deletar arquivo"
    echo "5) listar arquivos"
    echo "6) Sair"
    read -p "Opção: " option


    case $option in
        1) create ;;
        2) update ;;
        3) Read ;;
        4) delete ;;
        5) list_file ;;
        6) echo "Saindo..."; exit 0;;
        *) echo "Opção invalida tente novamente" ;;
    esac

done