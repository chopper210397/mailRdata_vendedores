#practicando enviando imagenes
data<-read_xlsx("C:/Users/User/Documents/DATAVENDEDORES.xlsx")
data<-data %>% select(vendedor=VENDEDOR,correo=CORREO,framidex=VENTADESEADA,floriloffice=VENTAREALIZADA,gentamicina=CUOTA)
#guardando inmediatamente imagen generada
jpeg(file="imagen1.jpeg")
ggplot(data = data, mapping = aes(x = VENTADESEADA ,y=VENTAREALIZADA))+geom_line()
dev.off()

########################  ENVIAR EMAIL  #################################
PASS<- as.character("chopper210397")

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = "Body",
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          attach.files = c("imagen1.jpeg"),
          send = TRUE)
#########################################################################

#con el anterior codigo logre enviar una imagen autoguardada realizada con
#la data de los vendedores, hasta el momento la data no es personalizada
#para cada vendedor, pero funciona

########################  ENVIAR EMAIL  #################################
#INSTALAMOS EL BASE64ENC PARA PODER CONVERTIR LAS IMAGENES A BASE64
#Y ASI PODER ENVIRARLO DIRECTAMENTE MEDIANTE CORREO 
#ESTE COMANDO LO CONVIERTE A FORMATO TEXTO POR ASI DECIRLO
#LO QUE NOS PERMITE MANDARLO DIRECTAMENTE POR CORREO SIN TENER QUE HACERLE 
#NADA MAS A LA IMAGEN

paste0("hola'\' "," como estas", PASS)
#install.packages("base64enc")
library(base64enc)
csmr<-paste0(" " ","<html> <img src=",ima," width= 100 height=345 > </html>"," " "),
PASS<- as.character("chopper210397")
imagenconve<-base64encode("imagen1.jpeg")

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = paste0("<html> <img src=",imagenconve ," width= 100 height=345 > </html>"),
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = FALSE)
#########################################################################
comillas<-" sqwd"
   
TEXTO<-paste0('<html> <img src=',imagenconve , 'width= 100 height=345 > </html>'),
holasa<-paste0("<html> <img src=",paste0(imagenconve),"width= 100 height=345 > </html>")

#########################################################################
#INTENTANDO unir todo dentro de un caracter

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = holasa,
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)
#########################################################################
send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = '<img src="C:/Users/User/Documents/imagen1.jpeg">',
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)
#########################################################################

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = "<b style = 'color:green;'>Vendedor: </b> Ricardo Chimpén
          <br> <b style = 'color:green;'>Producto: </b> Floril Office 
          <br> <b style = 'color:green;'>Cuota realizada: </b> 50% <br>",
          html = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)

#########################################################################

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = " <div style = 'display: flex; justify-content: center;' >
        <table style = 'text-align: center; background-color: azure; border-style: unset;border-radius: 50px;'>
        
        
        

        <tr style = 'color:gray;'>

        <td><h2 style = 'margin: 0px 20px; color: black; font-family: 'Google Sans';' >Cuota</h2 ></td>

        <td><h2 style = 'margin: 0px 20px; color: black; font-family: 'Google Sans';' >Cuota</h2></td>

        <td><h2 style = 'margin: 0px 20px; color: black; font-family: 'Google Sans';' >Cuota</h2></td>
        </tr>
    
    
    

        <tr>

        <td><p style = 'margin: 0px 20px;font-size: 50px;
        color: darkblue; font-weight: bold; font-family: cursive;' >80%</p></td>

        <td><p style = 'margin: 0px 20px;font-size: 50px;
        color: darkmagenta;font-weight: bold; font-family: cursive;'  >10%</p></td>

        <td><p style = 'margin: 0px 20px;font-size: 50px;
        color: darkgreen;font-weight: bold; font-family: cursive; ' >30%</p></td>

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
        
        

        </div>",
          html = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)

