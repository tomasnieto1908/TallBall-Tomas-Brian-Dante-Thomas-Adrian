import React from "react";
import './App.css'; // Asegúrate de incluir el CSS
import Test from "./Test";

function ScheduleTable() {
  return (
    <div className="table-container">
      <div className="table-title">RESERVA - COPA PROYECCION</div>
      <table className="table-schedule">
        <thead>
          <tr>
            <th>Hora</th>
            <th>Equipo 1</th>
            <th>Equipo 2</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>15:00</td>
            <td className="team-column"><img src="atl_tucuman_logo.png" alt="Atl Tucuman"/>Atl Tucuman</td>
            <td className="team-column">  <svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="0 0 124 124" fill="none">
<rect width="124" height="124" rx="24" fill="#F97316"/>
<path d="M19.375 36.7818V100.625C19.375 102.834 21.1659 104.625 23.375 104.625H87.2181C90.7818 104.625 92.5664 100.316 90.0466 97.7966L26.2034 33.9534C23.6836 31.4336 19.375 33.2182 19.375 36.7818Z" fill="white"/>
<circle cx="63.2109" cy="37.5391" r="18.1641" fill="black"/>
<rect opacity="0.4" x="81.1328" y="80.7198" width="17.5687" height="17.3876" rx="4" transform="rotate(-45 81.1328 80.7198)" fill="#FDBA74"/>
</svg></td>
          
          </tr>
          <tr>
            <td>15:00</td>
            <td className="team-column"><img src="barracas_central_logo.png" alt="Barracas Central"/>Barracas Central</td>
            <td className="team-column"><img src="gimnasia_lp_logo.png" alt="Gimnasia LP"/>Gimnasia (LP)</td>
          </tr>
          {/* Continúa con los demás equipos */}
          <tr>
            <td>19:00</td>
            <td className="team-column"><img src="talleres_logo.png" alt="Talleres"/>Boca (C)</td>
            <td className="team-column"><img src="independiente_logo.png" alt="Independiente"/>Independiente</td>
          </tr>
        </tbody>
      </table>
      <div className="button-row">
        <button>×</button>
      </div>
    </div>
  );
}

export default ScheduleTable;

