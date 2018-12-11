Frame station { }

Frame tabletop(station){ shape:ssBox, Q=<T t(0.7457 0 .0327)>, size=[1.22 0.762 0.03 0.02], color=[.3 .3 .3] fixed, contact=-1, logical={  } }

Frame upperRightPost(station){ shape:ssBox, Q=<T t(0.8847 0.330 0.5973)>, size=[0.0762 0.0381 1.22 .01], color=[.3 .3 .3] fixed, contact, logical={  } }

Frame upperLeftPost(station){ shape:ssBox, Q=<T t(0.8847 -0.330 .5973)>, size=[.0762 0.0381 1.22 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame lowerLeftPost(station){ shape:ssBox, Q=<T t(-0.2333 -0.330 .5973)>, size=[.0762 0.0381 1.22 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame lowerRightPost(station){ shape:ssBox, Q=<T t(-0.2333 0.330 .5973)>, size=[.0762 0.0381 1.22 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame topLeftBar(station){ shape:ssBox, Q=<T t(0.3257 0.371 1.1963)>, size=[.965 0.038 0.038 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame topMiddleBar(station){ shape:ssBox, Q=<T t(0.3257 0 1.1963)>, size=[1.22 0.038 0.038 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame topRightBar(station){ shape:ssBox, Q=<T t(0.3257 -0.371 1.1963)>, size=[.965 0.038 0.038 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame topBackBar(station){ shape:ssBox, Q=<T t(-0.1753 0. 1.1963)>, size=[.038 0.78 0.038 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

Frame topFrontBar(station){ shape:ssBox, Q=<T t(0.8267 0. 1.1963)>, size=[.038 0.78 0.038 .01], color=[.3 .3 .3] fixed, contact, logical={     } }

#cupboard
Frame cupboard(station) {Q=<T t(0.00 0 0.1)> }

Frame rightWall(cupboard){ shape:ssBox, Q=<T t(0.7557 -0.292 0.4148)>, size=[.6 0.016 0.783 .02], color=[.8 .8 .8] fixed, contact, logical={     } }

Frame leftWall(cupboard){ shape:ssBox, Q=<T t(0.7557 0.292 0.4148)>, size=[.6 0.016 0.783 .02], color=[.8 .8 .8] fixed, contact, logical={     } }

Frame bottom(cupboard){ shape:ssBox, Q=<T t(0.9057 0 0.0153)>, size=[.3 0.6 0.016 .02], color=[.8 .8 .8] fixed, contact, logical={   table  } }

Frame top(cupboard){ shape:ssBox, Q=<T t(0.9057 0 0.8143)>, size=[.3 0.6 0.016 .02], color=[.8 .8 .8] fixed, contact, logical={     } }

Frame shelfLower(cupboard){ shape:ssBox, Q=<T t(0.9057 0 0.26835)>, size=[.3 0.6 0.016 .02], color=[.8 .8 .8] fixed, contact, logical={ table    } }

Frame shelfUpper(cupboard){ shape:ssBox, Q=<T t(0.9057 0 0.54595)>, size=[.3 0.6 0.016 .02], color=[.8 .8 .8] fixed, contact, logical={  table   } }


