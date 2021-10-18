##############################################################
#                      TRABAJO FINAL                         #
##############################################################
#SIENDO ESTE EL TRABAJO FINAL, YA LOGRE INSERTAR UN CODIGO HTML
#YA PUEDO ENVIAR DATA PERSONALIZADA PARA CADA EMPLEADO
# EN ESTA OCASION HE ENVIADO A MIS 3 CORREOS Y A CADA UNO LE HA 
# LLEGADO SU DATA PERSONALIZADA TANTO EN VENTA POR PRODUCTO, 
# NOMBRE DEL VENDEDOR Y CORREO, ESTO SE PUEDE PERSONALIZAR MUCHO MAS
# AUN FALTA DEFINIR EXACTAMENTE QUE IRA EN EL FORMATO
# Y QUE MI JEFE ME BRINDE LA DATA
###############################################################
library(mailR)

data<-read_xlsx("C:/Users/User/Documents/datamentira.xlsx")
data<-data %>% 
    select(vendedor=VENDEDOR,correo=CORREO,
           framidex=VENTADESEADA,floriloffice=VENTAREALIZADA,
           gentamicina=CUOTA) 


  
  PASS<- as.character("chopper210397")
  
for(i in 1:nrow(data)){
  nombrevendedor  = data$vendedor[i]
  framidex=data$framidex[i]
  floriloffice=data$floriloffice[i]
  gentamicina=data$gentamicina[i]
  
  html_msg = "<div style = 'display: flex; justify-content: center;' >
        <table style = 'text-align: center; background-color: azure; border-style: unset;border-radius: 50px;'>
        
        
        

        <tr style = 'color:gray;'>

        <td><h2 style = 'margin: 0px 20px; color: black; font-family: 'Google Sans';' >Cuota</h2 ></td>

        <td><h2 style = 'margin: 0px 20px; color: black; font-family: 'Google Sans';' >Cuota</h2></td>

        <td><h2 style = 'margin: 0px 20px; color: black; font-family: 'Google Sans';' >Cuota</h2></td>
        </tr>
    
    
    

        <tr>

        <td><p style = 'margin: 0px 20px;font-size: 50px;
        color: darkblue; font-weight: bold; font-family: cursive;' >"
  html_msg = paste0(html_msg,framidex,"%</p></td>

        <td><p style = 'margin: 0px 20px;font-size: 50px;
        color: darkmagenta;font-weight: bold; font-family: cursive;'  >")
  html_msg=paste0(html_msg,floriloffice,"%</p></td>

        <td><p style = 'margin: 0px 20px;font-size: 50px;
        color: darkgreen;font-weight: bold; font-family: cursive; ' >")
  html_msg=paste0(html_msg,gentamicina,"%</p></td>

        </tr>
    
    
    

        <tr>

        <td><h3 style = '
        color: black; font-family: -webkit-pictograph;    margin-top: -40px;' >Framidex</h3></td>

        <td><h3 style = '
        color: black; font-family: -webkit-pictograph;    margin-top: -40px;' >Floril Office</h3></td>

        <td><h3 style = '
        color: black; font-family: -webkit-pictograph;    margin-top: -40px;' >Gentamicina</h3></td>
    
        </tr>
    
    
    

        </table>
        
        

        </div>")
emailvendedor= data$correo[i]
  
  
send.mail(from = "luisbarrios2197@gmail.com",
          to = emailvendedor,  #aqui habia un c(), lo borré
          subject = paste0("Lansier-",nombrevendedor),
          body = html_msg,
          html = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)
  
  
}
  