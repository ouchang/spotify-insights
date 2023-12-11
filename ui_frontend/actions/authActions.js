
export const logout = () =>{
    window.open('http://localhost:8000/auth/logout', '_self');
 
}

export const sendGetUserRequest = ()=>{
    return fetch("http://localhost:8000/auth/login/success", {
        method: "GET",
        credentials: "include",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
          "Access-Control-Allow-Credentials": true,
        }
})
}



