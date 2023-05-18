package com.escapedoom.auth.data.dataclasses.models.escaperoom.nodes;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
@Builder
public class EscapeRoomDto {

    private Long escaperoom_id;

    private String name;

    private String topic;

    private long time;

    private List<EscapeRoomStage> escapeRoomStages;

}
