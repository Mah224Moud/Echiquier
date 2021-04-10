//<>
#include "colors.inc"
#include "skies.inc"
#include "functions.inc"
#include "woods.inc"
#include "textures.inc"

#declare axe= 1;
#declare sca= 3;
/*Lumiere et plan*/
camera 
{
    location <0,10, -10>
    look_at <0, 0, 1>
}
light_source
{
    < 0, 24, -35>
    color White
}
plane
{
    y
    0
    pigment
    {Gray}
}


/*Plateau*/
#declare Echiquier=
union
{
    box
    {
        < -1.00,-0.05, -1.00> < 1.00, 0.00012,1.00>
        texture
        {
            pigment
            {
                checker
                pigment{Jade}
                pigment{White_Marble}
                scale 0.25
            }
        }
    }
    box
    {
        < -1.05, -0.05, -1.05> < 1.05, 0.00010,1.05>
        texture
        {   
            pigment
            {
                checker
                pigment{Blood_Marble}
                pigment {Blood_Marble}
            }
        }
    }
}
object
{
    Echiquier
    scale 5
}



/**********************
*** Construction ******
***** Des *************
***** Pieces *********
**********************/ 



/*pions*/
#declare PA= <0, 0>;
#declare PB= <1.12, 0>;
#declare PC= <1.12, 0.13>;
#declare PE= <1.38, 0.32>;
#declare PF= <1.39, 0.63>;
#declare PG= <1.12, 0.66>;
#declare PH= <0.94, 0.67>;
#declare PJ= <1.12, 0.9>;
#declare PK= <1.12, 1.1>;  
#declare PL= <0.85, 1.13>;
#declare PM= <0.74, 1.38>;
#declare PN= <0.65, 1.64>;
#declare PO= <0.54, 2.07>;
#declare PP= <0.46, 2.38>;
#declare PQ= <0.37, 2.68>;
#declare PR= <0.85, 2.74>;
#declare PS= <0.85, 2.9>; 
#declare PT= <0.34, 2.94>; 

#declare pion=
union {
        lathe
        {
            linear_spline
            3,
            PA, PB, PC
        }
        
        lathe
        {
            bezier_spline
            4
            PC, PE, PF, PG
        }
        lathe
        {
            linear_spline
            2
            PG, PH
        }      
        lathe
        {
            bezier_spline
            4
            PH, PJ, PK, PL
        }
        lathe
        {
            cubic_spline
            7
            PK, PL, PM, PN, PO, PP, PQ
        }
        lathe
        {
            linear_spline
            2  
            PP, PQ
         }
        lathe
        {
            bezier_spline
            4  
            PQ, PR, PS, PT
         }
        sphere { <0,3.5,0> 0.7 }
        scale 0.45
}            

/*fou*/
#declare fou=
blob
{
    threshold 0.5
    cylinder
    {
        <0, 0.5, 0>,
        <0, 0, 0>,
        5, 1.5                   
    } 
    cylinder
    {
        <0, 1, 0>,
        <0, 0.5, 0>,
        4.5, 1.4                
    }   
     cylinder
    {
        <0, 1.5, 0>,
        <0, 1, 0>,
        4, 1.3                  
    }
    cylinder
    {
        <0, 6, 0>,
        <0, 1.5, 0>,
        3.5, 1.2                
    }
    cylinder
    {
        <0, 6.5, 0>,
        <0, 6, 0>,
        3, 1.5           
    }  
    cylinder
    {
        <0, 7, 0>,
        <0, 6.5, 0>,
        2.5, 2.5         
    }
    cylinder
    {
        <0, 10, 0>,
        <0, 7, 0>,
        2, 2.3                 
    } 
    sphere
    {
        <0, 11, 0>,
       1, 1.5
    } 
    scale 0.15
}  


