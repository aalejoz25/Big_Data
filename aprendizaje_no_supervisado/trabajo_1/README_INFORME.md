# 📄 Informe LaTeX - Análisis Comparativo de Clustering

## 🎯 Descripción General

Este directorio contiene el **informe académico completo** del análisis comparativo entre K-means y SOM, generado automáticamente a partir de los resultados del notebook Jupyter.

## 📁 Archivos Generados

### Documento Principal
- **`informe_clustering.tex`**: Código fuente LaTeX completo
- **`informe_clustering.pdf`**: Documento final compilado (11 páginas)

### Herramientas
- **`compile_report.sh`**: Script para compilación automática

## 📊 Contenido del Informe

### Estructura Completa (11 páginas):

1. **Portada y Abstract** 
2. **Tabla de Contenidos**
3. **Introducción** - Objetivos, hipótesis, marco teórico
4. **Marco Teórico** - Fundamentos matemáticos de K-means y SOM
5. **Metodología** - Datasets, preprocesamiento, configuraciones
6. **Resultados** - Métricas, tablas comparativas, análisis estadístico
7. **Discusión** - Interpretación de resultados, implicaciones prácticas
8. **Conclusiones** - Hallazgos principales y recomendaciones
9. **Trabajo Futuro** - Extensiones y mejoras propuestas
10. **Referencias** - Bibliografía académica
11. **Apéndice** - Código fuente y métricas detalladas

### Elementos Incorporados:
- ✅ **Todos los resultados numéricos** del análisis
- ✅ **Tablas profesionales** con métricas comparativas
- ✅ **Ecuaciones matemáticas** de los algoritmos
- ✅ **Código fuente** de las implementaciones principales
- ✅ **Análisis estadístico** completo (CV, matrices de confusión)
- ✅ **Recomendaciones prácticas** basadas en evidencia

## 🛠️ Compilación

### Opción 1: Script Automático
```bash
./compile_report.sh
```

### Opción 2: Manual
```bash
pdflatex informe_clustering.tex
pdflatex informe_clustering.tex  # Segunda pasada para referencias
```

### Requisitos:
- LaTeX completo (texlive-full recomendado)
- Paquetes: amsmath, booktabs, hyperref, listings, algorithms

## 📈 Métricas y Resultados Incluidos

### Dataset Simple (data_clusters.mat):
- K-means: K=6, Silhouette=0.7396
- SOM: 7×7, Error=0.0241, Eficiencia=94%

### Dataset Complejo (Avila UCI):
- **Validación Cruzada**: K-means 29.55±3.04%, SOM 42.14±1.02%
- **Evaluación Final**: K-means 33.10%, SOM 45.79%
- **Ventaja SOM**: +38.2% superior accuracy
- **Calidad Etiquetado**: SOM 50.5% vs K-means 39.7% pureza

### Análisis Avanzado:
- Balanceamiento híbrido (12.16:1 → 1.80:1)
- Metodología semi-supervisada 70/15/15
- Matrices de confusión por clase
- Trade-off analysis (silhouette vs eficiencia)

## 🎓 Uso Académico

Este informe está diseñado para:
- **Presentación académica** formal
- **Documentación técnica** de proyectos
- **Referencias** para trabajos similares
- **Plantilla** para futuros análisis de clustering

## 🔧 Personalización

Para adaptar el informe:

1. **Cambiar datos institucionales**:
   ```latex
   \author{Tu Nombre\\Universidad X}
   ```

2. **Modificar valores numéricos**: 
   - Actualizar tablas con nuevos resultados
   - Cambiar métricas en las secciones de resultados

3. **Agregar gráficos**:
   ```latex
   \begin{figure}[H]
   \centering
   \includegraphics[width=0.8\textwidth]{tu_grafico.png}
   \caption{Descripción del gráfico}
   \end{figure}
   ```

## 📚 Referencias Académicas

El informe incluye referencias a:
- Kohonen (2001) - Self-Organizing Maps
- MacQueen (1967) - K-means original
- Chawla et al. (2002) - SMOTE
- Rousseeuw (1987) - Silhouette score
- Dataset Avila UCI - Aplicación paleográfica

## ✅ Control de Calidad

- ✅ Sin errores de compilación LaTeX
- ✅ Todas las tablas y ecuaciones renderizadas correctamente
- ✅ Hyperlinks funcionales en tabla de contenidos
- ✅ Formato académico profesional
- ✅ Bibliografía completa y correcta
- ✅ 11 páginas de contenido técnico sólido

---

**Generado automáticamente** a partir del notebook `trabajo_1.ipynb`  
**Fecha**: Septiembre 27, 2025  
**Versión**: 1.0