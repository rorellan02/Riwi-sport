# 🏋️‍♂️ Análisis de Ventas Deportivas – Proyecto Python

## 📌 Descripción general
Este proyecto tiene como objetivo analizar las ventas registradas en la base de datos **Sports**, identificando patrones de consumo, productos más vendidos, comportamiento por categoría y diferencias entre ciudades.  
El análisis combina **consultas SQL**, **procesamiento de datos con Pandas** y **visualizaciones con Matplotlib y Seaborn**.

El informe final entrega una visión integral del desempeño comercial y recomendaciones estratégicas para marketing, precios y segmentación de clientes.

---

## ⚙️ Tecnologías utilizadas
- **Python 3.10+**
- **PostgreSQL**
- **Pandas** – Limpieza y análisis de datos  
- **SQLAlchemy** – Conexión a base de datos  
- **dotenv** – Gestión segura de credenciales  
- **Matplotlib / Seaborn** – Visualización de resultados  

---

## 🗄️ Estructura y carga de la base de datos

El proyecto utiliza un archivo SQL llamado **`Riwisport.sql`**, el cual contiene toda la estructura y los datos iniciales del sistema.

### 📂 Contenido del archivo `Riwisport.sql`
1. **Definición del esquema (DDL)**  
   - Creación de tablas principales:  
     - `customer`  
     - `address`  
     - `order`  
     - `order_item`  
     - `product`  
     - `category`  
   - Establecimiento de llaves primarias y foráneas.  
   - Definición de relaciones entre entidades (1:N y N:M).  

2. **Inserción de datos (DML)**  
   - Registros de clientes, productos, pedidos y categorías.  
   - Datos de prueba representativos del contexto comercial deportivo.

### ⚙️ Cómo ejecutar el script SQL
Antes de correr el análisis en Python, debes importar la base de datos en PostgreSQL:

```bash
psql -U postgres -d sports -f Riwisport.sql
```

> ⚠️ Asegúrate de haber creado previamente la base de datos `sports` en PostgreSQL.

---

## 🔐 Archivo `.env`
El archivo `.env` guarda de forma segura las credenciales de conexión a la base de datos.  
Ejemplo de configuración:

```env
DB_USER=user
DB_PASSWORD=1234454
DB_HOST=localhost
DB_PORT=5434
DB_NAME=datebase
```


---

## 🧩 Estructura del proyecto
```
📁 ventas_sports/
│
├── analisis_RIWI_Sport_Roberto-Orellano.ipynb     # Notebook principal del análisis
├── informe_RIWI_Sport.pdf                         # Informe ejecutivo generado
├── Riwisport.sql                                  # Script de creación e inserción de datos
├── ejemplo.env                                    # Variables de entorno ejemplo
└── README.md                                      # Documentación del proyecto

```

---

## 💻 Instalación y ejecución

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/rorellan02/Riwi-sport
   cd ventas_sports
   ```

2. **Crear y activar un entorno virtual**
   ```bash
   python -m venv .venv
   source .venv/bin/activate     # Linux/Mac
   .venv\Scripts\activate        # Windows
   ```

3. **Instalar dependencias**
   ```bash
   pip install -r requirements.txt
   ```

4. **Cargar la base de datos**
   ```bash
   psql -U postgres -d sports -f Riwisport.sql
   ```

5. **Configurar las variables del archivo `.env`**

6. **Ejecutar el notebook o script**
   ```bash
   jupyter notebook main.ipynb
   ```
   o
   ```bash
   python main.py
   ```

---

## 📊 Análisis realizado

El análisis incluye:

1. **Extracción de datos SQL**  
   Consultas avanzadas que integran las tablas `customer`, `order`, `order_item`, `product` y `category`.

2. **Limpieza y transformación**  
   Conversión de tipos, eliminación de duplicados y manejo de valores nulos.

3. **Cálculo de KPIs**  
   - Tendencia central (media, mediana, moda del gasto).  
   - Medidas de dispersión (varianza, desviación estándar, IQR).  
   - Ticket promedio por cliente y pedido.

4. **Visualizaciones**  
   - Histogramas del gasto.  
   - Boxplots por categoría.  
   - Barras de los productos y categorías más vendidos.  
   - Mapa de calor por ciudad y categoría.

5. **Segmentación exploratoria**  
   Análisis cruzado por ciudad y categoría con métricas clave (ingresos, pedidos, clientes, ticket promedio).

6. **Insight y storytelling**  
   Identificación de perfiles de cliente:  
   - Frecuentes con bajo ticket promedio.  
   - Premium con alto gasto por transacción.  
   Se proponen estrategias de fidelización y marketing segmentado.

---

## 🧠 Resultados clave

- Las categorías **Fitness** y **Running** concentran la mayor parte de las ventas.  
- **Medellín** lidera en ingresos, mientras que **Itagüí** y **Bello** muestran potencial de crecimiento.  
- Los productos premium presentan alta dispersión de precios, evidenciando la posibilidad de aplicar estrategias de **diferenciación por gamas**.

---

## 📈 Recomendaciones finales

1. Implementar **programas de fidelización** para clientes frecuentes.  
2. Aplicar **segmentación geográfica** en precios y promociones.  
3. Ofrecer **diferenciación entre gamas** (básica y premium).  
4. Supervisar indicadores de venta para detectar cambios de comportamiento.

---

## 👨‍💻 Autor
**Roberto Stiven Orellano Vergara**  
Análisis de Datos – Python / SQL / Visualización  
📧 stivenorellano02@gmail.com  