/*dames*/
#declare dame=
union
{
     cylinder
    {
        <0, -1.8, 0>
        <0, -1.25, 0>
        3.2          
    }
    cone 
    {
        <0,-1.5,0>
         2
        <0,-1.,0>
        3.1
    } 
    cone {
        <0,2,0>
         0
        <0,-1,0>
        3.1
        } 
    cylinder
    {
        <0, 0.2, 0>
        <0, -0.5, 0>
       2.5  
    } 
    cone 
    {
        <0,4,0>
         0
        <0,0.25,0>
        2.1
    } 
    cylinder
    {
        <0, 5, 0>
        <0, 0.25, 0>
        2   
    } 
    cone 
    {
        <0,1,0>
         0
        <0,5,0>
       3
    } 
    cone 
    {
        <0,2,0>
         0
        <0,5.5,0>
       2.5
    }  
    cone 
    {
        <0,3,0>
         0
        <0,7,0>
       2
    }
    sphere
    {
        <0, 7, 0>
        1.2
    }
    box 
    {
        <-1.5,7,-1>
        <-1,8,1>
    } 
    box 
    {
        <1.05,7,-1>
        <1.5,8,1>
    }
    box 
    {
        <0.80,7,1>
        <-0.9,8,1.4>
    }
    box 
    {
        <0.9,7,-1>
        <-0.9,8,-1.5>
    } 
  cone 
    {
        <0,8.5,0>
         0
        <0,7.8,0>
        0.5
    } 
    scale 0.20
}

/*Roi*/
#declare roi=
union
{
    cylinder
    {
        <0, -1.8, 0>
        <0, -1.25, 0>
        3.2  
    }
    cone 
    {
        <0,-1.5,0>
         2
        <0,-1.,0>
        3.1
    } 
    cone 
    {
        <0,2,0>
         0
        <0,-1,0>
        3.1
    } 
    cylinder
    {
        <0, 0.2, 0>
        <0, -0.5, 0>
       2.5  
    } 
    cone 
    {
        <0,4,0>
         0
        <0,0.25,0>
        2.1
    } 
    cylinder
    {
        <0, 5, 0>
        <0, 0.25, 0>
        2  
    } 
    cone 
    {
        <0,1,0>
         0
        <0,5,0>
       3
    } 
    
    cone 
    {
        <0,2,0>
         0
        <0,5.5,0>
       2.5
    }  
    cone 
    {
        <0,3,0>
         0
        <0,7,0>
       2
    }
    box 
    {
        <-0.5,8.5,0.5>
        <0.5,7,-0.5>
    }
    box 
   {
        <-0.5,8,-2>
        <0.5,7.5, 2>
  } 
  scale 0.2 
  rotate <0, 90, 0>
}    

/*Tour*/ 

#declare tour=
union
{
    cylinder
    {
        <0, -1.8, 0>
        <0, -1.25, 0>
        3.2  
    }
    cone 
    {
        <0,-1.5,0>
         2
        
        <0,-1.,0>
        3.1
    } 
    cone {
        <0,2,0>
         0
        
        <0,-1,0>
        3.1
        } 
    cylinder
    {
        <0, 0.2, 0>
        <0, -0.5, 0>
       2.5                     
    } 
    cone {
        <0,4,0>
         0
        <0,0.25,0>
        2.1
        } 
    cylinder
    {
        <0, 5, 0>
        <0, 0.25, 0>
        2                      
    } 
    cone 
    {
        <0,1,0>
         0
        <0,5,0>
       3
    } 
    
    box {
        <-2.5,7,-1.5>
        <-1.8,5,1.5>
  } 
  box {
        <1.7,7,-1.5>
        <2.4,5,1.5>
  }
   box {
        <1.3,7,2.4>
        <-1.7,5,1.8>
  }
   box {
    <1.3,7,-1.8>
    <-1.7,5,-2.3>
  }   
  scale 0.2
} 

