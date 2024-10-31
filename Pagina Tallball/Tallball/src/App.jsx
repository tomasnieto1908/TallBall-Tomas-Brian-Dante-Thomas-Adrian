import React, { useState, useEffect } from "react";
import "./App.css"; // Importa el archivo CSS
import "./components/navbar"

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

const calculatePoints = (matches) => {
  const pointsTable = {};
  matches.forEach((match) => {
    const local = match.localTeam.name;
    const visitor = match.visitorTeam.name;
    const localGoals = match.localGoals;
    const visitorGoals = match.visitorGoals;

    if (!pointsTable[local]) pointsTable[local] = { points: 0, logo: match.localTeam.logo };
    if (!pointsTable[visitor]) pointsTable[visitor] = { points: 0, logo: match.visitorTeam.logo };

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
  const [searchTerm, setSearchTerm] = useState('');
  const [view, setView] = useState('matches'); // Estado para cambiar entre 'matches' y 'table'

  useEffect(() => {
    setPoints(calculatePoints(matches));
  }, []);

  const sortedPoints = Object.entries(points)
    .sort(([, a], [, b]) => b.points - a.points)
    .filter(([team]) => team.toLowerCase().includes(searchTerm.toLowerCase()));

  return (
    <div>
      <h1 className="titulo">TALLBALL</h1>

      {/* Barra de Navegación */}
      <nav className="navbar">
        <button onClick={() => setView('inicio')} className={view === 'inicio' ? 'active' : ''}>
          Inicio
        </button>
        <button onClick={() => setView('matches')} className={view === 'matches' ? 'active' : ''}>
          Partidos
        </button>
        <button onClick={() => setView('table')} className={view === 'table' ? 'active' : ''}>
          Tabla de Puntos
        </button>
      </nav>

      {view === 'inicio' && (
      

        <div >
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
            <table className="table-schedule">
              <thead>
                <tr>
                  <th>Equipo</th>
                  <th>Puntos</th>
                </tr>
              </thead>
              <tbody>
                {sortedPoints.map(([team, data], index) => (
                  <tr key={index}>
                    <td className="team-column">
                      <img src={data.logo} alt={team} /> {team}
                    </td>
                    <td>{data.points}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="table-container">
          <h2>Partidos</h2>
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
              {matches.map((match, index) => (
                <tr key={index}>
                  <td>{match.time}</td>
                  <td className="team-column">
                    <img src={match.localTeam.logo} alt={match.localTeam.name} /> {match.localTeam.name}
                  </td>
                  <td>{match.localGoals}</td>
                  <td>{match.visitorGoals}</td>
                  <td className="team-column">
                    <img src={match.visitorTeam.logo} alt={match.visitorTeam.name} /> {match.visitorTeam.name}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
        </div>



      )}

      {view === 'matches' && (
        <div className="table-container">
          <h2>Partidos</h2>
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
              {matches.map((match, index) => (
                <tr key={index}>
                  <td>{match.time}</td>
                  <td className="team-column">
                    <img src={match.localTeam.logo} alt={match.localTeam.name} /> {match.localTeam.name}
                  </td>
                  <td>{match.localGoals}</td>
                  <td>{match.visitorGoals}</td>
                  <td className="team-column">
                    <img src={match.visitorTeam.logo} alt={match.visitorTeam.name} /> {match.visitorTeam.name}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      {view === 'table' && (
        <div >
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
          <table className="table-schedule">
            <thead>
              <tr>
                <th>Equipo</th>
                <th>Puntos</th>
              </tr>
            </thead>
            <tbody>
              {sortedPoints.map(([team, data], index) => (
                <tr key={index}>
                  <td className="team-column">
                    <img src={data.logo} alt={team} /> {team}
                  </td>
                  <td>{data.points}</td>
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
