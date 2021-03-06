# listed in case we need to reinstate them...
unknown_specialist_sectors = [
  {id: 360, edition_id: 313344, tag: "schools-colleges/careers-employment", primary: true},
  {id: 361, edition_id: 311922, tag: "schools-colleges/careers-employment", primary: true},
  {id: 387, edition_id: 315765, tag: "schools-colleges/schools-types", primary: false},
  {id: 393, edition_id: 315781, tag: "schools-colleges/administration-finance", primary: true},
  {id: 394, edition_id: 315781, tag: "schools-colleges/schools-types", primary: false},
  {id: 399, edition_id: 335359, tag: "schools-colleges/behaviour-attendance", primary: true},
  {id: 407, edition_id: 309697, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 408, edition_id: 341356, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 409, edition_id: 313069, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 411, edition_id: 313300, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 413, edition_id: 328454, tag: "childrens-services/young-peoples-support", primary: false},
  {id: 429, edition_id: 313503, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 430, edition_id: 313507, tag: "schools-colleges/careers-employment", primary: true},
  {id: 447, edition_id: 313584, tag: "schools-colleges/data-collection", primary: true},
  {id: 450, edition_id: 313849, tag: "schools-colleges/data-collection", primary: true},
  {id: 452, edition_id: 346217, tag: "childrens-services/data-collection", primary: false},
  {id: 465, edition_id: 346016, tag: "childrens-services/data-collection", primary: false},
  {id: 469, edition_id: 322538, tag: "schools-colleges/careers-employment", primary: true},
  {id: 483, edition_id: 315252, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 485, edition_id: 315759, tag: "schools-colleges/behaviour-attendance", primary: false},
  {id: 486, edition_id: 315759, tag: "schools-colleges/careers-employment", primary: false},
  {id: 487, edition_id: 315759, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 488, edition_id: 315759, tag: "schools-colleges/data-collection", primary: false},
  {id: 489, edition_id: 315759, tag: "schools-colleges/early-learning-childcare", primary: false},
  {id: 490, edition_id: 315759, tag: "schools-colleges/governance", primary: false},
  {id: 491, edition_id: 315759, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 492, edition_id: 315759, tag: "schools-colleges/young-peoples-support", primary: false},
  {id: 493, edition_id: 315759, tag: "schools-colleges/schools-types", primary: false},
  {id: 494, edition_id: 315759, tag: "schools-colleges/safeguarding-children", primary: false},
  {id: 507, edition_id: 315767, tag: "childrens-services/child-poverty", primary: false},
  {id: 508, edition_id: 315767, tag: "childrens-services/childrens-social-care", primary: false},
  {id: 509, edition_id: 315767, tag: "childrens-services/data-collection", primary: false},
  {id: 510, edition_id: 315767, tag: "childrens-services/early-learning-childcare", primary: false},
  {id: 511, edition_id: 315767, tag: "childrens-services/family-support", primary: false},
  {id: 512, edition_id: 315767, tag: "childrens-services/foster-care", primary: false},
  {id: 513, edition_id: 315767, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 514, edition_id: 315767, tag: "childrens-services/young-peoples-support", primary: false},
  {id: 515, edition_id: 315767, tag: "childrens-services/safeguarding-children", primary: false},
  {id: 519, edition_id: 333960, tag: "childrens-services/early-learning-childcare", primary: false},
  {id: 524, edition_id: 359862, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 525, edition_id: 315767, tag: "childrens-services/adoption", primary: false},
  {id: 527, edition_id: 368920, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 529, edition_id: 315759, tag: "schools-colleges/administration-finance", primary: false},
  {id: 538, edition_id: 359862, tag: "schools-colleges/data-collection", primary: false},
  {id: 546, edition_id: 333960, tag: "schools-colleges/early-learning-childcare", primary: false},
  {id: 547, edition_id: 321183, tag: "schools-colleges/careers-employment", primary: false},
  {id: 548, edition_id: 315765, tag: "schools-colleges/administration-finance", primary: false},
  {id: 551, edition_id: 346016, tag: "schools-colleges/data-collection", primary: false},
  {id: 563, edition_id: 315969, tag: "childrens-services/foster-care", primary: false},
  {id: 566, edition_id: 368920, tag: "schools-colleges/data-collection", primary: false},
  {id: 579, edition_id: 346263, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 580, edition_id: 346217, tag: "schools-colleges/data-collection", primary: false},
  {id: 582, edition_id: 315828, tag: "schools-colleges/safeguarding-children", primary: false},
  {id: 583, edition_id: 315828, tag: "childrens-services/data-collection", primary: false},
  {id: 584, edition_id: 315828, tag: "childrens-services/safeguarding-children", primary: false},
  {id: 585, edition_id: 346226, tag: "schools-colleges/data-collection", primary: false},
  {id: 595, edition_id: 316867, tag: "schools-colleges/data-collection", primary: false},
  {id: 597, edition_id: 346240, tag: "schools-colleges/data-collection", primary: false},
  {id: 600, edition_id: 322983, tag: "schools-colleges/administration-finance", primary: false},
  {id: 601, edition_id: 346246, tag: "schools-colleges/data-collection", primary: false},
  {id: 602, edition_id: 322352, tag: "schools-colleges/administration-finance", primary: false},
  {id: 607, edition_id: 346352, tag: "schools-colleges/data-collection", primary: false},
  {id: 621, edition_id: 317334, tag: "schools-colleges/careers-employment", primary: false},
  {id: 622, edition_id: 346036, tag: "childrens-services/data-collection", primary: false},
  {id: 624, edition_id: 346047, tag: "childrens-services/data-collection", primary: false},
  {id: 627, edition_id: 346207, tag: "childrens-services/data-collection", primary: false},
  {id: 630, edition_id: 316096, tag: "schools-colleges/careers-employment", primary: false},
  {id: 634, edition_id: 315931, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 643, edition_id: 328454, tag: "schools-colleges/young-peoples-support", primary: false},
  {id: 647, edition_id: 333300, tag: "schools-colleges/young-peoples-support", primary: false},
  {id: 652, edition_id: 333795, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 654, edition_id: 359275, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 655, edition_id: 359275, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 656, edition_id: 359275, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 660, edition_id: 322641, tag: "schools-colleges/schools-types", primary: false},
  {id: 663, edition_id: 320872, tag: "schools-colleges/schools-types", primary: false},
  {id: 686, edition_id: 316038, tag: "schools-colleges/data-collection", primary: false},
  {id: 687, edition_id: 316038, tag: "childrens-services/data-collection", primary: false},
  {id: 689, edition_id: 339918, tag: "schools-colleges/behaviour-attendance", primary: false},
  {id: 690, edition_id: 339918, tag: "schools-colleges/data-collection", primary: false},
  {id: 692, edition_id: 385857, tag: "schools-colleges/schools-types", primary: false},
  {id: 693, edition_id: 316235, tag: "schools-colleges/safeguarding-children", primary: false},
  {id: 694, edition_id: 316235, tag: "childrens-services/childrens-social-care", primary: false},
  {id: 695, edition_id: 316235, tag: "childrens-services/safeguarding-children", primary: false},
  {id: 700, edition_id: 329052, tag: "schools-colleges/schools-types", primary: false},
  {id: 703, edition_id: 316433, tag: "schools-colleges/safeguarding-children", primary: false},
  {id: 704, edition_id: 316433, tag: "childrens-services/safeguarding-children", primary: false},
  {id: 707, edition_id: 316430, tag: "schools-colleges/safeguarding-children", primary: false},
  {id: 708, edition_id: 316430, tag: "childrens-services/childrens-social-care", primary: false},
  {id: 709, edition_id: 316430, tag: "childrens-services/safeguarding-children", primary: false},
  {id: 715, edition_id: 316075, tag: "schools-colleges/administration-finance", primary: false},
  {id: 722, edition_id: 360743, tag: "schools-colleges/early-learning-childcare", primary: false},
  {id: 723, edition_id: 360743, tag: "childrens-services/early-learning-childcare", primary: false},
  {id: 733, edition_id: 353783, tag: "schools-colleges/schools-types", primary: false},
  {id: 734, edition_id: 319020, tag: "schools-colleges/careers-employment", primary: false},
  {id: 735, edition_id: 319020, tag: "schools-colleges/data-collection", primary: false},
  {id: 736, edition_id: 316110, tag: "schools-colleges/data-collection", primary: false},
  {id: 737, edition_id: 316110, tag: "childrens-services/data-collection", primary: false},
  {id: 754, edition_id: 338404, tag: "schools-colleges/careers-employment", primary: false},
  {id: 768, edition_id: 316554, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 769, edition_id: 316554, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 797, edition_id: 317682, tag: "childrens-services/childrens-social-care", primary: false},
  {id: 814, edition_id: 346029, tag: "childrens-services/data-collection", primary: false},
  {id: 834, edition_id: 317716, tag: "schools-colleges/young-peoples-support", primary: false},
  {id: 835, edition_id: 317716, tag: "childrens-services/childrens-social-care", primary: false},
  {id: 836, edition_id: 317716, tag: "childrens-services/young-peoples-support", primary: false},
  {id: 842, edition_id: 397740, tag: "schools-colleges/governance", primary: false},
  {id: 843, edition_id: 316306, tag: "schools-colleges/administration-finance", primary: false},
  {id: 844, edition_id: 316306, tag: "schools-colleges/governance", primary: false},
  {id: 954, edition_id: 343802, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 955, edition_id: 343802, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 969, edition_id: 317290, tag: "schools-colleges/careers-employment", primary: false},
  {id: 970, edition_id: 317283, tag: "schools-colleges/careers-employment", primary: false},
  {id: 976, edition_id: 317274, tag: "schools-colleges/careers-employment", primary: false},
  {id: 984, edition_id: 316598, tag: "schools-colleges/administration-finance", primary: false},
  {id: 990, edition_id: 346047, tag: "schools-colleges/data-collection", primary: false},
  {id: 992, edition_id: 373846, tag: "schools-colleges/careers-employment", primary: false},
  {id: 993, edition_id: 311702, tag: "schools-colleges/careers-employment", primary: false},
  {id: 998, edition_id: 351188, tag: "schools-colleges/careers-employment", primary: false},
  {id: 1007, edition_id: 316662, tag: "schools-colleges/data-collection", primary: false},
  {id: 1017, edition_id: 316996, tag: "schools-colleges/careers-employment", primary: false},
  {id: 1076, edition_id: 346232, tag: "schools-colleges/data-collection", primary: false},
  {id: 1091, edition_id: 358621, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 1105, edition_id: 318066, tag: "schools-colleges/careers-employment", primary: true},
  {id: 1109, edition_id: 395975, tag: "schools-colleges/early-learning-childcare", primary: false},
  {id: 1110, edition_id: 395975, tag: "childrens-services/early-learning-childcare", primary: false},
  {id: 1211, edition_id: 337940, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 1373, edition_id: 386724, tag: "schools-colleges/data-collection", primary: true},
  {id: 1395, edition_id: 340940, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 1397, edition_id: 326942, tag: "schools-colleges/careers-employment", primary: false},
  {id: 1399, edition_id: 345186, tag: "schools-colleges/schools-types", primary: false},
  {id: 1418, edition_id: 324478, tag: "schools-colleges/administration-finance", primary: false},
  {id: 1422, edition_id: 324523, tag: "childrens-services/child-poverty", primary: false},
  {id: 1423, edition_id: 324488, tag: "schools-colleges/administration-finance", primary: false},
  {id: 1427, edition_id: 324560, tag: "pharmaceutical-industry/clinical-trials", primary: true},
  {id: 1428, edition_id: 287732, tag: "pharmaceutical-industry/clinical-trials", primary: true},
  {id: 1433, edition_id: 325236, tag: "pharmaceutical-industry/variations-to-licences", primary: true},
  {id: 1585, edition_id: 327041, tag: "farming-food-grants-payments/promotion-schemes", primary: true},
  {id: 1586, edition_id: 327060, tag: "farming-food-grants-payments/promotion-schemes", primary: true},
  {id: 1588, edition_id: 327076, tag: "farming-food-grants-payments/promotion-schemes", primary: true},
  {id: 1590, edition_id: 327098, tag: "farming-food-grants-payments/promotion-schemes", primary: false},
  {id: 1591, edition_id: 327166, tag: "farming-food-grants-payments/promotion-schemes", primary: true},
  {id: 1592, edition_id: 327175, tag: "farming-food-grants-payments/promotion-schemes", primary: true},
  {id: 1596, edition_id: 327368, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 1597, edition_id: 327729, tag: "farming-food-grants-payments/export-refunds", primary: true},
  {id: 1599, edition_id: 337941, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 1601, edition_id: 327988, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 1602, edition_id: 327991, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 1603, edition_id: 327992, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 1655, edition_id: 382743, tag: "schools-colleges/governance", primary: false},
  {id: 1657, edition_id: 333389, tag: "schools-colleges/governance", primary: false},
  {id: 1658, edition_id: 333395, tag: "schools-colleges/governance", primary: false},
  {id: 1778, edition_id: 336967, tag: "schools-colleges/safeguarding-children", primary: false},
  {id: 1779, edition_id: 336967, tag: "childrens-services/safeguarding-children", primary: false},
  {id: 1822, edition_id: 335125, tag: "schools-colleges/careers-employment", primary: true},
  {id: 1871, edition_id: 344410, tag: "schools-colleges/schools-types", primary: true},
  {id: 2027, edition_id: 376682, tag: "schools-colleges/schools-types", primary: false},
  {id: 2062, edition_id: 339104, tag: "schools-colleges/early-learning-childcare", primary: false},
  {id: 2063, edition_id: 339104, tag: "childrens-services/early-learning-childcare", primary: false},
  {id: 2208, edition_id: 377069, tag: "schools-colleges/schools-types", primary: false},
  {id: 2314, edition_id: 342718, tag: "schools-colleges/administration-finance", primary: true},
  {id: 3091, edition_id: 357037, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3093, edition_id: 357101, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3101, edition_id: 357169, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3102, edition_id: 357179, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3103, edition_id: 357190, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3104, edition_id: 357191, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3106, edition_id: 357392, tag: "farming-food-grants-payments/promotion-schemes", primary: true},
  {id: 3138, edition_id: 359196, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3139, edition_id: 359248, tag: "pharmaceutical-industry/labels-packaging-for-medicines", primary: true},
  {id: 3307, edition_id: 360743, tag: "schools-colleges/data-collection", primary: false},
  {id: 3308, edition_id: 360743, tag: "childrens-services/data-collection", primary: false},
  {id: 4028, edition_id: 374950, tag: "pharmaceutical-industry/clinical-trials", primary: true},
  {id: 4036, edition_id: 340162, tag: "pharmaceutical-industry/clinical-trials", primary: true},
  {id: 4291, edition_id: 398029, tag: "schools-colleges/curriculum-qualifications", primary: true},
  {id: 4314, edition_id: 391138, tag: "schools-colleges/young-peoples-support", primary: false},
  {id: 4315, edition_id: 391138, tag: "childrens-services/young-peoples-support", primary: false},
  {id: 4324, edition_id: 381081, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 4325, edition_id: 381081, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 4409, edition_id: 382857, tag: "schools-colleges/administration-finance", primary: false},
  {id: 4410, edition_id: 382857, tag: "schools-colleges/schools-types", primary: false},
  {id: 4411, edition_id: 384921, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 4412, edition_id: 384921, tag: "childrens-services/childrens-social-care", primary: false},
  {id: 4413, edition_id: 384921, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 4414, edition_id: 383341, tag: "schools-colleges/special-educational-needs", primary: false},
  {id: 4415, edition_id: 383341, tag: "childrens-services/special-educational-needs", primary: false},
  {id: 4734, edition_id: 392583, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 4813, edition_id: 394697, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 4814, edition_id: 394695, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 4952, edition_id: 386599, tag: "pharmaceutical-industry/clinical-trials", primary: true},
  {id: 5551, edition_id: 394648, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 5553, edition_id: 394669, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 5558, edition_id: 394700, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 5690, edition_id: 396645, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 5890, edition_id: 398008, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5892, edition_id: 398033, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5894, edition_id: 398040, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5896, edition_id: 398046, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5898, edition_id: 398055, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5900, edition_id: 398061, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5925, edition_id: 398644, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 5953, edition_id: 399251, tag: "schools-colleges/administration-finance", primary: false},
  {id: 5954, edition_id: 399254, tag: "schools-colleges/schools-types", primary: false},
  {id: 5972, edition_id: 399587, tag: "schools-colleges/administration-finance", primary: false},
  {id: 5975, edition_id: 399666, tag: "schools-colleges/careers-employment", primary: false},
  {id: 5998, edition_id: 399818, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 6003, edition_id: 399831, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 6005, edition_id: 399840, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 6349, edition_id: 401369, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 6417, edition_id: 401724, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 6536, edition_id: 402676, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 6938, edition_id: 406343, tag: "childrens-services/data-collection", primary: false},
  {id: 6939, edition_id: 406343, tag: "schools-colleges/data-collection", primary: false},
  {id: 6952, edition_id: 406434, tag: "schools-colleges/curriculum-qualifications", primary: false},
  {id: 7035, edition_id: 407422, tag: "schools-colleges/data-collection", primary: false},
  {id: 7141, edition_id: 407937, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 7339, edition_id: 409914, tag: "schools-colleges/schools-types", primary: false},
  {id: 7607, edition_id: 412089, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 7990, edition_id: 416883, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 8066, edition_id: 417751, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 8233, edition_id: 419558, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 8237, edition_id: 419673, tag: "childrens-services/early-learning-childcare", primary: false},
  {id: 8238, edition_id: 419673, tag: "schools-colleges/early-learning-childcare", primary: false},
  {id: 8331, edition_id: 420409, tag: "schools-colleges/schools-types", primary: false},
  {id: 9805, edition_id: 427797, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 10933, edition_id: 431770, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 11923, edition_id: 434330, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 14153, edition_id: 438672, tag: "housing/public-sector-land-use", primary: true},
  {id: 20069, edition_id: 461973, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20071, edition_id: 461990, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20079, edition_id: 462045, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20081, edition_id: 462050, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20091, edition_id: 462141, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20474, edition_id: 464836, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20496, edition_id: 465139, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20516, edition_id: 465217, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20549, edition_id: 465343, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20751, edition_id: 464864, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20759, edition_id: 465075, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20761, edition_id: 465220, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20763, edition_id: 465624, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20767, edition_id: 463674, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20885, edition_id: 467444, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20888, edition_id: 467452, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20896, edition_id: 467481, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20902, edition_id: 467507, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20912, edition_id: 467539, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 20925, edition_id: 467591, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21214, edition_id: 469095, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21270, edition_id: 469362, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21771, edition_id: 470924, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21775, edition_id: 470925, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21777, edition_id: 470928, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21779, edition_id: 470929, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21782, edition_id: 470931, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 21785, edition_id: 470958, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 22168, edition_id: 471562, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22169, edition_id: 472495, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22536, edition_id: 475033, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22538, edition_id: 475060, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22541, edition_id: 475080, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22577, edition_id: 475216, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22579, edition_id: 475226, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22606, edition_id: 475424, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22669, edition_id: 475730, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 22777, edition_id: 476271, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22780, edition_id: 476281, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22867, edition_id: 476819, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 22869, edition_id: 476827, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 23011, edition_id: 477636, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 24730, edition_id: 485266, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 25174, edition_id: 487629, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 25233, edition_id: 487823, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 25400, edition_id: 488825, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 25424, edition_id: 488922, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 25491, edition_id: 489468, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 25578, edition_id: 490191, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 26134, edition_id: 492879, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 26145, edition_id: 492952, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 26292, edition_id: 493691, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 26305, edition_id: 493727, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 26321, edition_id: 493907, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 26323, edition_id: 493908, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 26650, edition_id: 495699, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 27462, edition_id: 500801, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 27665, edition_id: 501868, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 28455, edition_id: 505342, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 28505, edition_id: 505607, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 28509, edition_id: 505610, tag: "farming-food-grants-payments/environmental-land-management", primary: true},
  {id: 28514, edition_id: 505622, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 29099, edition_id: 509125, tag: "farming-food-grants-payments/environmental-land-management", primary: false},
  {id: 31762, edition_id: 316916, tag: "navigation-safety-for-uk-seafarers", primary: false},
]

unknown_specialist_sector_ids = unknown_specialist_sectors.map { |specialist_sector_hash| specialist_sector_hash[:id] }
SpecialistSector.where(id: unknown_specialist_sector_ids).delete_all
