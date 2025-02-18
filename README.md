# Assembly-en-x86-64

# Repositorio de Assembly x86_64 en Linux

Este repositorio servirá para documentar lo aprendido sobre **Assembly de 64 bits** en un entorno Linux, utilizando el ensamblador **NASM (Netwide Assembler)**. Aquí se incluirán ejemplos con scripts relacionados con la programación en lenguaje ensamblador.

## Instalación de NASM en Linux

Para ensamblar y ejecutar código en Assembly, es necesario instalar NASM y el enlazador **ld** de GNU.

### **1. Instalar NASM**
En la mayoría de las distribuciones Linux, NASM se encuentra en los repositorios oficiales.

#### **Debian / Ubuntu**
```bash
sudo apt update && sudo apt install nasm -y
```

#### **Arch Linux**
```bash
sudo pacman -S nasm
```

#### **Fedora**
```bash
sudo dnf install nasm
```

#### **OpenSUSE**
```bash
sudo zypper install nasm
```

Para verificar que la instalación fue exitosa, ejecuta:
```bash
nasm -v
```
Debería mostrar la versión instalada de NASM.

### **2. Compilar y Ejecutar un Programa en Assembly**

#### **Pasos para compilar y ejecutar**
```bash
nasm -f elf64 programa.asm -o programa.o
ld programa.o -o programa
./programa
```
