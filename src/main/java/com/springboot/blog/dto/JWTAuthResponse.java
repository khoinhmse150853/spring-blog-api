package com.springboot.blog.dto;

import lombok.*;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class JWTAuthResponse {
    private String accessToken;
    private String tokenType = "Bearer";
}
