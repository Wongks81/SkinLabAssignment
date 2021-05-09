// records of the treatments
// can be updated if connected to a DB
import 'package:assignment/model/treatmentitem.dart';

List<TreatmentItem> listBackTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/back.png',
    titleText: 'Medical Peel & I2PL',
    bodyText:
        'Brighten and achieve glass skin on your back with this dynamic duo backed by doctors - the combination of medical-grade chemical peels and advanced intense pulsed light technology.',
    duration: '60 to 90 minutes',
    priceRange: '\$589 to \$696 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/MedicalPeel_back.png',
    titleText: 'Medical Peel',
    bodyText:
        'Our most popular treatment - the Signature Medical Peel developed by our in-house doctors uses a combination of AHAs/BHAs for treating ageing skin, acne/blemish-prone skin, as well as mild pigmentation on the back.',
    duration: '60 to 120 mins',
    priceRange: '\$482 to \$696 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/DiamondPeel_back.png',
    titleText: 'Diamond Peel',
    bodyText:
        'To bring your sexy back, the Diamond Peel uses an abrasive diamond tip that gently loosens the dead cells, dirt, and debris while the wand’s suction function vacuums them away simultaneously.',
    duration: '45 to 60 mins',
    priceRange: '\$202 to \$244 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listBodyTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/body.png',
    titleText: '3rd Gen RF',
    bodyText:
        'Using TriPollar Radio Frequency, an innovative, proprietary 3rd generation Radio Frequency technology, the 3rd Gen RF delivers immediate visible body slimming effects with the first treatment with no downtime.',
    duration: '60 to 80 minutes',
    priceRange: '\$589 to \$696 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/csprf_body.png',
    titleText: 'CSP RF',
    bodyText:
        'CSP RF is a non-invasive treatment to tighten and contour the body with results visible after just 30mins of the first session - perfect for that special dinner date later in the evening.',
    duration: '80 mins',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listComboTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/combo.png',
    titleText: 'Signature Medical Peel & I2PL',
    bodyText:
        'Brighten and achieve glass skin with this dynamic duo backed by doctors - the combination of medical-grade chemical peels and advanced intense pulsed light technology.',
    duration: '120 mins',
    priceRange: '\$482 to \$514 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/aquapeel.png',
    titleText: 'Aqua Peel & I2PL',
    bodyText:
        'Pairing our Aqua Peel Facial using the patented Aqua ST peeling system that exfoliates and infuses topical solution simultaneously, together with advanced intense pulsed light technology for an all-rounded skin revival.',
    duration: '120 mins',
    priceRange: '\$482 to \$514 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/milkpeel.png',
    titleText: 'Milk Peel & I2PL',
    bodyText:
        'Milk and cookies? Try pure, gentle milk enzymes used in combination with advanced intense pulsed light technology to brighten, rejuvenate, and moisturise dull, dry skin.',
    duration: '120 mins',
    priceRange: '\$428 to \$560 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/diamondpeel.png',
    titleText: 'Diamond Peel & I2PL',
    bodyText:
        'The Diamond Peel uses "diamond" tips to mechanically exfoliate dull skin. This facial is combined with advanced intense pulsed light technology to bring the bling to your skin.',
    duration: '120 mins',
    priceRange: '\$482 to \$514 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/oatmeal.png',
    titleText: 'Oatmeal Facial & I2PL',
    bodyText:
        'More than a satisfying breakfast, the calming and soothing benefits of oatmeal are paired with advanced intense pulse light to reduce skin redness and even out skin tone even for sensitive skin conditions.',
    duration: '120 mins',
    priceRange: '\$418 to \$450 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listPremiumTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/premium.png',
    titleText: 'Laser Lift',
    bodyText:
        'This powerhouse of a facial combines 3 key technologies to boost hydration levels, collagen production and skin cell regeneration - Low Level Laser Therapy, Galvanic Current and Lymphatic Drainage.',
    duration: '120 minutes',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/Oxygeno.png',
    titleText: 'OxyGeneo® Carbon Intense',
    bodyText:
        'The OxyGeneo® Carbon Intense Facial is a patented and clinically proven treatment that purifies and soothes oily skin, while improving its texture and appearance.',
    duration: '120 mins',
    priceRange: '\$589 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/DermaRoller.png',
    titleText: 'Derma Roller',
    bodyText:
        'The Derma Roller Facial gently rolls sterile fine needles across the treatment area to create micro-wounds - stimulating collagen and elastin production that help with fine lines, wrinkles and mild acne scars.',
    duration: '90 mins',
    priceRange: '\$375 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/gold.png',
    titleText: 'Gold',
    bodyText:
        'True to its name, gold has anti-inflammatory properties that is very valuable for many skin concerns. This rare, inert metal can reduce skin redness, and protect against free radicals that lead to wrinkles and sun damage.',
    duration: '120 mins',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/PumpkinGlow.png',
    titleText: 'Pumpkin Glow',
    bodyText:
        'Say hello to radiant skin with our combination of an advanced exfoliating system and the nourishing capabilities of the humble pumpkin to give you a skin that’s brighter, smoothened, lifted - the perfect glow your skin deserves.',
    duration: '90 mins',
    priceRange: '\$460 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/PepTidePerfect.png',
    titleText: 'Peptide Perfect',
    bodyText:
        'This ultimate skin rejuvenation and whitening facial with 50X the power of vitamin C that blocks melanin formation and harmful oxidation, instantly brightening, hydrating, and evening out skin tone.',
    duration: '120 mins',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/MicroMassage.png',
    titleText: 'Local Dynamic Micro-massage',
    bodyText:
        'Using dual-frequency ultrasound technology, Local Dynamic Micro-massage (LDM) effectively activates fibroblasts to boost collagen and hyaluronic acid regeneration, instantly lifting and firming the skin.',
    duration: '90 mins',
    priceRange: '\$398 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listEyeTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/eye.png',
    titleText: 'Brightening Peel & Gemstone Detox',
    bodyText:
        'Rejuvenate tired eyes and give them a fresh look with this combination of Brightening Peel using AHA/BHA Peels to slough away dead skin cells and Gemstone Detox using warm basalt stones to improve blood circulation.',
    duration: '50 minutes',
    priceRange: '\$212 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/BrighteningPeel.png',
    titleText: 'Brightening Peel & CSP RF',
    bodyText:
        'Give your eyes a lift with this combination of Brightening Peel using AHA/BHA peels to slough away dead skin cells and CSP RF to reduce the puffiness around the eyes.',
    duration: '60 mins',
    priceRange: '\$244 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/guasha.png',
    titleText: 'Gua Sha',
    bodyText:
        'Combining traditional Chinese Gua Sha techniques with a modern understanding of facial anatomy and lymphatic pathways, this East-meets-West eye treatment reduces water retention and inflammation.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/OxyFirming.png',
    titleText: 'CSP RF',
    bodyText:
        'The OxyBright Facial (featuring OxyGeneo® technology) is a patented and clinically proven treatment that gives skin incredible skin nourishment and oxygenation, for smoother and younger looking skin.',
    duration: '50 mins',
    priceRange: '\$268 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/Collagen.png',
    titleText: 'Collagen',
    bodyText:
        'Make the best first impression with youthful-looking eyes. The Collagen Eye Treatment ensures the skin around your eyes are well hydrated and moisturised, which helps to reduce fine lines around the eyes.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/ParaffinDetox.png',
    titleText: 'Paraffin Detox',
    bodyText:
        'De-puff your puffy eyes. The Paraffin Detox Eye Treatment involves a light massage in directions that follow the structure of the lymphatic system,to remove fluid accumulation in the eye area',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/BrighteningPeel.png',
    titleText: 'Brightening Peel',
    bodyText:
        'Say goodbye to tired-looking eyes. Using our customised blend of safe AHA/BHA peels, dead skin cells are effectively sloughed away with our Brightening Peel to reveal younger-looking brighter skin.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/GemstoneDetox.png',
    titleText: 'Gemstone Detox',
    bodyText:
        'The Gemstone Detox Eye Treatment uses warm basalt stones to massage and improve blood circulation around your eyes, stripping away the toxins and the stress from them.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/3rdgenrf.png',
    titleText: '3rd Gen RF',
    bodyText:
        'Using TriPollar Radio Frequency, an innovative, proprietary 3rd generation Radio Frequency technology, the 3rd Gen RF delivers immediate visible eye lifting effects with the first treatment with no downtime.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/csprf.png',
    titleText: 'CSP RF',
    bodyText:
        'CSP RF is a non-invasive treatment for reducing puffy and droopy eyes with results visible after just 30mins of the first session - perfect for that special dinner date later in the evening.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/UltrasoundRelief.png',
    titleText: 'Ultrasound Relief',
    bodyText:
        'Reverse the first signs of ageing in our eyes. This ultrasound eye treatment provides a dual benefit for the eyes – increasing skin cell turnover while boosting product absorption.',
    duration: '50 mins',
    priceRange: '\$212 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listHairTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/hair.png',
    titleText: 'I2PL Hair Removal',
    bodyText:
        'Widely accepted in the industry as the gold standard for hair removal, our I2PL is a level up from older IPL technologies and FDA-approved with the added benefit of lightening pigmentation.',
    duration: '30 to 90 mins',
    priceRange: '\$148 to \$803 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listNeckTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/neck.png',
    titleText: 'Electric Firming',
    bodyText:
        'Troubled by a wrinkled neck? Our Electric Firming Neck Treatment uses smart vibration technology to stimulate the acupuncture points of the neck to promote skin metabolism and reduce neck wrinkles.',
    duration: '50 minutes',
    priceRange: '\$193 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/OxyFirming.png',
    titleText: 'OxyFirming',
    bodyText:
        'OxyFirming uses OxyGeneo®, a patented 3-in-1 neck treatment that does 3 effective treatments simultaneously; exfoliation, oxygenation, and deep rejuvenation with the infusion of essential skin revitalising nutrients',
    duration: '50 mins',
    priceRange: '\$268 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/3rdgenrf.png',
    titleText: '3rd Gen RF',
    bodyText:
        'Using TriPollar Radio Frequency, an innovative, proprietary 3rd generation Radio Frequency technology, the 3rd Gen RF delivers immediate visible neck firming effects with the first treatment with no downtime.',
    duration: '50 mins',
    priceRange: '\$268 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/csprf.png',
    titleText: 'CSP RF',
    bodyText:
        'CSP RF is a non-invasive treatment to reduce fine lines and loose skin around the neck with results visible after just 30mins of the first session - perfect for that special dinner date later in the evening.',
    duration: '50 mins',
    priceRange: '\$212 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/GoldFirming.png',
    titleText: 'Gold Firming',
    bodyText:
        'After using 3rd Generation radio frequency technology to stimulate collagen formation for reducing fine lines and loose skin around the neck, a luxurious gold mask is lathered on to impart a protective layer against free radicals.',
    duration: '50 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listEssentialTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/essential.png',
    titleText: 'Pure Milk',
    bodyText:
        'Milk does more than just build strong bones! The Pure Milk Facial uses a gentle Milk Peel with lactic acid derived from milk and fruits to help you achieve clearer, fairer and smoother skin, easily and effectively.',
    duration: '90 minutes',
    priceRange: '\$202 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/AloeVera.png',
    titleText: 'Aloe Vera',
    bodyText:
        'A straightforward no frills facial to moisturise and soothe dry, tired skin. The Aloe Vera Facial is packed with antioxidants and enzymes that possess healing properties, collagen and hyaluronic acid boosting capabilities.',
    duration: '90 mins',
    priceRange: '\$202 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/oatmeal.png',
    titleText: 'Oatmeal',
    bodyText:
        'Did you know that Oatmeal is a natural and gentle exfoliant that has great anti-inflammatory, skin healing and antioxidant properties? Save yours for breakfast and let us help you with our Oatmeal Facial.',
    duration: '90 mins',
    priceRange: '\$169 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/VitaminC.png',
    titleText: 'Vitamin C Infusion',
    bodyText:
        'Even out your skin tone and reduce the appearance of hyperpigmentation with the all-familiar Vitamin C Infusion Facial that defends against free radicals, boosts collagen production and reduces brown spots.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/customized.png',
    titleText: 'Customised',
    bodyText:
        'If you don’t know what skin type you have – fret not. Our consultants are trained by our in-house doctors to perform a customised facial that recognises your skin type and needs.',
    duration: '90 mins',
    priceRange: '\$169 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listSignatureTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/combo.png',
    titleText: 'Signature Medical Peel',
    bodyText:
        'Our most popular treatment - the Signature Medical Peel developed by our in-house doctors uses a combination of AHAs/BHAs for the treatment of ageing skin, acne/blemish-prone skin, as well as mild pigmentation.',
    duration: '30 to 90 minutes',
    priceRange: '\$169 to \$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/aquapeel.png',
    titleText: 'Aqua Peel',
    bodyText:
        'A pain-free skin rejuvenation facial using the advanced Aqua ST System with the simultaneous action of a gentle mechanical exfoliation as well as an infusion of specially designed topical solutions.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/diamondpeel.png',
    titleText: 'Diamond Peel',
    bodyText:
        'To help your skin shine, the Diamond Peel uses an abrasive diamond tip that gently loosens the dead cells, dirt, and debris while the wand’s suction function vacuums them away simultaneously.',
    duration: '90 mins',
    priceRange: '\$299 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/signature.png',
    titleText: 'Intense Hydrating H.A.',
    bodyText:
        'Featuring hyaluronic acid (H.A.) products developed by doctors, natural aloe and cucumber extracts, the facial helps to moderate skin sebum production and reduce inflammation for maximum hydration of dry skin conditions.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/guasha.png',
    titleText: 'Gua Sha',
    bodyText:
        'Combining traditional Chinese Gua Sha techniques with a modern understanding of facial anatomy and lymphatic pathways, this East-meets-West facial gives you visibly impressive lifting and contouring results.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/omegalight.png',
    titleText: 'Omega Light',
    bodyText:
        'Red, blue, yellow, green - harness the power of medical-grade LED lights in our Omega Light Facial to tackle skin issues from acne, scarring and pigmentation to dull, ageing and sensitive skin.',
    duration: '90 mins',
    priceRange: '\$202 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/apple.png',
    titleText: 'Ultrasound Apple Stem Cell',
    bodyText:
        'Discover the miraculous Uttwiler Spätlauber Swiss Apples! The apple stem cells harvested and cultured in advanced laboratories repairs damaged skin tissues and activates skin stem cell regeneration.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/aroma.png',
    titleText: 'Aroma Gemstone',
    bodyText:
        'The Aroma Gemstone Facial uses warm basalt stones to massage and stimulate the circulatory system for a full-face detox while relieving the stress and tension in your face at the same time.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

