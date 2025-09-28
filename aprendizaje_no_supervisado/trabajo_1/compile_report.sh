#!/bin/bash

# Script para compilar el informe LaTeX
# Uso: ./compile_report.sh

echo "🔄 Compilando informe LaTeX..."

# Compilar LaTeX (ejecutar múltiples veces para referencias cruzadas)
pdflatex informe_clustering.tex
bibtex informe_clustering.aux 2>/dev/null || echo "No se encontraron referencias BibTeX"
pdflatex informe_clustering.tex
pdflatex informe_clustering.tex

# Limpiar archivos temporales
echo "🧹 Limpiando archivos temporales..."
rm -f *.aux *.log *.toc *.out *.bbl *.blg *.fdb_latexmk *.fls

echo "✅ Compilación completada: informe_clustering.pdf"

# Abrir el PDF si el sistema lo permite
if command -v xdg-open &> /dev/null; then
    echo "📖 Abriendo PDF..."
    xdg-open informe_clustering.pdf &
elif command -v open &> /dev/null; then
    echo "📖 Abriendo PDF..."
    open informe_clustering.pdf &
fi