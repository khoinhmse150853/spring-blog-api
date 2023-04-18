package com.springboot.blog.dto;

import jakarta.validation.constraints.NotEmpty;
import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CategoryDto {
    private Long id;

    @NotEmpty()
    private String name;

    @NotEmpty()
    private String description;

    private List<PostDto> posts;
}
