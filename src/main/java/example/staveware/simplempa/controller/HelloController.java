package example.staveware.simplempa.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

    @RequestMapping("/")
    @ResponseBody
    public Map<String, String> home() {
        Map<String, String> map = new HashMap<String, String>();
        map.put("hello", "Hello world!");
        return map;
    }
}
