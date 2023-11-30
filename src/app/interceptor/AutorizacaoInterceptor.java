package app.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

public class AutorizacaoInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest req,
			HttpServletResponse res, Object handler) {
		String uri = req.getRequestURI();
		if (uri.endsWith("index")
				|| uri.endsWith("contato")
				|| uri.endsWith("listaclientes")
				|| uri.endsWith("cadastrarcliente")
				|| uri.endsWith("loginusuario")
				|| uri.endsWith("alterarcliente")
				|| uri.endsWith("excluircliente")
				|| uri.endsWith("cadastrarusuario")
				|| uri.contains("/imagens")
				|| uri.contains("/css")
				|| uri.contains("/js")) {
			return true;
		} else if (req.getSession().getAttribute("usuario") != null) {
			return true;
		} else {
			try {
				res.sendRedirect("/loginusuario");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return false;
		}
	}
}
