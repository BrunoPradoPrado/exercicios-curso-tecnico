import java.util.Scanner;
public class MainCelular {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		Celular celular = new Celular();
		
		System.out.println("Digite o nome do celular: ");  //nome
		String nomeCelular = teclado.next();
		celular.setNomeCelular(nomeCelular);
		System.out.println("Digite a marca do celular: ");  //marca
		String marcaCelular = teclado.next();
		celular.setMarcaCelular(marcaCelular);
		System.out.println("Digite a marca do processador: ");  //processador
		String marcaProcessador = teclado.next();
		celular.getProcessador().setMarca(marcaProcessador);
		System.out.println("Digite o modelo do processador: ");  
		String modeloProcessador = teclado.next();
		celular.getProcessador().setModelo(modeloProcessador);
		System.out.println("Digite a velocidade do processador: ");
		int velocidadeProcessador = teclado.nextInt();
		celular.getProcessador().setVelocidade(velocidadeProcessador);
		System.out.println("Digite o tipo da RAM: ");  //ram
		String tipoRam = teclado.next();
		celular.getRam().setTipo(tipoRam);
		System.out.println("Digite a capacidade da RAM: ");  
		int capacidadeRam = teclado.nextInt();
		celular.getRam().setCapacidade(capacidadeRam);
		System.out.println("Digite a capacidade da bateria: ");  //bateria
		int capacidadeBateria = teclado.nextInt();
		celular.getBateria().setCapacidade(capacidadeBateria);
		System.out.println("Digite o tamanho da tela: ");  //tela
		String tamanhoTela = teclado.next();
		celular.getTela().setTamanho(tamanhoTela);
		System.out.println("Digite a resolução da tela: ");  
		String resolucaoTela = teclado.next();
		celular.getTela().setResolução(resolucaoTela);
		
		
		
		celular.caracteristicas();
		
		
		
		
		
	
		
		teclado.close();
	}

}
