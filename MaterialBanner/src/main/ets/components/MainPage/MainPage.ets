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

import {BannerModel,BannerType} from './BannerModel'

@Component
export struct MaterialBanner{
  @State bModel:BannerModel=new BannerModel(BannerType.OneButton);
  buttonAction1:()=>void;
  buttonAction2:()=>void;

  build(){
    Column(){
      if(this.bModel.getBannerType()==BannerType.OneButton){
        Column() {
          Flex({ justifyContent: FlexAlign.SpaceBetween }) {
            Text(this.bModel.getBannerMessage()).padding({ top: '10vp', bottom: '8vp', left: '20vp' })
              .fontSize(this.bModel.getTextSize()).fontFamily(this.bModel.getTextStyle())
            Button(this.bModel.getButtonText1(), { type: ButtonType.Normal, stateEffect: true }).borderRadius('8vp')
              .backgroundColor(this.bModel.getButtonColor())
              .onClick(()=>{
                this.buttonAction1()
                this.bModel.setShow(Visibility.None)
              })
          }.width('360vp').height('54vp')
        }.width('100%').visibility(this.bModel.getShow())
      }
      else if(this.bModel.getBannerType()==BannerType.TwoButton){
        Column() {
          Text(this.bModel.getBannerMessage())
            .fontSize(this.bModel.getTextSize()).fontFamily(this.bModel.getTextStyle())
            .padding({ top: '36vp', left: '16vp' }).width('100%')
          Flex({ direction: FlexDirection.RowReverse, alignItems: ItemAlign.End, justifyContent: FlexAlign.SpaceBetween }) {
            Button(this.bModel.getButtonText2(), { type: ButtonType.Normal, stateEffect: true }).borderRadius('5vp')
              .backgroundColor(this.bModel.getButtonColor())
              .onClick((event: ClickEvent) => {
                this.buttonAction2()
                this.bModel.setShow(Visibility.None)
              })
            Button(this.bModel.getButtonText1(), { type: ButtonType.Normal, stateEffect: true }).borderRadius('5vp')
              .backgroundColor(this.bModel.getButtonColor())
              .onClick((event: ClickEvent) => {
                this.buttonAction1()
                this.bModel.setShow(Visibility.None)
              })
          }
          .height('50vp')
          .width('90%')
          .padding({ top: '12vp', bottom: '8vp', left: '48vp' })
        }.width('95%').visibility(this.bModel.getShow())
      }
      else if(this.bModel.getBannerType()==BannerType.ImageButton){
        Column(){
          Flex({ justifyContent: FlexAlign.SpaceBetween }){
            Image(this.bModel.getImage()).height('60vp').width('60vp').padding({left:'10vp',top:'6vp'})
            Column(){
              Text(this.bModel.getBannerMessage())
                .fontSize(this.bModel.getTextSize()).fontFamily(this.bModel.getTextStyle())
                .padding({ top: '10vp', left: '16vp' }).width('100%')
            }.height('40vp').width('300vp')
          }
          Flex({ direction: FlexDirection.RowReverse, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
            Button(this.bModel.getButtonText2(), { type: ButtonType.Normal, stateEffect: true }).borderRadius('5vp')
              .backgroundColor(this.bModel.getButtonColor())
              .onClick((event: ClickEvent) => {
                this.buttonAction2()
                this.bModel.setShow(Visibility.None)
              })
            Button(this.bModel.getButtonText1(), { type: ButtonType.Normal, stateEffect: true }).borderRadius('5vp')
              .backgroundColor(this.bModel.getButtonColor())
              .onClick((event: ClickEvent) => {
                this.buttonAction1()
                this.bModel.setShow(Visibility.None)
              })
          }
          .height('50vp')
          .width('90%')
          .padding({ top: '12vp', bottom: '8vp', left: '108vp' })
        }.width('95%').visibility(this.bModel.getShow())
      }
    }.width('100%')
  }
}
