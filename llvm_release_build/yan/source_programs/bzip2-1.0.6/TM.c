#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include <stdbool.h>

typedef struct tapes {
  struct tapes *left;
  struct tapes *right;
  char content;
} Tape;

typedef enum { LEFT,RIGHT } Direction;


//state set{s,a,c,n,o,r,h} corresponding state
//start, add, carry, noncarry, overflow, return, halt        
typedef struct transition {
  char current_state;
  char tape_symbol;
  char new_state;
  char new_tape_symbol;
  Direction dir;
} Transition;

typedef struct list {
  Transition *content;
  struct list *next;
} List;

typedef struct tm {
  char *input_alpha;
  char *input;
  char *tape_alpha;
  char start;
  char accept;
  char reject;
  List *transition;
} TM;

/* struct preprocess { */
/*   char *tape_string; */
/*   int pm_flag; */
/*   char operator; */
/* }; */

//-------------------------------------------------------

Tape *insert_tape(Tape *t, Direction dir, char c) {
  Tape *head = t;
  Tape *new1 = calloc(1,sizeof(Tape));;
  new1 -> content = c;
  if(dir == LEFT) {
    while(t->left != NULL) {
      t = t->left;
    }
    new1->right = t;
    new1->left = NULL;
    t->left = new1;
    return new1;
  }
  if(dir == RIGHT) {
    while(t->right != NULL) {
      t = t->right;
    }
    new1->left = t;
    new1->right = NULL;
    t->right = new1;
    return head;
  }  
}

Tape *create_tape(char *input) {
  int i=1;
  Tape *t = calloc(1,sizeof(Tape));
  t->content = input[0];
  while(1) {
    if(input[i] == '\0') break;
    t = insert_tape(t,RIGHT,input[i]);
    i++;
  }
  return t;
}

/* turn the input string into Transition fields, convert a string to a transition struct */
Transition *get_transition(char *s) {
  Transition *t = calloc(1,sizeof(Transition));
  Direction dir;
  t->current_state = s[0];
  t->tape_symbol = s[1];
  t->new_state = s[2];
  t->new_tape_symbol = s[3];
  dir = (s[4]=='R')? RIGHT:LEFT;
  t->dir = dir;
  return t;
}

/* turn the string into transitions and add into list */
List *insert_list( List *l, char *elem ) {
  List *t = calloc(1,sizeof(List));
  List *head = l;
  while(l->next!=NULL)
    l = l->next;
  t->content = get_transition(elem);
  t->next = NULL;
  l->next = t;
  return head;
}

/* insert a transition into a list */
List *insert_list_transition( List *l, Transition *tr) {
  List *t = calloc(1,sizeof(List));
  List *head = l;
  while(l->next!=NULL)
    l = l->next;
  t->content = tr;
  t->next = NULL;
  l->next = t;
  return head;
}

void print_tape( Tape* tape,char blank) {
  char c;
  //move to the leftmost
  Tape* loop = tape;
  while(1) {
    if(loop->left == NULL){
      break;
    }
    loop = loop->left;
  }
  //print
  while(1) {
    if(loop == NULL) break;
    c = loop->content;
    //if(t->content != blank)
    putchar(c);
    loop = loop->right;
  }
  putchar('\n');
}

void print_transition (Transition *t) {
  char s1[] = "Left";
  char s2[] = "Right";
  if(t==NULL) {
    printf("NULL Transfer");
    return;
  }
  printf("current:%c tape:%c new state:%c new tape:%c direction %s\n",t->current_state,t->tape_symbol,t->new_state,t->new_tape_symbol,(t->dir == LEFT)?s1:s2);
}

/*test if the char c is in the string s */
int contains ( char c, char *s ) {
  int i=0;
  while(1) {
    if(c== s[i]) return 1;

    if(s[i] == '\0') return 0;
    i++;
  }
}

/* test if the input is a valid input */
int is_valid_input( char *input_alpha, char *input ) {
  int i=0;
  char c;
  while(1) {
    c = input[i];
    if(c == '\0') break;
    if(!contains(c,input_alpha)) return 0;
    i++;
  }
  return 1;
}


