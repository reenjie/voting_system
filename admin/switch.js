 //<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    $(document).ready(function(){
        
  
             
          $('#flexSwitchCheckDefault').click(function() {
                 
                
                  if($(this).prop("checked") == true) {
                      
                                                
                                                    
                                                       var xhttp = new XMLHttpRequest();
                                                      xhttp.onreadystatechange = function() {
                                                       if (this.readyState == 4 && this.status == 200) {
                                                      const data = this.responseText;
                                                    
                                                        // Your condition here if data success.
                                                    
                                                                   }
                                                                };
                                                        xhttp.open("POST", "reset.php",true);
                                                        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                                        xhttp.send("Publicize=1");
                                                            
                                                                     
                                                     
                                                                                
                     }
                  else if($(this).prop("checked") == false) {
                       
                                                             var xhttp = new XMLHttpRequest();
                                                      xhttp.onreadystatechange = function() {
                                                       if (this.readyState == 4 && this.status == 200) {
                                                      const data = this.responseText;
                                                    
                                                        // Your condition here if data success.
                                                    
                                                                   }
                                                                };
                                                        xhttp.open("POST", "reset.php",true);
                                                        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                                        xhttp.send("unPublicize=1");
                                                                                   
                   }
                })
                
                
    })
   
 