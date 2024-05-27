package software.softwareEngineering.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class SongDTO {

    private String title;
    private String artist;
    private String time;
    private String date;
}
