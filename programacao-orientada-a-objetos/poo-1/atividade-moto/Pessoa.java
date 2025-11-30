
public class Pessoa {
	private String nome;
	private Moto moto;
	
	public Pessoa(String nome, Moto moto) {
		this.nome = nome;
		this.moto = moto;
	}
	public Pessoa() {}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Moto getMoto() {
		return moto;
	}
	public void setMoto(Moto moto) {
		this.moto = moto;
	}
	
	//métodos
	public void ligarMoto() {
		moto.setStatus(true);
		}
	public void desligarMoto() {
		moto.setStatus(false);
		saida();
		System.out.println();;
	}
	public void acelerar() {
		moto.setVelocidade(moto.getVelocidade()+10);
	}
	public void superacelerar() {
		moto.setVelocidade(moto.getVelocidade()+100);
	}
	public void frear() {
		moto.setVelocidade(moto.getVelocidade()-11);
	}

	public void aumentarMarcha() {
		moto.setMarcha(moto.getMarcha()+1);
	}
	public void diminuirMarcha() {
		moto.setMarcha(moto.getMarcha()-1);
	}
	
	public void saida() {
		System.out.println("A moto está sendo pilotada pelo: "+moto.getDono().getNome());
		System.out.println("A moto da moto é: "+moto.getNome());
		System.out.println("A moto está ligado? "+moto.isStatus());
		System.out.println("A moto está a "+moto.getVelocidade()+"km/h.");
		System.out.println("A moto está na marcha: "+moto.getMarcha());
	}
	
}