/*Cavalier*/
#declare cavalier=
union
{
    cylinder
    {
        <0, -1.8, 0>
        <0, -1.25, 0>
        3.2             
    }
    cone 
    {
        <0,-1.5,0>
         2
        
        <0,-1.,0>
        3.1
    } 
    cone {
        <0,2,0>
         0
        
        <0,-1,0>
        3.1
        } 
    cylinder
    {
        <0, 0.2, 0>
        <0, -0.5, 0>
       2.5                      
    } 
    cone {
        <0,2,0>
         0
        
        <0,0.25,0>
        2.1
        } 
    cylinder
    {
        <0, 2, 0>
        <0, 0.25, 0>
        2                      
    }
     cylinder
    {
        <0, 11, 0>
        <0, 2, 0>
        2                  
    }
 
    cone 
    {
        <-10,1,0>
         1.5
        
        <-10,8,0>
       2
        rotate<0, 0, -87>
        translate<-6.4,-1.5,0>
    }  
    scale 0.2
    rotate<0,70, 0>
}


/************************
********* Placement *****
********** Des **********
********** Pièces *******
*************************/



/*Pions*/
#declare dupli_pion= object
{
    pion
} 
/////////////////
#macro placerpion(a) 
object { pion translate a
        pigment {Red_Marble}}
#end 
#macro placerpion1(a) 
object { pion translate a
        pigment {Red}}
#end    
//////////////
#declare p1=<4.3,0,3>;
placerpion1(p1)
#declare p12=<-4.3,0,3>;
placerpion1(p12)
#declare p13=<-3.15,0,3>;
placerpion1(p13)
#declare p14=<-1.9,0,3>;
placerpion1(p14)
#declare p15=<-0.6,0,3>;
placerpion1(p15)
#declare p16=<1.85,0,3>;
placerpion1(p16)
#declare p18=<3,0,3>;
placerpion1(p18) 

#declare p21=<4.3,0,-3>;
placerpion(p21)
#declare p22=<-4.5,0,-3>;
placerpion(p22)
#declare p24=<-1.9,0,-3>;
placerpion(p24)
#declare p25=<-0.6,0,-3>;
placerpion(p25)
#declare p26=<0.6,0,-3>;
placerpion(p26)
#declare p27=<1.85,0,-3>;
placerpion(p27)
#declare p28=<3,0,-3.2>;
placerpion(p28)   
/***********************/       



/*Les Dames*/
#declare dupli_dames= object
{
    dame
}
////////////////////
#macro PositionnerDames1(a) 
    object 
    {
        dame translate a
        pigment{Red}
    }
#end 
#macro PositionnerDames2(a) 
    object 
    {
        dame translate a
        pigment {Red_Marble}
    }
#end 
/////////////////
#declare D1= <-0.6,0,4.4>;
PositionnerDames1(D1)
#declare D2= <-0.6,0,-4.4>;
PositionnerDames2(D2)
/**************************/


/*Les Rois*/   
#declare dupli_rois= object
{
    roi
}  
///////////
#macro PositionnerRois1(a)
    object {roi translate a
    pigment {Red}}
#end
#macro PositionnerRois2(a)
    object {roi translate a
    pigment {Red_Marble}
    }
#end
///////////////
#declare R1= <0.6,0,4.4>;
PositionnerRois1(R1)
#declare R2= <0.6,0,-4.4>;
PositionnerRois2(R2)
/*********************/


/* Les Tours  */             
#declare dupli_tours=object
{
    tour
}        
//////////
#macro PositionnerTours1(a)
    object {tour translate a
    pigment{Red}}
#end
#macro PositionnerTours2(a)
    object {tour translate a
    pigment {Red_Marble}    }
#end  
////////////  
#declare T1= <-4.4,0,4.4>;
PositionnerTours1(T1)
#declare T11= <4.5,0,4.4>;
PositionnerTours1(T11)

#declare T2= <-4.4,0,-4.4>;
PositionnerTours2(T2)
#declare T22= <4.5,0,-4.4>;
PositionnerTours2(T22)
/*************************/


/*Les Fou*/
#declare dupli_fou= object
{
    fou
}
//////////////
#macro PositonnerFou1(a)
    object {fou translate a
    pigment {Red}}
