import { HdsListItemCard, PrefixCustomBuilder } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixCustomBuilderItem {
  @Builder
  CustomBuilder() {
    Column() {
      Image($r('app.media.startIcon')).height(24).width(24)
      Text('Demo').fontSize(14).fontWeight(FontWeight.Bold).fontColor(Color.White)
    }.width('100%').padding({ left: 24 }).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Start)
  }

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
          description: {
            text: 'Custom Builder'
          }
        },
        prefixItem: new PrefixCustomBuilder(this.CustomBuilder())
      })
    }
  }
}