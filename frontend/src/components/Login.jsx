import { Button, Link, TextField, Typography } from "@mui/material";
import { Container, Box } from "@mui/system";
import { useState } from "react";

export default function Login () {
  const [email, setEmail]= useState("")
  const [password, setPassword]= useState("")

  const handleCreateUser = async() => {

    const credentials = {
      "email": email,
      "password": password
    }
    const loginBody = {
      "user": credentials
    }

    // Take the username and password and call the login API
    const response = await fetch(`http://localhost:8020/api/login`,{
      method: "POST",
      body: JSON.stringify(loginBody),
      headers: {
        "Content-Type": "application/json"
      }
    })

    // TODO this is pulling out of the header, which fails because of CORS. Need to move it into the body of the response

    //If that worked, it should have included an Authorization header in the response, which contains the bearer token
    // Grab that, store it, and pass it as the Authorization header in future requests
    let authHeader = response.headers.get("Authorization");
    const response2 = await fetch(`http://localhost:8020/api/current_user`,{
      method: "GET",
      headers: {
        "Authorization": authHeader,
        "Content-Type": "application/json"
      }
    })

    console.log(response2)


  }
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
        <TextField variant="outlined" margin="normal" label="Email/Username" onChange={(event)=>setEmail(event.target.value)}
        sx={{backgroundColor: "white"}}>

        </TextField>
        <TextField variant="outlined" margin="normal" label="Password" type="password" onChange={(event)=>setPassword(event.target.value)}
        sx={{backgroundColor: "white"}}>

        </TextField>
        <Button variant="contained" onClick={handleCreateUser}>
          Sign In
        </Button>
        <Typography>
          Dont have an account? <Link>Sign up</Link>
        </Typography>
      </Box>
    </Container>
  )
}
