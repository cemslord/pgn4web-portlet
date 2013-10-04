<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="javax.portlet.PortletPreferences" %>

<portlet:defineObjects/>

<%
    PortletPreferences prefs = renderRequest.getPreferences();
    Boolean doHeader = Boolean.parseBoolean(prefs.getValue("doGameHeader", "true"));
    Boolean doText = Boolean.parseBoolean(prefs.getValue("doGameText", "false"));
    String pgnURL = prefs.getValue("pgnURL","");
%>

<script type="text/javascript">
    "use strict";

    <c:if test="<%= pgnURL!=null && pgnURL.length()>0 %>">
    SetPgnUrl("<%= pgnURL %>");
    </c:if>
    SetImagePath("<%= request.getContextPath()+"/images" %>");
    SetImageType("png");
    SetGameSelectorOptions("Select a game...", false, 0, 8, 0, 0, 0, 0, 10); // (head, num, chEvent, chSite, chRound, chWhite, chBlack, chResult, chDate);
    SetCommentsOnSeparateLines(true);
    SetAutoplayDelay(2500); // milliseconds
    SetAutostartAutoplay(false);
</script>


<form style="display: none;"><textarea style="display: none;" id="pgnText">

    [Event "Wch"]
    [Site "Moscow"]
    [Date "1985.10.15"]
    [Round "16"]
    [White "Karpov"]
    [Black "Kasparov"]
    [Result "0-1"]

    1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 Nc6 5. Nb5 d6 6. c4 Nf6 7. N1c3 a6 8.
    Na3 d5 9. cxd5 exd5 10. exd5 Nb4 11. Be2 Bc5 12. O-O O-O 13. Bf3 Bf5 14.
    Bg5 Re8 15. Qd2 b5 16. Rad1 Nd3 17. Nab1 h6 18. Bh4 b4 19. Na4 Bd6 20. Bg3
    Rc8 21. b3 g5 22. Bxd6 Qxd6 23. g3 Nd7 24. Bg2 Qf6 25. a3 a5 26. axb4 axb4
    27. Qa2 Bg6 28. d6 g4 29. Qd2 Kg7 30. f3 Qxd6 31. fxg4 Qd4+ 32. Kh1 Nf6 33.
    Rf4 Ne4 34. Qxd3 Nf2+ 35. Rxf2 Bxd3 36. Rfd2 Qe3 37. Rxd3 Rc1 38. Nb2 Qf2
    39. Nd2 Rxd1+ 40. Nxd1 Re1+ 0-1

    [Event "Wch"]
    [Site "London"]
    [Date "1986.08.25"]
    [Round "11"]
    [White "Karpov"]
    [Black "Kasparov"]
    [Result "1/2-1/2"]

    1. d4 Nf6 2. c4 g6 3. Nc3 d5 4. Bf4 Bg7 5. e3 c5 6. dxc5 Qa5 7. Rc1 dxc4 8.
    Bxc4 O-O 9. Nf3 Qxc5 10. Bb3 Nc6 11. O-O Qa5 12. h3 Bf5 13. Qe2 Ne4 14. Nd5
    e5 15. Rxc6 exf4 16. Rc7 Be6 17. Qe1 Qb5 18. Ne7+ Kh8 19. Bxe6 fxe6 20. Qb1
    Ng5 21. Nh4 Nxh3+ 22. Kh2 Qh5 23. Nexg6+ hxg6 24. Qxg6 Qe5 25. Rf7 Rxf7 26.
    Qxf7 Ng5 27. Ng6+ Kh7 28. Nxe5 Nxf7 29. Nxf7 Kg6 30. Nd6 fxe3 31. Nc4 exf2
    32. Rxf2 b5 33. Ne3 a5 34. Kg3 a4 35. Rc2 Rf8 36. Kg4 Bd4 37. Re2 Bxe3 38.
    Rxe3 Rf2 39. b3 Rxg2+ 40. Kf3 Rxa2 41. bxa4 1/2-1/2

    [Event "Wch"]
    [Site "Sevilla"]
    [Date "1987.10.14"]
    [Round "2"]
    [White "Kasparov"]
    [Black "Karpov"]
    [Result "0-1"]

    1. c4 e5 2. Nc3 Nf6 3. Nf3 Nc6 4. g3 Bb4 5. Bg2 O-O 6. O-O e4 7. Ng5 Bxc3
    8. bxc3 Re8 9. f3 e3 10. d3 d5 11. Qb3 Na5 12. Qa3 c6 13. cxd5 cxd5 14. f4
    Nc6 15. Rb1 Qc7 16. Bb2 Bg4 17. c4 dxc4 18. Bxf6 gxf6 19. Ne4 Kg7 20. dxc4
    Rad8 21. Rb3 Nd4 22. Rxe3 Qxc4 23. Kh1 Nf5 24. Rd3 Bxe2 25. Rxd8 Rxd8 26.
    Re1 Re8 27. Qa5 b5 28. Nd2 Qd3 29. Nb3 Bf3 30. Bxf3 Qxf3+ 31. Kg1 Rxe1+ 32.
    Qxe1 Ne3 0-1

    [Event "Wch"]
    [Site "Sevilla"]
    [Date "1987.12.16"]
    [Round "23"]
    [White "Karpov"]
    [Black "Kasparov"]
    [Result "1-0"]

    1. c4 c5 2. Nf3 Nf6 3. Nc3 d5 4. cxd5 Nxd5 5. d4 Nxc3 6. bxc3 g6 7. e3 Bg7
    8. Bd3 O-O 9. O-O Qc7 10. Rb1 b6 11. Qe2 Rd8 12. Be4 Ba6 13. c4 Nc6 14. d5
    f5 15. Bd3 e5 16. e4 Nd4 17. Nxd4 cxd4 18. Bg5 Rf8 19. Rfc1 Rac8 20. Bd2
    Rf7 21. a4 fxe4 22. Qxe4 Rcf8 23. f3 Bc8 24. a5 Bf5 25. Qe2 Re8 26. Be4 Bf8
    27. Qd3 Bc5 28. Ra1 Qd7 29. Re1 Qc8 30. Kh1 Rc7 31. Rab1 Kg7 32. Rec1 Bxe4
    33. fxe4 Rf7 34. Qg3 bxa5 35. Bxa5 Rf4 36. Re1 Qa6 37. Bd2 Rf7 38. Qd3 Ref8
    39. h3 Rf2 40. Ra1 Qf6 41. Rg1 h5 42. Ra5 Qe7 43. Rb1 h4 44. Ra6 R8f7 45.
    Rc6 Qf8 46. Rg1 Be7 47. Re6 Kh7 48. Be1 Rf1 49. Bd2 Bc5 50. Rc6 R7f3 51.
    gxf3 Rxf3 52. Rc7+ Kh8 53. Bh6 Rxd3 54. Bxf8 Rxh3+ 55. Kg2 Rg3+ 56. Kh2
    Rxg1 57. Bxc5 d3 1-0

    [Event "Wch"]
    [Site "New York"]
    [Date "1990.10.17"]
    [Round "4"]
    [White "Kasparov"]
    [Black "Karpov"]
    [Result "1/2-1/2"]

    1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 d6 8.
    c3 O-O 9. h3 Bb7 10. d4 Re8 11. Nbd2 Bf8 12. a4 h6 13. Bc2 exd4 14. cxd4
    Nb4 15. Bb1 c5 16. d5 Nd7 17. Ra3 f5 18. exf5 Nf6 19. Ne4 Bxd5 20. Nxf6+
    Qxf6 21. Bd2 Qxb2 22. Bxb4 Bf7 23. Re6 Qxb4 24. Rb3 Qxa4 25. Bc2 Rad8 26.
    Rbe3 Qb4 27. g3 a5 28. Nh4 d5 29. Qe2 Qc4 30. Bd3 Qc1+ 31. Kg2 c4 32. Bc2
    Bxe6 33. Rxe6 Rxe6 34. Qxe6+ Kh8 35. Ng6+ Kh7 36. Qe2 Qg5 37. f6 Qxf6 38.
    Nxf8+ Kg8 39. Ng6 Qf7 40. Ne7+ Kf8 41. Ng6+ 1/2-1/2

    [Event "Wch"]
    [Site "Lyon"]
    [Date "1990.12.15"]
    [Round "20"]
    [White "Kasparov"]
    [Black "Karpov"]
    [Result "1-0"]

    1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 d6 8.
    c3 O-O 9. h3 Bb7 10. d4 Re8 11. Nbd2 Bf8 12. a4 h6 13. Bc2 exd4 14. cxd4
    Nb4 15. Bb1 c5 16. d5 Nd7 17. Ra3 f5 18. Rae3 Nf6 19. Nh2 Kh8 20. b3 bxa4
    21. bxa4 c4 22. Bb2 fxe4 23. Nxe4 Nfxd5 24. Rg3 Re6 25. Ng4 Qe8 26. Nxh6 c3
    27. Nf5 cxb2 28. Qg4 Bc8 29. Qh4+ Rh6 30. Nxh6 gxh6 31. Kh2 Qe5 32. Ng5 Qf6
    33. Re8 Bf5 34. Qxh6+ Qxh6 35. Nf7+ Kh7 36. Bxf5+ Qg6 37. Bxg6+ Kg7 38.
    Rxa8 Be7 39. Rb8 a5 40. Be4+ Kxf7 41. Bxd5+ 1-0

</textarea></form>


<center>
    <c:if test="<%= doHeader %>">
        <b><span id="GameWhite"></span>&nbsp;-&nbsp;<span id="GameBlack"></span>&nbsp;&nbsp;<span
                id="GameResult"></span></b>
    </c:if>
    <p></p>
    <div id="GameBoard"></div>
    <p></p>
    <div id="GameButtons"></div>
    <p></p>
    <div id="GameSelector"></div>
    <p></p>
    <c:if test="<%= doText %>">
        <div id="GameText"></div>
    </c:if>
</center>
