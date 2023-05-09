import { Button, Link, TextField, Typography } from "@mui/material";
import { Container, Box } from "@mui/system";

export default function Login () {
  return (
    <Container>
      <Box sx={{
        backgroundColor: "#edfaf1",
        display: "flex",
        flexDirection: "column", 
        boxShadow: 3, 
        borderRadius: 2, 
        alignItems: "center"}}>
        <Typography variant="h5">
          Login
        </Typography>
        <TextField variant="outlined" margin="normal" label="Email/Username"
        sx={{backgroundColor: "white"}}>

        </TextField>
        <TextField variant="outlined" margin="normal" label="Password" type="password"
        sx={{backgroundColor: "white"}}>
          
        </TextField>
        <Button variant="contained">
          Sign In
        </Button>
        <Typography>
          Dont have an account? <Link>Sign up</Link>
        </Typography>
      </Box>
    </Container>
  )
}