
public class Celular {
	private String nomeCelular;
	private String marcaCelular;
	private Ram ram;
	private Bateria bateria;
	private Tela tela;
	private Processador processador;
	private Camera camera;
	
	public Celular() {
		this.nomeCelular="padrão";
		this.ram=new Ram();
		this.processador=new Processador();
	}
	
	public String getNomeCelular() {
		return nomeCelular;
	}
	public void setNomeCelular(String nomeCelular) {
		this.nomeCelular = nomeCelular;
	}
	public String getMarcaCelular() {
		return marcaCelular;
	}
	public void setMarcaCelular(String marcaCelular) {
		this.marcaCelular = marcaCelular;
	}
	public Bateria getBateria() {
		return bateria;
	}
	public void setBateria(Bateria bateria) {
		this.bateria = bateria;
	}
	public Tela getTela() {
		return tela;
	}
	public void setTela(Tela tela) {
		this.tela = tela;
	}
	public Processador getProcessador() {
		return processador;
	}
	public void setProcessador(Processador processador) {
		this.processador = processador;
	}
	public Camera getCamera() {
		return camera;
	}
	public void setCamera(Camera camera) {
		this.camera = camera;
	}
	public Celular(Ram ram) {
		this.ram = ram;
	}
	public Ram getRam() {
		return ram;
	}
	public void setRam(Ram ram) {
		this.ram = ram;
	}
	
	public void caracteristicas() {
		System.out.println("---CELULAR---");
		System.out.println("Nome:"+this.getNomeCelular());
		System.out.println("Marca:"+this.getMarcaCelular());
		System.out.println("---PROCESSADOR---");
		System.out.println("Marca:"+this.getProcessador().getMarca());
		System.out.println("Modelo:"+this.getProcessador().getModelo());
		System.out.println("Velocidade:"+this.getProcessador().getVelocidade());
		System.out.println("---RAM---");
		System.out.println("Tipo:"+this.getRam().getTipo());
		System.out.println("Capacidade:"+this.getRam().getCapacidade());
		System.out.println("---TELA---");
		System.out.println("Resolução:"+this.getTela().getResolução());
		System.out.println("Tamanho:"+this.getTela().getTamanho());
		System.out.println("---CAMERA---");
		System.out.println("Resolução:"+this.getCamera().getResolução());
		System.out.println("---BATERIA---");
		System.out.println("Capacidade:"+this.getBateria().getCapacidade());
	}
}
