class MyIpsum

  def self.generate_text(type, num)
    @type = type ? type.to_sym : :standard
    num = num ? num.to_i : 4
    text = []
    num.times do
      text << make_paragraph
    end
    text
  end

  def self.sentences
    LIPSUMS[@type].split('.')
  end

  def self.make_paragraph
    sentences.sample(rand(5..10)).join('.')
  end

  LIPSUMS = {
    :standard => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut finibus, elit sed eleifend pharetra, ipsum eros tempus nulla, ac malesuada urna lorem eu odio. Duis eu scelerisque metus, non vestibulum orci. Suspendisse a mi pharetra, viverra eros ut, egestas lorem. Mauris sagittis, est non euismod luctus, lacus dui fermentum sapien, sit amet volutpat urna est a justo. Vivamus bibendum, lectus sed placerat tincidunt, purus dui sollicitudin mi, aliquet maximus metus sem at sapien. Maecenas at ex venenatis lorem condimentum gravida. In et erat eu lorem varius aliquet. Praesent sagittis lacus non augue tincidunt hendrerit. Curabitur consequat ut erat eget eleifend. Proin consectetur augue sed est elementum aliquam. Praesent vehicula pellentesque eros ac venenatis. Sed porttitor velit non arcu volutpat, quis accumsan metus posuere. Etiam cursus magna in mauris vehicula laoreet.",
    :hipster => "Paleo mustache aesthetic, hashtag meh mixtape green juice keffiyeh. Fap fixie dreamcatcher four dollar toast. Readymade blog messenger bag, roof party small batch pop-up jean shorts 8-bit helvetica biodiesel selfies put a bird on it. 8-bit health goth godard cardigan. Knausgaard authentic put a bird on it wolf raw denim, jean shorts bushwick sustainable. Godard banh mi microdosing, cray normcore tumblr hammock helvetica trust fund 8-bit everyday carry organic vice fixie. Jean shorts chambray tousled retro trust fund. Hoodie normcore lo-fi, lumbersexual tilde church-key four loko occupy everyday carry yr kale chips helvetica venmo shoreditch. Neutra messenger bag shoreditch yuccie, venmo brooklyn meditation irony occupy meggings artisan lomo squid semiotics. Man bun art party raw denim microdosing, slow-carb before they sold out lo-fi. Man bun mixtape dreamcatcher yuccie chia bushwick fanny pack, try-hard photo booth man braid. Crucifix microdosing pinterest, tofu thundercats cray man braid celiac four dollar toast. Neutra man bun listicle cronut typewriter normcore. Polaroid intelligentsia humblebrag waistcoat raw denim, kale chips chillwave affogato typewriter gluten-free mlkshk keytar neutra.",
    :samuel => "My money's in that office, right? If she start giving me some bullshit about it ain't there, and we got to go someplace else and get it, I'm gonna shoot you in the head then and there. Then I'm gonna shoot that bitch in the kneecaps, find out where my goddamn money is. She gonna tell me too. Hey, look at me when I'm talking to you, motherfucker. You listen: we go in there, and that nigga Winston or anybody else is in there, you the first motherfucker to get shot. You understand? Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass. Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.",
    :fillerama => "There's one way and only one way to determine if an animal is intelligent. Dissect its brain! Stop it, stop it. It's fine. I will 'destroy' you! Oh God, what have I done? Guards! Bring me the forms I need to fill out to have her taken away! No, she'll probably make me do it. You've killed me! Oh, you've killed me! Bender, we're trying our best. Oh God, what have I done? You can see how I lived before I met you. You wouldn't. Ask anyway! Now, now. Perfectly symmetrical violence never solved anything. Noooooo! Bender?! You stole the atom. If rubbin' frozen dirt in your crotch is wrong, hey I don't wanna be right. I just told you! You've killed me! Negative, bossy meat creature! Say it in Russian! I haven't felt much of anything since my guinea pig died. Can I use the gun? She also liked to shut up! Say what? Well I'da done better, but it's plum hard pleading a case while awaiting trial for that there incompetence. Good man. Nixon's pro-war and pro-family. I don't want to be rescued. Why did you bring us here? We're rescuing ya. Come, Comrade Bender! We must take to the streets! She also liked to shut up! With gusto. Oh God, what have I done? For example, if you killed your grandfather, you'd cease to exist! Uh, is the puppy mechanical in any way? No! The cat shelter's on to me."
  }

end
