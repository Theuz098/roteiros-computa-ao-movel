# Perguntas sobre Flutter e Dart

## Estrutura e Widgets

### 1. Por que usamos construtor?
O construtor serve para inicializar um Widget com os dados que ele precisa para funcionar. No Flutter, ele é útil para:
- Receber informações de outras telas ou widgets pai
- Definir valores que não vão mudar depois que o widget for criado
- Passar a `Key` para o framework identificar o widget na árvore

### 2. Por que a Tela2 pode ser Stateless?
Porque ela não precisa guardar nem atualizar nenhuma variável interna. Tudo que ela faz é mostrar botões fixos e retornar um valor quando o usuário clica. Quando não há mudança de estado interno, `StatelessWidget` é suficiente e mais eficiente.

### 3. O dado pode mudar depois que a tela é criada?
- **StatelessWidget**: não, o widget é imutável. Se o dado mudar na tela pai, o Flutter reconstrói o widget do zero.
- **StatefulWidget**: sim, através do `setState()` é possível atualizar variáveis e redesenhar a interface sem destruir o widget.

---

## Assincronismo

### 4. O que acontece se remover o `await`?
A função não vai esperar o resultado. O código continua na próxima linha imediatamente, e o valor retornado será um `Future` em vez do dado real. Isso causa bugs porque a variável vai estar "vazia" no momento em que for usada.

### 5. O que acontece se remover o `async`?
O Dart vai dar erro de compilação se houver `await` dentro de uma função que não está marcada como `async`. O `async` transforma a função em assíncrona e faz ela retornar um `Future` automaticamente.

### 6. O que é Future?
É um objeto que representa um valor que vai existir no futuro. É como um bilhete que diz "quando a operação terminar, você receberá o resultado aqui". Enquanto a operação não termina, o `Future` fica em estado pendente.

### 7. Quando o valor realmente é recebido?
Quando a operação assíncrona é concluída. Com `await`, a linha seguinte só executa depois que o `Future` é resolvido. Isso acontece quando o Event Loop do Dart processa a resposta da tarefa em segundo plano.
