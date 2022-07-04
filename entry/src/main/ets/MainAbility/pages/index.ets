/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import {MaterialBanner,BannerType,BannerModel} from '@ohos/material-banner'

@Entry
@Component
struct Index {
  @State image:Resource=$r('app.media.noc')
  @State display1: boolean = false
  @State display2: boolean = false
  @State display3: boolean = false
  private bannerModel1:BannerModel=new BannerModel(BannerType.OneButton)
  private bannerModel2:BannerModel=new BannerModel(BannerType.TwoButton)
  private bannerModel3:BannerModel=new BannerModel(BannerType.ImageButton)

  aboutToAppear(){
    this.bannerModel1.setBannerMessage("Your Device is Offline");
    this.bannerModel1.setButtonText1("Turn on WiFi")
    this.bannerModel1.setButtonColor("#317AFF")
    this.bannerModel1.setTextSize('20fp')
    this.bannerModel1.setTextStyle('calibri')

    this.bannerModel2.setBannerMessage("Your password was updated on your other device. Please sign in again");
    this.bannerModel2.setButtonText1("Continue as Guest")
    this.bannerModel2.setButtonText2("Sign in")
    this.bannerModel2.setButtonColor("#317AFF")
    this.bannerModel2.setTextSize('16fp')
    this.bannerModel2.setTextStyle('calibri')

    this.bannerModel3.setBannerMessage("Your internet connection was lost. We can't upload your photo");
    this.bannerModel3.setButtonText1("Learn More")
    this.bannerModel3.setButtonText2("Fix it")
    this.bannerModel3.setButtonColor("#317AFF")
    this.bannerModel3.setTextSize('16fp')
    this.bannerModel3.setTextStyle('calibri')
    this.bannerModel3.setImage(this.image)
  }

  BannerFunc:()=>void=function(){
    console.log("WiFi turned On")
  }
  BannerFunc1:()=>void=function(){
    console.log("Logged in as Guest")
  }
  BannerFunc2:()=>void=function(){
    console.log("Sign in details")
  }
  BannerFunc3:()=>void=function(){
    console.log("Learn More")
  }
  BannerFunc4:()=>void=function(){
    console.log("Fix it")
  }

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column(){
        if (this.display1) {
          MaterialBanner({
            bModel: this.bannerModel1,
            buttonAction1: this.BannerFunc
          })
        }
        if (this.display2) {
          MaterialBanner({
            bModel: this.bannerModel2,
            buttonAction1: this.BannerFunc1,
            buttonAction2: this.BannerFunc2
          })
        }
        if (this.display3) {
          MaterialBanner({
            bModel: this.bannerModel3,
            buttonAction1: this.BannerFunc3,
            buttonAction2: this.BannerFunc4
          })
        }
      }.width('100%')
      .height('100%')
      .margin({top:20})
      .align(Alignment.Top)
      Column(){
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text("One Button Banner").fontColor(Color.Black).fontSize('25fp').padding('7vp')
        }.backgroundColor("#11BB66").margin('10vp')
        .onClick(() => {
          this.display1=true
          this.display2=false
          this.display3=false
        })
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text("Two Button Banner").fontColor(Color.Black).fontSize('25fp').padding('7vp')
        }.backgroundColor("#11BB66").margin('10vp')
        .onClick(() => {
          this.display2=true
          this.display1=false
          this.display3=false
        })
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Text("Image Banner").fontColor(Color.Black).fontSize('25fp').padding('7vp')
        }.backgroundColor("#11BB66").margin('10vp')
        .onClick(() => {
          this.display3=true
          this.display1=false
          this.display2=false
        })
      }.width('70%')
      .height('30%')
      .align(Alignment.Top)
    }.width('100%').height('100%').margin({ top: '5vp' })
  }
}
