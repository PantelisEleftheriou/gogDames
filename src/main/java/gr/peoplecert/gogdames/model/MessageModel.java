
package gr.peoplecert.gogdames.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class MessageModel {
   private String fromLogin;
   private String message; 
}
