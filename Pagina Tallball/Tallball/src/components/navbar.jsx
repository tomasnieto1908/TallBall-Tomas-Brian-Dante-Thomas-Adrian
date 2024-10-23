import React from "react";

function Navbar({ setCurrentPage }) {
  return (
    <nav className="navbar">
      <ul>
        <li onClick={() => setCurrentPage("Tabla")}>Tabla</li>
        <li onClick={() => setCurrentPage("Partidos")}>Partidos</li>
        <li onClick={() => setCurrentPage("Equipos")}>Equipos</li>
        <li onClick={() => setCurrentPage("Estadisticas")}>Estadisticas</li>
        <li onClick={() => setCurrentPage("Sobre Nosotros")}>Sobre Nosotros</li>
      </ul>
    </nav>
  );
}

export default Navbar;
