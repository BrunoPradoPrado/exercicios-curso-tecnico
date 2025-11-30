public class Moto {
	private String nome;
	private int marcha;
	private int velocidade;
	private Pessoa dono;
	private boolean status; //ligado ou desligado
	
	//construtor 
	public Moto(String nome, int marcha, int velocidade, Pessoa dono, boolean status) {
		this.nome = nome;
		this.marcha = marcha;
		this.velocidade = velocidade;
		this.dono = dono;
		this.status = status;
	}
	public Moto() {}
	
	

	
	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public int getMarcha() {
		return marcha;
	}


	public void setMarcha(int marcha) {
		this.marcha = marcha;
	}


	public int getVelocidade() {
		return velocidade;
	}


	public void setVelocidade(int velocidade) {
		this.velocidade = velocidade;
	}


	public Pessoa getDono() {
		return dono;
	}


	public void setDono(Pessoa dono) {
		this.dono = dono;
	}


	public boolean isStatus() {
		return status;
	}


	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
}
