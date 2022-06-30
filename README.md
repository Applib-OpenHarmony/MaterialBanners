# Material Banner

Material Banner design in OpenHarmony.

## [](https://github.com/Applib-OpenHarmony/MaterialBanners#download--install)Download & Install

Install using npm

`npm i @ohos/material-banner -s`

Details about OpenHarmony NPM environment configuration, see at [here](https://gitee.com/openharmony-tpc/docs/blob/master/OpenHarmony_npm_usage.md)

## [](https://github.com/Applib-OpenHarmony/MaterialBanners#usage-instructions)Usage Instructions

To import files and code dependencies

```
import {MaterialBanner,BannerType,BannerModel} from '@ohos/material-banner'
```

Access banner attributes using an object of BannerModel and customize the banner using setter functions (as shown below) and finally pass the object to MaterialBanner which is displayed using the corresponding button.

## Banner Templates:

### One Button Banner

```
//Creating object
private bannerModel1:BannerModel=new BannerModel(BannerType.OneButton)
```

```
//Setting parameter values
aboutToAppear(){  
  this.bannerModel1.setBannerMessage("Message Text");  
  this.bannerModel1.setButtonText1("ACTION")  
  this.bannerModel1.setButtonColor("#317AFF")  
  this.bannerModel1.setTextSize('20fp')  
  this.bannerModel1.setTextStyle('calibri')
}
```

```
//Passing custom object to MaterialBanner
MaterialBanner({  
  bModel: this.bannerModel1,  
  buttonAction1: this.BannerFunc  
})
```

### Two Button Banner

```
//Creating object
private bannerModel2:BannerModel=new BannerModel(BannerType.TwoButton)
```

```
//Setting parameter values
aboutToAppear(){  
  this.bannerModel2.setBannerMessage("Message Text");  
  this.bannerModel2.setButtonText1("ACTION1")  
  this.bannerModel2.setButtonText2("ACTION2")  
  this.bannerModel2.setButtonColor("#317AFF")  
  this.bannerModel2.setTextSize('16fp')  
  this.bannerModel2.setTextStyle('calibri')
}
```

```
//Passing custom object to MaterialBanner
MaterialBanner({  
  bModel: this.bannerModel2,  
  buttonAction1: this.BannerFunc1,  
  buttonAction2: this.BannerFunc2  
})
```

### Image with Two Button Banner

```
//Creating object
private bannerModel3:BannerModel=new BannerModel(BannerType.ImageButton)
```

```
//Setting parameter values
aboutToAppear(){  
  this.bannerModel2.setBannerMessage("Message Text");  
  this.bannerModel2.setButtonText1("ACTION1")  
  this.bannerModel2.setButtonText2("ACTION2")  
  this.bannerModel2.setButtonColor("#317AFF")  
  this.bannerModel2.setTextSize('16fp')  
  this.bannerModel2.setTextStyle('calibri')
  this.bannerModel3.setImage(this.image)
}
```

```
//Passing custom object to MaterialBanner
MaterialBanner({  
  bModel: this.bannerModel3,  
  buttonAction1: this.BannerFunc3,  
  buttonAction2: this.BannerFunc4  
})
```


## [](https://github.com/Applib-OpenHarmony/MaterialBanners#compatibility)Compatibility

Supports OpenHarmony API version 8


## [](https://github.com/Applib-OpenHarmony/MaterialBanners#reference)Reference:

Design by : Suvam Paul
