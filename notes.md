<h2> <%= pl.label :midfielders %><br></h2>
    <% @m.each do |f|%>
        <%#byebug%>
        <%= pl.radio_button 'Mid','f.id'%> <%=f.name%> <br> 
        Age: <%=f.age%> years <br>
        Team: <%=f.team.name%><br><br>
    <%end%>

   <h2> <%= pl.label :defenders %><br></h2>
    <% @d.each do |f|%>
        <%#byebug%>
        <%= pl.radio_button 'Def','f.id'%> <%=f.name%> <br> 
        Age: <%=f.age%> years <br>
        Team: <%=f.team.name%><br><br>
    <%end%>

   <h2> <%= pl.label :Goalkeepers %><br></h2>
    <% @g.each do |f|%>
        <%#byebug%>
        <%= pl.radio_button 'GK','f.id'%> <%=f.name%> <br> 
        Age: <%=f.age%> years <br>
        Team: <%=f.team.name%><br><br>
    <%end%>