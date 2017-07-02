package com.l.bookCity.mapper;

import com.l.bookCity.bean.User;
import com.l.bookCity.bean.UserAutentication;

public interface UserMapper {

	int insertUser(User user);

	int inserAuthentication(UserAutentication userAutentication);

}
