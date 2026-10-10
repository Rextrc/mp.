# Interfaz editable

Proyecto completo en HTML, CSS y JavaScript, listo para editar con Claude Code.

## Abrir el proyecto

1. Descomprimí el ZIP.
2. Abrí la carpeta en Claude Code.
3. Ejecutá:

   ```bash
   npm run dev
   ```

4. Abrí `http://localhost:3000`.

No hace falta ejecutar `npm install`: el proyecto usa únicamente Node.js.

## Crear la versión de producción

```bash
npm run build
npm start
```

El build queda en `dist/` y se sirve en `http://localhost:3000`.

## Desplegar

### Vercel

1. Subí esta carpeta a un repositorio de GitHub.
2. Importá el repositorio en Vercel.
3. Vercel detectará `vercel.json` y publicará `dist/`.

### Netlify

1. Subí esta carpeta a GitHub.
2. Creá un sitio desde ese repositorio en Netlify.
3. Netlify usará automáticamente `netlify.toml`.

### Render

Creá un Blueprint desde el repositorio. Render utilizará `render.yaml` como sitio estático.

### Docker

```bash
docker build -t mercado-pago-editable .
docker run --rm -p 3000:3000 mercado-pago-editable
```

## Dónde modificar cada cosa

- `public/index.html`: contiene toda la estructura, los estilos y el comportamiento.
- `public/index.html`, función `renderGlobalSearch()`: pantalla que aparece al tocar la lupa.
- `public/index.html`, estilos `.global-search-*`: diseño del buscador.
- `public/`: imágenes e íconos de la interfaz.
- `server.mjs`: servidor local para previsualizar el proyecto.
- `build.mjs`: genera la carpeta de producción `dist/`.
- `vercel.json`, `netlify.toml` y `render.yaml`: configuración de despliegue.
- `Dockerfile`: contenedor listo para producción.

## Pedidos útiles para Claude Code

- “Cambiá el texto de la tarjeta de Mago sin alterar el tamaño.”
- “Agregá otra sugerencia al carrusel del buscador.”
- “Separá el CSS y JavaScript de `index.html` en archivos propios.”
- “Mantené la vista móvil y no cambies la pantalla principal.”

## Importante

Es una simulación visual local. Las transferencias, saldos y destinatarios son ficticios y no realizan operaciones reales.
