package service;

import java.util.List;
import java.util.Set;

public interface UserService {
  boolean Login(String username,String password);
  Set loadType() throws Exception;
  Set loadActor();
  Set loadDate();
}