TM *createTM (char operator, char* tape_str) {
  char* rules;
  switch(operator){
    case '+':
      //printf("plus operator\n");
      rules = "0*0*R:0.1.R:1*2.R:1.1.R:2*3*L:2.2.R:3*3*L:3.4*L:4*h*-:4.4.L";
      break;
    case '-':
      //printf("minus operator\n");
      rules = "0*0*R:0.1*R:1*2*R:1.1.R:2*3*L:2.2.R:3*h.-:3.4*L:4*h*-:4.5.L:5*6*L:5.5.L:6*h.-:6.7.L:7*0*R:7.7.L";
      break;
    case '*'://17 states in total use 0,1...9,A(10),B(11),C(12),D(13),E(14),F(15),G(16) to represent each state
      //printf("multiply operator\n");
      rules = "0*1*R:0.2*R:1*E*R:1.2*R:2*3*R:2.2.R:3*F*L:3.4*R:4*5*R:4.4.R:5*6.L:5.5.R:6*7*L:6.6.L:7*9.L:7.8.L:8*3.R:8.8.L:9*A*L:9.9.L:A*C*R:A.B.L:B*0*R:B.B.L:C*C*R:C.D*R:D*h*-:D.D*R:E*h*-:E.E*R:F*G*L:F.F*L:G*h*-:G.G*L";
      break;
    case '/':
      //40 states in total,0,1,2...9,A(10),B(11),C(12),D(13),E(14),F(15),G(16),H(17),I(18),J(19),K(20),M(21),N(22),O(23),P(24),Q(25),S(26),T(27),U(28),V(29),W(30),X(31),Y(32),Z(33),a(34),b(35),c(36),d(37),e(38),f(39)
      //printf("division operator\n");
      rules = "0*0*R:0.1.L:1*2*L:1.2*L:2*3.L:2.3.L:3*4*R:3.4*R:4*3.R:4.5.R:5*6*R:5.h.-:6*7*R:6.6.R:7*7*R:7.8*R:8*O*L:8.9.L:9*9*L:9.A.L:A*B*R:A.d.L:B*h*-:B.C.R:C*C*R:C.D.L:D*E.L:D.h.-:E*F*L:E.h.-:F*G*L:F.J.L:G*G*L:G.H.L:H*I.R:H.H.L:I*C*R:I.I.R:J*K*L:J.J.L:K*K*L:K.M.L:M*N*R:M.M.L:N*h*-:N.h*-:O*O.L:O.P.R:P*h*-:P.Q*L:Q*h*-:Q.S.L:S*Y*R:S.T.L:T*f*L:T.T.L:U*V.L:U.U.L:V*W*R:V.W*R:W*X*R:W.W.R:X*X*R:X.6*R:Y*h*-:Y.Z*R:Z*a*R:Z.h.-:a*b*L:a.a*R:b*b*L:b.c.L:c*h*-:c.c.L:d*e*R:d.d.L:e*h*-:e.6*R:f*f*L:f.U.L";
      break;
    default:
      break;
  }
  TM *m = calloc(1,sizeof(TM));
  List *tr = calloc(1,sizeof(List));
  char *buffer;
  int lenth = strlen(rules);
  char input[lenth];
  int i;
  for (i = 0;i<lenth;i++) {
    input[i] = rules[i];
  }
  //printf("%s\n",input);
  
  
  /*read input alphabet of PDA
  buffer = strtok(input,":");
  if(buffer == NULL) {
    printf("Error in reading input alphabet!\n");
    exit(1);
  }
  */
  m->input_alpha = ".*";

  /*read tape alphabet
  buffer = strtok(NULL,":");

  if(buffer == NULL) {
    printf("Error in reading tape alphabet!\n");
    exit(1);
  }
  */
  m->tape_alpha = "*.";
  
  /*read input sequence
  buffer = strtok(NULL,":");
  if(buffer == NULL) {
    printf("Error in reading input sequence!\n");
    exit(1);
  }

  if(!is_valid_input(m->input_alpha,buffer)) {
    printf("Error! Input contains some invalid characters that don't match the input alphabet!\n");
    exit(1);
  }

  m->input = buffer;
  */
  buffer = tape_str;
  //printf("tape string:%s",tape_str);
  if(!is_valid_input(m->input_alpha,buffer)) {
    printf("Error! Input contains some invalid characters that don't match the input alphabet!\n");
    exit(1);
  }
  m->input = buffer;
  /*read states and transitions*/
  //buffer = strtok(input,":");
  m->start = '0';
  //buffer = strtok(NULL,":");
  m->accept = 'h';
  //buffer = strtok(NULL,":");
  m->reject = 'r';

  /*read tape transition*/
  bool semaphore = true;
  while(1) {
    if(semaphore){
      buffer = strtok(input,":");
      semaphore = false;
    }
    else{
      buffer = strtok(NULL,":");
    }    
    if(buffer == NULL) break;
    tr = insert_list(tr,buffer);
  }

  m->transition = tr->next;
  return m;
}

