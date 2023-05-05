import { Typography } from "@mui/material";
import ImageMapper from 'react-img-mapper';
import bolderLayout from '../bolderLayout.png'
import bolderMap from '../bolderMap.json'
import { useState } from "react";

export default function Creation() {
  const [selectedSection, setSelectedSection] = useState(0)

  const MAP = {
    name: 'my-map',
    areas: bolderMap,
  };
  return (
    <div>
      <ImageMapper src={bolderLayout} 
      map={MAP} 
      responsive={true} 
      parentWidth={window.innerWidth}
      stayHighlighted={true}
      onClick={area => setSelectedSection(area.id)}/>
      <Typography variant="h6">
        Creating a climb {selectedSection}
      </Typography>
    </div>
    
  )
}