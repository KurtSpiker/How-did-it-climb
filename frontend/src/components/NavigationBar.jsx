import { useState, useEffect } from "react";
import AppBar from '@mui/material/AppBar';
import { Toolbar, Typography } from "@mui/material";

export default function NavigationBar() {
  return (
    <AppBar position='static'>
      <Toolbar>
        <Typography variant="h6">
          HDIC
        </Typography>
        
      </Toolbar>
    </AppBar>
  )
}
