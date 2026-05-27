Roteiro de Permissões 
Exercício 1 — Conceito fundamental
Permissões em apps móveis são regras que controlam o acesso a recursos internos do dispositivo. Existem para proteger dados sensíveis e hardware crítico, resolvendo principalmente a questão da privacidade e segurança do usuário. O sistema operacional controla os acessos, e o usuário decide se permite ou nega.
Exercício 2 — Runtime
A afirmação está incorreta. No Android moderno, as permissões não são definidas só na instalação — elas são solicitadas em tempo de execução (runtime), no momento em que o recurso é necessário.

Antes (Android 5 e anteriores): usuário aceitava todas as permissões na instalação, sem controle individual.
Depois (Android 6+): usuário pode conceder, negar ou revogar permissões individualmente a qualquer momento.

Exercício 3 — Classificação de permissões

Acesso à internet → Normal. Não acessa dados sensíveis; risco baixo.
Uso da câmera → Perigosa. Pode capturar imagens do usuário e do ambiente.
Vibração do dispositivo → Normal. Não compromete privacidade.
Acesso à localização → Perigosa. Revela onde o usuário está ou esteve.
Leitura de contatos → Perigosa. Dá acesso a dados pessoais de terceiros.

Exercício 4 — Fluxo correto
Erro: o app tenta usar a câmera sem verificar se tem permissão, o que pode causar crash ou mau funcionamento.
Fluxo correto:

Usuário clica em "Tirar foto".
App verifica se já tem a permissão.
Se tiver → abre a câmera.
Se não tiver → solicita a permissão.
Usuário decide: permitir (abre a câmera) ou negar (app exibe mensagem explicando a necessidade).
Se já tinha negado antes, o app pode explicar o motivo antes de pedir novamente.

Exercício 5 — Estados da permissão
Permissão negada: o usuário recusou, mas ainda pode ser solicitada novamente.

Ao solicitar de novo: o sistema mostra o diálogo outra vez.
Comportamento correto: explicar o motivo da permissão antes de pedir novamente.

Permissão negada permanentemente: usuário recusou e marcou "Não perguntar novamente".

Ao solicitar de novo: o sistema não mostra mais o diálogo.
Comportamento correto: não insistir, informar que é preciso ativar nas configurações do sistema e oferecer um botão que abra direto as configurações do app.
