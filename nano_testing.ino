
unsigned long endTime;
unsigned long totalBytesSent = 0;
unsigned long startTime;

void setup() {
  // put your setup code here, to run once:
  // Initialize serial communication for output
  Serial.begin(9600);
  
}

bool isExist(int key ,int sbox[], int arrSize) {
  for (int i = 0; i < arrSize; i++) {
    if (sbox[i] == key) {
      return true; // Value exists in the array
    }
  }
  return false; // Value does not exist in the array
}

unsigned long generate_sbox()
{
  unsigned long startTime = millis();
  
  int sbox[32] ;
  int N = 32;
  int n = 0;
  int gamma = 4;
  float x0 = 0.11; 
  for (int i = 0 ; i < 200 ; i++)
  {
    x0 = gamma*x0*(1-x0);
  }
      
    while(n < 31)
    {
        x0 = gamma*x0*(1-x0);

        int val = x0*256;
        val = val%32;
        if( !isExist(val,sbox,n))
        {
          sbox[n] = val;
          n = n + 1;
        }
    }

    endTime = millis();
    unsigned long elapsedTime = endTime - startTime;
    return elapsedTime;
}
void loop() {

  int  t_runs = 2000;
  unsigned long total_time = 0;
  char buffer[50];

  for (int i = 0 ; i < t_runs ; i++)
  {
    unsigned long elapsedTime = generate_sbox();
    total_time += elapsedTime;
  }
    // Print the elapsed time
    sprintf(buffer,"Average time of %d runs)",t_runs);
    Serial.print(buffer);
    Serial.print(total_time);
    Serial.println();
 
}
