import React, { useState, useEffect } from "react";
import "./App.css"; // Importa el archivo CSS
import "./components/navbar";

const matches = [
  {
    time: "15:00",
    localTeam: {
      name: "Atl Tucuman",
      logo: "https://www.promiedos.com.ar/images/18/25.png",
    },
    localGoals: 1,
    visitorGoals: 1,
    visitorTeam: {
      name: "Argentinos jrs",
      logo: "https://www.promiedos.com.ar/images/18/3.png",
    },
  },
  {
    time: "15:00",
    localTeam: {
      name: "Barracas Central",
      logo: "	https://www.promiedos.com.ar/images/18/82.png",
    },
    localGoals: 1,
    visitorGoals: 1,
    visitorTeam: {
      name: "Gimnasia (LP)",
      logo: "https://www.promiedos.com.ar/images/18/9.png",
    },
  },
  {
    time: "19:00",
    localTeam: {
      name: "Talleres (C)",
      logo: "https://www.promiedos.com.ar/images/18/52.png",
    },
    localGoals: 1,
    visitorGoals: 1,
    visitorTeam: {
      name: "Independiente",
      logo: "https://www.promiedos.com.ar/images/18/12.png",
    },
  },
  {
    time: "17:00",
    localTeam: {
      name: "River Plate",
      logo: "https://www.promiedos.com.ar/images/18/18.png",
    },
    localGoals: 3,
    visitorGoals: 2,
    visitorTeam: {
      name: "Boca Juniors",
      logo: "https://www.promiedos.com.ar/images/18/6.png",
    },
  },
  {
    time: "16:00",
    localTeam: {
      name: "San Lorenzo",
      logo: "https://www.promiedos.com.ar/images/18/19.png",
    },
    localGoals: 2,
    visitorGoals: 0,
    visitorTeam: {
      name: "Racing Club",
      logo: "https://www.promiedos.com.ar/images/18/17.png",
    },
  },
  {
    time: "18:30",
    localTeam: {
      name: "Vélez Sarsfield",
      logo: "https://www.promiedos.com.ar/images/18/21.png",
    },
    localGoals: 1,
    visitorGoals: 3,
    visitorTeam: {
      name: "Huracán",
      logo: "https://www.promiedos.com.ar/images/18/11.png",
    },
  },
  {
    time: "19:45",
    localTeam: {
      name: "Lanús",
      logo: "https://www.promiedos.com.ar/images/18/13.png",
    },
    localGoals: 0,
    visitorGoals: 1,
    visitorTeam: {
      name: "Central Córdoba",
      logo: "https://www.promiedos.com.ar/images/18/78.png",
    },
  },
];

const matches2 = [
  {
    time: "15:00",
    localTeam: {
      name: "Atl Tucuman",
      logo: "https://www.promiedos.com.ar/images/18/25.png",
    },
    localGoals: 4,
    visitorGoals: 0,
    visitorTeam: {
      name: "Argentinos jrs",
      logo: "https://www.promiedos.com.ar/images/18/3.png",
    },
  },
  {
    time: "15:00",
    localTeam: {
      name: "Barracas Central",
      logo: "	https://www.promiedos.com.ar/images/18/82.png",
    },
    localGoals: 2,
    visitorGoals: 3,
    visitorTeam: {
      name: "Gimnasia (LP)",
      logo: "https://www.promiedos.com.ar/images/18/9.png",
    },
  },
  {
    time: "19:00",
    localTeam: {
      name: "Talleres (C)",
      logo: "https://www.promiedos.com.ar/images/18/52.png",
    },
    localGoals: 1,
    visitorGoals: 0,
    visitorTeam: {
      name: "Independiente",
      logo: "https://www.promiedos.com.ar/images/18/12.png",
    },
  },
  {
    time: "17:00",
    localTeam: {
      name: "River Plate",
      logo: "https://www.promiedos.com.ar/images/18/18.png",
    },
    localGoals: 0,
    visitorGoals: 5,
    visitorTeam: {
      name: "Boca Juniors",
      logo: "https://www.promiedos.com.ar/images/18/6.png",
    },
  },
  {
    time: "16:00",
    localTeam: {
      name: "San Lorenzo",
      logo: "https://www.promiedos.com.ar/images/18/19.png",
    },
    localGoals: 1,
    visitorGoals: 0,
    visitorTeam: {
      name: "Racing Club",
      logo: "https://www.promiedos.com.ar/images/18/17.png",
    },
  },
  {
    time: "18:30",
    localTeam: {
      name: "Vélez Sarsfield",
      logo: "https://www.promiedos.com.ar/images/18/21.png",
    },
    localGoals: 1,
    visitorGoals: 0,
    visitorTeam: {
      name: "Huracán",
      logo: "https://www.promiedos.com.ar/images/18/11.png",
    },
  },
  {
    time: "19:45",
    localTeam: {
      name: "Lanús",
      logo: "https://www.promiedos.com.ar/images/18/13.png",
    },
    localGoals: 1,
    visitorGoals: 1,
    visitorTeam: {
      name: "Central Córdoba",
      logo: "https://www.promiedos.com.ar/images/18/78.png",
    },
  },
];

