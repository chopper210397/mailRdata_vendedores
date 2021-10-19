#install.packages("mailR")
#install.packages("rJava")
library(rJava)
library(mailR)
############################
############################
###      IMPORTANTE      ###
############################
############################

#you can send up to 100 email messages a day from any of the free email 
#domains such as Gmail, Yahoo or Outlook. If you go beyond this limit,
#your email account will be temporarily suspended for a day (24 hours),
#after which you can continue to send messages as usual (never exceeding 
#the 100 emails a day maximum quota).



#enviando desde gmail para gmail
PASS<- as.character("chopper210397")

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = "Laptop de ###",
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)
#si puedo enviar con total normalidad, no problem

#enviando desde outlook para outlook
PASS<- as.character("L@ns13r.94-")

send.mail(from = "lbarrios@lansier.com",
          to = c("lbarrios@lansier.com"),
          subject = "Lansier",
          body = "Laptop de ###",
          smtp = list(host.name="smtp-mail.outlook.com",
                      port=465,
                      user.name="lbarrios",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)
# no puedo enviar de outlook hacia outlook porque o no se el host.name 
# o no se el pasword, no me salio el resultado deseado

#enviando desde gmail para outlook
PASS<- as.character("chopper210397")

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("lbarrios@lansier.com"),
          subject = "Lansier",
          body = "Por fin",
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)

#si pude enviar de gmail hacia outlook sin problema alguno
#hay que tener cuidado con que el sistema nos etiquete como spam
#o de frente nos bloquee
#ahora voy a intentar enviando imagenes o archivos
################################################
#  PRIMERO INTENTARE ENVIANDO DE MI GMAIL A MI #
#  GMAIL PARA QUE NO ME BLOQUEEN               #
################################################
#estoy enviando a 3 correos esta vez  
#ESTOY ENVIANDO UN HTML


## no hacer caso a esta sección
library(readxl)
library(ggplot2)
library(dplyr)
library(tidyr)
data<-read_xlsx("C:/Users/User/Documents/DATAVENDEDORES.xlsx")
head(data)
ggplot(data = data,mapping = aes(x=VENTADESEADA,y=VENTAREALIZADA))+
  geom_line()
## no hacer caso en esta sección

PASS<- as.character("chopper210397")

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com",
                 "20141112@lamolina.edu.pe",
                 "lbarrios@lansier.com"),
          subject = "Lansier",
          body = "<b style = 'color:green;'>Vendedor: </b> Rcoardo Chimpén
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
# si funcionó este codigo, ahora a probar solo para un correo para
# no entrar a spam

PASS<- as.character("chopper210397")

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
######################################

PASS<- as.character("chopper210397")

send.mail(from = "luisbarrios2197@gmail.com",
          to = c("luisbarrios2197@gmail.com"),
          subject = "Lansier",
          body = texto,
          html = TRUE,
          smtp = list(host.name="smtp.gmail.com",
                      port=465,
                      user.name="luisbarrios2197",
                      passwd=PASS,
                      ssl=TRUE),
          authenticate = TRUE,
          send = TRUE)

texto<-c("<h1 style='color: #4485b8;'>RESULTADO: 15/10/2021</h1>
  <p>Estimado Ricardo Chimpen se hace envio de su reporte diario de ventas&nbsp;</p>
  <table class='editorDemoTable' style='height: 98px; vertical-align: top; border-style: inset;'>
  <thead>
  <tr style='height: 23px;'>
  <td style='width: 140px; height: 23px; text-align: left;'><strong>Producto</strong></td>
  <td style='width: 173.516px; text-align: center; height: 23px;'><strong>CUOTA</strong></td>
  <td style='width: 148.469px; text-align: center; height: 23px;'><strong>&nbsp; &nbsp;VENTAS&nbsp;</strong></td>
  </tr>
  </thead>
  <tbody>
  <tr style='height: 25px;'>
  <td style='min-width: 140px; width: 140px; height: 25px; text-align: left;'><strong>Floril</strong></td>
  <td style='width: 173.516px; height: 25px;'>
  <h1 style='text-align: center;'><span style='color: #3366ff;'>8%</span></h1>
  </td>
  <td style='width: 148.469px; height: 25px; text-align: center;'>
  <h1><span style='color: #0000ff;'>150</span></h1>
  </td>
  </tr>
  <tr style='height: 25px;'>
  <td style='width: 140px; height: 25px;'><strong>Naphavit</strong></td>
  <td style='width: 173.516px; height: 25px;'>
  <h1 style='text-align: center;'><span style='color: #3366ff;'>16%</span></h1>
  </td>
  <td style='width: 148.469px; height: 25px; text-align: center;'>
  <h1><span style='color: #0000ff;'>451</span></h1>
  </td>
  </tr>
  <tr style='height: 25px;'>
  <td style='width: 140px; height: 25px;'><strong>MACUVIT</strong></td>
  <td style='width: 173.516px; height: 25px; text-align: center;'>
  <h1><span style='color: #3366ff;'>25%</span></h1>
  </td>
  <td style='width: 148.469px; height: 25px; text-align: center;'>
  <h1><span style='color: #0000ff;'>845</span></h1>
  </td>
  </tr>
  </tbody>
  </table>
  <hr />
  <p></p>
  <hr />
  <p><em>&copy; Lansier</em></p>")
  



