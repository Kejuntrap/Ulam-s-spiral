long cx,cy;    //center position
long sq_dk;    //square dekasa
long pax,pay;  //palong x   palong y
long sq_kx,sq_ky;  //square kaisi x  y    (x,y)= (2n+1)^2
long dipx,dipy;//display x  display y
long cnt=1;      //sosu;
long pv;
long bpm=2;
long npm=2;    //before pm  after prime

long twn;        //twin prime number;
long mxp=1;        //MAX prime


void settings(){
  size(displayHeight*9/10,displayHeight*9/10);
  dipx=displayWidth*9/10;
  dipy=displayHeight*9/10;
  
}
void setup(){
  background(0);
  noLoop();
  
  noFill();
  
  
  if(dipx > dipy){
    cx=((long) (dipy/2));
    cy=cx;
    sq_dk=((long) (dipy/2))-1;
  }
  
  else if(dipx <= dipy){
    cy=((long) (dipx/2));
    cx=cy;
    sq_dk=((long) (dipx/2))-1;
  }
  
  pv=1;
}

void draw(){
  background(0);
  stroke(#FFFFFF);
  uramu();
}

void uramu(){
  
  for(long i=1; i<=sq_dk; i++){
    sq_kx=cx+i;
    sq_ky=cy+i;
    
    pax=sq_kx;
    pay=sq_ky;
    
    for(long j=0; j<2*i; j++){
      cnt++;
      pay--;
      isprime(cnt,pax,pay);
    }

 
    for(long k=0; k<2*i; k++){
      cnt++;
      pax--;
      isprime(cnt,pax,pay);
    }

    
    for(long l=0; l<2*i; l++){
      cnt++;
      pay++;
      isprime(cnt,pax,pay);
    }

    
    for(long m=0; m<2*i; m++){
      cnt++;
      pax++;
      isprime(cnt,pax,pay);
    }
  }
}

void isprime(long a, long x,long y){
  long know=a;
  long sq=((long)(Math.sqrt(a)))+1;
  long amari=0;
  long zahyox=x;
  long zahyoy=y;
  
  if(know%2==0){
    //nani mo sinai.
    amari=know%2;
    if(know==2){
      point(zahyox,zahyoy);
    }
    return;
  }
  
  else if(know%2==1){
    for(long h=2; h<=sq; h++){
      amari=know%h;
      
      if(amari==0){//warikire
        return;
      }
      
      else if(know>5 && know%5==0){
        return;
      }
      
      else{
        if(h==sq){
          point(zahyox,zahyoy);
        }
      }
    }
  }
}
