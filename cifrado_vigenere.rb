# frozen_string_literal: true

# Style/FrozenStringLiteralComment: Enabled: false
# cifrado
# vigenere = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z],
#            [B, C, D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A],
#            [C, D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B],
#            [D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C],
#            [E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D],
#            [F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E],
#            [G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F],
#            [H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G],
#            [I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H],
#            [J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I],
#            [K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J],
#            [L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K],
#            [M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L],
#            [N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M],
#            [O, P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N],
#            [P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O],
#            [Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P],
#            [R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q],
#            [S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R],
#            [T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S],
#            [U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T],
#            [V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U],
#            [W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V],
#            [X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W],
#            [Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X],
#            [Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y]

def solicita_datos
  puts 'Ingresa el mensaje a cifrar: '
  mensaje = gets.chomp.upcase.gsub(/[^A-Z]/, '')
  return '' if mensaje.empty?

  puts 'Ingresa la clave de cifrado: '
  contrasena = gets.chomp.upcase.gsub(/[^A-Z]/, '')
  return '' if contrasena.empty?

  cifrado = cifrado_vigenere(mensaje, contrasena)
  muestra_datos(cifrado)
end

def muestra_datos(cifrado)
  puts "Mensaje cifrado: #{cifrado}"
end

def cifrado_vigenere(mensaje, contrasena)
  #genera la matriz 
	abecedario = ('A'..'Z').to_a
	#
  contrasena = contrasena * (mensaje.length / contrasena.length) + contrasena[0, mensaje.length % contrasena.length]
  # p contrasena

  clave_cifrada = ''
  mensaje.chars.each_with_index do |letra, index|
    mensaje_pos = abecedario.index(letra)
    # p "mensaje pos  #{mensaje_pos}"

    contrasena_pos = abecedario.index(contrasena[index])
    # p "contrasena pos: #{contrasena_pos}"

    cifrado_pos = (mensaje_pos + contrasena_pos) % abecedario.length
    # p "cifrado pos: #{cifrado_pos}"

    clave_cifrada += abecedario[cifrado_pos]
    # p "clave cifrada:  #{clave_cifrada}"
  end

  clave_cifrada
end

solicita_datos
