import { Typography } from "@mui/material";
import ImageMapper from 'react-img-mapper';
import bolderLayout from '../bolderLayout.png'
import bolderMap from '../bolderMap.json'

export default function Creation() {
  const MAP = {
    name: 'my-map',
    areas: bolderMap,
  };
  return (
    <div>
      <ImageMapper src={bolderLayout} map={MAP} responsive={true} parentWidth={window.innerWidth}/>
      <Typography variant="h6">
        Creating a climb
      </Typography>
    </div>
    
  )
}