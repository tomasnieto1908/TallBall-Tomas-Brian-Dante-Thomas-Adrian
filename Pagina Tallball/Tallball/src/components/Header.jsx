import React from "react";

const Header = () => {
  const scrollToSection = (sectionId) => {
    const section = document.getElementById(sectionId);
    if (section) {
      section.scrollIntoView({ behavior: "smooth" });
    }
  };

  return (
    <header className="header">
      <h1 className="titulo">TALLBALL</h1>
      <nav>
        <ul>
          <li onClick={() => scrollToSection("tabla")}>Tabla</li>
          <li onClick={() => scrollToSection("partidos")}>Partidos</li>
          <li onClick={() => scrollToSection("equipos")}>Equipos</li>
          <li onClick={() => scrollToSection("estadisticas")}>Estadisticas</li>
          <li onClick={() => scrollToSection("sobre-nosotros")}>
            Sobre Nosotros
          </li>
        </ul>
      </nav>
      {/* Añadir el botón para "Liga Profesional" */}
      <button
        onClick={() => scrollToSection("liga-profesional")}
        className="btn-liga"
      >
        Liga Profesional
      </button>
    </header>
  );
};

export default Header;
