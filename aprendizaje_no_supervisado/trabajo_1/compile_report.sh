#!/bin/bash

# Script para compilar el informe LaTeX actualizado
# Uso: ./compile_report.sh

echo "🔄 Compilando informe LaTeX completo..."

# Compilar el nuevo documento LaTeX actualizado
pdflatex informe_clustering_completo_actualizado.tex
echo "📚 Procesando referencias bibliográficas..."
bibtex informe_clustering_completo_actualizado
pdflatex informe_clustering_completo_actualizado.tex  
pdflatex informe_clustering_completo_actualizado.tex

# Limpiar archivos temporales
echo "🧹 Limpiando archivos temporales..."
rm -f *.aux *.log *.toc *.out *.bbl *.blg *.fdb_latexmk *.fls

echo "✅ Compilación completada: informe_clustering_completo_actualizado.pdf"

# Mostrar información del archivo generado
if [ -f informe_clustering_completo_actualizado.pdf ]; then
    echo "📄 Documento generado:"
    ls -lh informe_clustering_completo_actualizado.pdf
    echo "📊 Número de páginas: $(pdfinfo informe_clustering_completo_actualizado.pdf 2>/dev/null | grep Pages | awk '{print $2}')"
fi

# Abrir el PDF si el sistema lo permite
if command -v xdg-open &> /dev/null; then
    echo "📖 Abriendo PDF..."
    xdg-open informe_clustering_completo_actualizado.pdf &
elif command -v open &> /dev/null; then
    echo "📖 Abriendo PDF..."
    open informe_clustering_completo_actualizado.pdf &
fi