const calculatePoints = (partido) => {
  const pointsTable = {};
  matches.forEach((match) => {
    const local = match.localTeam.name;
    const visitor = match.visitorTeam.name;
    const localGoals = match.localGoals;
    const visitorGoals = match.visitorGoals;

    if (!pointsTable[local])
      pointsTable[local] = { points: 0, logo: match.localTeam.logo };
    if (!pointsTable[visitor])
      pointsTable[visitor] = { points: 0, logo: match.visitorTeam.logo };

    if (localGoals > visitorGoals) {
      pointsTable[local].points += 3;
    } else if (visitorGoals > localGoals) {
      pointsTable[visitor].points += 3;
    } else {
      pointsTable[local].points += 1;
      pointsTable[visitor].points += 1;
    }
  });
  return pointsTable;
};

function ScheduleTable() {
  const [points, setPoints] = useState({});
  const [searchTerm, setSearchTerm] = useState("");
  const [view, setView] = useState("inicio"); // Estado para cambiar entre 'matches' y 'table'
  const [partidos1, setPartidos1] = useState([]);
  const [partidos2, setPartidos2] = useState([]);

  const [puntos, setPuntos] = useState([]);
  const [puntos1, setPuntos1] = useState([]);
  const [puntos2, setPuntos2] = useState([]);
  useEffect(() => {
    setPoints(calculatePoints(matches));
  }, []);

  useEffect(() => {
    fetch("http://127.0.0.1:5000/partido?torneo=1")
      .then((data) => data.json())
      .then((response) => setPartidos1(response));
    fetch("http://127.0.0.1:5000/partido?torneo=2")
      .then((data) => data.json())
      .then((response) => setPartidos2(response));
    fetch("http://127.0.0.1:5000/puntos?torneo=1")
      .then((data) => data.json())
      .then((response) => setPuntos1(response));
    fetch("http://127.0.0.1:5000/puntos?torneo=2")
      .then((data) => data.json())
      .then((response) => setPuntos2(response));
    fetch("http://127.0.0.1:5000/puntos")
      .then((data) => data.json())
      .then((response) => setPuntos(response));
  }, []);

  const sortedPoints = Object.entries(points)
    .sort(([, a], [, b]) => b.points - a.points)
    .filter(([team]) => team.toLowerCase().includes(searchTerm.toLowerCase()));

  return (
    <div>
      <h1 className="titulo">TALLBALL</h1>
      {/* Barra de Navegación */}
      <nav className="navbar">
        <button
          onClick={() => setView("inicio")}
          className={view === "inicio" ? "active" : ""}
        >
          Inicio
        </button>
        <button
          onClick={() => setView("matches")}
          className={view === "matches" ? "active" : ""}
        >
          Partidos
        </button>
        <button
          onClick={() => setView("table")}
          className={view === "table" ? "active" : ""}
        >
          Tabla de Puntos
        </button>
      </nav>
      {view === "inicio" && (
        <div>
          {/* Campo de búsqueda */}
          <input
            type="text"
            placeholder="Buscar equipo..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="search-bar"
          />

          {/* Tabla Anual */}

          <div className="table-container">
            <h2>Tabla Anual</h2>
            <h3></h3>
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {puntos.map((data, index) => (
                  <tr key={index}>
                    <td>{data.nombre_equipo}</td>
                    <td>{data.puntos}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          <div className="table-container">
            <h2>Tabla liga Profesional</h2>
            <h3></h3>
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {puntos2.map((data, index) => (
                  <tr key={index}>
                    <td>{data.nombre_equipo}</td>
                    <td>{data.puntos}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
            <h2>Tabla copa de la liga</h2>
            <h3></h3>
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {puntos1.map((data, index) => (
                  <tr key={index}>
                    <td>{data.nombre_equipo}</td>
                    <td>{data.puntos}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
            <h2>Partidos Liga Profesional</h2>

            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Hora</th>
                  <th>Equipo Local</th>
                  <th>Goles Local</th>
                  <th>Goles Visitante</th>
                  <th>Equipo Visitante</th>
                </tr>
              </thead>
              <tbody>
                {partidos2.map((match, index) => (
                  <tr key={index}>
                    <td>{match.time}</td>
                    <td className="team-column">
                      <img
                        src={match.local_team.logo}
                        alt={match.local_team.Nombre_Equipo}
                      />{" "}
                      {match.local_team.Nombre_Equipo}
                    </td>
                    <td>{match.localGoals}</td>
                    <td>{match.visitorGoals}</td>
                    <td className="team-column">
                      <img
                        src={match.visitor_team.logo}
                        alt={match.visitor_team.Nombre_Equipo}
                      />{" "}
                      {match.visitor_team.Nombre_Equipo}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
            <h2>Partidos Copa de la liga </h2>

            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Hora</th>
                  <th>Equipo Local</th>
                  <th>Goles Local</th>
                  <th>Goles Visitante</th>
                  <th>Equipo Visitante</th>
                </tr>
              </thead>
              <tbody>
                {partidos1.map((match, index) => (
                  <tr key={index}>
                    <td>{match.time}</td>
                    <td className="team-column">
                      <img
                        src={match.local_team.logo}
                        alt={match.local_team.Nombre_Equipo}
                      />{" "}
                      {match.local_team.Nombre_Equipo}
                    </td>
                    <td>{match.localGoals}</td>
                    <td>{match.visitorGoals}</td>
                    <td className="team-column">
                      <img
                        src={match.visitor_team.logo}
                        alt={match.visitor_team.Nombre_Equipo}
                      />{" "}
                      {match.visitor_team.Nombre_Equipo}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}
      {view === "matches" && (
        <div>
          <div className="table-container">
            <h2>Partidos Liga Profesional</h2>

            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Hora</th>
                  <th>Equipo Local</th>
                  <th>Goles Local</th>
                  <th>Goles Visitante</th>
                  <th>Equipo Visitante</th>
                </tr>
              </thead>
              <tbody>
                {partidos2.map((match, index) => (
                  <tr key={index}>
                    <td>{match.time}</td>
                    <td className="team-column">
                      <img
                        src={match.local_team.logo}
                        alt={match.local_team.Nombre_Equipo}
                      />{" "}
                      {match.local_team.Nombre_Equipo}
                    </td>
                    <td>{match.localGoals}</td>
                    <td>{match.visitorGoals}</td>
                    <td className="team-column">
                      <img
                        src={match.visitor_team.logo}
                        alt={match.visitor_team.Nombre_Equipo}
                      />{" "}
                      {match.visitor_team.Nombre_Equipo}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
            <h2>Partidos Copa de la liga </h2>

            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Hora</th>
                  <th>Equipo Local</th>
                  <th>Goles Local</th>
                  <th>Goles Visitante</th>
                  <th>Equipo Visitante</th>
                </tr>
              </thead>
              <tbody>
                {partidos1.map((match, index) => (
                  <tr key={index}>
                    <td>{match.time}</td>
                    <td className="team-column">
                      <img
                        src={match.local_team.logo}
                        alt={match.local_team.Nombre_Equipo}
                      />{" "}
                      {match.local_team.Nombre_Equipo}
                    </td>
                    <td>{match.localGoals}</td>
                    <td>{match.visitorGoals}</td>
                    <td className="team-column">
                      <img
                        src={match.visitor_team.logo}
                        alt={match.visitor_team.Nombre_Equipo}
                      />{" "}
                      {match.visitor_team.Nombre_Equipo}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}
      {view === "table" && (
        <div>
          {/* Campo de búsqueda */}
          <input
            type="text"
            placeholder="Buscar equipo..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="search-bar"
          />

          {/* Tabla Anual */}

          <div className="table-container">
            <h2>Tabla anual</h2>
            <h3></h3>
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {puntos.map((data, index) => (
                  <tr key={index}>
                    <td>{data.nombre_equipo}</td>
                    <td>{data.puntos}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
            <h2>Tabla liga Profesional</h2>
            <h3></h3>
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {puntos2.map((data, index) => (
                  <tr key={index}>
                    <td>{data.nombre_equipo}</td>
                    <td>{data.puntos}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
            <h2>Tabla copa de la liga</h2>
            <h3></h3>
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {puntos1.map((data, index) => (
                  <tr key={index}>
                    <td>{data.nombre_equipo}</td>
                    <td>{data.puntos}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}
    </div>
  );
}

export default ScheduleTable;
