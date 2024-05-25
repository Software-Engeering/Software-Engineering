package software.softwareEngineering.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Builder
public class PlaylistDTO {

    private Long id;
    private String category;
}
