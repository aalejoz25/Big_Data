#!/bin/bash

# Script para compilar el informe LaTeX actualizado
# Uso: ./compile_report.sh

echo "🔄 Compilando informe LaTeX completo..."

# Compilar el nuevo documento LaTeX actualizado
pdflatex informe_taller_2.tex
echo "📚 Procesando referencias bibliográficas..."
bibtex informe_taller_2
pdflatex informe_taller_2.tex
pdflatex informe_taller_2.tex

# Limpiar archivos temporales
echo "🧹 Limpiando archivos temporales..."
rm -f *.aux *.log *.toc *.out *.bbl *.blg *.fdb_latexmk *.fls

echo "✅ Compilación completada: informe_taller_2.pdf"

# Mostrar información del archivo generado
if [ -f informe_taller_2.pdf ]; then
    echo "📄 Documento generado:"
    ls -lh informe_taller_2.pdf
    echo "📊 Número de páginas: $(pdfinfo informe_taller_2.pdf 2>/dev/null | grep Pages | awk '{print $2}')"
fi

# Abrir el PDF si el sistema lo permite
if command -v xdg-open &> /dev/null; then
    echo "📖 Abriendo PDF..."
    xdg-open informe_taller_2.pdf &
elif command -v open &> /dev/null; then
    echo "📖 Abriendo PDF..."
    open informe_taller_2.pdf &
fi