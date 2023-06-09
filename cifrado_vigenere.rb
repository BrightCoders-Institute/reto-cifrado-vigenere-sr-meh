=begin
cifrado
vigenere = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z],
					 [B, C, D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A],
					 [C, D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B],
					 [D, E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C],
					 [E, F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D],
					 [F, G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E],
					 [G, H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F],
					 [H, I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G],
					 [I, J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H],
					 [J, K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I],
					 [K, L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J],
					 [L, M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K],
					 [M, N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L],
					 [N, O ,P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M],
					 [O, P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N],
					 [P, Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O],
					 [Q, R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P],
					 [R, S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q],
					 [S, T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R],
					 [T, U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S],
					 [U, V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T],
					 [V, W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U],
					 [W, X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V],
					 [X, Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W],
					 [Y, Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X],
					 [Z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y]
=end

#inicializa una matriz con el abecedario

def solicita_datos
	#Solicita mensaje y clave, las convvierte en mayusculas y elimina los espcios
	puts "Ingresa el mensaje a cifrar: "
	mensaje = gets.chomp.upcase.gsub(/[^A-Z]/, '')

	puts "Ingresa la clave de cifrado: "
	clave_cifrado = gets.chomp.upcase.gsub(/[^A-Z]/, '')

	cifrado_vigenere(mensaje, clave_cifrado)
end


def cifrado_vigenere(mensaje, clave_cifrado)
	p mensaje
	p clave_cifrado

	clave_cifrado = clave_cifrado * (mensaje.length / clave_cifrado.length) + clave_cifrado[0, mensaje.length % clave_cifrado.length]
	p clave_cifrado

end




solicita_datos
