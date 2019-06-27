import { Component , OnInit} from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

	loggedIn = false;
    
    ngOnInit(){

    	this.loggedIn = localStorage.getItem('token') !== null;
    }

    logOut(){
    	localStorage.removeItem('token');
      this.loggedIn = false;
    }

}
