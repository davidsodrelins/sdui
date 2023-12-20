// button.component.ts
import { Component, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-button',
  template: `
    <button (click)="onClick.emit()">{{ label }}</button>
  `,
  styles: []
})
export class ButtonComponent {
  @Input() label: string = 'Button';
  @Output() onClick = new EventEmitter<Event>();
}
