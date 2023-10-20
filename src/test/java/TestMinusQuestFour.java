import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import questions.MinusQuestFour;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestMinusQuestFour extends Mockito {//check redirect on the -4 negative question
    private MinusQuestFour page;//
    @Mock
    private HttpServletRequest request;
    @Mock
    private HttpServletResponse response;
    @Mock
    private RequestDispatcher requestDispatcher;

    @BeforeEach
    public void setPage() {
        MockitoAnnotations.initMocks(this);
        this.page = new MinusQuestFour();
    }

    @Test
    public void testMinusQuestFour() throws Exception {
        this.request = mock(HttpServletRequest.class);
        this.response = mock(HttpServletResponse.class);
        this.requestDispatcher = mock(RequestDispatcher.class);



        Mockito.when(this.request.getRequestDispatcher("/-4.jsp")).thenReturn(this.requestDispatcher);


        this.page = new MinusQuestFour();
        //this.page.doPost(request, response);

        Mockito.verify(this.requestDispatcher).forward(this.request, this.response);
    }

}
