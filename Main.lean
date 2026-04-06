structure Senha where
  id : Nat
  nome : String
  deriving Repr, BEq

inductive Lista
  | vazia
  | no : Senha → Lista → Lista
  deriving Repr

structure Fila where
  inicio : Lista
  proxId : Nat
  deriving Repr

def push (s : Senha) : Lista → Lista
  | .vazia => .no s .vazia
  | .no h t => .no h (push s t)

def pop : Lista → Option Senha × Lista
  | .vazia => (none, .vazia)
  | .no h t => (some h, t)

def count : Lista → Nat
  | .vazia => 0
  | .no _ t => 1 + count t

def find (n : String) : Lista → Option Senha
  | .vazia => none
  | .no h t => if h.nome == n then some h else find n t

def showL : Lista → String
  | .vazia => ""
  | .no h .vazia => s!"[{h.id}: {h.nome}]"
  | .no h t => s!"[{h.id}: {h.nome}] → " ++ showL t

partial def menu (f : Fila) : IO Unit := do
  IO.println s!"\nFila atual: {if let .vazia := f.inicio then "Vazia" else showL f.inicio}"
  IO.print "1:Adicionar 2:Atender 3:Buscar 4:Tamanho 0:Sair\nOpção: "
  let op := toString (← (← IO.getStdin).getLine).trimAscii
  match op with
  | "1" =>
      IO.print "Nome da pessoa: ";
      let n := toString (← (← IO.getStdin).getLine).trimAscii
      menu { inicio := push { id := f.proxId, nome := n } f.inicio, proxId := f.proxId + 1 }
  | "2" =>
      let (p, l) := pop f.inicio
      if let some s := p then IO.println s!"⟹ Atendendo: {s.nome} (ID {s.id})" else IO.println "⚠ Fila Vazia!"
      menu { f with inicio := l }
  | "3" =>
      IO.print "Nome para buscar: ";
      let n := toString (← (← IO.getStdin).getLine).trimAscii
      IO.println (if let some s := find n f.inicio then s!"✓ Encontrado com ID: {s.id}" else "✗ Não encontrado")
      menu f
  | "4" => IO.println s!"Total na fila: {count f.inicio}"; menu f
  | "0" => IO.println "Encerrando o sistema..."; return ()
  | _   => menu f

def main : IO Unit := menu { inicio := Lista.vazia, proxId := 1 }
