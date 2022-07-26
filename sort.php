                         
                                                                
                                                                   
                                                                    <!--<tr>
                                                                      <th scope="row">Mayor</th>
                                                                      <td>Larry</td>
                                                                      <td>the Bird</td>
                                                                      <td>@twitter</td>
                                                                    </tr>-->

                                                                    <?php 

                                                                    $electid = $_SESSION['election_id'];
                                                    
              $getname = " select * from position where pos_id  ='$posid' and election_id ='$electid'   ";
                                 $resultgetname = mysqli_query($con,$getname); 
                                  $counter= mysqli_num_rows($resultgetname); 
                                  if($counter >= 1) {



                                   while($name = mysqli_fetch_array($resultgetname)){
                                                  
                                    $posname = $name['pos_name'];
                                    $nowinn = $name['pos_noofwinner'];
                                    $countofvote = $name['maxvote'];
                                    $posid = $name['pos_id'];
                                    $ppp= true;
                                        //$totalvotes = 0;

                                    ?>
                                    <tr class="table-success">
                                      <td colspan="6"><h6 class="text-dark " style="text-align:center;letter-spacing: 4px; text-transform: uppercase;font-weight: bolder;" ><?php echo $posname ?></h6></td>
                                    </tr>

                                    <?php


                                     $selectwin = "select * from candidate where  pos_id = '$posid' order by votes desc   ";
                                             $resultwin = mysqli_query($con,$selectwin); 
                                             $counterwin= mysqli_num_rows($resultwin);  
                                             if($counterwin >=1 ) {
                                              while($winner = mysqli_fetch_array($resultwin)){ 
                                                $winvotes= $winner['votes'];
                                                $votes =  $winner['votes'];
                                                $totalvotes[]= $winner['votes'];
                                          $s_id = $winner['sv_id'];
                                                $posid_ = $winner['pos_id'];
                                                $poscount[] = $winner['pos_id'];
                                                $advocacy = $winner['advocacy'];
                                                $voters = $winner['voters'];
                                                $cid = $winner['cid'];
                                                $partylist = $winner['partylist'];

                                                 $getstud= " select * from student where s_id = '$s_id' and election_id = '$electid'  ";
                                     $resultgetstud = mysqli_query($con,$getstud); 
                                                       
                                       while($uname = mysqli_fetch_array($resultgetstud)){
                                                            $src = "../upload/";
                                                            $photo = $uname['photo'];
                                                            $gender = $uname['gender'];
                                                              $section = $uname['section'];
                                                              $ss= $uname['s_id'];
                                                              $ssid[]= $uname['s_id'];
                                                          
                                                            if($photo == ''){

                                                                  if($gender == 'male'){
                                                                       $imgsrc = "upload/undraw_profile_pic_ic5t.png";
                                                                    }else {
                                                                        
                                                                        $imgsrc = "upload/undraw_female_avatar_w3jk.png";
                                                                    }
                                                            }else {
                                                                $imgsrc = $src.$uname['photo'];
                                                            }
                                                            $fullname = $uname['surname'].' '.$uname['name'];
                                                            $courseid = $uname['course'];
                                                  $yearid = $uname['year'];

                                                    
                                                    }
                                                       
                                                     
                                                

                                                        ?>

                                                <tr>
                                                  <!--  <td class="">
                                                      <img src="<?php echo $imgsrc ?>" style="width: 140px;height: 140px; border:1px solid #19531e;margin-top: 5px;border-radius: 5px;" class="">
                                                      
                                                    </td>-->
                                                   
                                                    <td>
                                                      <a href="javascript:void(0)" data-toggle="modal" data-target="#exampleModal" data-backdrop="static" data-keyboard="false" class="electeddetails" data-name="<?php echo $fullname ?>" data-pos="<?php echo $posname ?>" data-advoc="<?php echo $advocacy  ?>" data-img="<?php echo $imgsrc ?>"><?php echo $fullname ?></a>
                                                    </td>
                                                    <td>
                                                      <?php 
                                                        $course = " select * from course where courseid = '$courseid'  ";
                                          $resulta = mysqli_query($con,$course);
                                        
                                        
                                           while($getcourse = mysqli_fetch_array($resulta)){
                                      echo $getcourse['course'].'-';
                                      
                                           }

                                             $year = " select * from year where yearid = '$yearid'  ";
                                          $resultas = mysqli_query($con,$year);
                                        
                                        
                                           while($getyear = mysqli_fetch_array($resultas)){
                                      echo $getyear['year'];
                                           }
                          
                                            $sectionqry = " select * from section where sec_id = '$section' ";
                                          $resultsectionqry = mysqli_query($con,$sectionqry);
                                       
                                       
                                           while($getsec = mysqli_fetch_array($resultsectionqry)){
                                      echo $getsec['section'];
                                           }
                                    
                                                       ?>
                                                    </td>

                                                    <td>
                                                        <?php 

                             $prtylist = " select * from `partylist` where party_id = '$partylist' ";
                                          $resultprtylist = mysqli_query($con,$prtylist);
                                       
                                       
                                           while($getpt = mysqli_fetch_array($resultprtylist)){
                                      echo $getpt['partylist'];
                                           }

                            ?>

                                                    </td>

                                                  

                                                    <td style="font-weight:bold">
                                                      <?php echo $votes ?>
                                                     
                                                    </td>
                                                   

                                                </tr>
                                                <?php

                                                      }


                                              

                                            }
                                  }



                                }

                                 if(isset($poscount)){
                        //  echo print_r($poscount);

                          $unique = array_unique($poscount);
                        $duplicates = array_diff_assoc($poscount, $unique);

                        
                      
                      
                        $un = array_diff($unique, $duplicates);
                          


                        foreach ($un as $key => $value) {


                              ?>

                              <script type="text/javascript">
                                
                                $(document).ready(function() {
                                        $('#winnerbydefault<?php echo $value  ?>').html('<span class="badge bg-info"> Winner By Default</span>');
                                       
                                      });      
                                      
                              </script>
                              <?php


                        }

                          foreach ($duplicates as $key => $values) {


                              ?>

                              <script type="text/javascript">
                                
                                $(document).ready(function() {
                                       
                                        $('#winnerbydefaultcontent<?php echo $values ?>').addClass('d-none');
                                      });      
                                      
                              </script>
                              <?php


                        }

                        }

                        if(isset($totalvotes)){

                        }else {
                            $totalvotes = [];
                        }

                                 $sum = array_sum($totalvotes);
                                // echo $sum;

                                

                                 for($i = 0 ; $i < count($totalvotes);$i++){
                                     //echo percentage($totalvotes[$i],$sum);

                                    // echo $ssid[$i];
                                    ?>
                                    <script type="text/javascript">
                                        
                                        $(document).ready(function() {
                                                $('#<?php echo $ssid[$i]?>').css('width',<?php echo percentage($totalvotes[$i],$sum); ?>+'%');
                                                $('#<?php echo $ssid[$i]?>').html(<?php echo percentage($totalvotes[$i],$sum); ?>+'%');
                                              });      
                                            
                                    </script>
                                    <?php
                                 }

                                 function percentage($num_amount, $num_total){
                                 $count1 = $num_amount / $num_total; 
                                 $count2 = $count1 * 100; 
                                 $count = number_format($count2, 0); 
                                 return $count;

                                 }
                            
                              



                                                                     ?>

