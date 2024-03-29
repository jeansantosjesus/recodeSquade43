<%@ page import="model.Cliente" %>
<%@ page import="dao.ClienteDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>


    <!-- meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- c�digo css do css -->
    <link rel="stylesheet" href="./CSS/contato.css">

    <!-- C�DIGO FONTE OPEN SANS -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">

    <!-- t�tulo -->
    <title>Contato</title>

</head>

<body>
    <!-- PARTE DA NAVBAR -->

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#000000;">
        <div class="container">
            <img width="120em" src="./imagens/logo.png" alt="nosso logo"> <!-- PARTE DA LOGO -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="./HTML/index.html">Home</a>
                    </li><!-- Home -->
                    <li class="nav-item">
                        <a class="nav-link" href="./HTML/nossosservicos.html">Nossos servi�os</a>
                    </li><!-- Nossos servi�os -->
                    <li class="nav-item">
                        <a class="nav-link" href="./HTML/quemsomos.html">Quem somos</a>
                    </li><!-- Quem somos -->
                    <li class="nav-item">
                        <a class="nav-link" href="./contato.html">Contato</a>
                    </li><!-- Contato -->
                </ul>
            </div>
        </div>
    </nav>

    <!-- CHATBOX -->
    <div class="chat-box">
        <div class="client">
            <img src="./imagens/imgchatbox.png" alt="avatar" />
            <div class="client-info">
                <h5>Tire aqui as suas d�vidas!</h5>
            </div>
        </div>

        <div class="chats">
            <div class="client-chat">Boa tarde!</div>
            <div class="site-chat">Boa tarde! Em que posso ajudar?</div>
            <div class="client-chat">Estou com d�vida em como criar minha conta</div>
            <div class="site-chat">� bem simples! Voc� pode se cadastrar atrav�s do nosso app,
                que pode ser encontrado na loja de aplicativos do seu celular</div>
            <div class="client-chat">Entendi, muito obrigado!</div>
        </div>
        <div class="chat-input">
            <input type="text" placeholder="Digite aqui..." />
            <button class="send-btn">
                <img src="./imagens/button.png" alt="Enviar">
            </button>
        </div>
    </div>

    <div class="chat-btn">
        <img src="./imagens/chatbox-icon.png" alt="chat-box icon" />
    </div>

    <!--Formul�rio-->
    <div id='wrapper'>
        <form action='ControleCliente' class='form'>
            <p class='field required half'>
                <label class='label required' for='name'>Digite seu nome</label>
                <input class='text-input' id='name' name='name' required type='text'>
            </p>
            <p class='field required half'>
                <label class='label' for='email'>E-mail</label>
                <input class='text-input' id='email' name='email' required type='email'>
            </p>
            <p class='field'>
                <label class='label' for='message'>Opa, digite aqui sua mensagem...</label>
                <textarea class='textarea' cols='50' id='message' name='message' required rows='4'></textarea>
            </p>
            <p class='field'>
                <input class='button' type='submit' value='Enviar'>
            </p>
            <div>
				<% String mensagem = (String) request.getAttribute("mensagem");
					if (mensagem != null)
						out.print(mensagem);
				%>
			</div>
        </form>
    </div>


    <!-- FOOTER-->
    <footer class="footer">
        <div class="container bottom_border">
            <div class="row">
                <div class=" col-sm-4 col-md col-sm-4  col-12 col">
                    <div class="container">
                        <img class="logobaixo" width="140em" src="./imagens/logo.png" alt="nosso logo"> 
                        <ul class="foote_bottom_ul_amrc">
                            <li><a href="./HTML/index.html">Home</a></li>
                            <li><a href="./HTML/nossosservicos.html">Nossos servi�os</a></li>
                            <li><a href="./HTML/quemsomos.html">Quem somos</a></li>
                            <li><a href="./HTML/contato.html">Contato</a></li>
                        </ul>
                        <ul class="social_footer_ul">
                            <li><a href="#"><i class="fab fa-github"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Fechamento footer -->


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <!-- PARTE DE �CONES - FONT AWESOME -->
    <script src="https://kit.fontawesome.com/7d235f40dc.js" crossorigin="anonymous"></script>

    <!-- c�digo do script do chatbox -->
    <script src="./Javascript/script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</body>

</html>