List<TreatmentItem> listSpecialtyTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/specialty.png',
    titleText: 'Lumenis M22TM Laser',
    bodyText:
        'Hailing from Lumenis, the inventor of IPL, is the FDA-approved M22 Laser system. It is the gold-standard for IPL photorejuvenation and the treatment of pigmentation, mild to moderate acne, and many more skin concerns.',
    duration: '60 mins',
    priceRange: '\$380 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    detailsPageRoute: '/treatment/combo/lumenis',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/i2pl.png',
    titleText: 'I2PL Photorejuvenation',
    bodyText:
        'Widely accepted in the industry as the gold standard for skin rejuvenation, our I2PL is a level up from older IPL technologies and FDA-approved with the added benefit of lightening pigmentation.',
    duration: '60 to 90 mins',
    priceRange: '\$300 to \$408 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/3rdgenrf.png',
    titleText: '3rd Gen RF',
    bodyText:
        'Using TriPollar Radio Frequency, an innovative, proprietary 3rd generation Radio Frequency technology, the 3rd Gen RF delivers immediate visible facial contouring effects with the first treatment with no downtime.',
    duration: '60 to 120 mins',
    priceRange: '\$482 to \$696 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/csprf.png',
    titleText: 'CSP RF',
    bodyText:
        'CSP RF is a non-invasive treatment to tighten and contour skin with results visible after just 30mins of the first session - perfect  for that special dinner date later in the evening.',
    duration: '60 to 120 mins',
    priceRange: '\$426 to \$589 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/oxybright.png',
    titleText: 'OxyBright',
    bodyText:
        'The OxyBright Facial (featuring OxyGeneo® technology) is a patented and clinically proven treatment that gives skin incredible skin nourishment and oxygenation, for smoother and younger looking skin.',
    duration: '60 to 120 mins',
    priceRange: '\$375 to \$589 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/vface.png',
    titleText: 'Liftera V-Face',
    bodyText:
        'More a face lifting treatment than a facial, the Liftera V-Face uses clinically proven technologies – HIFU and TDT to reach into the deeper layers of the skin to stimulate collagen and elastin production.',
    duration: '60 mins',
    priceRange: '\$859 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}
