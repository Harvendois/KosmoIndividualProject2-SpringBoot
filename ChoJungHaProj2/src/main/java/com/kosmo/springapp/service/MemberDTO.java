package com.kosmo.springapp.service;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
	private String id;
	private String pwd;
	private String name;
	private String registrynum;
	private String addr;
	private String[] inter;
}
