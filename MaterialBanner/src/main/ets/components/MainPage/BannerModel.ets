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

export enum BannerType{
  OneButton,
  TwoButton,
  ImageButton
}

export class BannerModel{
  private bannerType:BannerType;
  private bannerMessage:string;
  private buttonText1:string;
  private buttonText2:string;
  private buttonColor:string|ResourceColor="#317AFF";
  private textSize:string='20fp';
  private textStyle:string="calibri";
  private show:Visibility=Visibility.Visible;
  private image:Resource;

  constructor(value:BannerType){
    this.bannerType=value
  }

  getBannerType(): BannerType{
    return this.bannerType
  }
  getButtonColor():string|ResourceColor{
    return this.buttonColor
  }
  getTextSize():string{
    return this.textSize
  }
  getTextStyle():string{
    return this.textStyle
  }
  getBannerMessage():string{
    return this.bannerMessage
  }
  getButtonText1():string{
    return this.buttonText1
  }
  getButtonText2():string{
    return this.buttonText2
  }
  getShow(): Visibility{
    return this.show
  }
  getImage():Resource{
    return this.image
  }

  setButtonColor(value:string|ResourceColor):BannerModel{
    if(value==null || value==undefined){
      console.log("Button color not set. Default value used")
    }
    else {
      this.buttonColor = value
    }
    return this
  }
  setTextSize(tc:string):BannerModel{
    if(tc==null || tc==undefined){
      console.log("Text size not set. Default value used")
    }
    else {
      this.textSize = tc
    }
    return this
  }
  setTextStyle(ts:string):BannerModel{
    if(ts==null || ts==undefined){
      console.log("Text style not set. Default value used")
    }
    else {
      this.textStyle = ts
    }
    return this
  }
  setBannerMessage(s:string):BannerModel{
    if(s==null || s==undefined){
      console.log("Banner Message not set")
    }
    else {
      this.bannerMessage = s
    }
    return this
  }
  setButtonText1(a1:string):BannerModel{
    if(a1==null || a1==undefined){
      console.log("Button Text 1 not set")
    }
    else {
      this.buttonText1 = a1
    }
    return this
  }
  setButtonText2(a2:string):BannerModel{
    if(this.bannerType==BannerType.TwoButton && (a2==null || a2==undefined)){
      console.log("Button Text 2 not set")
    }
    else if(this.bannerType==BannerType.ImageButton && (a2==null || a2==undefined)){
      console.log("Button Text 2 not set")
    }
    else {
      this.buttonText2 = a2
    }
    return this
  }
  setImage(img:Resource):BannerModel{
    if(this.bannerType==BannerType.ImageButton && (img==null || img==undefined)){
      console.log("Image not selected")
    }
    else {
      this.image = img
    }
    return this
  }
  setShow(value: Visibility): BannerModel{
    this.show = value
    return this
  }
}