Transition *find_transition(List * list,char state, char tape_symbol) {
  Transition *t;
  while(1) {
    if(list==NULL) return NULL;
    t = list -> content;
    if(t->current_state == state && t->tape_symbol == tape_symbol)
      return t;
    list = list->next;
  }
}

Tape *move(Tape *t,Direction dir, char blank) {
  if(dir == LEFT) {
    //printf("go left\n");
    if(t->left==NULL) {
      insert_tape(t,LEFT,blank);
    }
    return t->left;
  }
  if(dir == RIGHT) {
    if(t->right==NULL) {
      insert_tape(t,RIGHT,blank);
    }
    return t->right;
  }
  return NULL;
}

int count_tape(Tape* tp){
  Tape* loop = tp;
  int result = 0;
  //move to the very left
  while(loop->left != NULL) loop = loop->left;
  while(loop->right != NULL){
    if(loop->content == '.'){
      result += 1;
    }
    loop = loop->right;
  }
  if(loop->content == '.')result += 1;
  return result;
}

int simulate( TM *m) {
  /* first symbol in input symbol used to represent the blank symbol */
  //printf("enter function simulate\n");
  const char blank = m->tape_alpha[0];//*
  char current_state = m->start;
  Tape *tape = create_tape(m->input);//first tape from left
  //printf("Tape:");
  //print_tape(tape,'*');
  //move to the very right
  /*
  while(tape->right != NULL){
    putchar(tape->content);
    tape = tape->right;
  }
  putchar('\n');
  */
  Tape *current_tape = tape;
  char current_tape_symbol;
  Transition *current_transition;
  //printf("before while\n");
  while(1) {
    //printf("while looping\n");
    if(current_state == m->accept) {
      //printf("Accept\n");
      //print_tape(current_tape,blank);
      int temp = count_tape(tape);
      //printf("final result:%d\n",temp);
      return temp;
    }
    if(current_state == m->reject) {
      printf("Turing Machine Reject\n");
      print_tape(tape,blank);
      return -1;
      break;
    }
   
    current_tape_symbol = (current_tape==NULL||current_tape ->content == '\0')?blank:current_tape->content;
    //printf("current_tape_symbol:%c current state:%c\n",current_tape_symbol,current_state);
    current_transition = find_transition(m->transition,current_state,current_tape_symbol);
    //print_transition(current_transition);
    current_state = current_transition -> new_state;
    current_tape -> content = current_transition -> new_tape_symbol;
    current_tape = move(current_tape, current_transition ->dir, blank);
    //print_tape(current_tape,blank);
    /*
    Tape* left_node  = current_tape->left;
    if(left_node == NULL) {
      printf("left null\n");
    }else{
      printf("left tape content:%c\n",left_node ->content);
    }
    */    
  }
}


int compare(char operator, char* tape_input){
  TM* p = createTM('-',tape_input);
  int res = simulate(p);
  switch(operator){
    case 1 :      
      return res < 0 ? 1: 0;
      break;
    case 2 :
      return res > 0 ? 1: 0;
      break;
    case 3 :
      return res == 0 ? 1: 0;
      break;
    case 4 :
      return res >= 0 ? 1: 0;
      break;
    case 5 :
      return res <= 0 ? 1: 0;
      break;
  }
  return 0;
}


void parsetm(TM* t){
  printf("function parsetm\ninput_alpha:%s\ninput:%s\ntape_alpha:%s\nstart:%c\naccept:%c\nreject:%c\n",t->input_alpha,t->input,t->tape_alpha,t->start,t->accept,t->reject);
}

