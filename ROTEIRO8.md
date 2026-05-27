Roteiro 8
Questão 1

Foreground: app sendo usado pelo usuário.
Background: app minimizado.
Terminated: app completamente fechado.

Questão 2
Sim. O sistema pode limitar a execução em background quando há pouca memória, bateria baixa, sobrecarga de CPU ou muitos processos ativos.
Questão 3
Porque o sistema pode finalizar processos em background sozinho, em cenários como bateria baixa, falta de memória ou excesso de processos.
Questão 4

Servidor: decide quando enviar a notificação.
FCM: serviço do Firebase que entrega a mensagem.
Android: SO que recebe a notificação.
Flutter: aplicação que reage ao evento.

Questão 5

onMessage: captura a mensagem em foreground.
onMessageOpenedApp: captura o clique do usuário na notificação.
getInitialMessage: o FCM busca a mensagem que abriu o app a partir do estado terminated.

