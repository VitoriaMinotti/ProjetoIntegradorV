package app;

import java.awt.Desktop;
import java.awt.Dimension;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.StandardEnvironment;

@SpringBootApplication(scanBasePackages = "app")
public class Apliacao extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(Apliacao.class);
    }

    public static void main(String[] args) {
    	criarInterfaceGrafica();
        //SpringApplication.run(SpringBootJspApplication.class);
    	
        ConfigurableEnvironment environment = new StandardEnvironment();
        environment.setActiveProfiles("dev");

        SpringApplication sa = new SpringApplication(Apliacao.class);
        sa.setEnvironment(environment);
        //sa.setAdditionalProfiles("remote","live");
        sa.run(args);
    }
    
    private static void criarInterfaceGrafica() {
		// Interface gr�fica do servidor
		JFrame frame = new JFrame();	
		frame.setTitle("Tomcat");
		frame.setPreferredSize(new Dimension(200, 200));
		frame.setResizable(false);
		frame.setLayout(null);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.pack();
		frame.setLocationRelativeTo(null);
		
		JLabel label = new JLabel();
		label.setText("Servidor Tomcat - Spring");
		label.setBounds(20, 20, 160, 110);
		frame.add(label);
		
		JButton botao = new JButton("Browser");
		botao.setBounds(45, 110, 100, 30);
		frame.add(botao);
		botao.addActionListener(e -> {			
			if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				try {
					URI endereco = new URI("http://localhost:9000/index");
					Desktop.getDesktop().browse(endereco);
				} catch (IOException | URISyntaxException ex) {
					ex.printStackTrace();
				}
			}			
		});		
		
		frame.setVisible(true);    	
    }
}