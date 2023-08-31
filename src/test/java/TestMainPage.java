import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import questions.MainPage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TestMainPage extends Mockito {//check redirect on the first question
    private MainPage page;
    @Mock
    private HttpServletRequest request;
    @Mock
    private HttpServletResponse response;

    @Mock
    private HttpSession session;

    @Mock
    private RequestDispatcher requestDispatcher;

    @BeforeEach
    public void setPage(){
        MockitoAnnotations.initMocks(this);
        this.page = new MainPage();
    }

    @Test
    public void testMainPage() throws Exception {
        this.request = mock(HttpServletRequest.class);
        this.response = mock(HttpServletResponse.class);
        this.requestDispatcher = mock(RequestDispatcher.class);
        this.session = mock(HttpSession.class);

        Mockito.when(this.request.getSession()).thenReturn(this.session);
        Mockito.when(this.request.getParameter("username")).thenReturn("testUserName");
        Mockito.when(this.request.getRemoteAddr()).thenReturn("0.0.0.0.0.0.0.1");
        Mockito.when(this.request.getRequestDispatcher("/questOne.jsp")).thenReturn(this.requestDispatcher);


        this.page = new MainPage();
        this.page.doPost(request, response);

        Mockito.verify(this.requestDispatcher).forward(this.request, this.response);
        Mockito.verify(this.request, atLeast(1)).getParameter("username");

    }
}