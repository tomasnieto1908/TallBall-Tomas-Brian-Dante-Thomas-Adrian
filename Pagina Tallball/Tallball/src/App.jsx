import React, { useState, useEffect } from "react";
import "./App.css"; // Importa el archivo CSS
import "./components/navbar";

const calculatePoints = (partido) => {
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

  useEffect(() => {
    console.log("puntos1", puntos1);
    console.log("puntos 2", puntos2);
    console.log("puntos", puntos);
  }, [puntos1, puntos2, puntos]);

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
                    <td className="team-column">
                      <img src={data.logo} />
                      {data.nombre_equipo}
                    </td>
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
                    <td className="team-column">
                      <img src={data.logo} />
                      {data.nombre_equipo}
                    </td>
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
                    <td className="team-column">
                      <img src={data.logo} />
                      {data.nombre_equipo}
                    </td>
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
                    <td className="team-column">
                      <img src={data.logo} />
                      {data.nombre_equipo}
                    </td>
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
                    <td className="team-column">
                      <img src={data.logo} />
                      {data.nombre_equipo}
                    </td>
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
                    <td className="team-column">
                      <img src={data.logo} />
                      {data.nombre_equipo}
                    </td>
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
