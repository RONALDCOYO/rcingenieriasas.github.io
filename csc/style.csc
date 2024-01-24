@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap");

/* Variables */

:root {
  --dark-one: #3b30db;
  --dark-two: #7a7a7a;
  --main-color: #3739c2;
  --secondary-color: #cec7d6;
  --light-one: #fff;
  --light-two: #f9fafb;
  --light-three: #f6f7fb;
}

/* Estilos generales */

/*
::before y ::after son pseudo-elementos en CSS que te permiten
insertar contenido antes o después del contenido real de un
elemento HTML. Estos pseudo-elementos se utilizan para agregar
elementos o estilos decorativos a tus páginas web sin necesidad
de modificar el contenido HTML directamente.
*/
*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* se utiliza para especificar el comportamiento de desplazamiento
suave (smooth scrolling) en una página web */
html {
  scroll-behavior: smooth;
}

body,
button,
input,
textarea {
  font-family: "Poppins", sans-serif;
}

a {
  text-decoration: none;
}

ul {
  list-style: none;
}

img {
  width: 100%;
}

.container {
  position: relative;
  z-index: 5;
  max-width: 92rem;
  padding: 0 4rem;
  margin: 0 auto;
}

/* grid-template-columns se utiliza para definir el número y
el tamaño de las columnas en un grid de CSS 

repeat(2, 1fr): Esto indica que se deben crear dos columnas en el grid.
1fr: Cada columna debe ocupar una fracción igual del espacio disponible
en el contenedor. En este caso, ambas columnas serán del mismo tamaño y
ocuparán igualmente el espacio disponible en el contenedor.
*/
.grid-2 {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  align-items: center;
  justify-content: center;
}

.text {
  font-size: 1.25rem;
  color: var(--dark-two);
  line-height: 1.6;
}

.column-1 {
  margin-right: 1.5rem;
}

.column-2 {
  margin-left: 1.5rem;
}

/* position: relative posiciona un elemento en relación con
su posición original en el flujo del documento. */
.image {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
}

.z-index {
  position: relative;
  z-index: 2;
}

/* position: absolute posiciona un elemento en relación con su 
elemento padre más cercano que tiene una propiedad de posicionamiento 
diferente a static (generalmente relative, absolute, o fixed). */
.points {
  opacity: 0.3;
  position: absolute;
}

/* Cuando trabajas con diseños web y elementos que se superponen,
overflow: hidden puede ayudar a evitar que el contenido desborde o
se superponga incorrectamente, manteniendo todo dentro de los
límites del contenedor */
.section {
  padding: 7rem 0;
  overflow: hidden;
}

.section-header {
  text-align: center;
  margin-bottom: 1.5rem;
}

.title {
  position: relative;
  display: inline-block;
  padding-bottom: 1rem;
  line-height: 1;
  font-size: 2.8rem;
  margin-bottom: 0.6rem;
}

.title:before {
  content: attr(data-title);
  display: block;
  margin-bottom: 0.4rem;
  color: var(--main-color);
  font-size: 1.15rem;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 3px;
}

.title:after {
  content: "";
  position: absolute;
  width: 90px;
  height: 5px;
  border-radius: 3px;
  background-color: var(--main-color);
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
}

.section-header .text {
  max-width: 600px;
  margin: 0 auto;
}

.title-sm {
  color: var(--dark-one);
  font-weight: 600;
  font-size: 1.6rem;
}

.btn {
  display: inline-block;
  padding: 0.85rem 2rem;
  background-color: var(--main-color);
  color: var(--light-one);
  border-radius: 2rem;
  font-size: 1.05rem;
  text-transform: uppercase;
  font-weight: 500;
  transition: 0.3s;
  border: none;
}

.btn:hover {
  background-color: var(--secondary-color);
}

.btn.small {
  padding: 0.7rem 1.8rem;
  font-size: 1rem;
}

.btn button {
  border: none;
  background-color: var(--main-color);
}

/* Fin de estilos generales */

/* Header */

header {
  width: 100%;
  background-color: var(--light-three);
  overflow: hidden;
  position: relative;
}

nav {
  width: 100%;
  position: relative;
  z-index: 50;
}

nav .container {
  display: flex;
  justify-content: space-between;
  height: 6rem;
  align-items: center;
}

/* Logo */

.logo {
  width: 80px;
  display: flex;
  align-items: center;
  font-size: 2em;
  font-weight: 600;
}

.logo a {
  color: var(--dark-one);
  text-decoration: none;
}

.logo span {
  color: var(--main-color);
}

/* Fin Logo */

.links ul {
  display: flex;
}

.links a {
  display: inline-block;
  padding: 0.9rem 1.2rem;
  color: var(--dark-one);
  font-size: 1.05rem;
  text-transform: uppercase;
  font-weight: 500;
  line-height: 1;
  transition: 0.3s;
}

.links a.active {
  background-color: var(--main-color);
  color: var(--light-one);
  border-radius: 2rem;
  font-size: 1rem;
  padding: 0.9rem 2.1rem;
  margin-left: 1rem;
}

.links a:hover {
  color: var(--main-color);
}

.links a.active:hover {
  color: var(--light-one);
  background-color: var(--secondary-color);
}

.hamburger-menu {
  display: none;
}

.header-content .container.grid-2 {
  grid-template-columns: 2.5fr 3.5fr;
  min-height: calc(100vh - 6rem);
  padding-bottom: 0;
  margin-bottom: 0;
  text-align: left;
}

.header-title {
  font-size: 3.8rem;
  line-height: 0.8;
  color: var(--dark-one);
}

.header-title span {
  color: var(--main-color);
}

.header-content .text {
  margin: 2.15rem 0;
}

.header-content .image .img-element {
  max-width: 750px;
}

header .points2 {
  width: 70%;
  top: 10%;
  left: 36%;
}

/* Fin header */

/* Servicios */

.cards {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  width: 100%;
}

.card-wrap {
  position: relative;
  margin: 1.7rem 0.8rem;
}

.card {
  position: relative;
  width: 100%;
  max-width: 390px;
  min-height: 520px;
  background-color: var(--light-three);
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 3rem 2rem;
  overflow: hidden;
  transition: 0.3s;
}

.card:before {
  content: attr(data-card);
  position: absolute;
  top: -15px;
  right: -15px;
  font-size: 6rem;
  font-weight: 800;
  line-height: 1;
  color: var(--main-color);
  opacity: 0.025;
}

.card:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 0px;
  bottom: 0;
  left: 0;
  background-color: var(--main-color);
  transition: 0.3s;
}

.card-wrap:hover .card {
  transform: translateY(-15px);
}

.card-wrap:hover .card:after {
  height: 8px;
}

.icon {
  width: 90px;
  margin-bottom: 1.7rem;
}

.card .title-sm {
  line-height: 0.8;
}

.card .text {
  font-size: 1.15rem;
  margin: 1.8rem 0;
}

/* Fin Servicios */
