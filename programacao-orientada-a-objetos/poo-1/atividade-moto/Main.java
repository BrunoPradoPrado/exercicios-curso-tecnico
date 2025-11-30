
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Pessoa pessoa = new Pessoa();
		Moto moto = new Moto();
		moto.setDono(pessoa);
		moto.setMarcha(1);
		moto.setNome("Ninja 300");
		moto.setStatus(false);
		moto.setVelocidade(0);

		Moto moto2 = new Moto();
		moto2.setDono(pessoa);
		moto2.setMarcha(50);
		moto2.setNome("CB 300");
		moto2.setStatus(false);
		moto2.setVelocidade(250);
		
		
		pessoa.setNome("Bruno");
		pessoa.setMoto(moto);
		pessoa.ligarMoto();
		pessoa.acelerar();
		pessoa.aumentarMarcha();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.aumentarMarcha();
		pessoa.aumentarMarcha();
		pessoa.frear();
		pessoa.diminuirMarcha();
		pessoa.desligarMoto();
		
		pessoa.setMoto(moto2);
		pessoa.ligarMoto();
		pessoa.acelerar();
		pessoa.aumentarMarcha();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.acelerar();
		pessoa.aumentarMarcha();
		pessoa.aumentarMarcha();
		pessoa.frear();
		pessoa.diminuirMarcha();
		pessoa.desligarMoto();
	}

}