//whole process including create TM and intepret TM with UTM
int calculator (int op1,int op2,char op){  
  TM *p;
  int pm_flag;
  switch(op){
    case '+':
      pm_flag = op1 + op2 >= 0 ? 1 : -1;
      //op1 op2 both positive or both negative no need to transform
      if (op1 * op2 < 0){
	if (op1 < 0){
          return calculator(op2,-op1,'-');
	}else{
	  return calculator(op1,-op2,'-');
	}
      }
      //ret.operator = '+';      
      break;
    case '-':
      pm_flag = op1 - op2 >= 0 ? 1 : -1;
      //op1 op2 both positive or both negative no need to transform
      if (op1 * op2 < 0){
	if (op1 < 0){
	  return calculator(op1,-op2,'+');
	}else{
	  return calculator(op1,-op2,'+');
	}
      }
      //ret.operator = '-';
      break;
    case '*':
      pm_flag = op1 * op2 >= 0 ? 1 : -1;
      //ret.operator = '*';
      break;
    case '/':
      if (op1 / op2 > 0){
        pm_flag = 1;
      }else{
        pm_flag = -1;
      }
      //ret.operator = '/';
      break;
    default:
      break;
  };
  //tape construction 
  int l1 = abs(op1);
  int l2 = abs(op2);
  if (l1 < l2){
    int temp = l1;
    l1 = l2;
    l2 = temp;
  }
  char tape_str[l1+l2+4];
  int i,j;
  tape_str[0] = '*';  
  for (i = 1; i < 1+l1; i++ ) {
    tape_str[i] = '.';
  }
  tape_str[i] = '*';
  j = i+1;
  for (; j < l1+l2+2; j++){
    tape_str[j] = '.';
  }
  tape_str[j] = '*';
  tape_str[l1+l2+3] = '\0';
  //printf("tape str in calculaor:%s",tape_str);
  p = createTM(op,tape_str);
  //parsetm(p);
  int ret = simulate(p) * pm_flag;
  //printf("main result:%d",ret);
  return ret;
}

int ext_callee(int operator,int op1,int op2){
  int result,tmp;
  // ICMP_EQ    = 32,  ///< equal
  // ICMP_NE    = 33,  ///< not equal
  // ICMP_UGT   = 34,  ///< unsigned greater than
  // ICMP_UGE   = 35,  ///< unsigned greater or equal
  // ICMP_ULT   = 36,  ///< unsigned less than
  // ICMP_ULE   = 37,  ///< unsigned less or equal
  // ICMP_SGT   = 38,  ///< signed greater than
  // ICMP_SGE   = 39,  ///< signed greater or equal
  // ICMP_SLT   = 40,  ///< signed less than
  // ICMP_SLE   = 41,  ///< signed less or equal
  printf("parameters operator %d,op1 %d,op2 %d\n",operator,op1,op2);
  printf("A Turing Machine Started\n");
  switch(operator){    
    case 32:
      tmp = calculator(op1,op2,'-');
      result = tmp == 0 ? 1 : 0;
      break;
    case 33:
      tmp = calculator(op1,op2,'-');
      //printf("temp:%d\n",tmp);
      result = tmp != 0 ? 1 : 0;
    case 34:
      tmp = calculator(op1,op2,'-');
      result = tmp > 0 ? 1 : 0;
      break;
    case 35:
      tmp = calculator(op1,op2,'-');
      result = tmp >= 0 ? 1 : 0;
      break;
    case 36:
      tmp = calculator(op1,op2,'-');
      result = tmp < 0 ? 1 : 0;
      break;
    case 37:
      tmp = calculator(op1,op2,'-');
      result = tmp <= 0 ? 1 : 0;
      break;
    case 38:
      tmp = calculator(op1,op2,'-');
      result = tmp > 0 ? 1 : 0;
      break;
    case 39:
      tmp = calculator(op1,op2,'-');
      result = tmp >= 0 ? 1 : 0;
      break;
    case 40:
      tmp = calculator(op1,op2,'-');
      //printf("temp:%d\n",tmp);
      result = tmp < 0 ? 1 : 0;
      break;
    case 41:
      tmp = calculator(op1,op2,'-');
      result = tmp <= 0 ? 1 : 0;
      break;
    default:
      break;
  }  
  return result;
}

/*
int main() {  
  printf("result:%d",ext_callee(41,-102,-103));
  return 0;
}
*/
