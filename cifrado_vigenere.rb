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



def cifrado_vigenere
	# crea una matriz con los elementos del abecedario
	abecedario = ("A".."Z").to_a 
	
	#Solicita mensaje y clave, las convvierte en mayusculas y elimina los espcios
	puts "Ingresa el mensaje a cifrar: "
	mensaje = gets.chomp.upcase.gsub(/[^A-Z]/, '')
	
	puts "Ingresa la clave de cifrado: "
	clave_cifrado = gets.chomp.upcase.gsub(/[^A-Z]/, '')
	
	p mensaje
	p clave_cifrado


end

cifrado_vigenere