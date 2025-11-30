public class Aviao {
	private String modelo;
	private String piloto;
	public Aviao(String modelo, String piloto) {
		super();
		this.modelo = modelo;
		this.piloto = piloto;
	}
	public String getmodelo() {
		return modelo;
	}
	public void setmodelo(String modelo) {
		this.modelo = modelo;
	}
	public String getpiloto() {
		return piloto;
	}
	public void setpiloto(String piloto) {
		this.piloto = piloto;
	}
}