import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { Appliances } from '../../Models/Appliances';
import { RouterOutlet } from '@angular/router';
import {MatButtonModule} from '@angular/material/button';
import {MatCardModule} from '@angular/material/card';
import {MatGridListModule} from '@angular/material/grid-list';
import { ProductsService } from '../Services/products.service';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { Products } from '../../Models/Product';

@Component({
  selector: 'app-clothing',
  standalone: true,
  imports: [CommonModule,
    RouterOutlet,
    MatButtonModule,
    MatCardModule,
    MatGridListModule,
    HttpClientModule,
    RouterModule,
    MatToolbarModule,
    MatIconModule],
  providers: [ProductsService],
  templateUrl: './clothing.component.html',
  styleUrl: './clothing.component.css'
})
export class ClothingComponent implements OnInit {
  appdata: Products[]=[];
  constructor(private service:ProductsService){}
  ngOnInit(): void {
    this.service.service13().subscribe(
      (response: Products[]) => {
        console.log('API Response:', response);
        this.appdata = response;
        console.log('Products:', this.appdata);
      },
      (error) => {
        console.error('Error fetching profile pics:', error);
      }
    );
  }

}
