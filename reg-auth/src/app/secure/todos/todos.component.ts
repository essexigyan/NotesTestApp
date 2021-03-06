import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { RouterModule, Router, ActivatedRoute} from '@angular/router';
import { FormsModule, FormBuilder, FormGroup } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { UserService} from '../../public/user.service';

@Component({
  selector: 'app-todos',
  templateUrl: './todos.component.html',
  styleUrls: ['./todos.component.css']
})
export class TodosComponent implements OnInit {

todos;
form:FormGroup;
USER_URL   = "http://localhost:8000/todos/create";
UID;

  constructor(private http:HttpClient, private router:Router, private fb:FormBuilder,private route: ActivatedRoute) {
   
   
   }

  ngOnInit() {
  
   this.UID = localStorage.getItem('uid');

   console.log('TODOS--UID',this.UID);

 	const headers = new HttpHeaders({
 		'Authorization' : `Bearer ${localStorage.getItem('token')}`
 	})


    this.form = this.fb.group({
      title: [''],
      todo: [''],
      uid: [''],

    });

  	this.http.get(`http://localhost:8000/todos/${this.UID}`, {headers:headers}).subscribe(
  		(res)=>{
  			this.todos = res},
  		(err)=>{

  			console.log(err);
  		}
  		)
  }

  submit(){
  	 const formData = this.form.getRawValue();

     this.UID = localStorage.getItem('uid');

  	 const data = {
  	 	title	: 	formData.title,
  	 	todo	: 	formData.todo,
  	 	user_id		: 	this.UID,
  	 	created_at	: new Date(Date.now()).toLocaleString(),
  	 	client_id	: 		2,
  	 	client_secret: 		'SF8ACVdAvCHDCucyfUSmpz4l1TXTj2L54b8eenoG',
  	 	scope: 		'*'
  	 }

 

   const headers = new HttpHeaders({'Authorization' : `Bearer ${localStorage.getItem('token')}`})

    this.http.post<any>('http://localhost:8000/todos/create',data,{headers:headers}).subscribe(
        (res) => {
         //localStorage.setItem('uid',res.id);
        // this.router.navigate(['/secure/todos'])
         this.ngOnInit();
        console.log(res);
        },
        (err) => {
          console.log(err);
        } 
        )  

  }

}


