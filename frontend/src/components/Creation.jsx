import { Typography } from "@mui/material";
import ImageMapper from 'react-img-mapper';

export default function Creation() {
  const URL = 'https://raw.githubusercontent.com/img-mapper/react-docs/master/src/assets/example.jpg';
  const MAP = {
    name: 'my-map',
    areas: [
      {
        "id": "469f9800-c45a-483f-b13e-bd24f3fb79f4",
        "title": "Hardwood",
        "shape": "poly",
        "name": "1",
        "fillColor": "#eab54d4d",
        "strokeColor": "black",
        "coords": [
          520.0646766169153,
          393.0348258706467,
          85.23880597014923,
          378.6069651741293,
          637,
          479,
          13.099502487562177,
          478.10945273631836,
          11.606965174129343,
          438.3084577114427
        ],
        "polygon": [
          [
            520.0646766169153,
            393.0348258706467
          ],
          [
            85.23880597014923,
            378.6069651741293
          ],
          [
            637,
            479
          ],
          [
            13.099502487562177,
            478.10945273631836
          ],
          [
            11.606965174129343,
            438.3084577114427
          ]
        ]
      }
    ],
  };
  return (
    <div>
      <ImageMapper src={URL} map={MAP} />
      <Typography variant="h6">
        Creating a climb
      </Typography>
    </div>
    
  )
}