#end
#macro PositonnerFou2(a)
    object {fou translate a
    pigment {Red_Marble}}
#end
///////////////
#declare F1= <-1.9,0,4.4>;
PositonnerFou1(F1)
/*#declare F11= <3.1,0,4.4>;
        PositonnerFou1(F11)*/

#declare F2= <-1.9,0,-4.4>;
PositonnerFou2(F2)
#declare F22= <1.9,0,-4.4>;
PositonnerFou2(F22) 
/*************************/                       
                         

/*Les Cavaliers*/
#declare dupli_cav= object
{
    cavalier
}
///////////////////
#macro placercav1(a) 
object { cavalier translate a
        pigment {Red}}
#end 
#macro placercav2(a) 
object { cavalier translate a
        pigment {Red_Marble}}
#end
////////////  
#declare C1= <-3.1,0,4.4>;
placercav1(C1)
#declare C11= <3.1,0,4.4>;
placercav1(C11) 


#declare C22= <3.1,0,-4.4>;
placercav2(C22)



/********************************
************ Debut ***************
************* De *****************
*********** L'animation***********
**********************************/       




/*Animation*/
#declare n= clock;
#declare frame= 55*n;

/*Pion Marbre*/
#for(i,0,n) 
    #if(frame<1)
        #declare p23=<-3.15,0,-3>;
        placerpion(p23) 
     #end
    #if(frame>=1 & frame<5) // pour les image 1 à 5
        
     #declare p23=<-3.15,0,-3+(0.2*frame)>;
        placerpion(p23)  
    
    #end
    #if(frame>=5)
        #declare p23=<-3.15,0,-1.9>;
        placerpion(p23)
    #end
#end


/*Pion Rouge*/
#for(i,0,n) 
    #if(frame<5)
        #declare p17=<0.6,0,3>;
        placerpion1(p17) 
     #end
    #if(frame>=5 & frame<10) // pour les image 1 à 5
        
     #declare p17=<0.6,0,3-(0.28*frame)>;
        placerpion1(p17)  
    
    #end
    #if(frame>=10)
        #declare p17=<0.6,0,0.6>;
        placerpion1(p17)
    #end
#end  



/*Cavalier Marbre*/
#declare PA= <-3.1,1,-4.4>;
#declare PB= <-3.1,1.5,-3>; 
#declare PC= <-3.1,2,-1.9>;
#declare PD= <-4.4,2.5,-1.9>;
#declare T= (0.1*(frame-9));

#for(i,0,n) 
    #if(frame<10)
        #declare P= <-3.1,0,-4.4>;
        placercav2(P) 
     #end   

    #if(frame>=10 & frame<15)   // pour les images 10 à 15
        
        #declare y0= pow((1-T),3)*PA.y+ 3*PB.y*pow((1-T),2)*T + 3*PC.y*(1-T)*pow(T,2) + PD.y*pow(T,3); 
        #declare z0= pow((1-T),3)*PA.z+ 3*PB.z*pow((1-T),2)*T + 3*PC.z*(1-T)*pow(T,2) + PD.z*pow(T,3);
     #declare destination= <-3.1, y0, z0>;
               placercav2(destination)
    #end
    #if(frame>=15)
        #declare PD=<-4.4,0,-1.9>;
        placercav2(PD)
    #end
#end



/*Fou Rouge*/
#for(i,0,n)
    #if (frame<16)
        #declare F11= <1.9,0,4.4>;
        PositonnerFou1(F11)
        
       PositonnerFou1(F11) 
     #end
    #if(frame>=16 & frame<25) // pour les image 15 à 25
     
        
        #declare F11= <1.9-(0.1*frame-0.1),0,4.4-(0.1*frame-0.1)>;
        PositonnerFou1(F11)  
    
    #end
    #if(frame>=25)
       #declare F11=<-0.6,0,2>;
       PositonnerFou1(F11)
    #end
#end 