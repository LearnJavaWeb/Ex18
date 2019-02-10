package thinhluffy.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import thinhluffy.com.model.Member;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/memeber.html")
public class MemberController {
    @RequestMapping(method = RequestMethod.GET)
    public String initForm(Model model){
        Member member = new Member();

        List<String> preCheckedVals = new ArrayList<String>();

        preCheckedVals.add("Lettuce");
        member.setCourses(preCheckedVals);
        model.addAttribute("member",member);
        List<String> courses = new ArrayList<String>();
        courses.add("Lettuce");
        courses.add("Tomoto");
        courses.add("Musturd");
        courses.add("Sprouts");
        model.addAttribute("courses",courses);
        return "member";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String saveForm(Model model, Member member, BindingResult result){
        model.addAttribute("member",member);
        return "successMember";
    }
}
