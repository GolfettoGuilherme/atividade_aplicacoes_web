<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade 3</title>
    </head>
    <body>
        <h1>Atividade 3</h1>
        <form action="atividadde_3.jsp" method="GET">
            <p>
                Primeira Nota: <input type="text" name="txtNota1"/>
            </p>
            <p>
                Segunda Nota: <input type="text" name="txtNota2"/>
            </p>
            <p>
                Terceira Nota: <input type="text" name="txtNota3"/>
            </p>
            <button>Enviar</button>
        </form>
        <div>
            <% 
                float nota1 = request.getParameter("txtNota1")== null ? 0f : Float.parseFloat(request.getParameter("txtNota1"));
                float nota2 = request.getParameter("txtNota2")== null ? 0f : Float.parseFloat(request.getParameter("txtNota2"));
                float nota3 = request.getParameter("txtNota3")== null ? 0f : Float.parseFloat(request.getParameter("txtNota3"));
                float notaConsiderada1;
                float notaConsiderada2;
                
                if(nota1 > nota3){
                    notaConsiderada1 = nota1;
                    if(nota2 > nota3)
                        notaConsiderada2 = nota2;
                    else
                        notaConsiderada2 = nota3;
                } else{
                    notaConsiderada1 = nota3;
                    notaConsiderada2 = nota2;
                }
                
                float media = (notaConsiderada1 + notaConsiderada2) / 2;
                
                if(media < 4)
                    out.print("REPROVADO");
                else if(media >= 4 && media < 6)
                    out.print("RECUPERAÇÃO");
                else
                    out.print("APROVADO");
                
            %>
        </div>
    </body>
</html>
