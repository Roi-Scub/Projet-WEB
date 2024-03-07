<!DOCTYPE html>
<html>
  <body>
    

     

        <div id="divaa1">
          <input id="btna1" type="button" value="Theme">
          <input id="btna2" type="button" value="Profile">
          <input id="btna3" type="button" value="More">
          <img id="img2" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Windows_Settings_app_icon.png/768px-Windows_Settings_app_icon.png">

        </div>

      
   
    </body>
  </html>

<style>
  body{
  background:rgb(0, 45, 60);
}


#img2{
  position:absolute;
  left:10px;
  top:10px;
  width:60px;
}

#divaa1{
  position:absolute;
  left:150px;
  width:80px;
  height:80px;
  border:5px transparent black;
  border-radius:100px;
  background: transparent;
  
  transition:0.6s;
}
#divaa1:hover{
  height:250px;
  background:  rgb(255 255 255 / 0.9);
}


#btna1{
  position:absolute;
  top:0px;
  background:transparent;
  width:75px;
  color:transparent;
  padding-top:5px;
  padding-bottom:5px;
  font-family:Georgia, serif;
  font-size:15px;
  border:2.5px solid transparent;
  border-radius:100px;
  cursor:pointer;
  transition:0.6s;
}
#divaa1:hover > #btna1{
  top:90px;
  color:black;
  background:dimgrey;
  padding-bottom:5px;
  margin-left:0.2vw;
}
#btna2{
  position:absolute;
  top:0px;
  background:transparent;
  width:75px;
  color:transparent;
  padding-top:5px;
  padding-bottom:5px;
  font-family:Georgia, serif;
  font-size:15px;
  border:2.5px solid transparent;
  border-radius:100px;
  cursor:pointer;
  transition:0.6s;
}
#divaa1:hover > #btna2{
  top:140px;
  color:black;
  background:dimgrey;
  padding-bottom:5px;
  margin-left:0.2vw;
}
#btna3{
  position:absolute;
  top:0px;
  background:transparent;
  width:75px;
  color:transparent;
  padding-top:5px;
  padding-bottom:5px;
  font-family:Georgia, serif;
  font-size:15px;
  border:2.5px solid transparent;
  border-radius:100px;
  cursor:pointer;
  transition:0.6s;
}
#divaa1:hover > #btna3{
  top:190px;
  color:black;
  background:dimgrey;
  padding-bottom:5px;
  margin-left:0.2vw;
}

</style>
```