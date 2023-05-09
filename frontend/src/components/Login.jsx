import { Button, Link, TextField, Typography } from "@mui/material";
import { Container, Box } from "@mui/system";
import { useState } from "react";

export default function Login () {
  const [email, setEmail]= useState("")
  const [password, setPassword]= useState("")

  const handleCreateUser = async() => {
    let formData = new FormData();
    formData.append('user[email]', email);
    formData.append('user[password]', password)
    const response = await fetch(`http://localhost:8020/users`,{
      method: "POST",
      body: formData
    })

    console.log(response)

    const response2 = await fetch(`http://localhost:8020/api/gyms`,{
      method: "GET"
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
