import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private userData = new BehaviorSubject('user');
  currentUser = this.userData.asObservable();

  constructor() { }

  getUser(userData:string) {
     this.userData.next(userData);
  }

}